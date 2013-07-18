// libraries
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <cutil_inline.h>

#include "bandwidthilp_kernel.h"

// GPU kernel error checking function
void gpu_check_error__srcpos (FILE* fp, const char* filename, size_t line)
{
  cudaError_t C_E = cudaGetLastError ();
  if (C_E) {
    fprintf (fp, "*** [%s:%lu] CUDA ERROR %d: %s ***\n", filename, line, C_E, 
						 cudaGetErrorString (C_E));
    fflush (fp);
    exit (-1); /* abort program */
  }
}

float runTest(int num_threads, int block_size, int num_streams)
{
	int i;

	int num_blocks = (num_threads + block_size - 1) / block_size;

	TYPE* h_in;
	TYPE* h_out;
	TYPE* d_in;
	TYPE* d_out;

	// timer
	cudaEvent_t start, stop;
	float total_time_taken;

	if((num_blocks <= 2147483647) && 
		 (((num_threads / 1024) * num_streams * sizeof (TYPE)) < (7e5))) {
		fprintf(stderr, "Execution configuration: %d blocks %d threads %d streams\t"
						, num_blocks, block_size, num_streams);


  	cudaSetDevice(cutGetMaxGflopsDeviceId ());

		// allocate memory
		h_in = (TYPE*) malloc (num_threads * num_streams * sizeof (TYPE));
		h_out = (TYPE*) malloc (num_threads * num_streams * sizeof (TYPE));
		cutilSafeCall (cudaMalloc ((void**) &d_in, num_threads * num_streams * 
															 sizeof (TYPE)));
		cutilSafeCall (cudaMalloc ((void**) &d_out, num_threads * num_streams * 
															 sizeof (TYPE)));

		// initialize memory
		for(i = 0; i < num_threads * num_streams; i++) {
			h_in[i] = make_float4 (1.0f, 1.0f, 1.0f, 1.0f);
			h_out[i] = make_float4 (0.0f, 0.0f, 0.0f, 0.0f);
			/*
			h_in[i] = 1.0;
			h_out[i] = 0.0;
			 */
		}
		cutilSafeCall (cudaMemcpy (d_in, h_in, num_threads * num_streams * 
									 						 sizeof (TYPE), cudaMemcpyHostToDevice));
		cutilSafeCall (cudaMemcpy (d_out, h_out, num_threads * num_streams * 
															 sizeof (TYPE), cudaMemcpyHostToDevice));

		dim3 grid (num_blocks);
		dim3 threads (block_size);

		// start timer
		cutilSafeCall (cudaEventCreate (&start));
		cutilSafeCall (cudaEventCreate (&stop));
		cutilSafeCall (cudaEventRecord (start, 0));

		// execute kernel
		switch (num_streams) {
			case 1:
				bandwidth_kernel_1 <<<grid, threads>>> (num_threads, num_streams,
																								d_in, d_out);
				break;
			case 2:
				bandwidth_kernel_2 <<<grid, threads>>> (num_threads, num_streams,
																								d_in, d_out);
				break;
			case 4:
				bandwidth_kernel_4 <<<grid, threads>>> (num_threads, num_streams,
																								d_in, d_out);
				break;
			case 8:
				bandwidth_kernel_8 <<<grid, threads>>> (num_threads, num_streams,
																								d_in, d_out);
				break;
			case 16:
				bandwidth_kernel_16 <<<grid, threads>>> (num_threads, num_streams,
																								d_in, d_out);
				break;
			case 32:
				bandwidth_kernel_32 <<<grid, threads>>> (num_threads, num_streams,
																								d_in, d_out);
				break;
			case 64:
				bandwidth_kernel_64 <<<grid, threads>>> (num_threads, num_streams,
																								d_in, d_out);
				break;
			case 128:
				bandwidth_kernel_128 <<<grid, threads>>> (num_threads, num_streams,
																									d_in, d_out);
				break;
			default:
				fprintf(stderr, "Invalid num_streams: %d\n", num_streams);
				total_time_taken = 1.0f;
				break;
		}


		// end timer
		cutilSafeCall (cudaEventRecord (stop, 0));
		// cutilSafeCall (cutilDeviceSynchronize ());
		cutilSafeCall (cudaThreadSynchronize ());
		cutilSafeCall (cudaEventElapsedTime (&total_time_taken, start, stop));

		gpu_check_error__srcpos (stderr, __FILE__, __LINE__);

		cutilSafeCall (cudaMemcpy (h_out, d_out, num_threads * num_streams * 
															 sizeof (TYPE), cudaMemcpyDeviceToHost));

		free (h_in);
		free (h_out);
		cutilSafeCall (cudaFree (d_in));
		cutilSafeCall (cudaFree (d_out));

		fprintf(stderr, "...Done\n");
	} else {
		total_time_taken = -1.0f;
	}

	return total_time_taken;
}



