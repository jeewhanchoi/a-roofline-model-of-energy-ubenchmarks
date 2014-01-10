#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <omp.h>
#include "timer.h"

/* This needs to be changed depending on the number of cores available */
#define NUM_CORES 4
#define NUM_ITER 10

/* Kernel in assembly */
extern "C" void polevl(const double* data, size_t length);

/* =================================================================== */
/* Parse program input */
void usage(int argc, char** argv, int* data_size, float* intensity)
{
	if(argc < 3) {
		fprintf(stderr, "usage: %s <data size in bytes> <intensity>\n", 
						argv[0]);
		exit (0);
	} else {
		*data_size = atoi (argv[1]);
		*intensity = atof (argv[2]);
	}
}
/* =================================================================== */


/* =================================================================== */
/* Compute and print performance using execution times */
void computePerformance (long double t, int array_size, float intensity)
{
	fprintf(stderr, "Performance: %Lg (GB/s)\n", ((array_size * sizeof (double)) 
					/ t) / 1e9);
	fprintf(stderr, "Performance: %Lg (Gflop/s)\n", ((array_size * 
					sizeof (double) * intensity) / t) / 1e9);
}
/* =================================================================== */


/* =================================================================== */
/* Find the minimum, maximum, and average execution times */
long double find_min (long double a, long double b, long double c, 
											long double d, int num_iter)
{
	long double val[4];
	val[0] = a / num_iter;
	val[1] = b / num_iter;
	val[2] = c / num_iter;
	val[3] = d / num_iter;
	long double min = val[0];
	for(int i = 1; i < 4; i++) {
		if(val[i] < min) min = val[i];	
	}
	return min;
}
long double find_max (long double a, long double b, long double c, 
											long double d, int num_iter)
{
	long double val[4];
	val[0] = a / num_iter;
	val[1] = b / num_iter;
	val[2] = c / num_iter;
	val[3] = d / num_iter;
	long double max = val[0];
	for(int i = 1; i < 4; i++) {
		if(val[i] > max) max = val[i];	
	}
	return max;
}
long double find_avg (long double a, long double b, long double c, 
											long double d, int num_iter)
{
	long double val[4];
	val[0] = a / num_iter;
	val[1] = b / num_iter;
	val[2] = c / num_iter;
	val[3] = d / num_iter;
	long double sum = val[0];
	for(int i = 1; i < 4; i++) {
		sum += val[i];
	}
	return sum / 4;
}
/* =================================================================== */


int main(int argc, char** argv)
{
	int i;

	/* Timer */
	struct stopwatch_t* timer = NULL;
	long double t_pol, t_0, t_1, t_2, t_3, t_max, t_min, t_avg;

	/* Amount of data to load */
	float intensity;
	int data_size;
	int array_size;
	int array_per_core;
	double *data0, *data1, *data2, *data3;

	usage (argc, argv, &data_size, &intensity);

	array_size = data_size / sizeof (double);
	array_per_core = array_size / NUM_CORES;
	data0 = (double*) malloc (array_per_core * sizeof (double));
	data1 = (double*) malloc (array_per_core * sizeof (double));
	data2 = (double*) malloc (array_per_core * sizeof (double));
	data3 = (double*) malloc (array_per_core * sizeof (double));

	fprintf(stderr, "Loading %f GB of data\n", 1.0 * array_size * sizeof (double) 
					/ 1e9);

	
	/* Allocate memory for polynomial kernel */
	for(i = 0; i < array_per_core; i++) {
		data0[i] = 0.0;
		data1[i] = 0.0;
		data2[i] = 0.0;
		data3[i] = 0.0;
	}


	/* Setup tiemr */
	stopwatch_init ();
	timer = stopwatch_create ();

	/* Start timing from the beginning of the block */
	stopwatch_start (timer);

	#pragma omp parallel num_threads(5)
	{
		#pragma omp sections
		{
			/* Power measurement thread */
			#pragma omp section
			{
				fprintf (stderr, "Power measurement code running on the thread %d\n",
								 omp_get_thread_num ());
			}
			/* Kernel execution thread 0 */
			#pragma omp section
			{
				for(int iter = 0; iter < NUM_ITER; iter++) {
					polevl(data1, array_per_core);
				}
				t_0 = stopwatch_elapsed (timer);
				fprintf (stderr, "CPU benchmark code running on thread %d\n",
								 omp_get_thread_num ());
			}
			/* Kernel execution thread 1 */
			#pragma omp section
			{
				for(int iter = 0; iter < NUM_ITER; iter++) {
					polevl(data0, array_per_core);
				}
				t_1 = stopwatch_elapsed (timer);
				fprintf (stderr, "CPU benchmark code running on thread %d\n",
								 omp_get_thread_num ());
			}
			/* Kernel execution thread 2 */
			#pragma omp section
			{
				for(int iter = 0; iter < NUM_ITER; iter++) {
					polevl(data2, array_per_core);
				}
				t_2 = stopwatch_elapsed (timer);
				fprintf (stderr, "CPU benchmark code running on thread %d\n",
								 omp_get_thread_num ());
			}
			/* Kernel execution thread 3 */
			#pragma omp section
			{
				for(int iter = 0; iter < NUM_ITER; iter++) {
					polevl(data3, array_per_core);
				}
				t_3 = stopwatch_elapsed (timer);
				fprintf (stderr, "CPU benchmark code running on thread %d\n",
								 omp_get_thread_num ());
			}
		}
	}

	/* Finish measuring time for the entire block */
	t_pol = stopwatch_elapsed (timer);

	/* Print execution times for the different threads */
	fprintf (stderr, "Execution time: %Lg secs\n", t_pol);
	fprintf (stderr, "Execution time 0: %Lg secs\n", t_0);
	fprintf (stderr, "Execution time 1: %Lg secs\n", t_1);
	fprintf (stderr, "Execution time 2: %Lg secs\n", t_2);
	fprintf (stderr, "Execution time 3: %Lg secs\n", t_3);

	t_max = find_max (t_0, t_1, t_2, t_3, NUM_ITER);
	t_min = find_min (t_0, t_1, t_2, t_3, NUM_ITER);
	t_avg = find_avg (t_0, t_1, t_2, t_3, NUM_ITER);
	fprintf (stderr, "Execution time min: %Lg ::: max: %Lg ::: avg: %Lg secs\n", 
					 t_min, t_max, t_avg);

	/* Can't verify since result is dumped */

	/* Compute performancem metrics */
	computePerformance (t_max, array_size, intensity);

	/* Free CPU memory */
	free (data0);
	free (data1);
	free (data2);
	free (data3);
	stopwatch_destroy (timer);

	fprintf (stderr, "Done..\n");

	return 0;
}
