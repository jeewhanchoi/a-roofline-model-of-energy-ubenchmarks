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
#include <unistd.h>

#include <cutil_inline.h>

// #include "intensity_kernel.h"
#include "py.intensity_kernel.h"

#define NUM_ITER 10

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

void executeKernel(int num_blocks, int bSize, int nThreads, int nStreams, 
									 int nFlops, TYPE* d_in, TYPE* d_out)
{
	dim3 grid (num_blocks);
	dim3 threads (bSize);

	/*
	fprintf(stderr, "Executing kernel %d nStreams and %d nFlops\n", 
					nStreams, nFlops);
	 */

  switch (nStreams) {
    case 1:
			switch (nFlops) {
				case 1:
		      intensity_kernel_1_1 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 2:
		      intensity_kernel_1_2 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 3:
		      intensity_kernel_1_3 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 4:
		      intensity_kernel_1_4 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 5:
		      intensity_kernel_1_5 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 6:
		      intensity_kernel_1_6 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 7:
		      intensity_kernel_1_7 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 8:
		      intensity_kernel_1_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 9:
		      intensity_kernel_1_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 10:
		      intensity_kernel_1_10 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 11:
		      intensity_kernel_1_11 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 12:
		      intensity_kernel_1_12 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 13:
		      intensity_kernel_1_13 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 14:
		      intensity_kernel_1_14 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 15:
		      intensity_kernel_1_15 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 16:
		      intensity_kernel_1_16 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 17:
		      intensity_kernel_1_17 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 18:
		      intensity_kernel_1_18 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 19:
		      intensity_kernel_1_19 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 20:
		      intensity_kernel_1_20 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 21:
		      intensity_kernel_1_21 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 22:
		      intensity_kernel_1_22 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 23:
		      intensity_kernel_1_23 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 24:
		      intensity_kernel_1_24 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 25:
		      intensity_kernel_1_25 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 26:
		      intensity_kernel_1_26 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 27:
		      intensity_kernel_1_27 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 28:
		      intensity_kernel_1_28 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 29:
		      intensity_kernel_1_29 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 30:
		      intensity_kernel_1_30 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 31:
		      intensity_kernel_1_31 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 32:
		      intensity_kernel_1_32 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 64:
		      intensity_kernel_1_64 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 128:
		      intensity_kernel_1_128 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 256:
		      intensity_kernel_1_256 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 512:
		      intensity_kernel_1_512 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				default:
					fprintf(stderr, "Invalid combination: %d nStreams and %d nFlops\n",
									nStreams, nFlops);
					break;
			}
      break;
    case 2:
			switch (nFlops) {
				case 1:
		      intensity_kernel_2_1 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 2:
		      intensity_kernel_2_2 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 3:
		      intensity_kernel_2_3 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 4:
		      intensity_kernel_2_4 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 5:
		      intensity_kernel_2_5 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 6:
		      intensity_kernel_2_6 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 7:
		      intensity_kernel_2_7 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 8:
		      intensity_kernel_2_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 9:
		      intensity_kernel_2_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 10:
		      intensity_kernel_2_10 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 11:
		      intensity_kernel_2_11 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 12:
		      intensity_kernel_2_12 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 13:
		      intensity_kernel_2_13 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 14:
		      intensity_kernel_2_14 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 15:
		      intensity_kernel_2_15 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 16:
		      intensity_kernel_2_16 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 17:
		      intensity_kernel_2_17 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 18:
		      intensity_kernel_2_18 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 19:
		      intensity_kernel_2_19 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 20:
		      intensity_kernel_2_20 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 21:
		      intensity_kernel_2_21 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 22:
		      intensity_kernel_2_22 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 23:
		      intensity_kernel_2_23 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 24:
		      intensity_kernel_2_24 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 25:
		      intensity_kernel_2_25 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 26:
		      intensity_kernel_2_26 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 27:
		      intensity_kernel_2_27 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 28:
		      intensity_kernel_2_28 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 29:
		      intensity_kernel_2_29 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 30:
		      intensity_kernel_2_30 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 31:
		      intensity_kernel_2_31 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 32:
		      intensity_kernel_2_32 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 64:
		      intensity_kernel_2_64 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 128:
		      intensity_kernel_2_128 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 256:
		      intensity_kernel_2_256 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 512:
		      intensity_kernel_2_512 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 1024:
		      intensity_kernel_2_1024 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 2048:
		      intensity_kernel_2_2048 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 4096:
		      intensity_kernel_2_4096 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				default:
					fprintf(stderr, "Invalid combination: %d nStreams and %d nFlops\n",
									nStreams, nFlops);
					break;
			}
      break;
    case 4:
			switch (nFlops) {
				case 1:
		      intensity_kernel_4_1 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 2:
		      intensity_kernel_4_2 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 3:
		      intensity_kernel_4_3 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 4:
		      intensity_kernel_4_4 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 5:
		      intensity_kernel_4_5 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 6:
		      intensity_kernel_4_6 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 7:
		      intensity_kernel_4_7 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 8:
		      intensity_kernel_4_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 9:
		      intensity_kernel_4_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 10:
		      intensity_kernel_4_10 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 11:
		      intensity_kernel_4_11 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 12:
		      intensity_kernel_4_12 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 13:
		      intensity_kernel_4_13 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 14:
		      intensity_kernel_4_14 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 15:
		      intensity_kernel_4_15 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 16:
		      intensity_kernel_4_16 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 17:
		      intensity_kernel_4_17 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 18:
		      intensity_kernel_4_18 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 19:
		      intensity_kernel_4_19 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 20:
		      intensity_kernel_4_20 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 21:
		      intensity_kernel_4_21 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 22:
		      intensity_kernel_4_22 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 23:
		      intensity_kernel_4_23 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 24:
		      intensity_kernel_4_24 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 25:
		      intensity_kernel_4_25 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 26:
		      intensity_kernel_4_26 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 27:
		      intensity_kernel_4_27 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 28:
		      intensity_kernel_4_28 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 29:
		      intensity_kernel_4_29 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 30:
		      intensity_kernel_4_30 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 31:
		      intensity_kernel_4_31 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 32:
		      intensity_kernel_4_32 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 64:
		      intensity_kernel_4_64 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 128:
		      intensity_kernel_4_128 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				default:
					fprintf(stderr, "Invalid combination: %d nStreams and %d nFlops\n",
									nStreams, nFlops);
					break;
			}
      break;
    case 8:
			switch (nFlops) {
				case 1:
		      intensity_kernel_8_1 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 2:
		      intensity_kernel_8_2 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 3:
		      intensity_kernel_8_3 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 4:
		      intensity_kernel_8_4 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 5:
		      intensity_kernel_8_5 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 6:
		      intensity_kernel_8_6 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 7:
		      intensity_kernel_8_7 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 8:
		      intensity_kernel_8_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 9:
		      intensity_kernel_8_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 10:
		      intensity_kernel_8_10 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 11:
		      intensity_kernel_8_11 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 12:
		      intensity_kernel_8_12 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 13:
		      intensity_kernel_8_13 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 14:
		      intensity_kernel_8_14 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 15:
		      intensity_kernel_8_15 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 16:
		      intensity_kernel_8_16 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 17:
		      intensity_kernel_8_17 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 18:
		      intensity_kernel_8_18 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 19:
		      intensity_kernel_8_19 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 20:
		      intensity_kernel_8_20 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 21:
		      intensity_kernel_8_21 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 22:
		      intensity_kernel_8_22 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 23:
		      intensity_kernel_8_23 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 24:
		      intensity_kernel_8_24 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 25:
		      intensity_kernel_8_25 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 26:
		      intensity_kernel_8_26 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 27:
		      intensity_kernel_8_27 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 28:
		      intensity_kernel_8_28 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 29:
		      intensity_kernel_8_29 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 30:
		      intensity_kernel_8_30 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 31:
		      intensity_kernel_8_31 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 32:
		      intensity_kernel_8_32 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 48:
		      intensity_kernel_8_48 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 64:
		      intensity_kernel_8_64 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 128:
		      intensity_kernel_8_128 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 160:
		      intensity_kernel_8_160 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 192:
		      intensity_kernel_8_192 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				default:
					fprintf(stderr, "Invalid combination: %d nStreams and %d nFlops\n",
									nStreams, nFlops);
					break;
			}
      break;
    case 16:
			switch (nFlops) {
				case 1:
		      intensity_kernel_16_1 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 2:
		      intensity_kernel_16_2 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 3:
		      intensity_kernel_16_3 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 4:
		      intensity_kernel_16_4 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 5:
		      intensity_kernel_16_5 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 6:
		      intensity_kernel_16_6 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 7:
		      intensity_kernel_16_7 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 8:
		      intensity_kernel_16_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 9:
		      intensity_kernel_16_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 10:
		      intensity_kernel_16_10 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 11:
		      intensity_kernel_16_11 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 12:
		      intensity_kernel_16_12 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 13:
		      intensity_kernel_16_13 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 14:
		      intensity_kernel_16_14 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 15:
		      intensity_kernel_16_15 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 16:
		      intensity_kernel_16_16 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 17:
		      intensity_kernel_16_17 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 18:
		      intensity_kernel_16_18 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 19:
		      intensity_kernel_16_19 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 20:
		      intensity_kernel_16_20 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 21:
		      intensity_kernel_16_21 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 22:
		      intensity_kernel_16_22 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 23:
		      intensity_kernel_16_23 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 24:
		      intensity_kernel_16_24 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 25:
		      intensity_kernel_16_25 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 26:
		      intensity_kernel_16_26 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 27:
		      intensity_kernel_16_27 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 28:
		      intensity_kernel_16_28 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 29:
		      intensity_kernel_16_29 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 30:
		      intensity_kernel_16_30 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 31:
		      intensity_kernel_16_31 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 32:
		      intensity_kernel_16_32 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				default:
					fprintf(stderr, "Invalid combination: %d nStreams and %d nFlops\n",
									nStreams, nFlops);
					break;
			}
      break;
    case 32:
			switch (nFlops) {
				case 1:
		      intensity_kernel_32_1 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 2:
		      intensity_kernel_32_2 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 3:
		      intensity_kernel_32_3 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 4:
		      intensity_kernel_32_4 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 5:
		      intensity_kernel_32_5 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 6:
		      intensity_kernel_32_6 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 7:
		      intensity_kernel_32_7 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 8:
		      intensity_kernel_32_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 9:
		      intensity_kernel_32_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 10:
		      intensity_kernel_32_10 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 11:
		      intensity_kernel_32_11 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 12:
		      intensity_kernel_32_12 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 13:
		      intensity_kernel_32_13 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 14:
		      intensity_kernel_32_14 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 15:
		      intensity_kernel_32_15 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 16:
		      intensity_kernel_32_16 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 17:
		      intensity_kernel_32_17 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 18:
		      intensity_kernel_32_18 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 19:
		      intensity_kernel_32_19 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 20:
		      intensity_kernel_32_20 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 21:
		      intensity_kernel_32_21 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 22:
		      intensity_kernel_32_22 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 23:
		      intensity_kernel_32_23 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 24:
		      intensity_kernel_32_24 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 25:
		      intensity_kernel_32_25 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 26:
		      intensity_kernel_32_26 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 27:
		      intensity_kernel_32_27 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 28:
		      intensity_kernel_32_28 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 29:
		      intensity_kernel_32_29 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 30:
		      intensity_kernel_32_30 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 31:
		      intensity_kernel_32_31 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 32:
		      intensity_kernel_32_32 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				default:
					fprintf(stderr, "Invalid combination: %d nStreams and %d nFlops\n",
									nStreams, nFlops);
					break;
			}
      break;
    case 64:
			switch (nFlops) {
				case 1:
		      intensity_kernel_64_1 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 2:
		      intensity_kernel_64_2 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 3:
		      intensity_kernel_64_3 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 4:
		      intensity_kernel_64_4 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 5:
		      intensity_kernel_64_5 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 6:
		      intensity_kernel_64_6 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 7:
		      intensity_kernel_64_7 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 8:
		      intensity_kernel_64_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 9:
		      intensity_kernel_64_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 10:
		      intensity_kernel_64_10 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 11:
		      intensity_kernel_64_11 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 12:
		      intensity_kernel_64_12 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 13:
		      intensity_kernel_64_13 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 14:
		      intensity_kernel_64_14 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 15:
		      intensity_kernel_64_15 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 16:
		      intensity_kernel_64_16 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 17:
		      intensity_kernel_64_17 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 18:
		      intensity_kernel_64_18 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 19:
		      intensity_kernel_64_19 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 20:
		      intensity_kernel_64_20 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 21:
		      intensity_kernel_64_21 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 22:
		      intensity_kernel_64_22 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 23:
		      intensity_kernel_64_23 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 24:
		      intensity_kernel_64_24 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 25:
		      intensity_kernel_64_25 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 26:
		      intensity_kernel_64_26 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 27:
		      intensity_kernel_64_27 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 28:
		      intensity_kernel_64_28 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 29:
		      intensity_kernel_64_29 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 30:
		      intensity_kernel_64_30 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 31:
		      intensity_kernel_64_31 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 32:
		      intensity_kernel_64_32 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				default:
					fprintf(stderr, "Invalid combination: %d nStreams and %d nFlops\n",
									nStreams, nFlops);
					break;
			}
      break;
    case 128:
			switch (nFlops) {
				case 1:
		      intensity_kernel_128_1 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 2:
		      intensity_kernel_128_2 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 3:
		      intensity_kernel_128_3 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 4:
		      intensity_kernel_128_4 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 5:
		      intensity_kernel_128_5 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 6:
		      intensity_kernel_128_6 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 7:
		      intensity_kernel_128_7 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 8:
		      intensity_kernel_128_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 9:
		      intensity_kernel_128_8 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 10:
		      intensity_kernel_128_10 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 11:
		      intensity_kernel_128_11 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 12:
		      intensity_kernel_128_12 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 13:
		      intensity_kernel_128_13 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 14:
		      intensity_kernel_128_14 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 15:
		      intensity_kernel_128_15 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 16:
		      intensity_kernel_128_16 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 17:
		      intensity_kernel_128_17 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 18:
		      intensity_kernel_128_18 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 19:
		      intensity_kernel_128_19 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 20:
		      intensity_kernel_128_20 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 21:
		      intensity_kernel_128_21 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 22:
		      intensity_kernel_128_22 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 23:
		      intensity_kernel_128_23 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 24:
		      intensity_kernel_128_24 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 25:
		      intensity_kernel_128_25 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 26:
		      intensity_kernel_128_26 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 27:
		      intensity_kernel_128_27 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 28:
		      intensity_kernel_128_28 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 29:
		      intensity_kernel_128_29 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 30:
		      intensity_kernel_128_30 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 31:
		      intensity_kernel_128_31 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				case 32:
		      intensity_kernel_128_32 <<<grid, threads>>> (nThreads, nStreams,
		                                              	d_in, d_out);
					break;
				default:
					fprintf(stderr, "Invalid combination: %d nStreams and %d nFlops\n",
									nStreams, nFlops);
					break;
			}
      break;
    default:
      fprintf(stderr, "Invalid nStreams: %d\n", nStreams);
      break;
	}
}

