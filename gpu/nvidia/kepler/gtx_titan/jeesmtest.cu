// libraries
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <omp.h>

#include <cutil_inline.h>

#include "cache_kernel.h"
#include "pm_lib.h"

// #define NUM_ITER 1

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

void readConfigPower(int* wordsPerThread, int* nThreads, int* bSize, int* sensor_mask, int* sample_period, int* num_samples, char** argv)
{
	*wordsPerThread = atoi (argv[1]);
	*nThreads = atoi (argv[2]);
	*bSize = atoi (argv[3]);
	*sensor_mask = atoi (argv[4]);
	*sample_period = atoi (argv[5]);
	*num_samples = atoi (argv[6]);

}


void readConfig(int* wordsPerThread, int* nThreads, int* bSize, char** argv)
{
	*wordsPerThread = atoi (argv[1]);
	*nThreads = atoi (argv[2]);
	*bSize = atoi (argv[3]);

}

int validateResults(int nThreads, int bSize, int wordsPerThread, int* out, int* in)
{
	int i, j;
	int tmp, cnt;
	int* test;
	
	test = (int*) malloc (nThreads * sizeof (int));
	for(i = 0; i < nThreads; i++) {
		test[i] = 0;
	}

	for(i = 0; i < nThreads; i++) {
		tmp = in[i % bSize];
		for(j = 0; j < wordsPerThread; j++) {	
			tmp = in[tmp];
		}
		test[i] = tmp;
	}

	cnt = 0;
	for(i = 0; i < nThreads; i++) {
		if(test[i] != out[i]) cnt++;
	}
	
	return cnt;
}


__global__ void clear_cache (int *in)
{
	int tid = threadIdx.x + blockIdx.x * blockDim.x;
	in[tid] = in[tid] + 1;
}

void powermonSetup (int* g_serial_fd, FILE** g_serial_fp,
                    struct termios *g_oldtio, struct termios *g_newtio,
                    char* dev, int sensor_mask, int sample_period,
                    int num_samples, int now)
{

  if(configure_tty (dev, g_serial_fd, g_serial_fp, g_oldtio, g_newtio)) {
    cleanup (*g_serial_fd, *g_serial_fp, g_oldtio);
    exit (1);
  }

  if(powermon_init (*g_serial_fd, *g_serial_fp)) {
    cleanup (*g_serial_fd, *g_serial_fp, g_oldtio);
    exit (1);
  }
  if(powermon_set_mask (sensor_mask, *g_serial_fp)) {
    cleanup (*g_serial_fd, *g_serial_fp, g_oldtio);
    exit (1);
  }
  if(powermon_set_samples (sample_period, num_samples, *g_serial_fp)) {
    cleanup (*g_serial_fd, *g_serial_fp, g_oldtio);
    exit (1);
  }

  if(powermon_set_time (now, *g_serial_fp)) {
    cleanup (*g_serial_fd, *g_serial_fp, g_oldtio);
    exit (1);
  }

}


float runTest (int* h_out, int* d_out, int* d_pchase, int nThreads, int bSize, int wordsPerThread)
{
  cudaEvent_t start, stop;
	float total_time_taken;

	int num_blocks = (nThreads + bSize - 1) / bSize;

  dim3 grid (num_blocks);
  dim3 threads (bSize);

	fprintf (stderr, "number of iterations is %d\n", NUM_ITER);


  // start timer
	cutilSafeCall (cudaEventCreate (&start));
	cutilSafeCall (cudaEventCreate (&stop));
	cutilSafeCall (cudaEventRecord (start, 0));

		for(int iter = 0; iter < NUM_ITER; iter++) {
		switch (wordsPerThread) {
			case 1:
				cache_kernel_1 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 2:
				cache_kernel_2 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 4:
				cache_kernel_4 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 8:
				cache_kernel_8 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 16:
				cache_kernel_16 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 32:
				cache_kernel_32 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 64:
				cache_kernel_64 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 128:
				cache_kernel_128 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 256:
				cache_kernel_256 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 512:
				cache_kernel_512 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 1024:
				cache_kernel_1024 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 2048:
				cache_kernel_2048 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 4096:
				cache_kernel_4096<<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			default:
				fprintf(stderr, "Invalid wordsPerThread: %d\n", wordsPerThread);
				total_time_taken = -1.0f;
				break;
		}
	}

  // end timer
  cutilSafeCall (cudaEventRecord (stop, 0));
  cutilSafeCall (cudaThreadSynchronize ());
  cutilSafeCall (cudaEventElapsedTime (&total_time_taken, start, stop));

  gpu_check_error__srcpos (stderr, __FILE__, __LINE__);

  // copy results back
  cutilSafeCall (cudaMemcpy (h_out, d_out, nThreads * sizeof (int),
                             cudaMemcpyDeviceToHost));
	return total_time_taken; 
}


