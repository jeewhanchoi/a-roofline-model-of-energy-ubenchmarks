// libraries
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <omp.h>

#include <cutil_inline.h>

#include "py.intensity_kernel.ilp.h"

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


float executeKernel(int num_blocks, int bSize, int nThreads, int nStreams, 
									 int nFlops, TYPE* d_in, TYPE* d_out)
{

  cudaEvent_t start, stop;
  float total_time_taken;

	dim3 grid (num_blocks);
	dim3 threads (bSize);

	/*
	fprintf(stderr, "Executing kernel %d nStreams and %d nFlops\n", 
					nStreams, nFlops);
	 */

  cutilSafeCall (cudaEventCreate (&start));
  cutilSafeCall (cudaEventCreate (&stop));
  cutilSafeCall (cudaEventRecord (start, 0));

	nThreads = nThreads * nStreams;
	switch (nFlops) {
		case 1:
			/* intensity 0.25 */
			intensity_kernel_1_1 <<<grid, threads>>> (nThreads, nStreams,
																								d_in, d_out);
			break;
		case 2:
			/* intensity 0.5 */
			intensity_kernel_1_2 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 3:
			/* intensity 0.75 */
			intensity_kernel_1_3 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;

		case 4:
			/* intensity 1.0 */
			intensity_kernel_1_4 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 5:
			/* intensity 1.25 */
			intensity_kernel_1_5 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 6:
			/* intensity 1.5 */
			intensity_kernel_1_6 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 7:
			/* intensity 1.75 */
			intensity_kernel_1_7 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 8:
			/* intensity 2.0 */
			intensity_kernel_1_8 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 10:
			/* intensity 2.5 */
			intensity_kernel_1_10 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 12:
			/* intensity 3.0 */
			intensity_kernel_1_12 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 14:
			/* intensity 3.5 */
			intensity_kernel_1_14 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 16:
			/* intensity 4.0 */
			intensity_kernel_1_16 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 20:
			/* intensity 5.0 */
			intensity_kernel_1_20 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 24:
			/* intensity 6.0 */
			intensity_kernel_1_24 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 28:
			/* intensity 7.0 */
			intensity_kernel_1_28 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 32:
			/* intensity 8.0 */
			intensity_kernel_1_32 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 40:
			/* intensity 10.0 */
			intensity_kernel_1_40 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 48:
			/* intensity 12.0 */
			intensity_kernel_1_48 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 56:
			/* intensity 14.0 */
			intensity_kernel_1_56 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 64:
			/* intensity 16.0 */
			intensity_kernel_1_64 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 72:
			/* intensity 18.0 */
			intensity_kernel_1_72 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 128:
			/* intensity 32.0 */
			intensity_kernel_1_128 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 160:
			/* intensity 40.0 */
			intensity_kernel_1_160 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;

		case 256:
			/* intensity 64.0 */
			intensity_kernel_1_256 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 512:
			/* intensity 128.0 */
			intensity_kernel_1_512 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 1024:
			/* intensity 256.0 */
			intensity_kernel_1_1024 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 2048:
			/* intensity 512.0 */
			intensity_kernel_1_2048 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		case 4096:
			/* intensity 1024.0 */
			intensity_kernel_1_4096 <<<grid, threads>>> (nThreads, nStreams,
		                                            d_in, d_out);
			break;
		default:
			fprintf(stderr, "Invalid combination: %d nStreams and %d nFlops\n",
							nStreams, nFlops);
			break;
		}

  // end timer
  cutilSafeCall (cudaEventRecord (stop, 0));
  /* cutilSafeCall (cutilDeviceSynchronize ()); */
  cutilSafeCall (cudaThreadSynchronize ());
  cutilSafeCall (cudaEventElapsedTime (&total_time_taken, start, stop));

	return total_time_taken;
}

int main(int argc, char** argv)
{	
	int i;

	// timer
	float total_time_taken;

  // execution parameters
  double intensity;
  int nThreads;
  int bSize;
  int nStreams;
	int nFlops;

	int num_blocks;

	// memory
	TYPE* h_in;
	TYPE* h_out;
	TYPE* d_in;
	TYPE* d_out;

	// file
	FILE* fp;

	if(argc != 3) {
		fprintf(stderr, "usage: %s <file name> <intensity>\n", argv[0]);
		exit (0);
	}

	// intensity is flop-to-byte ratio
	intensity = atof (argv[2]);
	nFlops = (intensity * sizeof (TYPE)) / 4;

	// input file
	fp = fopen (argv[1], "r");

  if(fp == NULL) {
    fprintf(stderr, "File %s does not exist, exiting...\n", argv[1]);
		exit (0);
  } else {
    fprintf(stderr, "Reading parameters...\n");
    readConfig (fp, &nThreads, &bSize, &nStreams);
    fclose (fp);
  }

	fprintf(stderr,
					"Best bandwidth at %d threads %d block size %d streams/thread\n",
					nThreads, bSize, nStreams);
	fprintf(stderr, "Required flops for intensity of %.2f: %d\n", intensity, 
					nFlops);

	num_blocks = (nThreads * nStreams + bSize - 1) / bSize;
	fprintf(stderr, "Number of thread blocks: %d\n", num_blocks);

	// find the best GPU in the system
  fprintf(stderr, "Running on device: %d\n", cutGetMaxGflopsDeviceId ());
	cudaSetDevice(cutGetMaxGflopsDeviceId ());


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


	// Execute kernel
	total_time_taken = 0.0;
	total_time_taken = executeKernel (num_blocks, bSize, nThreads, nStreams, 
																			 nFlops, d_in, d_out);


  gpu_check_error__srcpos (stderr, __FILE__, __LINE__);

  // copy results back
  cutilSafeCall (cudaMemcpy (h_out, d_out, nThreads * nStreams * sizeof (TYPE),
                             cudaMemcpyDeviceToHost));

  printf("Time taken to trasnfer %f GB and execute %f Gflops: %f (ms)\n", 
				 (((2.0 * nThreads / 1e6) * nStreams * sizeof (TYPE) ) / 1e3), 
				 (((2.0 * nThreads / 1e6) * nStreams * nFlops * 4) / 1e3),
				 total_time_taken);
  printf("Effective performance: %f (GB/s)\n", (((2.0 * nThreads / 1e6) *
         nStreams * sizeof (TYPE) )) / total_time_taken);
  fprintf(stderr, "Effective performance: %f (GFlops/s)\n",
         (((2.0 * nThreads / 1e6) * nFlops * 4 * nStreams)) / total_time_taken);


  free (h_in);
  free (h_out);
  cutilSafeCall (cudaFree (d_in));
  cutilSafeCall (cudaFree (d_out));


	fprintf(stderr, "Target intensity is %.2f\n", intensity);
	return 0;
}
