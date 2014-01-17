#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <CL/cl.h>
#include <time.h>
#include "timer.h"
// #include <omp.h>

// #define PROCESS_BY_4_ELEMENTS
#define NITER 10

/* ================================================================ */
/* Get platform list and choose GPU */
void getPlatformAndDevice (cl_platform_id* platform, 
													 cl_uint* numberOfPlatforms, 
													 cl_device_id* device, cl_uint* numDevices)
{
	cl_int status;

	status = clGetPlatformIDs (1, platform, numberOfPlatforms);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clGetPlatformIDs failed with error: %d\n", status);
		exit(status);
	}

	status = clGetDeviceIDs (*platform, CL_DEVICE_TYPE_GPU, 1, device, 
													numDevices);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clGetDeviceIDs failed with error %d\n", status);
		exit(status);
	}
}
/* ================================================================ */

 
/* ================================================================ */
/* Create source code and build it */
cl_kernel initKernel (int cacheSize, int vecSize, cl_context ctx)
{
	int i;
	cl_int status;
	cl_program program = NULL;
	cl_kernel kernel = NULL;

	/* Create the kernel source code */
	char* source = (char*) malloc (50000 * sizeof (char));
	char* temp = (char*) malloc (1000 * sizeof (char));;
	
	if(vecSize == 1) {
		strcpy (temp, "__kernel void clCache(__global float* input, __global float* output) {\n");
	} else if (vecSize == 2) {
		strcpy (temp, "__kernel void clCache(__global float* input, __global float* output) {\n");
	} else if (vecSize == 4) {
		strcpy (temp, "__kernel void clCache(__global float* input, __global float* output) {\n");
	} else if (vecSize == 8) {
		strcpy (temp, "__kernel void clCache(__global float* input, __global float* output) {\n");
	} else if (vecSize == 16) {
		strcpy (temp, "__kernel void clCache(__global float* input, __global float* output) {\n");
	} else {
		strcpy (temp, "__kernel void clCache(__global float* input, __global float* output) {\n");
	}
	strcpy (source, temp);


	strcat (source, "\tuint gid = get_global_id (0);\n");	

	if(vecSize == 1) {
		strcat (source, "\tfloat val1 = (float) (0);\n");
		strcat (source, "\tfloat val3;\n");
	} else if (vecSize == 2) {
		strcat (source, "\tfloat2 val1 = (float2) (0);\n");
		strcat (source, "\tfloat2 val3;\n");
	} else if (vecSize == 4) {
		strcat (source, "\tfloat4 val1 = (float4) (0);\n");
		strcat (source, "\tfloat4 val3;\n");
	} else if (vecSize == 8) {
		strcat (source, "\tfloat8 val1 = (float8) (0);\n");
		strcat (source, "\tfloat8 val3;\n");
	} else if (vecSize == 16) {
		strcat (source, "\tfloat16 val1 = (float16) (0);\n");
		strcat (source, "\tfloat16 val3;\n");
	} else {
		strcat (source, "\tfloat val1 = (float) (0);\n");
		strcat (source, "\tfloat val3;\n");
	}

	for(i = 0; i < cacheSize; i+=2) {
		if (vecSize == 1) { 
			sprintf (temp, "\tval3 = input[%d];\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n");
			strcat (source, temp);
			sprintf (temp, "\tval3 = input[%d];\n", i + 1);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n");
			strcat (source, temp);
		} else if (vecSize == 2) {
			sprintf (temp, "\tval3 = vload2(%d, input);\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval3 = vload2(%d, input);\n", i+1);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n", i+1);
			strcat (source, temp);

		} else if (vecSize == 4) {
			sprintf (temp, "\tval3 = vload4(%d, input);\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval3 = vload4(%d, input);\n", i+1);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n", i+1);
			strcat (source, temp);
		} else if (vecSize == 8) {
			sprintf (temp, "\tval3 = vload8(%d, input);\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval3 = vload8(%d, input);\n", i+1);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n", i+1);
			strcat (source, temp);
		} else if (vecSize == 16) {
			sprintf (temp, "\tval3 = vload16(%d, input);\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval3 = vload16(%d, input);\n", i+1);
			strcat (source, temp);
			sprintf (temp, "\tval1 = val1 + val3 * val3;\n", i+1);
			strcat (source, temp);
		} else {
			sprintf (temp, "\tval1 = val1 + input[%d] * val3;\n", i);
			strcat (source, temp);
			sprintf (temp, "\tval2 = val2 + input[%d] * val3;\n", (i + 1));
			strcat (source, temp);
		}
	}


	if(vecSize == 1) {
		strcat (source, "\toutput[gid] = val1;\n");
	} else if(vecSize == 2) {
		strcat (source, "\tvstore2 (val1, gid, output);\n");
	} else if(vecSize == 4) {
		strcat (source, "\tvstore4 (val1, gid, output);\n");
	} else if(vecSize == 8) {
		strcat (source, "\tvstore8 (val1, gid, output);\n");
	} else if(vecSize == 16) {
		strcat (source, "\tvstore16 (val1, gid, output);\n");
	} else {
		strcat (source, "\toutput[gid] = val1;\n");
	}

	strcat (source, "}\n");

	const char* inputProgram = source;
	// fprintf (stderr, "%s", inputProgram);

	program = clCreateProgramWithSource (ctx, 1, &inputProgram, NULL, &status);	
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateProgramWithSource failed with error %d\n", status);
		exit (status);
	}

	status = clBuildProgram (program, 0, NULL, NULL, NULL, NULL);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clBuildProgram failed with error %d\n", status);
		exit (status);
	}

	kernel = clCreateKernel (program, "clCache", &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateKernel failed with error %d\n", status);
		exit (status);
	}

	return kernel;
}
/* ================================================================ */


