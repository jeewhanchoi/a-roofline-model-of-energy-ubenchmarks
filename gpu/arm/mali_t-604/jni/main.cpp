/*
MIT License
Copyright 2020 Jee W. Choi, Marat Dukhan, and Xing Liu
Permission is hereby granted, free of charge, to any person obtaining a copy of 
this software and associated documentation files (the "Software"), to deal in 
the Software without restriction, including without limitation the rights to use, 
copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the 
Software, and to permit persons to whom the Software is furnished to do so, subject 
to the following conditions:
The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#include <string.h>
#include <stdlib.h>
#include <math.h>
// #ifndef _WIN32
	#include <unistd.h>
	#include <sys/types.h>
	#include <sys/stat.h>
// #endif
#include <string>
#include <stdio.h>
#include <stdint.h>
#include <CL/cl.h>
#include "timer.h"

#define PROCESS_BY_4_ELEMENTS

size_t array_size;

/* Required data structures */
float *hostData = NULL;
float *hostData_ = NULL;
cl_device_id device = NULL;
cl_uint numDevices = 0;
cl_platform_id platform = NULL;
cl_command_queue commandQueue = NULL;
cl_context ctx = NULL;
cl_mem inputBuffer = NULL;
cl_mem inputBuffer_ = NULL;
cl_mem outputBuffer = NULL;
cl_mem outputBuffer_ = NULL;
cl_kernel kernel = NULL;
cl_program program = NULL;


/* ================================================================== */
/* Initialize host data structure */
void initHost() {
	::hostData = (cl_float*) malloc (sizeof(cl_float) * array_size);

	for (size_t i = 0; i < array_size; i++) {
		hostData[i] = float (i);
	}
}
/* ================================================================== */


/* ================================================================== */
/* Initialize and select GPU device on the current platform */
void initCLPlatform() {
	cl_int status;
	cl_uint numberOfPlatforms;


	status = clGetPlatformIDs (1, &platform, &numberOfPlatforms);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clGetPlatformIDs failed with error: %d\n", status);
		exit(status);
	}

	status = clGetDeviceIDs (platform, CL_DEVICE_TYPE_GPU, 1, &device, 
													 &numDevices);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clGetDeviceIDs failed with error %d\n", status);
		exit(status);
	}

	::ctx = clCreateContext (0, 1, &::device, NULL, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateContext failed with error %d\n", status);
		exit(status);
	}

	::commandQueue = clCreateCommandQueue (::ctx, ::device, 
																				 CL_QUEUE_PROFILING_ENABLE, 
																				 &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateCommandQueue failed with error %d\n", status);
		exit (status);
	}

}
/* ================================================================== */


/* ================================================================== */
/* Initialize device memory (buffers) */
void initCLBuffer() {
	cl_int status;

	::inputBuffer = clCreateBuffer (::ctx, CL_MEM_READ_WRITE, 
																	sizeof (cl_float) * array_size, NULL, 	
																	&status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateBuffer failed with error %d\n", status);
		exit(status);
	}

	::outputBuffer = clCreateBuffer (::ctx, CL_MEM_READ_WRITE, 
																	 sizeof(cl_float) * array_size, NULL, 
																	 &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateBuffer failed with error %d\n", status);
		exit(status);
	}

}
/* ================================================================== */


