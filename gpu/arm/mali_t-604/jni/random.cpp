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
#define NITER 1

double Log2 (double n)
{
  return log(n) / log (2);
}

void findShifter (int nBits, unsigned int shifter[3])
{
	switch (nBits) {
		 case 30:
			shifter[0] = 1;
			shifter[1] = 11;
			shifter[2] = 24;
			break;
		 case 29:
			shifter[0] = 2;
			shifter[1] = 4;
			shifter[2] = 5;
			break;
		 case 28:
			shifter[0] = 1;
			shifter[1] = 3;
			shifter[2] = 9;
			break;
		 case 27:
			shifter[0] = 1;
			shifter[1] = 2;
			shifter[2] = 6;
			break;
		 case 26:
			shifter[0] = 2;
			shifter[1] = 5;
			shifter[2] = 3;
			break;
		 case 25:
			shifter[0] = 2;
			shifter[1] = 1;
			shifter[2] = 6;
			break;
		 case 24:
			shifter[0] = 6;
			shifter[1] = 1;
			shifter[2] = 9;
			break;
		 case 23:
			shifter[0] = 7;
			shifter[1] = 8;
			shifter[2] = 2;
			break;
		 case 22:
			shifter[0] = 5;
			shifter[1] = 3;
			shifter[2] = 2;
			break;
		 case 21:
			shifter[0] = 4;
			shifter[1] = 3;
			shifter[2] = 6;
			break;
		 case 20:
			shifter[0] = 2;
			shifter[1] = 1;
			shifter[2] = 9;
			break;
		 case 19:
			shifter[0] = 9;
			shifter[1] = 6;
			shifter[2] = 4;
			break;
		 case 18:
			shifter[0] = 3;
			shifter[1] = 9;
			shifter[2] = 8;
			break;
		 case 17:
			shifter[0] = 9;
			shifter[1] = 6;
			shifter[0] = 1;
		 case 16:
			shifter[0] = 8;
			shifter[1] = 9;
			shifter[2] = 5;
			break;
		 case 15:
			shifter[0] = 4;
			shifter[1] = 1;
			shifter[2] = 9;
			break;
		 case 14:
			shifter[0] = 9;
			shifter[1] = 7;
			shifter[2] = 2;
			break;
		 case 13:
			shifter[0] = 8;
			shifter[1] = 5;
			shifter[2] = 2;
			break;
		 case 12:
			shifter[0] = 7;
			shifter[1] = 5;
			shifter[2] = 9;
			break;
		 case 11:
			shifter[0] = 6;
			shifter[1] = 4;
			shifter[2] = 7;
			break;
		 case 10:
			shifter[0] = 5;
			shifter[1] = 1;
			shifter[2] = 3;
			break;
		 case 9:
			shifter[0] = 8;
			shifter[1] = 4;
			shifter[2] = 5;
			break;
		 case 8:
			shifter[0] = 3;
			shifter[1] = 1;
			shifter[2] = 5;
			break;
		 case 7:
			shifter[0] = 5;
			shifter[1] = 2;
			shifter[2] = 6;
			break;
		 case 6:
			shifter[0] = 2;
			shifter[1] = 3;
			shifter[2] = 1;
			break;
		 case 5:
			shifter[0] = 4;
			shifter[1] = 3;
			shifter[2] = 1;
			break;
		 case 4:
			shifter[0] = 3;
			shifter[1] = 1;
			shifter[2] = 2;
			break;
	}
}

/* =============================================================== */
/* Get available devices and select GPU */
void getPlatformAndDevice (cl_platform_id* platform, 
													 cl_uint* numberOfPlatforms, cl_device_id* device,
													 cl_uint* numDevices)
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
/* =============================================================== */


