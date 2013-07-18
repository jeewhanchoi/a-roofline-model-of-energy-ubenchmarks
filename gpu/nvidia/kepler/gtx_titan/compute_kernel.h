#include "common.h"

__global__ void compute_kernel_1 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_2 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_4 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_8 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_16 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_32 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_64 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_128 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_256 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_512 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_1024 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_2048 (int num_threads, int flops, TYPE* out);
__global__ void compute_kernel_4096 (int num_threads, int flops, TYPE* out);
