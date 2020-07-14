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

// libraries
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <cutil_inline.h>

#include "compute_kernel.h"

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


float runTest(int num_threads, int block_size, int num_flops)
{
	int num_blocks = (num_threads + block_size - 1) / block_size;

	TYPE* h_out;
	TYPE* d_out;

	// timer
	cudaEvent_t start, stop;
	float total_time_taken;

	if(num_blocks <= 65535) {

		// allocate memory
		h_out = (TYPE*) malloc (num_threads * sizeof (TYPE));
		cutilSafeCall (cudaMalloc ((void**) &d_out, num_threads * sizeof (TYPE)));

		dim3 grid (num_blocks);
		dim3 threads (block_size);

		// start timer
    cutilSafeCall (cudaEventCreate (&start));
    cutilSafeCall (cudaEventCreate (&stop));
    cutilSafeCall (cudaEventRecord (start, 0));

		// execute kernel
		switch (num_flops) {
			case 1:
				compute_kernel_1 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 2:
				compute_kernel_2 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 4:
				compute_kernel_4 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 8:
				compute_kernel_8 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 16:
				compute_kernel_16 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 32:
				compute_kernel_32 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 64:
				compute_kernel_64 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 128:
				compute_kernel_128 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 256:
				compute_kernel_256 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 512:
				compute_kernel_512 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 1024:
				compute_kernel_1024 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 2048:
				compute_kernel_2048 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			case 4096:
				compute_kernel_4096 <<<grid, threads>>> (num_threads, num_flops, d_out);
				break;
			default:
				fprintf(stderr, "Invalid num_flops: %d\n", num_flops);
				total_time_taken = -1.0f;
				break;
		}
		// end timer
    cutilSafeCall (cudaEventRecord (stop, 0));
    // cutilSafeCall (cutilDeviceSynchronize ());
    cutilSafeCall (cudaThreadSynchronize ());
    cutilSafeCall (cudaEventElapsedTime (&total_time_taken, start, stop));

		gpu_check_error__srcpos (stderr, __FILE__, __LINE__);

		free (h_out);
		cutilSafeCall (cudaFree (d_out));

		fprintf(stderr, 
						"Execution configuration: %d blocks %d threads %d flops: %f (ms)\n",
						num_blocks, block_size, num_flops, total_time_taken);

	} else {
		total_time_taken = -1.0f;
	}

	return total_time_taken;
}