/* =============================================================== */
/* Create kernel source code and compile it */
cl_kernel initKernel (int nIter, cl_context ctx)
{
	int i;
	cl_int status;
	cl_program program = NULL;
	cl_kernel kernel = NULL;

	// create the kernel 
	char* source = (char*) malloc (50000 * sizeof (char));
	char* temp = (char*) malloc (1000 * sizeof (char));;
	const char* constSource = "__kernel void clRand(__global int *input, __global int *output) {\n"
									"	uint id = get_global_id(0);\n"
									"	int temp;\n"
									"	temp = input[id];\n";
	strcpy (source, constSource);
	for(i = 0; i < nIter; i++) {
		strcat (source, "	temp = input[temp];\n");
	}
	strcat (source, "	output[id] = temp;\n");	
	strcat (source, "}\n\n");
	const char* inputProgram = source;

	program = clCreateProgramWithSource (ctx, 1, &inputProgram, NULL, 
																			 &status);	
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateProgramWithSource failed with error %d\n", 
						 status);
		exit (status);
	}

	status = clBuildProgram (program, 0, NULL, NULL, NULL, NULL);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clBuildProgram failed with error %d\n", status);
		exit (status);
	}

	kernel = clCreateKernel (program, "clRand", &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateKernel failed with error %d\n", status);
		exit (status);
	}

	return kernel;
}
/* =============================================================== */