int main(int argc, char** argv)
{
	int i;
	// long float total_dram;
	long double total_dram;

	#if MEASURE_POWER
  int g_serial_fd;
  FILE* g_serial_fp;
  struct termios g_oldtio, g_newtio;
  char* dev = "/dev/ttyUSB0";
  int sensor_mask;
  int sample_period;
  int num_samples;
	#endif

	// timer
	// cudaEvent_t start, stop;
	float total_time_taken;

	// execution parameters
	int wordsPerThread;
	int nThreads;
	int bSize;

	// int num_blocks;

	// memory data structures
  int* d_out;
  int* h_out;
	int* h_pchase;
	int* d_pchase;

	#if MEASURE_POWER
  if(argc != 7) {
    fprintf(stderr, "usage: %s <word/thread> <# threads> <threads/block> <sensor mask> <sample period> <# samples>\n", 
						argv[0]);
    exit (0);
  } else {
		readConfigPower (&wordsPerThread, &nThreads, &bSize, &sensor_mask, 
								&sample_period, &num_samples, argv);
	}
	#else
  if(argc < 4) {
    fprintf(stderr, "usage: %s <word/thread> <# threads> <threads/block>\n",
						argv[0]);
    exit (0);
  } else {
		readConfig (&wordsPerThread, &nThreads, &bSize, argv);
	}

	#endif


	// find the best GPU in the system
  cudaSetDevice(cutGetMaxGflopsDeviceId ());

	// clear the cache before starting the test
	#if 1
	{
		int cache_clear = 4 * 1024 * 1024; // 4 MB
		int* h_temp = (int*) malloc (cache_clear);
		for(int i = 0; i < cache_clear / sizeof (int); i++) h_temp[i] = 1;
		int* d_temp;
		cutilSafeCall (cudaMalloc ((void**) &d_temp, cache_clear));
		cutilSafeCall (cudaMemcpy (d_temp, h_temp, cache_clear,
															 cudaMemcpyHostToDevice));

		int nt = cache_clear / sizeof (int);
		int nb = nt / 512;
		clear_cache <<<nb, 512>>> (d_temp);
  	cutilSafeCall (cudaThreadSynchronize ());
	}
	#endif


	// allocate memory
	h_out = (int*) malloc (nThreads * sizeof (int));
	h_pchase = (int*) malloc (bSize * sizeof (int));
	cutilSafeCall (cudaMalloc ((void**) &d_out, nThreads * sizeof (int)));
	cutilSafeCall (cudaMalloc ((void**) &d_pchase, bSize * sizeof (int)));

	// initialize memory
	for(i = 0; i < bSize - 1; i++) {
		// h_pchase[i] = i + 1;
		h_pchase[i] = i;
	}
	// h_pchase[bSize - 1] = 0;
	h_pchase[bSize - 1] = bSize - 1;
	cutilSafeCall (cudaMemcpy (d_pchase, h_pchase, bSize * sizeof (int), 
														 cudaMemcpyHostToDevice));

	#if MEASURE_POWER
  powermonSetup (&g_serial_fd, &g_serial_fp, &g_oldtio, &g_newtio, dev,
                 sensor_mask, sample_period, num_samples, 1);
	#endif


	#if 0
	num_blocks = (nThreads + bSize - 1) / bSize;

  dim3 grid (num_blocks);
  dim3 threads (bSize);

  // start timer
	cutilSafeCall (cudaEventCreate (&start));
	cutilSafeCall (cudaEventCreate (&stop));
	cutilSafeCall (cudaEventRecord (start, 0));

		for(int iter = 0; iter < NUM_ITER; iter++) {
		switch (wordsPerThread) {
			case 1:
				cache_kernel_1 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 2:
				cache_kernel_2 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 4:
				cache_kernel_4 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 8:
				cache_kernel_8 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 16:
				cache_kernel_16 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 32:
				cache_kernel_32 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 64:
				cache_kernel_64 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 128:
				cache_kernel_128 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 256:
				cache_kernel_256 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 512:
				cache_kernel_512 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 1024:
				cache_kernel_1024 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 2048:
				cache_kernel_2048 <<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			case 4096:
				cache_kernel_4096<<<grid, threads>>> (nThreads, d_out, d_pchase);	
				break;
			default:
				fprintf(stderr, "Invalid wordsPerThread: %d\n", wordsPerThread);
				total_time_taken = -1.0f;
				break;
		}
	}

  // end timer
  cutilSafeCall (cudaEventRecord (stop, 0));
  // cutilSafeCall (cutilDeviceSynchronize ());
  cutilSafeCall (cudaThreadSynchronize ());
  cutilSafeCall (cudaEventElapsedTime (&total_time_taken, start, stop));

  gpu_check_error__srcpos (stderr, __FILE__, __LINE__);

  // copy results back
  cutilSafeCall (cudaMemcpy (h_out, d_out, nThreads * sizeof (int),
                             cudaMemcpyDeviceToHost));
	#endif

	#if 1	
	#if MEASURE_POWER
	#pragma omp parallel num_threads(2)
	{
		#pragma omp sections
		{
			#pragma omp section
			{
				powermon_get_samples (g_serial_fp);
				fprintf (stderr, "Power measurement code running on thread %d\n", 
								 omp_get_thread_num ());
			}
			#pragma omp section
			{
				sleep (1);
				total_time_taken = runTest (h_out, d_out, d_pchase, nThreads, bSize, 
																		wordsPerThread);
				sleep (1);
				fprintf (stderr, "Test kernel running on thread %d\n", 
								 omp_get_thread_num ());
			}
		}
	}
	#else
		total_time_taken = runTest (h_out, d_out, d_pchase, nThreads, bSize, 
																wordsPerThread);
	#endif
	#endif

	/*
	fprintf(stderr, "Results validated: %d\n", validateResults (nThreads, bSize, 
																															wordsPerThread, 
																															h_out, h_pchase));
	 */

	total_time_taken = total_time_taken / NUM_ITER;
	total_dram = ((wordsPerThread + 1) * (1.0 * nThreads/1e9)) * sizeof (int);
  fprintf (stderr, "Time taken to load %Lg GBs: %f (ms)\n", total_dram, 
					 total_time_taken);
	fprintf (stderr, "Effective bandwidth: %Lg (GB/s)\n", 
					 (total_dram/total_time_taken * 1e3));
	/*
	fprintf (stderr, "Effective compute: %lf (GFLOPS)\n", 
					 ((2.0 * wordsPerThread * nThreads)/total_time_taken)/1e6);
	 */

	free (h_out);
	cutilSafeCall (cudaFree (d_out));
	free (h_pchase);
	cutilSafeCall (cudaFree (d_pchase));

	return 0;
}
