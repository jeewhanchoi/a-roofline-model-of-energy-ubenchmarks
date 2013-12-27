#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <malloc.h>
#include <string.h>
#include <omp.h>
#include <unistd.h>

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

extern "C" void sumsq(const double* data, size_t length);
extern "C" void sumsqf(const float* data, size_t length);

int main(int argc, char** argv) {
	const size_t array_length = 1024*1024*30;
	
	double* data0 = (double*)memalign(64, array_length * sizeof(double));
	double* data1 = (double*)memalign(64, array_length * sizeof(double));
	memset(data0, 0, array_length * sizeof(double));
	memset(data1, 0, array_length * sizeof(double));
	
	double execTime0, execTime1;
	#pragma omp parallel num_threads(3)
	{
		#pragma omp sections
		{
			#pragma omp section
			{
				fprintf (stderr, "Starting computation thread...\n");
				sleep (2);

				#if(TYPE)
				// double	
				{
					const uint64_t start0 = cpu::get_ticks_acquire();
					sumsq(data0, array_length);
					const uint64_t end0 = cpu::get_ticks_release();
					// fprintf(stderr, "Ticks per DP element: %5.03lf\n", 
									// double(end - start) / double(array_length));
					execTime0 = double(end0 - start0)/1.7e+9;
				}
				#else
				// single 
				{
					const uint64_t start0 = cpu::get_ticks_acquire();
					sumsqf((const float*)data0, array_length * 2);
					const uint64_t end0 = cpu::get_ticks_release();
					// fprintf(stderr, "Ticks per SP element: %5.03lf\n", 
									// double(end - start) / double(array_length * 2));
					execTime0 = double(end0 - start0)/1.7e+9;
				}
				#endif

				sleep (2);
			}
			#pragma omp section
			{
				fprintf (stderr, "Starting computation thread...\n");
				sleep (2);

				#if(TYPE)
				// double	
				{
					const uint64_t start1 = cpu::get_ticks_acquire();
					sumsq(data1, array_length);
					const uint64_t end1 = cpu::get_ticks_release();
					// fprintf(stderr, "Ticks per DP element: %5.03lf\n", 
									// double(end - start) / double(array_length));
					execTime1 = double(end1 - start1)/1.7e+9;
				}
				#else
				// single 
				{
					const uint64_t start1 = cpu::get_ticks_acquire();
					sumsqf((const float*)data1, array_length * 2);
					const uint64_t end1 = cpu::get_ticks_release();
					// fprintf(stderr, "Ticks per SP element: %5.03lf\n", 
									// double(end - start) / double(array_length * 2));
					execTime1 = double(end1 - start1)/1.7e+9;
				}
				#endif

				sleep (2);
			}
			#pragma omp section
			{
				fprintf (stderr, "Starting thread powermon...\n");
				char powermon_cmd[1000]; 
				#if(TYPE)
					sprintf (powermon_cmd, "ssh -p 4004 jee@192.168.1.104  \"~/src/powermon/a.out /dev/ttyUSB0 32 1 15360 > ~/src/powermon/meow--bobcat--power--double--%d &\"", MAD_PER_ELEMENT);
				#else
					sprintf (powermon_cmd, "ssh -p 4004 jee@192.168.1.104  \"~/src/powermon/a.out /dev/ttyUSB0 32 1 15360 > ~/src/powermon/meow--bobcat--power--single--%d &\"", MAD_PER_ELEMENT);
				#endif
				fprintf (stderr, "%s\n", powermon_cmd);
				int re = system (powermon_cmd);
			}
		}
	}

	#if(TYPE)	
		double flops = 2 * array_length * MAD_PER_ELEMENT * 3.0;
	#else
		double flops = 2 * array_length * MAD_PER_ELEMENT * 4.0;
	#endif
	double bytes = 2 * array_length * sizeof(double);

	double execTime;
	if(execTime0 > execTime1) execTime = execTime0; else execTime = execTime1;
	fprintf (stderr, "Execution time 0: %lf\tExecution time 1: %lf\n", 
					execTime0, execTime1);
	fprintf (stderr, "Execution time: %lf\n", execTime);
	fprintf (stderr, "GBytes: %5.03lf GFlops: %5.03lf\n", bytes/1.0e+9, 
						flops/1.0e+9);
	fprintf (stderr, "Bandwidth: %lf GB/s\n", bytes/execTime/1.0e+9);
	fprintf (stderr, "Performance: %lf GFLOPS\n", flops/execTime/1.0e+9);

	
	free(data0);	
	free(data1);	
}
