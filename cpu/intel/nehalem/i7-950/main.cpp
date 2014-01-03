#include <stdio.h>
#include <stddef.h>
#include <stdint.h>
#include <malloc.h>
#include <string.h>
#include "timer.h"

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

extern "C" void polevl(const double* data, size_t length);

int main(int argc, char** argv) {
	/* Input array length */
	const size_t array_length = 10000000;

	/* Timers */
	struct stopwatch_t* timer = NULL;
	long double t_end;

	/* Initialize array */	
	double* data = (double*) malloc (array_length * sizeof (double));
	memset(data, 0, array_length * sizeof(double));

	/* Initialize timers */
	stopwatch_init ();
	timer = stopwatch_create ();

	/* Measure time for the polynomial function */
	stopwatch_start (timer);
	const uint64_t start = cpu::get_ticks_acquire ();
	polevl(data, array_length);
	const uint64_t end = cpu::get_ticks_release ();
	t_end = stopwatch_elapsed (timer);

	/* Print timing information.
		 The timing information is in terms of cycles, so must be translated
		 to seconds using the system's clock frequency
	 */
	fprintf (stderr, "Ticks per element: %5.03lf\n", double(end - start) / 
					 double(array_length));
	fprintf (stderr, "Execution time: %Lg secs\n", t_end);
	
	/* Free memory */	
	free(data);	
}