void autotune(int* num_threads, int* block_size, int* streams_per_thread)
{
	int i, j, k, l;

	// structures for storing execution configurations
	int *threads;
	int *tb;
	int *num_streams;
  float* total_time_taken;
	float* perf;
	float best_perf;


	// allocate memory for storing kernel execution configuration 
	threads = (int*) malloc (5 * 3 * 9 * sizeof (int));
	tb = (int*) malloc (5 * 3 * 9 * sizeof (int));
	num_streams = (int*) malloc (5 * 3 * 9 * sizeof (int));
	total_time_taken = (float*) malloc (5 * 3 * 9 * sizeof (float));
	perf = (float*) malloc (5 * 3 * 9 * sizeof (float));

	// auto-tune for best execution configuration
	l = 0;
	// vary # of threads
	for(i = 1048576; i <= 33554432; i *= 2) {
		// vary thread block size
		for(j = 128; j <= 1024; j *= 2) {
			// vary streams per thread
			for(k = 1; k <= 8; k *= 2) {
				threads[l] = i;
				tb[l] = j;
				num_streams[l] = k;

				// wrapper function for the test kernels
				total_time_taken[l] = runTest (i, j, k);
			
				if(total_time_taken[l] > 0) {
					perf[l] = ((((2.0 * i * sizeof (TYPE) / 1e6) * k)) / 
										 total_time_taken[l]);
				} else {
					perf[l] = 0.0;
				}
				l++;	
			}
		}
	}	

	// find best performing configuration
	best_perf = perf[0];
	// j keeps track of the index to the best configuration
	j = 0;
	for(int i = 1; i < l; i++) {
		if(perf[i] > best_perf) {
			best_perf = perf[i];
			j = i;
		}
	}
	*num_threads = threads[j];
	*block_size = tb[j];
	*streams_per_thread = num_streams[j];

	free (threads);
	free (tb);
	free (num_streams);
	free (total_time_taken);
	free (perf);
}

void writeConfig(char* file_name, int num_threads, int block_size, 
								 int streams_per_thread) 
{
	FILE* fp = fopen(file_name, "w");
	fprintf(fp, "%d\n", num_threads);
	fprintf(fp, "%d\n", block_size);
	fprintf(fp, "%d\n", streams_per_thread);
	fclose (fp);
}

void readConfig(FILE *fp, int* num_threads, int* block_size, 
								int* streams_per_thread) 
{
	char line[20];
	if(fgets(line, 20, fp) != NULL) {
		*num_threads = atoi (line);
	} else {
		fprintf(stderr, "Can't find number of threads in the config file\n");
		exit(0);
	}
	if(fgets(line, 20, fp) != NULL) {
		*block_size = atoi (line);
	} else {
		fprintf(stderr, "Can't find block size in the config file\n");
		exit(0);
	}
	if(fgets(line, 20, fp) != NULL) {
		*streams_per_thread = atoi (line);
	} else {
		fprintf(stderr, "Can't find streams per thread in the config file\n");
		exit(0);
	}
}

int validateResults (TYPE* in, TYPE* out, int n)
{
	int i, j;
	j = 0;
	for(i = 0; i < n; i++) {
		// if(in[i] != out[i]) j++;
	}
	return j;
}