/* ================================================================== */
/* Create kernel source code and compile it */
void initCLKernel(int multiplyAdds) {
	cl_int status;

	std::string source = "__kernel void CLBench(__global float *input, __global float *output) {\n"
	                     "	uint id = get_global_id(0);\n"
#if defined(PROCESS_BY_16_ELEMENTS)
	                     "	float16 y = 0.0f;\n"
	                     "	float16 x = vload16(id, input);\n";
#elif defined(PROCESS_BY_8_ELEMENTS)
	                     "	float8 y = 0.0f;\n"
	                     "	float8 x = vload8(id, input);\n";
#elif defined(PROCESS_BY_4_ELEMENTS)
	                     "	float4 y = 0.0f;\n"
	                     "	float4 x = vload4(id, input);\n";
#elif defined(PROCESS_BY_2_ELEMENTS)
	                     "	float2 y = 0.0f;\n"
	                     "	float2 x = vload2(id, input);\n";
#else
	                     "	float y = 0.0f;\n"
	                     "	float x = input[id];\n";
#endif
	for (int i = 0; i < multiplyAdds; i++) {
		source.append("	y = mad(x, x, y);\n");
	}
#if defined(PROCESS_BY_16_ELEMENTS)
	source.append("	vstore16(y, id, output);\n");
#elif defined(PROCESS_BY_8_ELEMENTS)
	source.append("	vstore8(y, id, output);\n");
#elif defined(PROCESS_BY_4_ELEMENTS)
	source.append("	vstore4(y, id, output);\n");
#elif defined(PROCESS_BY_2_ELEMENTS)
	source.append("	vstore2(y, id, output);\n");
#else
	source.append("	output[id] = y;\n");
#endif
	source.append("}\n\n");

	/* This is UB, may crash on the next line */
	const char* sourceBuffer = source.c_str ();

	::program = clCreateProgramWithSource (::ctx, 1, &sourceBuffer, NULL, 
																				 &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateProgramWithSource failed with error %d\n", 
						 status);
		exit (status);
	}

	status = clBuildProgram (::program, 0, NULL, 
													 "-cl-fast-relaxed-math -cl-mad-enable", NULL, 
													 NULL);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clBuildProgram failed with error %d %d\n", status, 
						 CL_BUILD_PROGRAM_FAILURE);

		exit (status);
	}

	::kernel = clCreateKernel (::program, "CLBench", &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateKernel failed with error %d\n", status);
		exit(status);
	}
}
/* ================================================================== */


/* ================================================================== */
/* Execute the kernel and measure time */
void runCL(int multiplyAdds) {
	cl_int status;
	cl_event writeEvent;
	cl_event computeEvent;

	struct stopwatch_t * timer = NULL;
	long double t_start, t_end;

	stopwatch_init ();
	timer = stopwatch_create ();

	/* Set input to the kernel */
	status = clSetKernelArg (::kernel, 0, sizeof (cl_mem), &inputBuffer);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clSetKernelArg failed with error %d\n", status);
		exit(status);
	}
	status = clSetKernelArg (::kernel, 1, sizeof(cl_mem), &outputBuffer);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clSetKernelArg failed with error %d\n", status);
		exit(status);
	}

	/* Host to device memory copy */
	/* Block until the call has finished executing */
	status = clEnqueueWriteBuffer(::commandQueue, inputBuffer, CL_FALSE, 0, 
																sizeof(cl_float) * array_size, hostData, 0, 
																NULL, &writeEvent);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueWriteBuffer failed with error %d\n", status);
		exit(status);
	}
	clFinish (::commandQueue);

	/* Set kernel execution parameters */
#if defined(PROCESS_BY_16_ELEMENTS)
	size_t globalWorkSize[3] = {array_size / 16, 0, 0};
#elif defined(PROCESS_BY_8_ELEMENTS)
	size_t globalWorkSize[3] = {array_size / 8, 0, 0};
#elif defined(PROCESS_BY_4_ELEMENTS)
	size_t globalWorkSize[3] = {array_size / 4, 0, 0};
#elif defined(PROCESS_BY_2_ELEMENTS)
	size_t globalWorkSize[3] = {array_size / 2, 0, 0};
#else
	size_t globalWorkSize[3] = {array_size, 0, 0};
