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
#include <stddef.h>
#include <stdint.h>
#include <malloc.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <omp.h>


namespace cpu {
	
	inline static uint32_t get_ticks_acquire() {
		uint32_t ticks;
		asm volatile (
			"MRC p15, 0, %0, c9, c13, 0;"
			: "=r" (ticks)
			:
			:
		);
		return ticks;
	}

	inline static uint64_t get_ticks_release() {
		uint32_t ticks;
		asm volatile (
			"MRC p15, 0, %0, c9, c13, 0;"
			: "=r" (ticks)
			:
			:
		);
		return ticks;
	}

}

timespec diff(timespec start, timespec end)
{
	timespec temp;
	if ((end.tv_nsec-start.tv_nsec)<0) {
		temp.tv_sec = end.tv_sec-start.tv_sec-1;
		temp.tv_nsec = 1000000000+end.tv_nsec-start.tv_nsec;
	} else {
		temp.tv_sec = end.tv_sec-start.tv_sec;
		temp.tv_nsec = end.tv_nsec-start.tv_nsec;
	}
	return temp;
}

extern "C" void stdev(const double* data, size_t length);
extern "C" void stdevf(const float* data, size_t length);

#define cpu_base (1e9)
#define cpu_freq (1.2)
#define num_iter 1

int main(int argc, char** argv) {

	/* Timer */
	timespec time1, time2, time3;
	timespec time4, time5, time6;
	const size_t array_length = 12 * 1024 * 1024;

		
	double* data0 = (double*) memalign (32, array_length * sizeof (double));
	memset (data0, 0, array_length * sizeof (double));

	double* data1 = (double*) memalign (32, array_length * sizeof (double));
	memset (data1, 0, array_length * sizeof (double));


	#if MLA_PER_DOUBLE > 0
	{
		#pragma omp parallel num_threads(3)
		{
			#pragma omp sections
			{
				#pragma omp section
				/* Power measurement thread */
				{
					/* Insert power measurement code here */
					fprintf (stderr, "Power measurement running on thread %d\n",
									 omp_get_thread_num ());
				}
				#pragma omp section
				/* Thread running on core 0 */
				{
					fprintf (stderr, "CPU benchmark for core 0 running on thread %d\n",
									 omp_get_thread_num ());

					clock_gettime (CLOCK_MONOTONIC, &time1);
					/* const uint32_t start = cpu::get_ticks_acquire(); */

					stdev (data0, array_length);

					/* const uint32_t end = cpu::get_ticks_release(); */
					clock_gettime (CLOCK_MONOTONIC, &time2);

					time3 = diff (time1, time2);
					fprintf (stderr, "Execution time: %lu.%09lu\n", time3.tv_sec, 
									 time3.tv_nsec);

					/*
					printf("Ticks per element (double): %5.03lf\n", 
								 double(end - start) / double(array_length));
					double exec_time = (double(end - start) / 1e3) / (1.2 * 1e6);	
					printf("Execution time: %5.03lf\n", exec_time);
					 */
					/*
					double num_cycles = double(end - start);
					double exec_time = num_cycles / (cpu_freq * cpu_base);
					printf("Exec time: %5.03lf (sec)\n", exec_time);
					 */
					/*
					double num_flops = num_iter * array_length * MLA_PER_DOUBLE * 3;
					double performance = (num_flops / exec_time) / 1e9;
					printf("Performance: %5.03lf (Gflops/s)\n", performance);
					double num_bytes = (num_iter * array_length * sizeof(double));
					double bandwidth = (num_bytes / exec_time) / 1e9;
					printf("Bandwidth: %5.03lf (GB/s)\n", bandwidth);
					 */

					fprintf (stderr, "Intensity: %5.03lf\n", 
									double((MLA_PER_DOUBLE * 3.0)/sizeof(double)));
				}
				#pragma omp section
				{
					fprintf (stderr, "CPU benchmark for core 1 running on thread %d\n",
									 omp_get_thread_num ());

					clock_gettime (CLOCK_MONOTONIC, &time4);
					/* const uint32_t start = cpu::get_ticks_acquire(); */

					stdev (data1, array_length);

					/* const uint32_t end = cpu::get_ticks_release(); */
					clock_gettime (CLOCK_MONOTONIC, &time5);

					time6 = diff (time4, time5);

					fprintf (stderr, "Execution time: %lu.%09lu\n", time6.tv_sec, 
									 time6.tv_nsec);
					fprintf (stderr, "Intensity: %5.03lf\n", 
									 double((MLA_PER_DOUBLE * 3.0) / sizeof (double)));
				}
			}
		}
	}
	#endif
	#if MLA_PER_FLOAT > 0
	{
		#pragma omp parallel num_threads(2)
		{
			#pragma omp sections
			{
				#pragma omp section
				{
					fprintf (stderr, "CPU benchmark for core 0 running on thread %d\n",
									 omp_get_thread_num ());

					clock_gettime (CLOCK_MONOTONIC, &time1);
					/* const uint32_t start = cpu::get_ticks_acquire(); */

					stdevf ((float*) data0, array_length * 2);

					/* const uint32_t end = cpu::get_ticks_release(); */
					clock_gettime (CLOCK_MONOTONIC, &time2);

					time3 = diff (time1, time2);
					/*
					double exec_time_float = (double) time3.tv_sec + 
																	 (double) (time3.tv_nsec)/1e9;
					printf ("Execution time: %f\n", exec_time_float);
		 			*/
					fprintf (stderr, "Execution time: %lu.%09lu\n",
									 time3.tv_sec, time3.tv_nsec);
					fprintf (stderr, "Intensity: %5.03lf\n",  
								 	 double((2 * MLA_PER_FLOAT * 2.0) / sizeof (double)));
				}
				#pragma omp section
				{
					fprintf (stderr, "CPU benchmark for core 1 running on thread %d\n",
									 omp_get_thread_num ());

					clock_gettime (CLOCK_MONOTONIC, &time4);
					/* const uint32_t start = cpu::get_ticks_acquire(); */

					stdevf ((float*) data1, array_length * 2);

					/* const uint32_t end = cpu::get_ticks_release(); */
					clock_gettime (CLOCK_MONOTONIC, &time5);

					time6 = diff (time4, time5);
					fprintf(stderr, "Execution time: %lu.%09lu\n",
									time6.tv_sec, time6.tv_nsec);
					fprintf(stderr, "Intensity: %5.03lf\n", 
									double((2 * MLA_PER_FLOAT * 2.0) / sizeof(double)));
				}
			}
		}

	}
	#endif
	
	free (data0);
	free (data1);
}