/* ================================================================ */
/* Execute kernel */
void runTest (int nThreads, int bSize, int cacheSize, int vecSize)
{
	int i;
	cl_int status;

	/* Data structures */
	float* h_Input;
	cl_mem d_Input;
	float* h_Output;
	cl_mem d_Output;

	/* Kernel */
	cl_kernel kernel = NULL;	

	/* Events */
	cl_event writeEvent;

	/* Timer */
	struct stopwatch_t* timer = NULL;
	long double t_elapsed, t_setup;


	/* initialize timer */
	stopwatch_init ();
	timer = stopwatch_create ();

	
	stopwatch_start (timer);	

	/* Initialize host data */
	h_Input = (float*) malloc (cacheSize * vecSize * sizeof (float));
	for(i = 0; i < cacheSize * vecSize; i++) {
		h_Input[i] = float(i % 123);
	}
	h_Output = (float*) malloc (nThreads * vecSize * sizeof (float));
	for(i = 0; i < cacheSize * vecSize; i++) {
		h_Output[i] = float(i);
	}


	/* Get platform and device */
	cl_platform_id platform = NULL;
	cl_uint numberOfPlatforms;

	cl_device_id device = NULL;
	cl_uint numDevices = 0;

	getPlatformAndDevice (&platform, &numberOfPlatforms, &device, 
												&numDevices);


	/* Create context and command queue */
	cl_context ctx = NULL;
	cl_command_queue commandQueue = NULL;

	ctx = clCreateContext(0, 1, &device, NULL, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateContext failed with error %d\n", status);
		exit(status);
	}

	commandQueue = clCreateCommandQueue(ctx, device, CL_QUEUE_PROFILING_ENABLE, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateCommandQueue failed with error %d\n", status);
		exit(status);
	}


	/* Initialize device memory */
	d_Input = clCreateBuffer(ctx, CL_MEM_READ_ONLY, cacheSize * vecSize *
														sizeof (cl_float), NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateBuffer failed with error %d\n", status);
		exit(status);
	}
	d_Output = clCreateBuffer(ctx, CL_MEM_WRITE_ONLY, nThreads * vecSize *
														sizeof (cl_float), NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateBuffer failed with error %d\n", status);
		exit(status);
	}


	/* Initialize the kernel */
	kernel = initKernel (cacheSize, vecSize, ctx);

	/* Set arguments */
	status = clSetKernelArg (kernel, 0, sizeof (cl_mem) , &d_Input);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clSetKernelArg failed with error %d\n", status);
		exit(status);
	}
	status = clSetKernelArg (kernel, 1, sizeof (cl_mem), &d_Output);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clSetKernelArg failed with error %d\n", status);
		exit(status);
	}


	/* Copy data to global memory */
	status = clEnqueueWriteBuffer(commandQueue, d_Input, CL_FALSE, 0, 
																cacheSize * vecSize * sizeof (cl_float),
																h_Input, 0, NULL, &writeEvent);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueWriteBuffer failed with error %d\n", status);
		exit(status);
	}
	clFinish (commandQueue);


	/* Set up the kernel configuration */
	size_t globalWorkSize[3] = {nThreads, 0, 0};
	size_t localWorkSize[3] = {bSize, 0, 0};

	cl_event user_event = clCreateUserEvent (ctx, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateUserEvent failed with error %d\n", status);
		exit(status);
	}
	cl_event kernel_events[NITER];


	/* Queue the kernel NITER times */
	for(i = 0; i < NITER; i++) {
		status = clEnqueueNDRangeKernel (commandQueue, kernel, 1, 0, 
																			globalWorkSize, localWorkSize, 
																			1, &user_event, 
																			&kernel_events[i]);
		if (status != CL_SUCCESS) {
			fprintf(stderr, "clEnqueueNDRangeKernel %d failed with error %d\n", 
							i, status);
			exit(status);
		}
	}

	t_setup = stopwatch_elapsed (timer);
	fprintf (stderr, "Setup time: %Lg secs\n", t_setup);

	fprintf (stderr, "Starting OpenCL cache test...\n");

	stopwatch_start (timer);	

	status = clSetUserEventStatus (user_event, CL_COMPLETE);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clSetUserEventStatus failed with error %d\n", status);
		exit(status);
	}

	/* Block until kernel execution ends */
	clFinish (commandQueue);

	t_elapsed = stopwatch_elapsed (timer);
	t_elapsed = t_elapsed / NITER;
	fprintf (stderr, "Execution time: %Lg secs\n", t_elapsed);


	cl_ulong timeAccum = 0;
	cl_ulong timeStart, timeEnd;

	/* Get each kernel execution's start and end time to get the total
		 execution time. Then take the average 
	 */
	for(i = 0; i < NITER; i++) {
		status = clGetEventProfilingInfo(kernel_events[i], 
																			CL_PROFILING_COMMAND_START,
																			sizeof(cl_ulong), &timeStart, NULL);
		if (status != CL_SUCCESS) {
			fprintf(stderr, "clGetEventProfilingInfo failed with error %d\n", 
							status);
		}
		status = clGetEventProfilingInfo(kernel_events[i], 
																			CL_PROFILING_COMMAND_END, 
																			sizeof(cl_ulong), &timeEnd, NULL);
		if (status != CL_SUCCESS) {
			fprintf(stderr, "clGetEventProfilingInfo failed with error %d\n", 
							status);
		}
		timeAccum += double(timeEnd - timeStart);
	}


	/* Print performance statistics */
  printf("Computed in %5.3lf msecs\n", double(timeAccum) / NITER / 1.0e+6);
	double byteAccessed = (double(nThreads) * cacheSize * vecSize * 
													sizeof (cl_float)/ 1.0e9);
	double flops = (2.0 * double(nThreads) * cacheSize) / 1.0e9;
	fprintf (stderr, "\tBytes: %lf Flops: %lf\n", byteAccessed, flops);
	fprintf (stderr, "\tPerformance: %Lf GB/s and %Lf Gflop/s\n", 
						double (byteAccessed) / t_elapsed, double (flops) / t_elapsed);


	/* Verify results */
	status = clEnqueueReadBuffer (commandQueue, d_Output, CL_TRUE, 0, 
																nThreads * vecSize * sizeof (cl_float), 
																h_Output, 0, NULL, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueReadBuffer failed with error %d\n", status);
		exit(status);
	}
	clFinish (commandQueue);

	float tResult[vecSize];
	for(i = 0; i < vecSize; i++) {
		tResult[i] = 0.0f;
	}	
	for(i = 0; i < cacheSize * vecSize; i+= vecSize) {
		for(int j = 0; j < vecSize; j++) {
			tResult[j] += h_Input[i + j] * h_Input[i + j];
		}
	}
	int cnt = 0;
	for(i = 0; i < nThreads * vecSize; i+=vecSize) {
		for(int j = 0; j < vecSize; j++) {
			if(tResult[j] != h_Output[i + j]) {
				cnt++;
				fprintf (stderr, "%f ::: %f\n", h_Output[i + j], tResult[j]);
			}
		}
	}
	fprintf (stderr, "error cnt: %d\n", cnt);


	/* Free up resources */
	clReleaseEvent (writeEvent);	
	free (h_Output);
	clReleaseMemObject (d_Output);
	clReleaseKernel (kernel);
	clReleaseCommandQueue (commandQueue);
	clReleaseContext (ctx);
}
/* ================================================================ */


int main(int argc, char** argv) 
{

	int nThreads;
	int bSize;
	int vecSize;
	int cacheSize;

	if(argc != 5) {
		fprintf (stderr, "usage: %s <no. threads (K)> <block size> <cache size> <vector size>\n", argv[0]);	
		exit (0);
	} else {
		nThreads = atoi (argv[1]) * 1024;
		bSize = atoi (argv[2]);
		cacheSize = atoi (argv[3]); 
		vecSize = atoi (argv[4]);
	}

	runTest (nThreads, bSize, cacheSize, vecSize);

	return 0;
}
