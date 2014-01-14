#include <stdio.h>
#include <stddef.h>
#include <stdint.h>
#include <malloc.h>
#include <string.h>
#include <time.h>
#include <omp.h>

/* ================================================================ */
/* Find cycles elapsed */
namespace cpu {
	
	inline static uint32_t get_ticks_acquire() {
		struct timespec ts;
		clock_gettime(CLOCK_MONOTONIC, &ts);
		return ts.tv_sec * 1000000000ull + ts.tv_nsec;
	}

	inline static uint64_t get_ticks_release() {
		struct timespec ts;
		clock_gettime(CLOCK_MONOTONIC, &ts);
		return ts.tv_sec * 1000000000ull + ts.tv_nsec;
	}

}
/* ================================================================ */


/* ================================================================ */
/* Find difference in time to get elapsed time */
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
/* ================================================================ */


extern "C" void sumsq(const double* data, size_t length);
extern "C" void sumsqf(const float* data, size_t length);


int main(int argc, char** argv) {

	/* Timers */
	timespec time1, time2, time3;
	timespec time4, time5, time6;

	/* Array size */
	const size_t array_length = 64 * 1024 * 1024;

	/* Initialize data structures */	
	/* One array per core */
	double* data0 = (double*) memalign (32, array_length * sizeof (double));
	memset (data0, 0, array_length * sizeof(double));
	double* data1 = (double*) memalign (32, array_length * sizeof (double));
	memset (data1, 0, array_length * sizeof(double));

	#if MLA_PER_DOUBLE > 0
	{
		#pragma omp parallel num_threads (2)
		{
			#pragma omp sections
			{
				#pragma omp section
				{
					printf ("Executing double precision benchmak on core 0\n");

					clock_gettime (CLOCK_MONOTONIC, &time1);
					/* const uint32_t start0 = cpu::get_ticks_acquire (); */

					sumsq(data0, array_length);

					/* const uint32_t end0 = cpu::get_ticks_release (); */
					clock_gettime (CLOCK_MONOTONIC, &time2);
	
					time3 = diff (time1, time2);	
					/*
					printf ("Ticks per element (double): %5.03lf\n", 
									double(end0 - start0) / double(array_length));
					 */
					printf ("Execution time: %lu.%09lu\n", time3.tv_sec, time3.tv_nsec);
		
					printf ("Intensity: %5.04lf\n", (2.0 * MLA_PER_DOUBLE) / 
									sizeof (double));
					printf ("CPU benchmark running on thread %d\n", 
									omp_get_thread_num ());
				}
				#pragma omp section
				{
					printf ("Executing double precision benchmak on core 1\n");

					clock_gettime (CLOCK_MONOTONIC, &time4);
					/* const uint32_t start1 = cpu::get_ticks_acquire (); */

					sumsq(data1, array_length);

					/* const uint32_t end1 = cpu::get_ticks_release (); */
					clock_gettime (CLOCK_MONOTONIC, &time5);
	
					time6 = diff (time4, time5);	
					/* 
					printf ("Ticks per element (double): %5.03lf\n", 
									double(end1 - start1) / double(array_length));
					 */
					printf ("Execution time: %lu.%09lu\n", time6.tv_sec, time6.tv_nsec);
		
					printf ("Intensity: %5.04lf\n", (2.0 * MLA_PER_DOUBLE) / 
									sizeof (double));
					printf ("CPU benchmark running on thread %d\n", 
									omp_get_thread_num ());

				}
			}
		}
	}
	#endif
	#if MLA_PER_FLOAT > 0
	{
		#pragma omp parallel num_threads (2)
		{
			#pragma omp sections
			{
				#pragma omp section
				{
					printf ("Executing single precision benchmak on core 0\n");

					clock_gettime (CLOCK_MONOTONIC, &time1);
					/* const uint32_t start0 = cpu::get_ticks_acquire (); */

					sumsqf ((float*) data0, array_length * 2);

					/* const uint32_t end0 = cpu::get_ticks_release (); */
					clock_gettime (CLOCK_MONOTONIC, &time2);
	
					time3 = diff (time1, time2);	
					/*
					printf ("Ticks per element (double): %5.03lf\n", 
									double(end0 - start0) / double(array_length));
					 */
					printf ("Execution time: %lu.%09lu\n", time3.tv_sec, time3.tv_nsec);
		
					printf ("Intensity: %5.04lf\n", (2.0 * MLA_PER_FLOAT) / 
									sizeof (float));
					printf ("CPU benchmark running on thread %d\n", 
									omp_get_thread_num ());
				}
				#pragma omp section
				{
					printf ("Executing single precision benchmak on core 1\n");

					clock_gettime (CLOCK_MONOTONIC, &time4);
					/* const uint32_t start1 = cpu::get_ticks_acquire (); */

					sumsqf ((float*) data1, array_length * 2);

					/* const uint32_t end1 = cpu::get_ticks_release (); */
					clock_gettime (CLOCK_MONOTONIC, &time5);
	
					time6 = diff (time4, time5);	
					/* 
					printf ("Ticks per element (double): %5.03lf\n", 
									double(end1 - start1) / double(array_length));
					 */
					printf ("Execution time: %lu.%09lu\n", time6.tv_sec, time6.tv_nsec);
		
					printf ("Intensity: %5.04lf\n", (2.0 * MLA_PER_FLOAT) / 
									sizeof (float));
					printf ("CPU benchmark running on thread %d\n", 
									omp_get_thread_num ());

				}
			}
		}
	}
	#endif
	
	free (data0);	
	free (data1);	
}
