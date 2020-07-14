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

#include "common.h"
#include "barriers.h"
#include <unistd.h>
#include <sys/time.h>


#ifdef _SEP_
#include "sampling_MIC.h"
#endif


#define SIZEPERTHREAD 400000
#define CPUFREQ 1.09
#define NRUNS   10


#if defined(_PRECISION_) && (_PRECISION_ == 2) /* Double precision */
#define VFMADD vfmadd132pd

#elif defined(_PRECISION_) && (_PRECISION_ == 1) /* Single precision */
#define VFMADD vfmadd132ps

#endif


fptype_t *g_A;
int g_arraysize;
int g_sizeperthread;

    
int main (int argc, char **argv)
{

	int tid;
	int ratio;
	__int64 t0;
	__int64 t1;
	int nthreads;
	int nn;
	double density;
	double bandwidth[NRUNS];
	double flops[NRUNS];
	double execTime[NRUNS];
	double maxflops;
	double maxbandwidth;
	double minTime;

	if (argc != 2) {
		printf ("Usage: %s <no. of threads>\n", argv[0]);
		exit (0);
	}  
	/* Number of threads to use */
	nthreads = atoi (argv[1]);

	/* Number of elements per thread */
	g_sizeperthread = SIZEPERTHREAD * SIMDW;
	/* Total array size */
	g_arraysize = g_sizeperthread * nthreads;  
	/* Allocate memory for the array */
	g_A = (fptype_t *) _my_malloc (g_arraysize * sizeof (fptype_t), 64);
	assert (g_A != MY_MALLOC_FAILED);    

	/* Calculate the input arithmetic intensity */
	nn = _RATIO_;
	/* For each 512/8 Bytes of data loaded, you do (SIMDW units FMA * nn) */
	density = 2.0 * nn * SIMDW/(512/8);
    
	fprintf (stderr, "Run KNC microbenchmark: %s\n  nn = %d\n  density (flops/bytes) = %.2lf\n  array size = %.2lf MB (%.2lf MB per thread)\n",
					 argv[0], nn, density,
					 g_arraysize * sizeof (fptype_t) / 1024.0 / 1024.0,
					 g_sizeperthread * sizeof (fptype_t) / 1024.0 / 1024.0);

	/* Initialize threading mechanism */
	initomp (nthreads, 0);
	tbarrier.Init (nthreads);

	/* Initialize timer */
	struct timeval now;
	int rc = gettimeofday (&now, NULL);
	if(rc==0) {
		fprintf(stderr, "Time = %lu.%06lu\n", now.tv_sec, now.tv_usec);
	}

	/* Start execution */
	for (int run = 0; run < NRUNS; run++)
	{
		/* One loop iteration per thread */
		#pragma omp parallel for num_threads(nthreads)
		for (tid = 0; tid < nthreads; tid++)
		{
			int start;
			int end;
			fptype_t *A;
			int i;
			int j;

			/* Find this thread/iteration's starting and ending points in the 
  			 global array
  		 */
			A = g_A;
			start = tid * g_sizeperthread;
			end = (tid + 1) * g_sizeperthread;
     
			/* Start time measurement */       
			t0 = __rdtsc ();
			Barrier (tid);
            
			for (i = start; i < end; i+=SIMDW)
			{
				fptype_t *vptr = &A[i];
				__asm
				{
					#if (_RATIO_ >= 1)                
						VFMADD zmm0, zmm11, zmm12
					#endif                
					#if (_RATIO_ >= 2)
						VFMADD zmm1, zmm11, zmm12
					#endif                   
					#if (_RATIO_ >= 3)                   
						VFMADD zmm2, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 4)
						VFMADD zmm3, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 5)
						VFMADD zmm4, zmm11, zmm12                  
					#endif

					mov r11, vptr;
                
					#if (_RATIO_ >= 6)
						VFMADD zmm5, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 7)
						VFMADD zmm6, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 8)
						VFMADD zmm7, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 9)
						VFMADD zmm8, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 10)
						VFMADD zmm9, zmm11, zmm12
					#endif
	
					vprefetch1 [r11];
                
					#if (_RATIO_ >= 11)
						VFMADD zmm0, zmm11, zmm12
					#endif                                                  
					#if (_RATIO_ >= 12)
						VFMADD zmm1, zmm11, zmm12
					#endif  
					#if (_RATIO_ >= 13)
						VFMADD zmm2, zmm11, zmm12
					#endif  
					#if (_RATIO_ >= 14)
						VFMADD zmm3, zmm11, zmm12
					#endif  
					#if (_RATIO_ >= 15)
						VFMADD zmm4, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 16)
						VFMADD zmm5, zmm11, zmm12
					#endif                
					#if (_RATIO_ >= 17)
						VFMADD zmm6, zmm11, zmm12
					#endif  
					#if (_RATIO_ >= 18)
						VFMADD zmm7, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 19)
						VFMADD zmm8, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 20)
						VFMADD zmm9, zmm11, zmm12
					#endif

					#if (_RATIO_ >= 25)
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 30)
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 35)
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
					#endif
					#if (_RATIO_ >= 40)
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12
					#endif

					#if (_RATIO_ >= 50)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 60)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 70)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
					#if (_RATIO_ >= 80)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
					#if (_RATIO_ >= 90)               
					 	VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
					#if (_RATIO_ >= 100)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
					#if (_RATIO_ >= 110)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
 					#endif 
					#if (_RATIO_ >= 120)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
					#if (_RATIO_ >= 130)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
					#if (_RATIO_ >= 140)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
 					#if (_RATIO_ >= 150)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
					#if (_RATIO_ >= 160)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
	 				#endif 
					#if (_RATIO_ >= 170)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
					#if (_RATIO_ >= 180)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
 					#endif 
					#if (_RATIO_ >= 190)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif 
					#if (_RATIO_ >= 200)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
 					#endif
					#if (_RATIO_ >= 210)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 220)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 230)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 240)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 250)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 260)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 270)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 280)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 290)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
					#if (_RATIO_ >= 300)               
						VFMADD zmm0, zmm11, zmm12
						VFMADD zmm1, zmm11, zmm12
						VFMADD zmm2, zmm11, zmm12
						VFMADD zmm3, zmm11, zmm12
						VFMADD zmm4, zmm11, zmm12
						VFMADD zmm5, zmm11, zmm12
						VFMADD zmm6, zmm11, zmm12
						VFMADD zmm7, zmm11, zmm12
						VFMADD zmm8, zmm11, zmm12
						VFMADD zmm9, zmm11, zmm12                   
					#endif
				}
			}

			/* End timer */
			Barrier (tid);
			t1 = __rdtsc ();

			if (tid == 0) {
				flops[run] = nn * 2.0 * g_arraysize * CPUFREQ / (double) (t1 - t0);
				bandwidth[run] = (double) g_arraysize * sizeof (fptype_t) * CPUFREQ / 
												 (double) (t1 - t0);
				execTime[run] = (double) (t1 - t0) / (CPUFREQ * 1.0e9);
			}
		}
	}

	maxflops = 0.0;
	maxbandwidth = 0.0;
 	minTime = 1000.0;
	for (int run = 0; run < NRUNS; run++) {
		maxflops = maxflops > flops[run] ? maxflops : flops[run];
		maxbandwidth = maxbandwidth > bandwidth[run] ? maxbandwidth : 
									 bandwidth[run];
		minTime = minTime < execTime[run] ? minTime : execTime[run];
	}
        
 	fprintf (stderr , "%.2lf, %.3lf Gflops, %.3lf GB/s %.8lf secs %d iters\n",
					 density, maxflops, maxbandwidth, minTime, NRUNS);

	return 0;
}