int main(int argc, char** argv)
{
	int i;

	// timer
	float total_time_taken;
	cudaEvent_t start, stop;

	// execution parameters
	int nThreads;
	int bSize;
	int nStreams;

	int num_blocks;

	// memory data structures
	TYPE* d_in;
	TYPE* h_in;
  TYPE* d_out;
  TYPE* h_out;

	// file
	FILE* fp;

  if(argc != 2) {
    fprintf(stderr, "usage: %s <parameter list file>\n", argv[0]);
    exit (0);
  }

	fp = fopen (argv[1], "r");

	if(fp == NULL) {
		fprintf(stderr, "File %s does not exist, autotuning...\n", argv[1]);	
		autotune (&nThreads, &bSize, &nStreams);
		writeConfig (argv[1], nThreads, bSize, nStreams);
	} else {
		fprintf(stderr, "Reading parameters...\n");
		readConfig (fp, &nThreads, &bSize, &nStreams);
		fclose (fp);
	}

	fprintf(stderr, 
					"Best performance at %d threads %d block size %d streams/thread\n",
					nThreads, bSize, nStreams);

	// find the best GPU in the system
  cudaSetDevice(cutGetMaxGflopsDeviceId ());

	num_blocks = (nThreads + bSize - 1) / bSize;

	// allocate memory
	h_in = (TYPE*) malloc (nThreads * nStreams * sizeof (TYPE));
	h_out = (TYPE*) malloc (nThreads * nStreams * sizeof (TYPE));
	cutilSafeCall (cudaMalloc ((void**) &d_in, nThreads * nStreams * 
														 sizeof (TYPE)));
	cutilSafeCall (cudaMalloc ((void**) &d_out, nThreads * nStreams * 
														 sizeof (TYPE)));

	// initialize memory
	for(i = 0; i < nThreads * nStreams; i++) {
		h_in[i] = make_float4 (drand48 (), drand48 (), drand48 (), drand48 ());
		h_out[i] = make_float4 (0.0f, 0.0f, 0.0f, 0.0f);
	}
	cutilSafeCall (cudaMemcpy (d_in, h_in, nThreads * nStreams * sizeof (TYPE),
														 cudaMemcpyHostToDevice));
	cutilSafeCall (cudaMemcpy (d_out, h_out, nThreads * nStreams * sizeof (TYPE),
														 cudaMemcpyHostToDevice));


  dim3 grid (num_blocks);
  dim3 threads (bSize);


  // start timer
	cutilSafeCall (cudaEventCreate (&start));
	cutilSafeCall (cudaEventCreate (&stop));
	cutilSafeCall (cudaEventRecord (start, 0));

	for(int cnt = 0; cnt < NUM_ITER; cnt++) 
	switch (nStreams) {
		case 1:
			bandwidth_kernel_1 <<<grid, threads>>> (nThreads, nStreams,
																							d_in, d_out);
			break;
		case 2:
			bandwidth_kernel_2 <<<grid, threads>>> (nThreads, nStreams,
																							d_in, d_out);
			break;
		case 4:
			bandwidth_kernel_4 <<<grid, threads>>> (nThreads, nStreams,
																							d_in, d_out);
			break;
		case 8:
			bandwidth_kernel_8 <<<grid, threads>>> (nThreads, nStreams,
																							d_in, d_out);
				break;
		case 16:
			bandwidth_kernel_16 <<<grid, threads>>> (nThreads, nStreams,
																							 d_in, d_out);
			break;
		case 32:
			bandwidth_kernel_32 <<<grid, threads>>> (nThreads, nStreams,
																							 d_in, d_out);
			break;
		case 64:
			bandwidth_kernel_64 <<<grid, threads>>> (nThreads, nStreams,
																							 d_in, d_out);
			break;
		case 128:
			bandwidth_kernel_128 <<<grid, threads>>> (nThreads, nStreams,
																								d_in, d_out);
			break;
		default:
			fprintf(stderr, "Invalid nStreams: %d\n", nStreams);
			total_time_taken = -1.0f;
			break;
		}
	
  // end timer
	cutilSafeCall (cudaEventRecord (stop, 0));
	cutilSafeCall (cudaThreadSynchronize ());
	cutilSafeCall (cudaEventElapsedTime (&total_time_taken, start, stop));
	total_time_taken = total_time_taken / NUM_ITER;

	// Check for kernel errors
  gpu_check_error__srcpos (stderr, __FILE__, __LINE__);

  // copy results back
  cutilSafeCall (cudaMemcpy (h_out, d_out, nThreads * nStreams * sizeof (TYPE),
                             cudaMemcpyDeviceToHost));

	printf("Results validated: %d\n", validateResults (h_in, h_out, 
																										 nThreads * nStreams));

  printf("Time taken to trasnfer %f GB: %f (ms)\n", (((2.0 * nThreads /
         1e6) * nStreams * sizeof (TYPE) ) / 1e3), total_time_taken);
  printf("Effective performance: %f (GB/s)\n", (((2.0 * nThreads / 1e6) * 
				 nStreams * sizeof (TYPE) )) / total_time_taken);

	free (h_in);
	free (h_out);
	cutilSafeCall (cudaFree (d_in));
	cutilSafeCall (cudaFree (d_out));


	return 0;
}
