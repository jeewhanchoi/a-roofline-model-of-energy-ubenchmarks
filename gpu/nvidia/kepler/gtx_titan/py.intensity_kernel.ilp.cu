#include "common.h"
/* ============================================================ */
/* Stream == 1 */
/* ============================================================ */
/* Flops == 1 */
__global__ void intensity_kernel_1_1(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 2 */
__global__ void intensity_kernel_1_2(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 3 */
__global__ void intensity_kernel_1_3(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}


/* Flops == 4 */
__global__ void intensity_kernel_1_4(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 5 */
__global__ void intensity_kernel_1_5(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 6 */
__global__ void intensity_kernel_1_6(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 7 */
__global__ void intensity_kernel_1_7(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}



/* Flops == 8 */
__global__ void intensity_kernel_1_8(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 9 */
__global__ void intensity_kernel_1_9(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 10 */
__global__ void intensity_kernel_1_10(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 12 */
__global__ void intensity_kernel_1_12(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}


/* Flops == 14 */
__global__ void intensity_kernel_1_14(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}


/* Flops == 16 */
__global__ void intensity_kernel_1_16(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 20 */
__global__ void intensity_kernel_1_20(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 24 */
__global__ void intensity_kernel_1_24(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 28 */
__global__ void intensity_kernel_1_28(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}



/* Flops == 32 */
__global__ void intensity_kernel_1_32(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 40 */
__global__ void intensity_kernel_1_40(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}



/* Flops == 48 */
__global__ void intensity_kernel_1_48(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 56 */
__global__ void intensity_kernel_1_56(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}



/* Flops == 64 */
__global__ void intensity_kernel_1_64(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}


/* Flops == 72 */
__global__ void intensity_kernel_1_72(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}



/* Flops == 128 */
__global__ void intensity_kernel_1_128(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}


/* Flops == 160 */
__global__ void intensity_kernel_1_160(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;


		out[tid] = make_float4 (x, y, z, w);
	}
}




/* Flops == 256 */
__global__ void intensity_kernel_1_256(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 512 */
__global__ void intensity_kernel_1_512(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 1024 */
__global__ void intensity_kernel_1_1024(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 2048 */
__global__ void intensity_kernel_1_2048(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}

/* Flops == 4096 */
__global__ void intensity_kernel_1_4096(int num_threads, int num_streams, TYPE* in, TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	TYPE tmp1;
	float x, y, z, w;

	if(tid < num_threads) {
		tmp1 = in[tid];
		x = tmp1.x;
		y = tmp1.y;
		z = tmp1.z;
		w = tmp1.w;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		x = x + x * CONST;
		y = y + y * CONST;
		z = z + z * CONST;
		w = w + w * CONST;

		out[tid] = make_float4 (x, y, z, w);
	}
}


/* ============================================================ */

