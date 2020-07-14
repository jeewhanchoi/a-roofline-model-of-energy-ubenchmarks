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

#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <malloc.h>
#include <string.h>
#include <omp.h>
#include <unistd.h>

/* ======================================================== */
/* Timer */
namespace cpu {
	
	inline static uint64_t get_ticks_acquire() {
		uint32_t low, high;
		__asm__ __volatile__ (
			"xor %%eax, %%eax;"
			"cpuid;"
			"rdtsc;"
		: "=a"(low), "=d"(high)
		:
		: "%rbx", "%rcx"
		);
		return (uint64_t(high) << 32) | uint64_t(low);
	}

	inline static uint64_t get_ticks_release() {
		uint32_t low, high;
		__asm__ __volatile__ (
			"rdtscp;"
		: "=a"(low), "=d"(high)
		:
		: "%rcx"
		);
		return (uint64_t(high) << 32) | uint64_t(low);
	}

}
/* ======================================================== */

/* Single and double precision sum squared functions */
extern "C" void sumsq(const double* data, size_t length);
extern "C" void sumsqf(const float* data, size_t length);

int main(int argc, char** argv) {

	/* Number of elements in the array */
	const size_t array_length = 1024 * 1024 * 500;

	/* Create and initialize arrays */	
	double* data0 = (double*) memalign (64, array_length * sizeof (double));
	double* data1 = (double*) memalign (64, array_length * sizeof (double));
	memset (data0, 0, array_length * sizeof (double));
	memset (data1, 0, array_length * sizeof (double));

	/* Timers */	
	double execTime0, execTime1;

	/* Since the i3-3217U has 2 cores, we use OpenMP to run computation on both
		 cores. 
		 If the target processor has more cores, increase the number of data 
		 structures, timers, OpenMP threads, etc. accordingly.
	 */
	#pragma omp parallel num_threads(3)
	{
		#pragma omp sections
		{
			/* OpenMP thread for first core */
			#pragma omp section
			{
				fprintf (stderr, "Starting first computation thread...\n");
				#if(TYPE)
				/* For double	precision */
				{
					fprintf (stderr, "Double precision...\n");
					const uint64_t start0 = cpu::get_ticks_acquire();
					sumsq(data0, array_length);
					const uint64_t end0 = cpu::get_ticks_release();

					execTime0 = double(end0 - start0) / 1.7e+9;
				}
				#else
				/* For single precision */
				{
					const uint64_t start0 = cpu::get_ticks_acquire();
					sumsqf((const float*)data0, array_length * 2);
					const uint64_t end0 = cpu::get_ticks_release();

					execTime0 = double(end0 - start0) / 1.7e+9;
				}
				#endif
			}
			/* OpenMP thread for second core */
			#pragma omp section
			{
				fprintf (stderr, "Starting second computation thread...\n");
				#if(TYPE)
				/* For double	precision */
				{
					const uint64_t start1 = cpu::get_ticks_acquire();
					sumsq(data1, array_length);
					const uint64_t end1 = cpu::get_ticks_release();

					execTime1 = double(end1 - start1) / 1.7e+9;
				}
				#else
				/* For single precision */
				{
					const uint64_t start1 = cpu::get_ticks_acquire();
					sumsqf((const float*)data1, array_length * 2);
					const uint64_t end1 = cpu::get_ticks_release();

					execTime1 = double(end1 - start1) / 1.7e+9;
				}
				#endif

				sleep (2);
			}
			/* OpenMP thread for power measurement, if any */
			#pragma omp section
			{
				fprintf (stderr, "Starting powermon thread...\n");
				/* Power measurement code start here */
			
				/* Power measurement code end here */
			}
		}
	}

	/* Number of flops and bytes executed */
	#if(TYPE)	
		double flops = 2 * array_length * MAD_PER_ELEMENT * 2.0;
	#else
		double flops = 2 * array_length * MAD_PER_ELEMENT * 4.0;
	#endif
	double bytes = 2 * array_length * sizeof(double);

	/* take the maximum of the execution times of the two cores */
	double execTime;
	if(execTime0 > execTime1) execTime = execTime0; else execTime = execTime1;

	/* Print performance info */
	fprintf (stderr, "Execution time 0: %lf\tExecution time 1: %lf\n", 
					 execTime0, execTime1);
	fprintf (stderr, "Execution time: %lf\n", execTime);
	fprintf (stderr, "GBytes: %5.03lf GFlops: %5.03lf\n", bytes/1.0e+9, 
					 flops/1.0e+9);
	fprintf (stderr, "Bandwidth: %lf GB/s\n", bytes/execTime/1.0e+9);
	fprintf (stderr, "Performance: %lf GFLOPS\n", flops/execTime/1.0e+9);

	/* Free memory */	
	free(data0);	
	free(data1);	
}
