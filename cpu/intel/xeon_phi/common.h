#ifndef __COMMON_H__
#define __COMMON_H__


#define _m512_TYPED
#include <xmmintrin.h>
#include <immintrin.h>
#include <stdio.h>
#include <omp.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include <string.h>
#include <pthread.h>
#include <sys/mman.h>

#include "barriers.h"


extern int iuser1;
extern int iuser2;

#define min(a,b) (((a)>(b))?(b):(a))
#define max(a,b) (((a)<(b))?(b):(a))
#define RAND01() (1.0 * (((fptype_t)rand()) / (((fptype_t)RAND_MAX) + 1.0)))

// KNC hardware configurations
#define MAXTHREADS        240
#define CPUFREQ           1.09
#define GHZ               1e9
#define LINESIZE          64
#define CACHESIZE         512*1024
#define ASSOCIATE         8

#define MISS_X_WEIGHT     4
#define MISS_Y_WEIGHT     1

// double precision
#if defined(_PRECISION_) && (_PRECISION_ == 2)
#define FZERO 0.0
#define THRESH 0.000001
#define fptype_t double
#define SIMDW 8
#define NONE -1.0
typedef unsigned char bitmask_t;
// single precision
#elif defined(_PRECISION_) && (_PRECISION_ == 1)
#define FZERO 0.0f
#define THRESH 0.0005f
#define fptype_t float
#define SIMDW 16
#define NONE -1.0f
typedef unsigned short bitmask_t;
// error
#else
#error "Undefined _PRECISION_: should be 1 (single) or 2 (double)"
#endif /* #if defined(_PRECISION_) && (_PRECISION_ == 2) */

#define NNZB 0
#define ROW 0
#define ELEMENT 1
#define ELEMENT2 2

#define STHREADS 12

// load balancers
// static
#define NNZ_BAL      1
#define MISS_BAL     2
// adaptive
#define ADAPTIVE_BAL 3
//dynamic
#define SHARE_BAL    4
#define STEAL_BAL    5
#define HYBRID_BAL   6

#ifdef _BITMASK_
#define PN 3
#else
#define PN 2
#endif

#define Barrier(tid) tbarrier.Wait(tid)

#if 1
#define _my_malloc(size, alignment)  \
  mmap(NULL, size, PROT_READ | PROT_WRITE, \
  MAP_ANONYMOUS | MAP_SHARED | MAP_HUGETLB| MAP_POPULATE, -1, 0)
#define MY_MALLOC_FAILED MAP_FAILED
#define _my_free(addr) munmap(addr, 0)
#else
#define _my_malloc(size, alignment)  _mm_malloc(size, alignment)
#define MY_MALLOC_FAILED NULL
#define _my_free(addr) _mm_free(addr)
#endif

#ifdef _PREFETCH_
#define MY_PREFETCH_L1(v)     _mm_prefetch((const char *)v, _MM_HINT_T0)
#define MY_PREFETCH_L2(v)     _mm_prefetch((const char *)v, _MM_HINT_T1)
#define MY_PREFETCH_L1_NTA(v) _mm_prefetch((const char *)v, _MM_HINT_NTA)
#define MY_PREFETCH_L2_NTA(v) _mm_prefetch((const char *)v, _MM_HINT_T2)
#define MY_PREFETCH_L1_E(v)   _mm_prefetch((const char *)v, _MM_HINT_ET0)
#define MY_PREFETCH_L2_E(v)   _mm_prefetch((const char *)v, _MM_HINT_ET1)
#else
#define MY_PREFETCH_L2(v)
#define MY_PREFETCH_L1(v)
#define MY_PREFETCH_L2_NTA(v)
#define MY_PREFETCH_L1_NTA(v)
#endif /* _PREFETCH_ */


extern int g_balancer;
extern int g_m;
extern int g_n;
extern int g_nnz;
extern fptype_t *g_x;
extern int *g_partition;
extern fptype_t *g_y;
extern pthread_mutex_t *g_lock_y;
extern TreeBarrier tbarrier;
extern char g_filename[1024];
extern double g_cpufreq;
extern __int64 mytime[MAXTHREADS * 8];
extern char *g_isgprefetch;
extern int g_nqueue;
extern int g_ntasksperqueue;


void initvec (fptype_t * v, int size, fptype_t initval);

void initomp (int nthreads, int verbose);

__attribute__((noinline)) void trace1();

__attribute__((noinline)) void trace2();

__attribute__((noinline)) void trace3();

void KNC_printVint (__m512i reg, __mmask16 mask, char *regname);

void KNC_printVfp (__m512 reg, __mmask16 mask, char *regname);

void KNC_printVdp (__m512d reg, __mmask8 mask, char *regname);


#endif /* __COMMON_H__ */
