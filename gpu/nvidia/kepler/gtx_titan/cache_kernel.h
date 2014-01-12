#include "common.h"

__global__ void cache_kernel_1 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_2 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_4 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_8 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_16 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_32 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_64 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_128 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_256 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_512 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_1024 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_2048 (int nThreads, int* out, int *chase);
__global__ void cache_kernel_4096 (int nThreads, int* out, int *chase);


