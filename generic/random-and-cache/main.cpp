#include <stdio.h>
#include <stddef.h>
#include <stdint.h>
#include <malloc.h>
#include <string.h>
#include <assert.h>
#include <time.h>
#ifndef __ANDROID__
	#include <omp.h>
#endif

class XorShift {
public:
	inline XorShift(uint32_t state, uint32_t bits) {
		assert(bits <= 31);
		this->bits = bits;
		this->mask = (1u << bits) - 1u;
		this->state = state & this->mask;
		switch (bits) {
			case 30:
				this->shift[0] = 1;
				this->shift[1] = 11;
				this->shift[2] = 24;
				break;
			case 29:
				this->shift[0] = 2;
				this->shift[1] = 4;
				this->shift[2] = 5;
				break;
			case 28:
				this->shift[0] = 1;
				this->shift[1] = 3;
				this->shift[2] = 9;
				break;
			case 27:
				this->shift[0] = 1;
				this->shift[1] = 2;
				this->shift[2] = 6;
				break;
			case 26:
				this->shift[0] = 2;
				this->shift[1] = 5;
				this->shift[2] = 3;
				break;
			case 25:
				this->shift[0] = 2;
				this->shift[1] = 1;
				this->shift[2] = 6;
				break;
			case 24:
				this->shift[0] = 6;
				this->shift[1] = 1;
				this->shift[2] = 9;
				break;
			case 23:
				this->shift[0] = 7;
				this->shift[1] = 8;
				this->shift[2] = 2;
				break;
			case 22:
				this->shift[0] = 5;
				this->shift[1] = 3;
				this->shift[2] = 2;
				break;
			case 21:
				this->shift[0] = 4;
				this->shift[1] = 3;
				this->shift[2] = 6;
				break;
			case 20:
				this->shift[0] = 2;
				this->shift[1] = 1;
				this->shift[2] = 9;
				break;
			case 19:
				this->shift[0] = 9;
				this->shift[1] = 6;
				this->shift[2] = 4;
				break;
			case 18:
				this->shift[0] = 3;
				this->shift[1] = 9;
				this->shift[2] = 8;
				break;
			case 17:
				this->shift[0] = 9;
				this->shift[1] = 6;
				this->shift[0] = 1;
				break;
			case 16:
				this->shift[0] = 8;
				this->shift[1] = 9;
				this->shift[2] = 5;
				break;
			case 15:
				this->shift[0] = 4;
				this->shift[1] = 1;
				this->shift[2] = 9;
				break;
			case 14:
				this->shift[0] = 9;
				this->shift[1] = 7;
				this->shift[2] = 2;
				break;
			case 13:
				this->shift[0] = 8;
				this->shift[1] = 5;
				this->shift[2] = 2;
				break;
			case 12:
				this->shift[0] = 7;
				this->shift[1] = 5;
				this->shift[2] = 9;
				break;
			case 11:
				this->shift[0] = 6;
				this->shift[1] = 4;
				this->shift[2] = 7;
				break;
			case 10:
				this->shift[0] = 5;
				this->shift[1] = 1;
				this->shift[2] = 3;
				break;
			case 9:
				this->shift[0] = 8;
				this->shift[1] = 4;
				this->shift[2] = 5;
				break;
			case 8:
				this->shift[0] = 3;
				this->shift[1] = 1;
				this->shift[2] = 5;
				break;
			case 7:
				this->shift[0] = 5;
				this->shift[1] = 2;
				this->shift[2] = 6;
				break;
			case 6:
				this->shift[0] = 2;
				this->shift[1] = 3;
				this->shift[2] = 1;
				break;
			case 5:
				this->shift[0] = 4;
				this->shift[1] = 3;
				this->shift[2] = 1;
				break;
			case 4:
				this->shift[0] = 3;
				this->shift[1] = 1;
				this->shift[2] = 2;
				break;
			default:
				assert(false);
		}
	}
	
	inline uint32_t next() {
		this->state ^= this->state >> this->shift[0];
		this->state ^= this->state << this->shift[1];
		this->state &= this->mask;
		this->state ^= this->state >> this->shift[2];
		return this->state;
	}
	
	inline XorShift skip(uint32_t iterations) {
		XorShift rng = XorShift(this->state, this->bits);
		for (uint32_t i = 0; i < iterations; i++) {
			rng.next();
		}
		return rng;
	}

private:
	uint32_t state;
	uint32_t shift[3];
	uint32_t mask;
	uint32_t bits;
};

namespace timer {
	
	inline static uint64_t get_nsecs() {
		struct timespec ts;
		clock_gettime(CLOCK_MONOTONIC, &ts);
		return ts.tv_sec * 1000000000ull + ts.tv_nsec;
	}

}

