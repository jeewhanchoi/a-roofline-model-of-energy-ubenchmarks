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


/* ================================================================= */
/* Get platforms and choose GPU */
void getPlatformAndDevice (cl_platform_id* platform, 
													 cl_uint* numberOfPlatforms, 
													 cl_device_id* device, cl_uint* numDevices)
{
	cl_int status;

	status = clGetPlatformIDs (1, platform, numberOfPlatforms);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clGetPlatformIDs failed with error: %d\n", status);
		exit (status);
	}

	status = clGetDeviceIDs (*platform, CL_DEVICE_TYPE_GPU, 1, device, numDevices);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clGetDeviceIDs failed with error %d\n", status);
		exit (status);
	}
}
/* ================================================================= */


/* ================================================================= */
/* Create kernel source and build it */
cl_kernel initKernel (int cacheSize, int vecSize, cl_context ctx)
{
	int i;
	cl_int status;
	cl_program program = NULL;
	cl_kernel kernel = NULL;

	/* Create kernel source */
	char* source = (char*) malloc (50000 * sizeof (char));
	char* temp = (char*) malloc (1000 * sizeof (char));;
	
	if(vecSize == 1) {
		strcpy (temp, "__kernel void clCache(__global float* output, __local float* sm) {\n");
	} else if (vecSize == 2) {
		strcpy (temp, "__kernel void clCache(__global float2* output, __local float2* sm) {\n");
	} else if (vecSize == 4) {
		strcpy (temp, "__kernel void clCache(__global float* output, __local float* sm) {\n");
	} else if (vecSize == 8) {
		strcpy (temp, "__kernel void clCache(__global float8* output, __local float8* sm) {\n");
	} else if (vecSize == 16) {
		strcpy (temp, "__kernel void clCache(__global float16* output, __local float16* sm) {\n");
	} else {
		strcpy (temp, "__kernel void clCache(__global float* output, __local float* sm) {\n");
	}
	strcpy (source, temp);

	strcat (source, "\tuint gid = get_global_id (0);\n");	

	if(vecSize == 1) {
		strcat (source, "\tfloat val1 = (float) (0);\n");
		strcat (source, "\tfloat val2 = val1;\n");
		strcat (source, "\tfloat val3 = (float) (2);\n");
	} else if (vecSize == 2) {
		strcat (source, "\tfloat2 val1 = (float2) (0);\n");
		strcat (source, "\tfloat2 val2 = val1;\n");
		strcat (source, "\tfloat2 val3 = (float2) (2);\n");
	} else if (vecSize == 4) {
		strcat (source, "\tfloat4 val1 = (float4) (0);\n");
		strcat (source, "\tfloat4 val2 = val1;\n");
		strcat (source, "\tfloat4 val3 = (float4) (2);\n");
	} else if (vecSize == 8) {
		strcat (source, "\tfloat8 val1 = (float8) (0);\n");
		strcat (source, "\tfloat8 val2 = val1;\n");
		strcat (source, "\tfloat8 val3 = (float8) (2);\n");
	} else if (vecSize == 16) {
		strcat (source, "\tfloat16 val1 = (float16) (0);\n");
		strcat (source, "\tfloat16 val2 = val1;\n");
		strcat (source, "\tfloat16 val3 = (float16) (2);\n");
	} else {
		strcat (source, "\tfloat val1 = (float) (0);\n");
		strcat (source, "\tfloat val2 = val1;\n");
		strcat (source, "\tfloat val3 = (float) (2);\n");
	}

	for(i = 0; i < cacheSize; i+=2) {
		sprintf (temp, "\tval1 = val1 + sm[%d] * val3;\n", i);
		strcat (source, temp);
		sprintf (temp, "\tval2 = val2 + sm[%d] * val3;\n", (i + 1));
		strcat (source, temp);
	}

	strcat (source, "\toutput[gid] = val1 + val2;\n");

	strcat (source, "}\n");

	const char* inputProgram = source;

	program = clCreateProgramWithSource (ctx, 1, &inputProgram, NULL, 
																			 &status);	
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
/* ================================================================= */


/* ================================================================= */
/* Execute kernel */
void runTest (int nThreads, int bSize, int cacheSize, int vecSize)
{
	int i;
	cl_int status;

	/* Host data */
	float* h_Output;
	cl_mem d_Output;

	/* OpenCL Kernel */
	cl_kernel kernel = NULL;	

	/* Timer */
	struct stopwatch_t* timer = NULL;
	long double t_elapsed;

	/* Initialize timer */
	stopwatch_init ();
	timer = stopwatch_create ();

	
	/* Initialize host data */
	h_Output = (float*) malloc (nThreads * vecSize * sizeof (float));
	memset (h_Output, 0, nThreads * vecSize * sizeof (float));


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
	d_Output = clCreateBuffer (ctx, CL_MEM_WRITE_ONLY, nThreads * vecSize *
														 sizeof (cl_float), NULL, &status);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clCreateBuffer failed with error %d\n", status);
		exit (status);
	}


	/* Initialize the kernel */
	kernel = initKernel (cacheSize, vecSize, ctx);

	/* Set arguments */
	status = clSetKernelArg (kernel, 0, sizeof (cl_mem), &d_Output);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clSetKernelArg failed with error %d\n", status);
		exit (status);
	}
	cl_int cl_local_size = cacheSize * vecSize * sizeof (cl_float);
	status = clSetKernelArg (kernel, 1, cl_local_size, NULL);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clSetKernelArg failed with error %d\n", status);
		exit (status);
	}


	/* Set up the kernel */
	size_t globalWorkSize[3] = {nThreads, 0, 0};
	size_t localWorkSize[3] = {bSize, 0, 0};

	cl_event user_event = clCreateUserEvent (ctx, &status);
	if (status != CL_SUCCESS) {
		fprintf(stderr, "clCreateUserEvent failed with error %d\n", status);
		exit(status);
	}
	cl_event kernel_events[NITER];


	fprintf (stderr, "Starting OpenCL cache test...\n");

	/* Queue all the kernels */
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


	stopwatch_start (timer);	

	status = clSetUserEventStatus (user_event, CL_COMPLETE);
	if (status != CL_SUCCESS) {
		fprintf (stderr, "clSetUserEventStatus failed with error %d\n", status);
		exit(status);
	}

	/* Block until all kernels have finished executing */
	clFinish (commandQueue);

	t_elapsed = stopwatch_elapsed (timer);
	t_elapsed = t_elapsed / NITER;
	fprintf (stderr, "Execution time: %Lg secs\n", t_elapsed);


	/* Gather profiled execution times */
	cl_ulong timeAccum = 0;
	cl_ulong timeStart, timeEnd;
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


	/* Free up resources */
	free (h_Output);
	clReleaseMemObject (d_Output);
	clReleaseKernel (kernel);
	clReleaseCommandQueue (commandQueue);
	clReleaseContext (ctx);
	// =================================================== //
}
/* ================================================================= */


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
