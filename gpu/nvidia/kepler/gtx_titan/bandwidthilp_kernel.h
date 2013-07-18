#ifndef NUM_ITER
	#define NUM_ITER 100
#endif

#ifndef TYPE
	#define TYPE float4
	#define CONST 0.01f
	#define ONE 1.0f
	#define TWO 2.0f
	#define ZERO 0.0f
#endif

__global__ void bandwidth_kernel_1 (int num_threads, int num_streams, 
																		TYPE* in, TYPE* out);
__global__ void bandwidth_kernel_2 (int num_threads, int num_streams, 
																		TYPE* in, TYPE* out);
__global__ void bandwidth_kernel_4 (int num_threads, int num_streams, 	
																		TYPE* in, TYPE* out);
__global__ void bandwidth_kernel_8 (int num_threads, int num_streams, 
																		TYPE* in, TYPE* out);
__global__ void bandwidth_kernel_16 (int num_threads, int num_streams, 
																		 TYPE* in, TYPE* out);
__global__ void bandwidth_kernel_32 (int num_threads, int num_streams, 
																		 TYPE* in, TYPE* out);
__global__ void bandwidth_kernel_64 (int num_threads, int num_streams, 
																		 TYPE* in, TYPE* out);
__global__ void bandwidth_kernel_128 (int num_threads, int num_streams, 
																			TYPE* in, TYPE* out);
