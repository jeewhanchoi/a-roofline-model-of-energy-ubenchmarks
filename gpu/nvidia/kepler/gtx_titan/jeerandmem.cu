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
#include <omp.h>
#include <stdint.h>

#include <cutil_inline.h>

/* ================================================================== */
/* GPU memory random access benchmark */
__global__ void gpu_rand (int nThreads, int arraySize, int* p_chase, int* d_result, int nIter)
{
  int i;
  int gid = threadIdx.x + blockIdx.x * blockDim.x;
  unsigned int temp;

  temp = p_chase[gid];
  for(i = 0; i < nIter; i++) {
    temp = p_chase[temp];
  }

  d_result[gid] = temp;
}
/* ================================================================== */


/* ================================================================== */
/* Pointer chasing array generator */
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
			 break;
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
/* ================================================================== */


/* ================================================================== */
/* GPU kernel error checking function */
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
/* ================================================================== */


/* ================================================================== */
/* Read program input */
void readConfig(int* nThreads, int* bSize, int* arraySize, int* nIter, 
								char** argv)
{
	*nThreads = atoi (argv[1]);	
	*bSize = atoi (argv[2]);	
	*arraySize = atoi (argv[3]);
	*nIter = atoi (argv[4]);
}
/* ================================================================== */


/* ================================================================== */
/* Validate results */
int validateResults (int nThreads, int nIter, int* h_Input, int* h_Output)
{
	unsigned int i, j, cnt, temp;

	cnt = 0;
	for(i = 0; i < nThreads; i++) {
		temp = h_Input[i];
		for(j = 0; j < nIter; j++) {
			temp = h_Input[temp];
		}
		if (temp != h_Output[i]) cnt++;
	}

	return cnt;
}
/* ================================================================== */


int main(int argc, char** argv)
{	
	int i;


	/* Timer */
	cudaEvent_t start, stop;
	float total_time;


  /* Execution parameters */
  int nThreads;
  int bSize;
  int arraySize;
	int nIter;

	int num_blocks;


	/* Memory */
	int* h_array;
	int* h_result;
	int* p_chase;
	int* d_result;


	/* Read input parameters */
	if(argc != 5) {
		fprintf(stderr, "usage: %s <# threads> <TB size> <array size> <# iter>\n", 
						argv[0]);
		exit (0);
	} else {
		readConfig (&nThreads, &bSize, &arraySize, &nIter, argv);
	}
	num_blocks = (nThreads + bSize - 1) / bSize;


	/* Find the best GPU in the system */
  fprintf(stderr, "Running on device: %d\n", cutGetMaxGflopsDeviceId ());
	cudaSetDevice(cutGetMaxGflopsDeviceId ());


	/* Allocate memory */
	uint32_t nBits = Log2 ((double) arraySize);	
	uint32_t shifter[3];
	findShifter (nBits, shifter);

	h_array = (int*) malloc (arraySize * sizeof (TYPE));
	cutilSafeCall (cudaMalloc ((void**) &p_chase, arraySize * sizeof (TYPE)));
	cutilSafeCall (cudaMalloc ((void**) &d_result, nThreads * sizeof (TYPE)));


	/* Initialize memory on CPU and GPU */
	h_array[0] = 1;
	uint32_t index = 1;
	for(i = 0; i < arraySize - 2; i++) {
		uint32_t temp = index;
		index ^= index >> shifter[0];
		index ^= index << shifter[1];
		index &= ((1u << nBits) - 1u);
		index ^= index >> shifter[2];
		h_array[temp] = index;
	}
	cutilSafeCall (cudaMemcpy (p_chase, h_array, arraySize * sizeof (TYPE),
														 cudaMemcpyHostToDevice));


  dim3 grid (num_blocks);
  dim3 threads (bSize);

	total_time = 0.0;

	#pragma omp parallel num_threads(2)
	{
		#pragma omp sections
		{
			#pragma omp section
			/* Power measurement thread */
			{
				fprintf (stderr, "Starting power measuremnt\n");
        fprintf (stderr, "Power measurement code running on thread %d\n",
                 omp_get_thread_num ());
			}
			#pragma omp section
			/* Kernel execution thread */
			{
			  /* Start timer */
				cutilSafeCall (cudaEventCreate (&start));
				cutilSafeCall (cudaEventCreate (&stop));
				cutilSafeCall (cudaEventRecord (start, 0));

				gpu_rand <<<grid, threads>>> (nThreads, arraySize, p_chase, d_result, 
																			nIter);

				/* End timer */
				cutilSafeCall (cudaEventRecord (stop, 0));
				cutilSafeCall (cudaThreadSynchronize ());
				cutilSafeCall (cudaEventElapsedTime (&total_time, start, stop));

        fprintf (stderr, "Test kernel running on thread %d\n",
                 omp_get_thread_num ());
			}
		}
	}
	

	/* Check for kernel execution errors */
  gpu_check_error__srcpos (stderr, __FILE__, __LINE__);


	/* Compute performance statistics */
	double data = (1.0 * nThreads * (1 + nIter)) / 1e9;
	fprintf (stderr, "Data (GB): %lf ::: Time (ms): %f\n", data, total_time);
	fprintf (stderr, "Time taken: %f (s)\n", total_time/1e3);
	fprintf (stderr, "Performance: %f (GA/s)\n", data / (total_time/1e3));


  /* Copy results back to host */
	h_result = (int*) malloc (nThreads * sizeof (TYPE));
  cutilSafeCall (cudaMemcpy (h_result, d_result, nThreads * sizeof (TYPE),
                             cudaMemcpyDeviceToHost));


	/* Validate results */
	fprintf (stderr, "Results validated: %d\n", validateResults (nThreads, nIter,
																															 h_array, 
																															 h_result));


	/* Free memory */
  free (h_array);
  free (h_result);
  cutilSafeCall (cudaFree (p_chase));
  cutilSafeCall (cudaFree (d_result));


	return 0;
}