/* =============================================================== */
/* Run the test */
void runTest (int nThreads, int bSize, int nBlocks, int arraySize, int nIter)
{
	int i;
	cl_int status;

	int* h_Input;
	cl_mem d_Input;

	int* h_Output;
	cl_mem d_Output;

	cl_kernel kernel = NULL;	

	cl_event writeEvent;

	struct stopwatch_t* timer = NULL;
	long double t_elapsed, t_setup;

	stopwatch_init ();
	timer = stopwatch_create ();
	
	stopwatch_start (timer);	

	/* Initialize host data */
	h_Input = (int*) malloc (arraySize * sizeof (int));
	h_Output = (int*) malloc (nThreads * sizeof (int));

	uint32_t nBits = Log2 ((double)arraySize);
	uint32_t shifter[3];
	findShifter (nBits, shifter);

	h_Input[0] = 1;
	uint32_t index = 1;
	for(i = 0; i < arraySize - 2; i++) {
		uint32_t temp = index;
		index ^= index >> shifter[0];
		index ^= index << shifter[1];
		index &= ((1u << nBits) - 1u);
		index ^= index >> shifter[2];
		h_Input[temp] = index;
	}
	memset (h_Output, 0, sizeof (int) * nThreads);


	/* Get platform and device */
	cl_uint numberOfPlatforms;
	cl_platform_id platform = NULL;

	cl_device_id device = NULL;
	cl_uint numDevices = 0;

	getPlatformAndDevice (&platform, &numberOfPlatforms, &device, 
												&numDevices);


	/* Create context and command queue */
	cl_context ctx = NULL;
	cl_command_queue commandQueue = NULL;

	ctx = clCreateContext (0, 1, &device, NULL, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateContext failed with error %d\n", status);
		exit (status);
	}

	commandQueue = clCreateCommandQueue (ctx, device, 
																			 CL_QUEUE_PROFILING_ENABLE, &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateCommandQueue failed with error %d\n", status);
		exit (status);
	}


	/* Initialize device memory */
	d_Input = clCreateBuffer (ctx, CL_MEM_READ_WRITE, sizeof (int) * 
														arraySize, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateBuffer failed with error %d\n", status);
		exit (status);
	}

	d_Output = clCreateBuffer (ctx, CL_MEM_READ_WRITE, sizeof (int) * 
														 nThreads, NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateBuffer failed with error %d\n", status);
		exit (status);
	}

	/* initialize the kernel */
	kernel = initKernel (nIter, ctx);

	/* Set arguments for the kernel */
	status = clSetKernelArg (kernel, 0, sizeof (cl_mem), &d_Input);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clSetKernelArg failed with error %d\n", status);
		exit (status);
	}
	status = clSetKernelArg (kernel, 1, sizeof (cl_mem), &d_Output);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clSetKernelArg failed with error %d\n", status);
		exit (status);
	}


	/* Copy data from host to device */
	status = clEnqueueWriteBuffer (commandQueue, d_Input, CL_FALSE, 0,
																	sizeof (int) * arraySize, h_Input, 0, 
																	NULL, &writeEvent);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clEnqueueWriteBuffer failed with error %d\n", status);
		exit (status);
	}

	/* Make sure it executes */
	clFinish (commandQueue);

	/* Set up the kernel configuration */
	size_t globalWorkSize[3] = {nThreads, 0, 0};
	size_t localWorkSize[3] = {bSize, 0, 0};

	cl_event user_event = clCreateUserEvent (ctx, &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateUserEvent failed with error %d\n", status);
		exit (status);
	}
	cl_event kernel_events[NITER];


	for(i = 0; i < NITER; i++) {
		status = clEnqueueNDRangeKernel (commandQueue, kernel, 1, 0, 
																		 /* globalWorkSize, localWorkSize, 1, */
																			globalWorkSize, NULL, 1, 
																			&user_event, &kernel_events[i]);
		if (status != CL_SUCCESS) {
			fprintf (stderr, "clEnqueueNDRangeKernel %d failed with error %d\n",
							 i, status);
			exit (status);
		}
	}

	t_setup = stopwatch_elapsed (timer);
	fprintf (stderr, "Setup time: %Lg secs\n", t_setup);

	fprintf (stderr, "Starting OpenCL random...\n");

	status = clSetUserEventStatus (user_event, CL_COMPLETE);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clSetUserEventStatus failed with error %d\n", 
						 status);
		exit (status);
	}
	stopwatch_start (timer);	

	clFinish (commandQueue);

	t_elapsed = stopwatch_elapsed (timer);
	fprintf (stderr, "Finished OpenCL random...\n");

	t_elapsed = t_elapsed / NITER;
	fprintf (stderr, "Execution time: %Lg secs\n", t_elapsed);

	cl_ulong timeAccum = 0;
	cl_ulong timeStart, timeEnd;
	for(i = 0; i < NITER; i++) {
		status = clGetEventProfilingInfo (kernel_events[i], 
																			CL_PROFILING_COMMAND_START,
																			sizeof(cl_ulong), &timeStart, NULL);
		if (status != CL_SUCCESS) {
			fprintf (stderr, "clGetEventProfilingInfo failed with error %d\n", 
							status);
		}
		status = clGetEventProfilingInfo (kernel_events[i], 
																			CL_PROFILING_COMMAND_END, 
																			sizeof(cl_ulong), &timeEnd, NULL);
		if (status != CL_SUCCESS) {
			fprintf (stderr, "clGetEventProfilingInfo failed with error %d\n", 
							status);
		}
		timeAccum += double (timeEnd - timeStart);
	}

  printf("Computed in %5.3lf msecs\n", double (timeAccum) / NITER / 1.0e+6);
	double numAccesses_ = (double(nThreads)/1.0e6) * nIter;
	fprintf (stderr, "\tPerformance: %Lf MA/s\n", 
					 double (numAccesses_) / double (timeEnd - timeStart) * 1.0e+9);
	
	/* Verify results */
	fprintf (stderr, "Verifying results...\n");	
	status = clEnqueueReadBuffer (commandQueue, d_Output, CL_TRUE, 0, 
																sizeof (int) * nThreads, h_Output, 0, 
																NULL, 0);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clEnqueueReadBuffer failed with error %d\n", status);
		exit(status);
	}
	clFinish (commandQueue);

	size_t diffCount = 0;
	for(i = 0; i < nThreads; i++) {
		int temp;
		temp = h_Input[i];
		for(int j = 0; j < nIter; j++) {
			temp = h_Input[temp];
		}
		if(temp != h_Output[i]) diffCount++; 
	}
	fprintf (stderr, "DiffCount: %lu\n", diffCount);


	/* Cleanup */
	clReleaseEvent (writeEvent);	
	free (h_Input);
	free (h_Output);
	clReleaseMemObject (d_Input);
	clReleaseMemObject (d_Output);
	clReleaseKernel (kernel);
	clReleaseCommandQueue (commandQueue);
	clReleaseContext (ctx);
}
/* =============================================================== */


int main(int argc, char** argv) 
{

	int i;
	int nThreads;
	int bSize;
	int arraySize;
	int nBlocks;
	int nIter;

	if(argc != 5) {
		fprintf (stderr, "usage: %s <array size (M)> <# threads (K)> <block size> <# acccess/thread>\n", argv[0]);	
		exit (0);
	} else {
		arraySize = atoi (argv[1]) * 1024 * 1024;
		nThreads = atoi (argv[2]) * 1024;
		bSize = atoi (argv[3]);
		nIter = atoi (argv[4]);
	}

	nBlocks = (nThreads + bSize - 1) / bSize;

	runTest (nThreads, bSize, nBlocks, arraySize, nIter);

	return 0;
}