void autotune(int* num_threads, int* block_size, int* flops_per_thread)
{
	int i, j, k, l;

	// structures for storing execution configurations
	int *threads;
	int *tb;
	int *num_flops;
  float* total_time_taken;
	float* perf;
	float best_perf;

	// allocate memory for storing kernel execution configuration 
	threads = (int*) malloc (5 * 3 * 13 * sizeof (int));
	tb = (int*) malloc (5 * 3 * 13 * sizeof (int));
	num_flops = (int*) malloc (5 * 3 * 13 * sizeof (int));
	total_time_taken = (float*) malloc (5 * 3 * 13 * sizeof (float));
	perf = (float*) malloc (5 * 3 * 13 * sizeof (float));

	// autotune for best execution configuration
	l = 0;
	// vary # of threads
	for(i = 1048576; i <= 16777216; i *= 2) {
		// vary thread block size
		for(j = 128; j <= 512; j *= 2) {
			for(k = 1; k <= 4096; k *= 2) {
				threads[l] = i;
				tb[l] = j;
				num_flops[l] = k;

				// wrapper function for the test kernels
				total_time_taken[l] = runTest (i, j, k);
			
				if(total_time_taken[l] > 0) {
					perf[l] = ((((2.0 * i / 1e6) * k)) / total_time_taken[l]);
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
	*flops_per_thread = num_flops[j];

	free (threads);
	free (tb);
	free (num_flops);
	free (total_time_taken);
	free (perf);
}

void writeConfig(char* file_name, int num_threads, int block_size, 
								 int flops_per_thread) 
{
	FILE* fp = fopen(file_name, "w");
	fprintf(fp, "%d\n", num_threads);
	fprintf(fp, "%d\n", block_size);
	fprintf(fp, "%d\n", flops_per_thread);
	fclose (fp);
}

void readConfig(FILE *fp, int* num_threads, int* block_size, 
								int* flops_per_thread) 
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
		*flops_per_thread = atoi (line);
	} else {
		fprintf(stderr, "Can't find flops per thread in the config file\n");
		exit(0);
	}
}

#if 0
int validateResults(TYPE* out, int nThreads, int bSize, int nFlops)
{
	int i, j, k;
	int index;
	TYPE tmp1, tmp2;

	fprintf(stderr, "generating random numbers from 0 to %d\n", RAND_MAX);

	// test 1000 samples
	k = 0;
	for(i = 0; i < 1000; i++) {
		// index = rand () % nThreads;	
		index = i;
		tmp1 = 1.0 * (index % bSize);
		tmp2 = 2.0 * (index % bSize);
		for(j = 0; j < (nFlops / 2); j++) {
			tmp1 = tmp1 + tmp1 * CONST;
			tmp2 = tmp2 + tmp2 * CONST;
		}
		if(abs ((tmp1 + tmp2) - out[index]) > 1e-5) {
			k++;
			// fprintf(stderr, "%d ==> %f %f\n", index, (tmp1 + tmp2), out[index]);
		} else {
			// fprintf(stderr, "%d <== %f %f\n", index, (tmp1 + tmp2), out[index]);
		}
	}
	return k;
}
#endif
int main(int argc, char** argv)
{
	int i;

	// timer
	cudaEvent_t start, stop;
	float total_time_taken;

	// execution parameters
	int nThreads;
	int bSize;
	int nFlops;

	int num_blocks;

	// memory data structures
	TYPE* h_in;
	TYPE* d_in;
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
		autotune (&nThreads, &bSize, &nFlops);
		writeConfig (argv[1], nThreads, bSize, nFlops);
	} else {
		fprintf(stderr, "Reading parameters...\n");
		readConfig (fp, &nThreads, &bSize, &nFlops);
		fclose (fp);
	}

	fprintf(stderr, 
					"Best performance at %d threads %d block size %d flops/thread\n",
					nThreads, bSize, nFlops);
	
	// find the best GPU in the system
	cudaSetDevice(cutGetMaxGflopsDeviceId ());

	num_blocks = (nThreads + bSize - 1) / bSize;

	// allocate memory
	h_in = (TYPE*) malloc (nThreads * sizeof (TYPE));
	h_out = (TYPE*) malloc (nThreads * sizeof (TYPE));
	cutilSafeCall (cudaMalloc ((void**) &d_in, nThreads * sizeof (TYPE)));
	cutilSafeCall (cudaMalloc ((void**) &d_out, nThreads * sizeof (TYPE)));

	// initialize memory
	for(i = 0; i < nThreads; i++) {
		h_in[i] = drand48 ();
	}
	cutilSafeCall (cudaMemcpy (d_in, h_in, nThreads * sizeof (TYPE), 
														 cudaMemcpyHostToDevice));

	
  dim3 grid (num_blocks);
  dim3 threads (bSize);

  // start timer
	cutilSafeCall (cudaEventCreate (&start));
	cutilSafeCall (cudaEventCreate (&stop));
	cutilSafeCall (cudaEventRecord (start, 0));

		for(int iter = 0; iter < NUM_ITER; iter++) {
		switch (nFlops) {
			case 1:
				compute_kernel_1 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 2:
				compute_kernel_2 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 4:
				compute_kernel_4 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 8:
				compute_kernel_8 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 16:
				compute_kernel_16 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 32:
				compute_kernel_32 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 64:
				compute_kernel_64 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 128:
				compute_kernel_128 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 256:
				compute_kernel_256 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 512:
				compute_kernel_512 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 1024:
				compute_kernel_1024 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 2048:
				compute_kernel_2048 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			case 4096:
				compute_kernel_4096 <<<grid, threads>>> (nThreads, nFlops, d_out);
				break;
			default:
				fprintf(stderr, "Invalid nFlops: %d\n", nFlops);
				total_time_taken = -1.0f;
				break;
		}
	}

  // end timer
  cutilSafeCall (cudaEventRecord (stop, 0));
  // cutilSafeCall (cutilDeviceSynchronize ());
  cutilSafeCall (cudaThreadSynchronize ());
  cutilSafeCall (cudaEventElapsedTime (&total_time_taken, start, stop));
  cutilSafeCall (cudaThreadSynchronize ());

	total_time_taken = total_time_taken / NUM_ITER;

  gpu_check_error__srcpos (stderr, __FILE__, __LINE__);

  // copy results back
  cutilSafeCall (cudaMemcpy (h_out, d_out, nThreads * sizeof (TYPE),
                             cudaMemcpyDeviceToHost));

	/*
	fprintf(stderr, "Results validated: %d\n", validateResults (h_out, nThreads, 
																															bSize, nFlops));
	 */

  fprintf(stderr, "Time taken to execute %f gflops: %f (ms)\n", (((2.0 * 
					nThreads / 1e6) * nFlops) / 1e3), total_time_taken);
  fprintf(stderr, "Effective performance: %f (GFlops/s)\n",
         (((2.0 * nThreads / 1e6) * nFlops)) / total_time_taken);

	free (h_out);
	cutilSafeCall (cudaFree (d_out));

	return 0;
}