extern "C" void uBench_ReadMemory_Sequential_KNC_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_KNC_Prefetch64(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_KNC_Prefetch128(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_AVX_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_AVX_Prefetch32(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_AVX_Prefetch64(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_AVX_Prefetch128(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_SSE41_NonTemporal(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_SSE_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_SSE_Prefetch32(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_SSE_Prefetch64(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_SSE_Prefetch128(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_MMX_NoPrefetch(const void* memory, size_t bytes);

extern "C" void uBench_ReadMemory_SemiSequential_KNC_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_SemiSequential_AVX_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_SemiSequential_SSE_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_SemiSequential_MMX_NoPrefetch(const void* memory, size_t bytes);

extern "C" void uBench_ReadMemory_Sequential_LDR_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_LDR_Prefetch32(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_LDR_Prefetch64(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_LDR_Prefetch128(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_LDM_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_LDM_Prefetch32(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_LDM_Prefetch64(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_LDM_Prefetch128(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLDR_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLDR_Prefetch32(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLDR_Prefetch64(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLDR_Prefetch128(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLDM_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLDM_Prefetch32(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLDM_Prefetch64(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLDM_Prefetch128(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLD1_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLD1_Prefetch32(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLD1_Prefetch64(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_Sequential_VLD1_Prefetch128(const void* memory, size_t bytes);

extern "C" void uBench_ReadMemory_SemiSequential_LDR_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_SemiSequential_LDM_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_SemiSequential_VLDR_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_SemiSequential_VLDM_NoPrefetch(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_SemiSequential_VLD1_NoPrefetch(const void* memory, size_t bytes);

extern "C" void uBench_ReadMemory_2KRandom_LDR(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_2KRandom_VLDR(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_2KRandom_MOV(const void* memory, size_t bytes);
extern "C" void uBench_ReadMemory_2KRandom_MOVSS(const void* memory, size_t bytes);

extern "C" void uBench_ReadMemory_12PointerChasing_MOV(size_t iterations, uint32_t *array, uint32_t indeces[12]);
extern "C" void uBench_ReadMemory_12PointerChasing_LDR(size_t iterations, uint32_t *array, uint32_t indeces[12]);

extern "C" void uBench_ReadMemory_Random13_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random13_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random13_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random14_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random14_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random14_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random15_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random15_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random15_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random16_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random16_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random16_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random17_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random17_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random17_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random18_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random18_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random18_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random19_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random19_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random19_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random20_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random20_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random20_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random21_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random21_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random21_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random22_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random22_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random22_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random23_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random23_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random23_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random24_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random24_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random24_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random25_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random25_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random25_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random26_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random26_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random26_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random27_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random27_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random27_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random28_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random28_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random28_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random29_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random29_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random29_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random30_LDR_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random30_LDR_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random30_LDR_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random13_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random13_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random13_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random14_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random14_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random14_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random15_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random15_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random15_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random16_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random16_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random16_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random17_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random17_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random17_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random18_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random18_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random18_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random19_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random19_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random19_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random20_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random20_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random20_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random21_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random21_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random21_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random22_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random22_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random22_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random23_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random23_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random23_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random24_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random24_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random24_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random25_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random25_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random25_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random26_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random26_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random26_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random27_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random27_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random27_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random28_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random28_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random28_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random29_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random29_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random29_MOV_Stride128(const void* memory);

extern "C" void uBench_ReadMemory_Random30_MOV_Stride32(const void* memory);
extern "C" void uBench_ReadMemory_Random30_MOV_Stride64(const void* memory);
extern "C" void uBench_ReadMemory_Random30_MOV_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic13_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic13_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic13_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic14_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic14_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic14_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic15_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic15_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic15_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic16_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic16_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic16_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic17_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic17_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic17_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic18_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic18_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic18_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic19_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic19_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic19_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic20_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic20_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic20_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic21_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic21_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic21_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic22_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic22_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic22_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic23_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic23_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic23_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic24_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic24_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic24_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic25_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic25_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic25_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic26_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic26_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic26_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic27_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic27_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic27_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic28_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic28_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic28_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic29_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic29_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic29_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic30_INC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic30_INC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic30_INC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic13_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic13_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic13_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic14_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic14_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic14_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic15_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic15_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic15_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic16_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic16_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic16_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic17_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic17_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic17_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic18_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic18_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic18_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic19_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic19_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic19_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic20_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic20_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic20_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic21_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic21_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic21_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic22_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic22_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic22_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic23_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic23_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic23_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic24_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic24_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic24_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic25_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic25_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic25_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic26_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic26_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic26_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic27_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic27_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic27_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic28_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic28_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic28_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic29_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic29_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic29_LLSC_Stride128(const void* memory);

extern "C" void uBench_UpdateMemory_RandomAtomic30_LLSC_Stride32(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic30_LLSC_Stride64(const void* memory);
extern "C" void uBench_UpdateMemory_RandomAtomic30_LLSC_Stride128(const void* memory);

void Benchmark_ReadSequential(void (*memory_read_function)(const void*, size_t), const char* function_name, const void* memory, size_t bytes, size_t read_iterations) {
	const uint64_t start = timer::get_nsecs();
	for (size_t iteration = 0; iteration < read_iterations; iteration++) {
		memory_read_function(memory, bytes);
	}
	const uint64_t end = timer::get_nsecs();
	double gb = double(bytes) * double(read_iterations) / 0x1.0p+30;
	double secs = double(end - start) / 1.0e+9;
	double gbps = gb / secs;
	printf("%s" "\t" "%4.03lf\n", function_name, gbps);
}

void Benchmark_ReadCacheRandom(void (*memory_read_function)(const void*, size_t), const char* function_name, const void* memory, size_t bytes, size_t read_iterations, size_t bytes_per_access) {
	const uint64_t start = timer::get_nsecs();
	for (size_t iteration = 0; iteration < read_iterations; iteration++) {
		memory_read_function(memory, bytes);
	}
	const uint64_t end = timer::get_nsecs();
	double gb = double(bytes) * double(read_iterations) / double(bytes_per_access) / 0x1.0p+30;
	double secs = double(end - start) / 1.0e+9;
	double gbps = gb / secs;
	printf("%s" "\t" "%4.03lf\n", function_name, gbps);
}

void Benchmark_ReadRandom(const char* function_name, const void* memory, size_t bytes, size_t stride, size_t random_iterations) {
	void (*memory_read_function)(const void*) = 0;
	#ifdef __arm__
		switch (stride) {
			case 32:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_ReadMemory_Random13_LDR_Stride32; break;
					case 1<<14: memory_read_function = &uBench_ReadMemory_Random14_LDR_Stride32; break;
					case 1<<15: memory_read_function = &uBench_ReadMemory_Random15_LDR_Stride32; break;
					case 1<<16: memory_read_function = &uBench_ReadMemory_Random16_LDR_Stride32; break;
					case 1<<17: memory_read_function = &uBench_ReadMemory_Random17_LDR_Stride32; break;
					case 1<<18: memory_read_function = &uBench_ReadMemory_Random18_LDR_Stride32; break;
					case 1<<19: memory_read_function = &uBench_ReadMemory_Random19_LDR_Stride32; break;
					case 1<<20: memory_read_function = &uBench_ReadMemory_Random20_LDR_Stride32; break;
					case 1<<21: memory_read_function = &uBench_ReadMemory_Random21_LDR_Stride32; break;
					case 1<<22: memory_read_function = &uBench_ReadMemory_Random22_LDR_Stride32; break;
					case 1<<23: memory_read_function = &uBench_ReadMemory_Random23_LDR_Stride32; break;
					case 1<<24: memory_read_function = &uBench_ReadMemory_Random24_LDR_Stride32; break;
					case 1<<25: memory_read_function = &uBench_ReadMemory_Random25_LDR_Stride32; break;
					case 1<<26: memory_read_function = &uBench_ReadMemory_Random26_LDR_Stride32; break;
					case 1<<27: memory_read_function = &uBench_ReadMemory_Random27_LDR_Stride32; break;
					case 1<<28: memory_read_function = &uBench_ReadMemory_Random28_LDR_Stride32; break;
					case 1<<29: memory_read_function = &uBench_ReadMemory_Random29_LDR_Stride32; break;
					case 1<<30: memory_read_function = &uBench_ReadMemory_Random30_LDR_Stride32; break;
					default: __builtin_trap(); break;
				}
				break;
			case 64:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_ReadMemory_Random13_LDR_Stride64; break;
					case 1<<14: memory_read_function = &uBench_ReadMemory_Random14_LDR_Stride64; break;
					case 1<<15: memory_read_function = &uBench_ReadMemory_Random15_LDR_Stride64; break;
					case 1<<16: memory_read_function = &uBench_ReadMemory_Random16_LDR_Stride64; break;
					case 1<<17: memory_read_function = &uBench_ReadMemory_Random17_LDR_Stride64; break;
					case 1<<18: memory_read_function = &uBench_ReadMemory_Random18_LDR_Stride64; break;
					case 1<<19: memory_read_function = &uBench_ReadMemory_Random19_LDR_Stride64; break;
					case 1<<20: memory_read_function = &uBench_ReadMemory_Random20_LDR_Stride64; break;
					case 1<<21: memory_read_function = &uBench_ReadMemory_Random21_LDR_Stride64; break;
					case 1<<22: memory_read_function = &uBench_ReadMemory_Random22_LDR_Stride64; break;
					case 1<<23: memory_read_function = &uBench_ReadMemory_Random23_LDR_Stride64; break;
					case 1<<24: memory_read_function = &uBench_ReadMemory_Random24_LDR_Stride64; break;
					case 1<<25: memory_read_function = &uBench_ReadMemory_Random25_LDR_Stride64; break;
					case 1<<26: memory_read_function = &uBench_ReadMemory_Random26_LDR_Stride64; break;
					case 1<<27: memory_read_function = &uBench_ReadMemory_Random27_LDR_Stride64; break;
					case 1<<28: memory_read_function = &uBench_ReadMemory_Random28_LDR_Stride64; break;
					case 1<<29: memory_read_function = &uBench_ReadMemory_Random29_LDR_Stride64; break;
					case 1<<30: memory_read_function = &uBench_ReadMemory_Random30_LDR_Stride64; break;
					default: __builtin_trap(); break;
				}
				break;
			case 128:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_ReadMemory_Random13_LDR_Stride128; break;
					case 1<<14: memory_read_function = &uBench_ReadMemory_Random14_LDR_Stride128; break;
					case 1<<15: memory_read_function = &uBench_ReadMemory_Random15_LDR_Stride128; break;
					case 1<<16: memory_read_function = &uBench_ReadMemory_Random16_LDR_Stride128; break;
					case 1<<17: memory_read_function = &uBench_ReadMemory_Random17_LDR_Stride128; break;
					case 1<<18: memory_read_function = &uBench_ReadMemory_Random18_LDR_Stride128; break;
					case 1<<19: memory_read_function = &uBench_ReadMemory_Random19_LDR_Stride128; break;
					case 1<<20: memory_read_function = &uBench_ReadMemory_Random20_LDR_Stride128; break;
					case 1<<21: memory_read_function = &uBench_ReadMemory_Random21_LDR_Stride128; break;
					case 1<<22: memory_read_function = &uBench_ReadMemory_Random22_LDR_Stride128; break;
					case 1<<23: memory_read_function = &uBench_ReadMemory_Random23_LDR_Stride128; break;
					case 1<<24: memory_read_function = &uBench_ReadMemory_Random24_LDR_Stride128; break;
					case 1<<25: memory_read_function = &uBench_ReadMemory_Random25_LDR_Stride128; break;
					case 1<<26: memory_read_function = &uBench_ReadMemory_Random26_LDR_Stride128; break;
					case 1<<27: memory_read_function = &uBench_ReadMemory_Random27_LDR_Stride128; break;
					case 1<<28: memory_read_function = &uBench_ReadMemory_Random28_LDR_Stride128; break;
					case 1<<29: memory_read_function = &uBench_ReadMemory_Random29_LDR_Stride128; break;
					case 1<<30: memory_read_function = &uBench_ReadMemory_Random30_LDR_Stride128; break;
					default: __builtin_trap(); break;
				}
				break;
			default:
				__builtin_trap();
				break;
		}
	#else
		switch (stride) {
			case 32:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_ReadMemory_Random13_MOV_Stride32; break;
					case 1<<14: memory_read_function = &uBench_ReadMemory_Random14_MOV_Stride32; break;
					case 1<<15: memory_read_function = &uBench_ReadMemory_Random15_MOV_Stride32; break;
					case 1<<16: memory_read_function = &uBench_ReadMemory_Random16_MOV_Stride32; break;
					case 1<<17: memory_read_function = &uBench_ReadMemory_Random17_MOV_Stride32; break;
					case 1<<18: memory_read_function = &uBench_ReadMemory_Random18_MOV_Stride32; break;
					case 1<<19: memory_read_function = &uBench_ReadMemory_Random19_MOV_Stride32; break;
					case 1<<20: memory_read_function = &uBench_ReadMemory_Random20_MOV_Stride32; break;
					case 1<<21: memory_read_function = &uBench_ReadMemory_Random21_MOV_Stride32; break;
					case 1<<22: memory_read_function = &uBench_ReadMemory_Random22_MOV_Stride32; break;
					case 1<<23: memory_read_function = &uBench_ReadMemory_Random23_MOV_Stride32; break;
					case 1<<24: memory_read_function = &uBench_ReadMemory_Random24_MOV_Stride32; break;
					case 1<<25: memory_read_function = &uBench_ReadMemory_Random25_MOV_Stride32; break;
					case 1<<26: memory_read_function = &uBench_ReadMemory_Random26_MOV_Stride32; break;
					case 1<<27: memory_read_function = &uBench_ReadMemory_Random27_MOV_Stride32; break;
					case 1<<28: memory_read_function = &uBench_ReadMemory_Random28_MOV_Stride32; break;
					case 1<<29: memory_read_function = &uBench_ReadMemory_Random29_MOV_Stride32; break;
					case 1<<30: memory_read_function = &uBench_ReadMemory_Random30_MOV_Stride32; break;
					default: __builtin_trap(); break;
				}
				break;
			case 64:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_ReadMemory_Random13_MOV_Stride64; break;
					case 1<<14: memory_read_function = &uBench_ReadMemory_Random14_MOV_Stride64; break;
					case 1<<15: memory_read_function = &uBench_ReadMemory_Random15_MOV_Stride64; break;
					case 1<<16: memory_read_function = &uBench_ReadMemory_Random16_MOV_Stride64; break;
					case 1<<17: memory_read_function = &uBench_ReadMemory_Random17_MOV_Stride64; break;
					case 1<<18: memory_read_function = &uBench_ReadMemory_Random18_MOV_Stride64; break;
					case 1<<19: memory_read_function = &uBench_ReadMemory_Random19_MOV_Stride64; break;
					case 1<<20: memory_read_function = &uBench_ReadMemory_Random20_MOV_Stride64; break;
					case 1<<21: memory_read_function = &uBench_ReadMemory_Random21_MOV_Stride64; break;
					case 1<<22: memory_read_function = &uBench_ReadMemory_Random22_MOV_Stride64; break;
					case 1<<23: memory_read_function = &uBench_ReadMemory_Random23_MOV_Stride64; break;
					case 1<<24: memory_read_function = &uBench_ReadMemory_Random24_MOV_Stride64; break;
					case 1<<25: memory_read_function = &uBench_ReadMemory_Random25_MOV_Stride64; break;
					case 1<<26: memory_read_function = &uBench_ReadMemory_Random26_MOV_Stride64; break;
					case 1<<27: memory_read_function = &uBench_ReadMemory_Random27_MOV_Stride64; break;
					case 1<<28: memory_read_function = &uBench_ReadMemory_Random28_MOV_Stride64; break;
					case 1<<29: memory_read_function = &uBench_ReadMemory_Random29_MOV_Stride64; break;
					case 1<<30: memory_read_function = &uBench_ReadMemory_Random30_MOV_Stride64; break;
					default: __builtin_trap(); break;
				}
				break;
			case 128:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_ReadMemory_Random13_MOV_Stride128; break;
					case 1<<14: memory_read_function = &uBench_ReadMemory_Random14_MOV_Stride128; break;
					case 1<<15: memory_read_function = &uBench_ReadMemory_Random15_MOV_Stride128; break;
					case 1<<16: memory_read_function = &uBench_ReadMemory_Random16_MOV_Stride128; break;
					case 1<<17: memory_read_function = &uBench_ReadMemory_Random17_MOV_Stride128; break;
					case 1<<18: memory_read_function = &uBench_ReadMemory_Random18_MOV_Stride128; break;
					case 1<<19: memory_read_function = &uBench_ReadMemory_Random19_MOV_Stride128; break;
					case 1<<20: memory_read_function = &uBench_ReadMemory_Random20_MOV_Stride128; break;
					case 1<<21: memory_read_function = &uBench_ReadMemory_Random21_MOV_Stride128; break;
					case 1<<22: memory_read_function = &uBench_ReadMemory_Random22_MOV_Stride128; break;
					case 1<<23: memory_read_function = &uBench_ReadMemory_Random23_MOV_Stride128; break;
					case 1<<24: memory_read_function = &uBench_ReadMemory_Random24_MOV_Stride128; break;
					case 1<<25: memory_read_function = &uBench_ReadMemory_Random25_MOV_Stride128; break;
					case 1<<26: memory_read_function = &uBench_ReadMemory_Random26_MOV_Stride128; break;
					case 1<<27: memory_read_function = &uBench_ReadMemory_Random27_MOV_Stride128; break;
					case 1<<28: memory_read_function = &uBench_ReadMemory_Random28_MOV_Stride128; break;
					case 1<<29: memory_read_function = &uBench_ReadMemory_Random29_MOV_Stride128; break;
					case 1<<30: memory_read_function = &uBench_ReadMemory_Random30_MOV_Stride128; break;
					default: __builtin_trap(); break;
				}
				break;
			default:
				__builtin_trap();
				break;
		}
	#endif
	// First pass to load data to caches (if it fits)
	memory_read_function(memory);
	const uint64_t start = timer::get_nsecs();
	for (size_t i = 0; i < random_iterations; i++) {
		memory_read_function(memory);
	}
	const uint64_t end = timer::get_nsecs();

	double mega_accesses = (double (bytes / stride) / 1.0e+6) * 
													double (random_iterations);
	double secs = double(end - start) / 1.0e+9;
	double maps = mega_accesses / secs;
	printf("%s" "\t" "%u" "\t" "%4.03lf\n", function_name, unsigned(stride),
				 maps);
}

void Benchmark_UpdateRandomAtomic(const char* function_name, const void* memory, size_t bytes, size_t stride, size_t random_iterations) {
	void (*memory_read_function)(const void*) = 0;
	#ifdef __arm__
		switch (stride) {
			case 32:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_UpdateMemory_RandomAtomic13_LLSC_Stride32; break;
					case 1<<14: memory_read_function = &uBench_UpdateMemory_RandomAtomic14_LLSC_Stride32; break;
					case 1<<15: memory_read_function = &uBench_UpdateMemory_RandomAtomic15_LLSC_Stride32; break;
					case 1<<16: memory_read_function = &uBench_UpdateMemory_RandomAtomic16_LLSC_Stride32; break;
					case 1<<17: memory_read_function = &uBench_UpdateMemory_RandomAtomic17_LLSC_Stride32; break;
					case 1<<18: memory_read_function = &uBench_UpdateMemory_RandomAtomic18_LLSC_Stride32; break;
					case 1<<19: memory_read_function = &uBench_UpdateMemory_RandomAtomic19_LLSC_Stride32; break;
					case 1<<20: memory_read_function = &uBench_UpdateMemory_RandomAtomic20_LLSC_Stride32; break;
					case 1<<21: memory_read_function = &uBench_UpdateMemory_RandomAtomic21_LLSC_Stride32; break;
					case 1<<22: memory_read_function = &uBench_UpdateMemory_RandomAtomic22_LLSC_Stride32; break;
					case 1<<23: memory_read_function = &uBench_UpdateMemory_RandomAtomic23_LLSC_Stride32; break;
					case 1<<24: memory_read_function = &uBench_UpdateMemory_RandomAtomic24_LLSC_Stride32; break;
					case 1<<25: memory_read_function = &uBench_UpdateMemory_RandomAtomic25_LLSC_Stride32; break;
					case 1<<26: memory_read_function = &uBench_UpdateMemory_RandomAtomic26_LLSC_Stride32; break;
					case 1<<27: memory_read_function = &uBench_UpdateMemory_RandomAtomic27_LLSC_Stride32; break;
					case 1<<28: memory_read_function = &uBench_UpdateMemory_RandomAtomic28_LLSC_Stride32; break;
					case 1<<29: memory_read_function = &uBench_UpdateMemory_RandomAtomic29_LLSC_Stride32; break;
					case 1<<30: memory_read_function = &uBench_UpdateMemory_RandomAtomic30_LLSC_Stride32; break;
					default: __builtin_trap(); break;
				}
				break;
			case 64:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_UpdateMemory_RandomAtomic13_LLSC_Stride64; break;
					case 1<<14: memory_read_function = &uBench_UpdateMemory_RandomAtomic14_LLSC_Stride64; break;
					case 1<<15: memory_read_function = &uBench_UpdateMemory_RandomAtomic15_LLSC_Stride64; break;
					case 1<<16: memory_read_function = &uBench_UpdateMemory_RandomAtomic16_LLSC_Stride64; break;
					case 1<<17: memory_read_function = &uBench_UpdateMemory_RandomAtomic17_LLSC_Stride64; break;
					case 1<<18: memory_read_function = &uBench_UpdateMemory_RandomAtomic18_LLSC_Stride64; break;
					case 1<<19: memory_read_function = &uBench_UpdateMemory_RandomAtomic19_LLSC_Stride64; break;
					case 1<<20: memory_read_function = &uBench_UpdateMemory_RandomAtomic20_LLSC_Stride64; break;
					case 1<<21: memory_read_function = &uBench_UpdateMemory_RandomAtomic21_LLSC_Stride64; break;
					case 1<<22: memory_read_function = &uBench_UpdateMemory_RandomAtomic22_LLSC_Stride64; break;
					case 1<<23: memory_read_function = &uBench_UpdateMemory_RandomAtomic23_LLSC_Stride64; break;
					case 1<<24: memory_read_function = &uBench_UpdateMemory_RandomAtomic24_LLSC_Stride64; break;
					case 1<<25: memory_read_function = &uBench_UpdateMemory_RandomAtomic25_LLSC_Stride64; break;
					case 1<<26: memory_read_function = &uBench_UpdateMemory_RandomAtomic26_LLSC_Stride64; break;
					case 1<<27: memory_read_function = &uBench_UpdateMemory_RandomAtomic27_LLSC_Stride64; break;
					case 1<<28: memory_read_function = &uBench_UpdateMemory_RandomAtomic28_LLSC_Stride64; break;
					case 1<<29: memory_read_function = &uBench_UpdateMemory_RandomAtomic29_LLSC_Stride64; break;
					case 1<<30: memory_read_function = &uBench_UpdateMemory_RandomAtomic30_LLSC_Stride64; break;
					default: __builtin_trap(); break;
				}
				break;
			case 128:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_UpdateMemory_RandomAtomic13_LLSC_Stride128; break;
					case 1<<14: memory_read_function = &uBench_UpdateMemory_RandomAtomic14_LLSC_Stride128; break;
					case 1<<15: memory_read_function = &uBench_UpdateMemory_RandomAtomic15_LLSC_Stride128; break;
					case 1<<16: memory_read_function = &uBench_UpdateMemory_RandomAtomic16_LLSC_Stride128; break;
					case 1<<17: memory_read_function = &uBench_UpdateMemory_RandomAtomic17_LLSC_Stride128; break;
					case 1<<18: memory_read_function = &uBench_UpdateMemory_RandomAtomic18_LLSC_Stride128; break;
					case 1<<19: memory_read_function = &uBench_UpdateMemory_RandomAtomic19_LLSC_Stride128; break;
					case 1<<20: memory_read_function = &uBench_UpdateMemory_RandomAtomic20_LLSC_Stride128; break;
					case 1<<21: memory_read_function = &uBench_UpdateMemory_RandomAtomic21_LLSC_Stride128; break;
					case 1<<22: memory_read_function = &uBench_UpdateMemory_RandomAtomic22_LLSC_Stride128; break;
					case 1<<23: memory_read_function = &uBench_UpdateMemory_RandomAtomic23_LLSC_Stride128; break;
					case 1<<24: memory_read_function = &uBench_UpdateMemory_RandomAtomic24_LLSC_Stride128; break;
					case 1<<25: memory_read_function = &uBench_UpdateMemory_RandomAtomic25_LLSC_Stride128; break;
					case 1<<26: memory_read_function = &uBench_UpdateMemory_RandomAtomic26_LLSC_Stride128; break;
					case 1<<27: memory_read_function = &uBench_UpdateMemory_RandomAtomic27_LLSC_Stride128; break;
					case 1<<28: memory_read_function = &uBench_UpdateMemory_RandomAtomic28_LLSC_Stride128; break;
					case 1<<29: memory_read_function = &uBench_UpdateMemory_RandomAtomic29_LLSC_Stride128; break;
					case 1<<30: memory_read_function = &uBench_UpdateMemory_RandomAtomic30_LLSC_Stride128; break;
					default: __builtin_trap(); break;
				}
				break;
			default:
				__builtin_trap();
				break;
		}
	#elif !defined(__MIC__)
		switch (stride) {
			case 32:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_UpdateMemory_RandomAtomic13_INC_Stride32; break;
					case 1<<14: memory_read_function = &uBench_UpdateMemory_RandomAtomic14_INC_Stride32; break;
					case 1<<15: memory_read_function = &uBench_UpdateMemory_RandomAtomic15_INC_Stride32; break;
					case 1<<16: memory_read_function = &uBench_UpdateMemory_RandomAtomic16_INC_Stride32; break;
					case 1<<17: memory_read_function = &uBench_UpdateMemory_RandomAtomic17_INC_Stride32; break;
					case 1<<18: memory_read_function = &uBench_UpdateMemory_RandomAtomic18_INC_Stride32; break;
					case 1<<19: memory_read_function = &uBench_UpdateMemory_RandomAtomic19_INC_Stride32; break;
					case 1<<20: memory_read_function = &uBench_UpdateMemory_RandomAtomic20_INC_Stride32; break;
					case 1<<21: memory_read_function = &uBench_UpdateMemory_RandomAtomic21_INC_Stride32; break;
					case 1<<22: memory_read_function = &uBench_UpdateMemory_RandomAtomic22_INC_Stride32; break;
					case 1<<23: memory_read_function = &uBench_UpdateMemory_RandomAtomic23_INC_Stride32; break;
					case 1<<24: memory_read_function = &uBench_UpdateMemory_RandomAtomic24_INC_Stride32; break;
					case 1<<25: memory_read_function = &uBench_UpdateMemory_RandomAtomic25_INC_Stride32; break;
					case 1<<26: memory_read_function = &uBench_UpdateMemory_RandomAtomic26_INC_Stride32; break;
					case 1<<27: memory_read_function = &uBench_UpdateMemory_RandomAtomic27_INC_Stride32; break;
					case 1<<28: memory_read_function = &uBench_UpdateMemory_RandomAtomic28_INC_Stride32; break;
					case 1<<29: memory_read_function = &uBench_UpdateMemory_RandomAtomic29_INC_Stride32; break;
					case 1<<30: memory_read_function = &uBench_UpdateMemory_RandomAtomic30_INC_Stride32; break;
					default: __builtin_trap(); break;
				}
				break;
			case 64:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_UpdateMemory_RandomAtomic13_INC_Stride64; break;
					case 1<<14: memory_read_function = &uBench_UpdateMemory_RandomAtomic14_INC_Stride64; break;
					case 1<<15: memory_read_function = &uBench_UpdateMemory_RandomAtomic15_INC_Stride64; break;
					case 1<<16: memory_read_function = &uBench_UpdateMemory_RandomAtomic16_INC_Stride64; break;
					case 1<<17: memory_read_function = &uBench_UpdateMemory_RandomAtomic17_INC_Stride64; break;
					case 1<<18: memory_read_function = &uBench_UpdateMemory_RandomAtomic18_INC_Stride64; break;
					case 1<<19: memory_read_function = &uBench_UpdateMemory_RandomAtomic19_INC_Stride64; break;
					case 1<<20: memory_read_function = &uBench_UpdateMemory_RandomAtomic20_INC_Stride64; break;
					case 1<<21: memory_read_function = &uBench_UpdateMemory_RandomAtomic21_INC_Stride64; break;
					case 1<<22: memory_read_function = &uBench_UpdateMemory_RandomAtomic22_INC_Stride64; break;
					case 1<<23: memory_read_function = &uBench_UpdateMemory_RandomAtomic23_INC_Stride64; break;
					case 1<<24: memory_read_function = &uBench_UpdateMemory_RandomAtomic24_INC_Stride64; break;
					case 1<<25: memory_read_function = &uBench_UpdateMemory_RandomAtomic25_INC_Stride64; break;
					case 1<<26: memory_read_function = &uBench_UpdateMemory_RandomAtomic26_INC_Stride64; break;
					case 1<<27: memory_read_function = &uBench_UpdateMemory_RandomAtomic27_INC_Stride64; break;
					case 1<<28: memory_read_function = &uBench_UpdateMemory_RandomAtomic28_INC_Stride64; break;
					case 1<<29: memory_read_function = &uBench_UpdateMemory_RandomAtomic29_INC_Stride64; break;
					case 1<<30: memory_read_function = &uBench_UpdateMemory_RandomAtomic30_INC_Stride64; break;
					default: __builtin_trap(); break;
				}
				break;
			case 128:
				switch (bytes) {
					case 1<<13: memory_read_function = &uBench_UpdateMemory_RandomAtomic13_INC_Stride128; break;
					case 1<<14: memory_read_function = &uBench_UpdateMemory_RandomAtomic14_INC_Stride128; break;
					case 1<<15: memory_read_function = &uBench_UpdateMemory_RandomAtomic15_INC_Stride128; break;
					case 1<<16: memory_read_function = &uBench_UpdateMemory_RandomAtomic16_INC_Stride128; break;
					case 1<<17: memory_read_function = &uBench_UpdateMemory_RandomAtomic17_INC_Stride128; break;
					case 1<<18: memory_read_function = &uBench_UpdateMemory_RandomAtomic18_INC_Stride128; break;
					case 1<<19: memory_read_function = &uBench_UpdateMemory_RandomAtomic19_INC_Stride128; break;
					case 1<<20: memory_read_function = &uBench_UpdateMemory_RandomAtomic20_INC_Stride128; break;
					case 1<<21: memory_read_function = &uBench_UpdateMemory_RandomAtomic21_INC_Stride128; break;
					case 1<<22: memory_read_function = &uBench_UpdateMemory_RandomAtomic22_INC_Stride128; break;
					case 1<<23: memory_read_function = &uBench_UpdateMemory_RandomAtomic23_INC_Stride128; break;
					case 1<<24: memory_read_function = &uBench_UpdateMemory_RandomAtomic24_INC_Stride128; break;
					case 1<<25: memory_read_function = &uBench_UpdateMemory_RandomAtomic25_INC_Stride128; break;
					case 1<<26: memory_read_function = &uBench_UpdateMemory_RandomAtomic26_INC_Stride128; break;
					case 1<<27: memory_read_function = &uBench_UpdateMemory_RandomAtomic27_INC_Stride128; break;
					case 1<<28: memory_read_function = &uBench_UpdateMemory_RandomAtomic28_INC_Stride128; break;
					case 1<<29: memory_read_function = &uBench_UpdateMemory_RandomAtomic29_INC_Stride128; break;
					case 1<<30: memory_read_function = &uBench_UpdateMemory_RandomAtomic30_INC_Stride128; break;
					default: __builtin_trap(); break;
				}
				break;
			default:
				__builtin_trap();
				break;
		}
	#endif
	// First pass to load data to caches (if it fits)
	memory_read_function(memory);
	const uint64_t start = timer::get_nsecs();
	for (size_t i = 0; i < random_iterations; i++) {
		memory_read_function(memory);
	}
	const uint64_t end = timer::get_nsecs();

	double mega_accesses = (double(bytes / stride) / 1.0e+6) * double(random_iterations);
	double secs = double(end - start) / 1.0e+9;
	double maps = mega_accesses / secs;
	printf("%s" "\t" "%u" "\t" "%4.03lf\n", function_name, unsigned(stride), maps);
}


int main(int argc, char** argv) {
	/* Size of the array */
	/* This should be adjusted depending on the type of test
	 * e.g., DRAM test ==> Large; 
		 Cache test ==> ~2 * lower level cache <= size <= ~1/4 cache size
	 */
	const size_t array_length = 1024 * 1024 * 32;

	/* Number of iterations */
	const size_t random_iterations = 32;
	/* Number of iterations */
	const size_t read_iterations = 1024 * 512;

	/* Allocate and initialize memory */
	uint32_t* data = (uint32_t*) memalign (64, array_length * 
																				 sizeof (uint32_t));
	memset(data, 0, array_length * sizeof (uint32_t));

	#ifndef __ANDROID__
		printf("OpenMP threads: %d\n", omp_get_max_threads());
	#endif

	/* Choose between these for DRAM random access benchmark
		 1) pointer chasing random access (UBENCH_TEST_RANDOM_POINTER_CHASING)
		 2) on-the-fly random access (UBENCH_TEST_RANDOM_READ)
	 */
	#define UBENCH_TEST_RANDOM_POINTER_CHASING
	//~ #define UBENCH_TEST_RANDOM_READ

/* =================================================================== */
#if defined(UBENCH_TEST_RANDOM_POINTER_CHASING)
/* This is the pointer chasing version that "randomly" traverses all
	 the elements in an array using a shift-based algorithm */
	{
		printf("Version" "\t" "MA/s" "\n");

		/* The shifting algorithm used for generating the "pointer chasing" 
			 array 
			 25 is the number of bits representing the size of the array 
		   for array_length = 1024 * 1024 * 32 = 32M ==> 25 bits 
		 */
		XorShift rng = XorShift(1u, 25);
		uint32_t prevIndex = 1;
		data[0] = 1;
		/* initialize the array using the algorithm */
		for (size_t i = 0; i < array_length; i++) {
			const uint32_t index = rng.next();
			data[prevIndex] = index;
			prevIndex = index;
		}

		/* We'll be using 12 simultaneous pointer chasers */
		/* Each chaser will  start from equidistantly placed  positions in 
			 the array 
		 */
		uint32_t initialVector[12];
		for (size_t i = 0; i < 12; i++) {
			initialVector[i] = (array_length / 12) * i + 1;
		}

		const uint64_t start = timer::get_nsecs();
		/* For ARM processors */
		#ifdef __arm__
			uBench_ReadMemory_12PointerChasing_LDR(array_length, data, 
																						 initialVector);
		/* x86 processors */
		#else
			uBench_ReadMemory_12PointerChasing_MOV(array_length, data, 
																						 initialVector);
		#endif
		const uint64_t end = timer::get_nsecs();

		/* Total number of accesses */
		double mega_accesses = double(array_length) * 12.0 / 1.0e+6;
		double secs = double(end - start) / 1.0e+9;
		/* Millions of accesses per second */
		double maps = mega_accesses / secs;

		#ifdef __arm__
			printf("%s" "\t" "%4.03lf\n", "LDR", maps);
		#else
			printf("%s" "\t" "%4.03lf\n", "MOV", maps);
		#endif
	}
#endif
/* =================================================================== */

/* =================================================================== */
#if defined(UBENCH_TEST_RANDOM_READ)
/* This is the on-the-fly version that "randomly" traverses all
	 the elements in an array. That is, the next index is calculated on the
	 fly instead of pre-calculating it in a pointer-chasing array  */
	printf("Version" "\t" "Stride" "\t" "MA/s" "\n");
	#ifdef __arm__
		Benchmark_ReadRandom("LDR", data, array_length, 32, 
												 random_iterations / 64);
		Benchmark_ReadRandom("LDR", data, array_length, 64, 
												 random_iterations / 64);
		Benchmark_ReadRandom("LDR", data, array_length, 128, 
												 random_iterations / 64);
	#else
		Benchmark_ReadRandom("MOV", data, array_length, 32, random_iterations / 64);
		Benchmark_ReadRandom("MOV", data, array_length, 64, random_iterations / 64);
		Benchmark_ReadRandom("MOV", data, array_length, 128, random_iterations / 64);
	#endif
#endif
/* =================================================================== */


	
#if defined(UBENCH_TEST_RANDOM_CACHE_READ)
	printf("Version" "\t" "MA/s" "\n");
	#ifdef __arm__
		Benchmark_ReadCacheRandom(&uBench_ReadMemory_2KRandom_LDR, "LDR", data, array_length, read_iterations, 4);
		Benchmark_ReadCacheRandom(&uBench_ReadMemory_2KRandom_VLDR, "VLDR", data, array_length, read_iterations, 4);
	#else
		Benchmark_ReadCacheRandom(&uBench_ReadMemory_2KRandom_MOV, "MOV", data, array_length, read_iterations, 4);
		#ifndef __MIC__
			Benchmark_ReadCacheRandom(&uBench_ReadMemory_2KRandom_MOVSS, "MOVSS", data, array_length, read_iterations, 4);
		#endif
	#endif
#endif

#if defined(UBENCH_TEST_RANDOM_ATOMIC_UPDATE)
	printf("Version" "\t" "Stride" "\t" "MA/s" "\n");
	#ifdef __arm__
		Benchmark_UpdateRandomAtomic("LL-SC", data, array_length, 32, random_iterations);
		Benchmark_UpdateRandomAtomic("LL-SC", data, array_length, 64, random_iterations);
		Benchmark_UpdateRandomAtomic("LL-SC", data, array_length, 128, random_iterations);
	#elif !defined(__MIC__)
		Benchmark_UpdateRandomAtomic("INC", data, array_length, 32, random_iterations);
		Benchmark_UpdateRandomAtomic("INC", data, array_length, 64, random_iterations);
		Benchmark_UpdateRandomAtomic("INC", data, array_length, 128, random_iterations);
	#endif
#endif


#if defined(UBENCH_TEST_SEQUENTIAL_READ)
	printf("Version" "\t" "Prefetch" "\t" "GB/s" "\n");

	#ifdef __arm__
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_LDR_NoPrefetch, "LDR" "\t" "No", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_LDR_Prefetch32, "LDR" "\t" "32", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_LDR_Prefetch64, "LDR" "\t" "64", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_LDR_Prefetch128, "LDR" "\t" "128", data, array_length, read_iterations);

		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_LDM_NoPrefetch, "LDM" "\t" "No", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_LDM_Prefetch32, "LDM" "\t" "32", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_LDM_Prefetch64, "LDM" "\t" "64", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_LDM_Prefetch128, "LDM" "\t" "128", data, array_length, read_iterations);
		
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLDR_NoPrefetch, "VLDR" "\t" "No", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLDR_Prefetch32, "VLDR" "\t" "32", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLDR_Prefetch64, "VLDR" "\t" "64", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLDR_Prefetch128, "VLDR" "\t" "128", data, array_length, read_iterations);
		
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLDM_NoPrefetch, "VLDM" "\t" "No", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLDM_Prefetch32, "VLDM" "\t" "32", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLDM_Prefetch64, "VLDM" "\t" "64", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLDM_Prefetch128, "VLDM" "\t" "128", data, array_length, read_iterations);
		
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLD1_NoPrefetch, "VLD1" "\t" "No", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLD1_Prefetch32, "VLD1" "\t" "32", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLD1_Prefetch64, "VLD1" "\t" "64", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_VLD1_Prefetch128, "VLD1" "\t" "128", data, array_length, read_iterations);
	#endif
		
	#ifdef __MIC__
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_KNC_NoPrefetch, "KNC" "\t" "No", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_KNC_Prefetch64, "KNC" "\t" "64", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_KNC_Prefetch128, "KNC" "\t" "128", data, array_length, read_iterations);
	#endif

	#ifdef __AVX__
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_AVX_NoPrefetch, "AVX" "\t" "No", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_AVX_Prefetch32, "AVX" "\t" "32", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_AVX_Prefetch64, "AVX" "\t" "64", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_AVX_Prefetch128, "AVX" "\t" "128", data, array_length, read_iterations);
	#endif

	#ifdef __SSE4_1__
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_SSE41_NonTemporal, "SSE4.1" "\t" "NT", data, array_length, read_iterations);
	#endif
		
	#ifdef __SSE__
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_SSE_NoPrefetch, "SSE" "\t" "No", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_SSE_Prefetch32, "SSE" "\t" "32", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_SSE_Prefetch64, "SSE" "\t" "64", data, array_length, read_iterations);
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_SSE_Prefetch128, "SSE" "\t" "128", data, array_length, read_iterations);
	#endif
		
	#ifdef __MMX__
		Benchmark_ReadSequential(&uBench_ReadMemory_Sequential_MMX_NoPrefetch, "MMX" "\t" "No", data, array_length, read_iterations);
	#endif
	
#endif

#if defined(UBENCH_TEST_SEMISEQUENTIAL_READ)
	printf("Version" "\t" "GB/s" "\n");

	#ifdef __arm__
		Benchmark_ReadSequential(&uBench_ReadMemory_SemiSequential_LDR_NoPrefetch, "LDR", data, array_length, read_iterations);

		Benchmark_ReadSequential(&uBench_ReadMemory_SemiSequential_LDM_NoPrefetch, "LDM", data, array_length, read_iterations);
		
		Benchmark_ReadSequential(&uBench_ReadMemory_SemiSequential_VLDR_NoPrefetch, "VLDR", data, array_length, read_iterations);
		
		Benchmark_ReadSequential(&uBench_ReadMemory_SemiSequential_VLDM_NoPrefetch, "VLDM", data, array_length, read_iterations);
		
		Benchmark_ReadSequential(&uBench_ReadMemory_SemiSequential_VLD1_NoPrefetch, "VLD1", data, array_length, read_iterations);
	#endif
		
	#ifdef __MIC__
		Benchmark_ReadSequential(&uBench_ReadMemory_SemiSequential_KNC_NoPrefetch, "KNC", data, array_length, read_iterations);
	#endif

	#ifdef __AVX__
		Benchmark_ReadSequential(&uBench_ReadMemory_SemiSequential_AVX_NoPrefetch, "AVX", data, array_length, read_iterations);
	#endif

	#ifdef __SSE__
		Benchmark_ReadSequential(&uBench_ReadMemory_SemiSequential_SSE_NoPrefetch, "SSE", data, array_length, read_iterations);
	#endif
		
	#ifdef __MMX__
		Benchmark_ReadSequential(&uBench_ReadMemory_SemiSequential_MMX_NoPrefetch, "MMX", data, array_length, read_iterations);
	#endif
	
#endif
	free(data);	
}