int main(int argc, char** argv)
{	
	int i;

	// timer
	float total_time_taken;
	cudaEvent_t start, stop;

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
		fprintf(stderr, "usage: %s <intensity> <file name>\n", argv[0]);
		exit (0);
	}

	// intensity is flop-to-byte ratio
	intensity = atof (argv[1]);
	nFlops = intensity * sizeof (TYPE);
	fp = fopen (argv[2], "r");

  if(fp == NULL) {
    fprintf(stderr, "File %s does not exist, exiting...\n", argv[2]);
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

	// find the best GPU in the system
  fprintf(stderr, "Running on device: %d\n", cutGetMaxGflopsDeviceId ());
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
		h_in[i] = (TYPE) drand48 ();
		h_out[i] = 0.0;
	}
	cutilSafeCall (cudaMemcpy (d_in, h_in, nThreads * nStreams * sizeof (TYPE),
														 cudaMemcpyHostToDevice));
	cutilSafeCall (cudaMemcpy (d_out, h_out, nThreads * nStreams * sizeof (TYPE),
														 cudaMemcpyHostToDevice));

	// dim3 grid (num_blocks);
	// dim3 threads (bSize);

	fprintf (stderr, "Sleeping...\n");
	sleep (1);

  // start timer
	cutilSafeCall (cudaEventCreate (&start));
	cutilSafeCall (cudaEventCreate (&stop));
	cutilSafeCall (cudaEventRecord (start, 0));

	for(int iter = 0; iter < NUM_ITER; iter++) {
		executeKernel (num_blocks, bSize, nThreads, nStreams, nFlops, d_in, d_out);
	}

  // end timer
  cutilSafeCall (cudaEventRecord (stop, 0));
  // cutilSafeCall (cutilDeviceSynchronize ());
  cutilSafeCall (cudaThreadSynchronize ());
  cutilSafeCall (cudaEventElapsedTime (&total_time_taken, start, stop));

	total_time_taken = total_time_taken / NUM_ITER;
  gpu_check_error__srcpos (stderr, __FILE__, __LINE__);

	sleep (2);
  // copy results back
  cutilSafeCall (cudaMemcpy (h_out, d_out, nThreads * nStreams * sizeof (TYPE),
                             cudaMemcpyDeviceToHost));

  printf("Time taken to trasnfer %f GB and execute %f Gflops: %f (ms)\n", 
				 (((2.0 * nThreads / 1e6) * nStreams * sizeof (TYPE) ) / 1e3), 
				 (((2.0 * nThreads / 1e6) * nStreams * nFlops) / 1e3),
				 total_time_taken);
  printf("Effective performance: %f (GB/s)\n", (((2.0 * nThreads / 1e6) *
         nStreams * sizeof (TYPE) )) / total_time_taken);
  fprintf(stderr, "Effective performance: %f (GFlops/s)\n",
         (((2.0 * nThreads / 1e6) * nFlops * nStreams)) / total_time_taken);


  free (h_in);
  free (h_out);
  cutilSafeCall (cudaFree (d_in));
  cutilSafeCall (cudaFree (d_out));

	fprintf(stderr, "Target intensity is %.2f\n", intensity);
	return 0;
}