#endif
	size_t localWorkSize[3] = {128, 0, 0};


	cl_int err_code;
	cl_event user_event = clCreateUserEvent (::ctx, &err_code);
	cl_event kernel_events[10];


	fprintf (stderr, "Starting OpenCL...\n");

	/* Queue the kernel */
	/* Do it 10 times as warmup */
	for(int niter = 0; niter < 10; niter++) {
		status = clEnqueueNDRangeKernel(::commandQueue, ::kernel, 1, 0, 
																		globalWorkSize, NULL, 1, 
																		&user_event, &kernel_events[niter]);
		if (status != CL_SUCCESS) {
				fprintf(stderr, "clEnqueueNDRangeKernel failed with error %d %d\n", 
								status, CL_OUT_OF_RESOURCES);
				exit(status);
		}
	}

	/* Block until kernels finish */	
	clSetUserEventStatus (user_event, CL_COMPLETE);
	clFinish(::commandQueue);

	/* Measure execution start and end time of the last kernel execution */
  cl_ulong timeStart, timeEnd;
  status = clGetEventProfilingInfo (kernel_events[9], 
																		CL_PROFILING_COMMAND_START, 
																		sizeof (cl_ulong), &timeStart, NULL);
  if (status != CL_SUCCESS) {
    fprintf (stderr, "clGetEventProfilingInfo failed with error %d\n", 
						 status);
  }
  status = clGetEventProfilingInfo (kernel_events[9], 
																		CL_PROFILING_COMMAND_END, 
																		sizeof(cl_ulong), &timeEnd, NULL);
  if (status != CL_SUCCESS) {
    fprintf (stderr, "clGetEventProfilingInfo failed with error %d\n", 
						 status);
  }

	/* Figure out performance statistics */
  fprintf (stderr, "Computed in %5.3lf msecs\n", 
					 double (timeEnd - timeStart) / 1.0e+6);
  fprintf (stderr, "\tCompute Performance: %5.3lf GFLOPS\n", 
					 2.0 * (double (array_size) * double (multiplyAdds) / 1.0e+9) / 
					 (double (timeEnd - timeStart) / 1.0e+9));
  fprintf (stderr, "\tBandwidth Performance: %5.3lf GB/s\n", 
					 2.0 * (sizeof (cl_float) * double (array_size) / 1.0e+9) / 
					 (double (timeEnd - timeStart) / 1.0e+9));


	/* Cleanup */
	clReleaseEvent(writeEvent);
	clReleaseEvent(computeEvent);
}
/* ================================================================== */


/* ================================================================== */
/* Verify results */
void verify(int multiplyAdds) {

	cl_int status = CL_FALSE;
	cl_float* hostOutput = (cl_float*) malloc (sizeof (cl_float) * 
																						 array_size);
	cl_float* hostOutput_ = (cl_float*) malloc (sizeof (cl_float) * 
																							array_size / 4);

	/* Copy data from device to host */
	status = clEnqueueReadBuffer (::commandQueue, ::outputBuffer, CL_TRUE, 0,
 																sizeof (cl_float) * array_size, hostOutput, 
																0, NULL, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueReadBuffer failed with error %d\n", status);
		exit(status);
	}

	size_t countDiff = 0;
	for (size_t i = 0; i < array_size; i++) {
		if (i % 4 != 0) {
			if (fabsf (hostData[i] * hostData[i] * float(multiplyAdds) - 
								 hostOutput[i]) > 1.0e-4 * hostOutput[i]) {
				countDiff++;
			}
		} else {
			if (fabsf (hostData[i] * hostData[i] * float(multiplyAdds) - 
								 hostOutput[i]) > 1.0e-4 * hostOutput[i]) {
				countDiff++;
			}
			/*
			if (fabsf (hostData[i] * hostData[i] * float(multiplyAdds) + 
								 hostData[i] * hostData[i] * hostData[i] * hostData[i] * 
								 float (multiplyAdds) - hostOutput[i]) > 
								 1.0e-4 * hostOutput[i]) {
				countDiff++;
			}
			 */
		}
	}

	if (countDiff != 0) {
		fprintf (stderr, "Output verification failed: num of mismatch: %zu\n", 
						 countDiff);
	}

	free(hostOutput);
}
/* ================================================================== */


/* ================================================================== */
/* Cleanup */
void cleanupCL() {
	free (hostData);

	clReleaseMemObject (::inputBuffer);
	clReleaseMemObject (::outputBuffer);
	clReleaseKernel (::kernel);
	clReleaseProgram (::program);
	clReleaseCommandQueue (::commandQueue);
	clReleaseContext (::ctx);
}
/* ================================================================== */


int main(int argc, char** argv) {

	int multiplyAdds;

	if(argc != 3) {
		fprintf (stderr, "usage: %s <array size (M)> <# MAD>\n", argv[0]);	
		exit (0);
	} else {
		array_size = atoi (argv[1]) * 1024 * 1024;
		multiplyAdds = atoi (argv[2]);
	}

	/* Initialize host array */
	initHost ();

	/* Initialize the device */
	initCLPlatform ();

	/* Allocate device memory */
	initCLBuffer ();

	/* Create and build kernel */
	initCLKernel (multiplyAdds);

	/* Run the kernel */
	runCL (multiplyAdds);

	/* Verify results */
	verify (multiplyAdds);

	/* Free memory */
	cleanupCL ();

	return 0;
}
