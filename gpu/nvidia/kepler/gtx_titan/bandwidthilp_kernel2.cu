/*
MIT License
Copyright 2020 Jee W. Choi, Marat Dukhan, and Xing Liu
Permission is hereby granted, free of charge, to any person obtaining a copy of 
this software and associated documentation files (the "Software"), to deal in 
the Software without restriction, including without limitation the rights to use, 
copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the 
Software, and to permit persons to whom the Software is furnished to do so, subject 
to the following conditions:
The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

// #include "bandwidthilp_kernel.h"

__global__ void bandwidth_kernel_1 (int num_threads, int num_streams, TYPE* in,
																	TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	if(tid < num_threads) {
		out[tid] = in[tid];
		// memcpy (&out[tid], &in[tid], sizeof (TYPE));
	}
}

__global__ void bandwidth_kernel_2 (int num_threads, int num_streams, TYPE* in,
																	TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	uint offset = blockIdx.x * blockDim.x * 2;

	if(tid < num_threads) {
		out[offset + threadIdx.x] = in[offset + threadIdx.x];
		out[offset + blockDim.x + threadIdx.x] = in[offset + blockDim.x + 
																								threadIdx.x];
		// out[num_threads + tid] = in[num_threads + tid];
	}
}

__global__ void bandwidth_kernel_4 (int num_threads, int num_streams, TYPE* in,
																	TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	uint offset = blockIdx.x * blockDim.x * 4;

	if(tid < num_threads) {
		out[offset + threadIdx.x] = in[offset + threadIdx.x];
		out[offset + blockDim.x + threadIdx.x] = in[offset + blockDim.x + 
																								threadIdx.x];
		out[offset + 2 * blockDim.x + threadIdx.x] = in[offset + 2 * blockDim.x + 
																										threadIdx.x];
		out[offset + 3 * blockDim.x + threadIdx.x] = in[offset + 3 * blockDim.x + 
																										threadIdx.x];

		/*
		out[tid] = in[tid];
		out[num_threads + tid] = in[num_threads + tid];
		out[2 * num_threads + tid] = in[2 * num_threads + tid];
		out[3 * num_threads + tid] = in[3 * num_threads + tid];
		 */
	}
}

__global__ void bandwidth_kernel_8 (int num_threads, int num_streams, TYPE* in,
																	TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;
	uint offset = blockIdx.x * blockDim.x * 8;

	if(tid < num_threads) {
		out[offset + threadIdx.x] = in[offset + threadIdx.x];
		out[offset + blockDim.x + threadIdx.x] = in[offset + blockDim.x + 
																								threadIdx.x];
		out[offset + 2 * blockDim.x + threadIdx.x] = in[offset + 2 * blockDim.x + 
																										threadIdx.x];
		out[offset + 3 * blockDim.x + threadIdx.x] = in[offset + 3 * blockDim.x + 
																										threadIdx.x];
		out[offset + 4 * blockDim.x + threadIdx.x] = in[offset + 4 * blockDim.x + 
																										threadIdx.x];
		out[offset + 5 * blockDim.x + threadIdx.x] = in[offset + 5 * blockDim.x + 
																										threadIdx.x];
		out[offset + 6 * blockDim.x + threadIdx.x] = in[offset + 6 * blockDim.x + 
																										threadIdx.x];
		out[offset + 7 * blockDim.x + threadIdx.x] = in[offset + 7 * blockDim.x + 
																										threadIdx.x];

		/*
		out[tid] = in[tid];
		out[num_threads + tid] = in[num_threads + tid];
		out[2 * num_threads + tid] = in[2 * num_threads + tid];
		out[3 * num_threads + tid] = in[3 * num_threads + tid];
		out[4 * num_threads + tid] = in[4 * num_threads + tid];
		out[5 * num_threads + tid] = in[5 * num_threads + tid];
		out[6 * num_threads + tid] = in[6 * num_threads + tid];
		out[7 * num_threads + tid] = in[7 * num_threads + tid];
		 */
	}
}

__global__ void bandwidth_kernel_16 (int num_threads, int num_streams, TYPE* in,
																	TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;

	if(tid < num_threads) {
		out[tid] = in[tid];
		out[num_threads + tid] = in[num_threads + tid];
		out[2 * num_threads + tid] = in[2 * num_threads + tid];
		out[3 * num_threads + tid] = in[3 * num_threads + tid];
		out[4 * num_threads + tid] = in[4 * num_threads + tid];
		out[5 * num_threads + tid] = in[5 * num_threads + tid];
		out[6 * num_threads + tid] = in[6 * num_threads + tid];
		out[7 * num_threads + tid] = in[7 * num_threads + tid];
		out[8 * num_threads + tid] = in[8 * num_threads + tid];
		out[9 * num_threads + tid] = in[9 * num_threads + tid];
		out[10 * num_threads + tid] = in[10 * num_threads + tid];
		out[11 * num_threads + tid] = in[11 * num_threads + tid];
		out[12 * num_threads + tid] = in[12 * num_threads + tid];
		out[13 * num_threads + tid] = in[13 * num_threads + tid];
		out[14 * num_threads + tid] = in[14 * num_threads + tid];
		out[15 * num_threads + tid] = in[15 * num_threads + tid];
	}
}

__global__ void bandwidth_kernel_32 (int num_threads, int num_streams, TYPE* in,
																	TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;

	if(tid < num_threads) {
		out[tid] = in[tid];
		out[num_threads + tid] = in[num_threads + tid];
		out[2 * num_threads + tid] = in[2 * num_threads + tid];
		out[3 * num_threads + tid] = in[3 * num_threads + tid];
		out[4 * num_threads + tid] = in[4 * num_threads + tid];
		out[5 * num_threads + tid] = in[5 * num_threads + tid];
		out[6 * num_threads + tid] = in[6 * num_threads + tid];
		out[7 * num_threads + tid] = in[7 * num_threads + tid];
		out[8 * num_threads + tid] = in[8 * num_threads + tid];
		out[9 * num_threads + tid] = in[9 * num_threads + tid];
		out[10 * num_threads + tid] = in[10 * num_threads + tid];
		out[11 * num_threads + tid] = in[11 * num_threads + tid];
		out[12 * num_threads + tid] = in[12 * num_threads + tid];
		out[13 * num_threads + tid] = in[13 * num_threads + tid];
		out[14 * num_threads + tid] = in[14 * num_threads + tid];
		out[15 * num_threads + tid] = in[15 * num_threads + tid];
		out[16 * num_threads + tid] = in[16 * num_threads + tid];
		out[17 * num_threads + tid] = in[17 * num_threads + tid];
		out[18 * num_threads + tid] = in[18 * num_threads + tid];
		out[19 * num_threads + tid] = in[19 * num_threads + tid];
		out[20 * num_threads + tid] = in[20 * num_threads + tid];
		out[21 * num_threads + tid] = in[21 * num_threads + tid];
		out[22 * num_threads + tid] = in[22 * num_threads + tid];
		out[23 * num_threads + tid] = in[23 * num_threads + tid];
		out[24 * num_threads + tid] = in[24 * num_threads + tid];
		out[25 * num_threads + tid] = in[25 * num_threads + tid];
		out[26 * num_threads + tid] = in[26 * num_threads + tid];
		out[27 * num_threads + tid] = in[27 * num_threads + tid];
		out[28 * num_threads + tid] = in[28 * num_threads + tid];
		out[29 * num_threads + tid] = in[29 * num_threads + tid];
		out[30 * num_threads + tid] = in[30 * num_threads + tid];
		out[31 * num_threads + tid] = in[31 * num_threads + tid];
	}
}

__global__ void bandwidth_kernel_64 (int num_threads, int num_streams, TYPE* in,
																	TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;

	if(tid < num_threads) {
		out[tid] = in[tid];
		out[num_threads + tid] = in[num_threads + tid];
		out[2 * num_threads + tid] = in[2 * num_threads + tid];
		out[3 * num_threads + tid] = in[3 * num_threads + tid];
		out[4 * num_threads + tid] = in[4 * num_threads + tid];
		out[5 * num_threads + tid] = in[5 * num_threads + tid];
		out[6 * num_threads + tid] = in[6 * num_threads + tid];
		out[7 * num_threads + tid] = in[7 * num_threads + tid];
		out[8 * num_threads + tid] = in[8 * num_threads + tid];
		out[9 * num_threads + tid] = in[9 * num_threads + tid];
		out[10 * num_threads + tid] = in[10 * num_threads + tid];
		out[11 * num_threads + tid] = in[11 * num_threads + tid];
		out[12 * num_threads + tid] = in[12 * num_threads + tid];
		out[13 * num_threads + tid] = in[13 * num_threads + tid];
		out[14 * num_threads + tid] = in[14 * num_threads + tid];
		out[15 * num_threads + tid] = in[15 * num_threads + tid];
		out[16 * num_threads + tid] = in[16 * num_threads + tid];
		out[17 * num_threads + tid] = in[17 * num_threads + tid];
		out[18 * num_threads + tid] = in[18 * num_threads + tid];
		out[19 * num_threads + tid] = in[19 * num_threads + tid];
		out[20 * num_threads + tid] = in[20 * num_threads + tid];
		out[21 * num_threads + tid] = in[21 * num_threads + tid];
		out[22 * num_threads + tid] = in[22 * num_threads + tid];
		out[23 * num_threads + tid] = in[23 * num_threads + tid];
		out[24 * num_threads + tid] = in[24 * num_threads + tid];
		out[25 * num_threads + tid] = in[25 * num_threads + tid];
		out[26 * num_threads + tid] = in[26 * num_threads + tid];
		out[27 * num_threads + tid] = in[27 * num_threads + tid];
		out[28 * num_threads + tid] = in[28 * num_threads + tid];
		out[29 * num_threads + tid] = in[29 * num_threads + tid];
		out[30 * num_threads + tid] = in[30 * num_threads + tid];
		out[31 * num_threads + tid] = in[31 * num_threads + tid];
		out[32 * num_threads + tid] = in[32 * num_threads + tid];
		out[33 * num_threads + tid] = in[33 * num_threads + tid];
		out[34 * num_threads + tid] = in[34 * num_threads + tid];
		out[35 * num_threads + tid] = in[35 * num_threads + tid];
		out[36 * num_threads + tid] = in[36 * num_threads + tid];
		out[37 * num_threads + tid] = in[37 * num_threads + tid];
		out[38 * num_threads + tid] = in[38 * num_threads + tid];
		out[39 * num_threads + tid] = in[39 * num_threads + tid];
		out[40 * num_threads + tid] = in[40 * num_threads + tid];
		out[41 * num_threads + tid] = in[41 * num_threads + tid];
		out[42 * num_threads + tid] = in[42 * num_threads + tid];
		out[43 * num_threads + tid] = in[43 * num_threads + tid];
		out[44 * num_threads + tid] = in[44 * num_threads + tid];
		out[45 * num_threads + tid] = in[45 * num_threads + tid];
		out[46 * num_threads + tid] = in[46 * num_threads + tid];
		out[47 * num_threads + tid] = in[47 * num_threads + tid];
		out[48 * num_threads + tid] = in[48 * num_threads + tid];
		out[49 * num_threads + tid] = in[49 * num_threads + tid];
		out[50 * num_threads + tid] = in[50 * num_threads + tid];
		out[51 * num_threads + tid] = in[51 * num_threads + tid];
		out[52 * num_threads + tid] = in[52 * num_threads + tid];
		out[53 * num_threads + tid] = in[53 * num_threads + tid];
		out[54 * num_threads + tid] = in[54 * num_threads + tid];
		out[55 * num_threads + tid] = in[55 * num_threads + tid];
		out[56 * num_threads + tid] = in[56 * num_threads + tid];
		out[57 * num_threads + tid] = in[57 * num_threads + tid];
		out[58 * num_threads + tid] = in[58 * num_threads + tid];
		out[59 * num_threads + tid] = in[59 * num_threads + tid];
		out[60 * num_threads + tid] = in[60 * num_threads + tid];
		out[61 * num_threads + tid] = in[61 * num_threads + tid];
		out[62 * num_threads + tid] = in[62 * num_threads + tid];
		out[63 * num_threads + tid] = in[63 * num_threads + tid];
	}
}

__global__ void bandwidth_kernel_128 (int num_threads, int num_streams, TYPE* in,
																	TYPE* out)
{
	uint tid = threadIdx.x + blockIdx.x * blockDim.x;

	if(tid < num_threads) {
		out[tid] = in[tid];
		out[num_threads + tid] = in[num_threads + tid];
		out[2 * num_threads + tid] = in[2 * num_threads + tid];
		out[3 * num_threads + tid] = in[3 * num_threads + tid];
		out[4 * num_threads + tid] = in[4 * num_threads + tid];
		out[5 * num_threads + tid] = in[5 * num_threads + tid];
		out[6 * num_threads + tid] = in[6 * num_threads + tid];
		out[7 * num_threads + tid] = in[7 * num_threads + tid];
		out[8 * num_threads + tid] = in[8 * num_threads + tid];
		out[9 * num_threads + tid] = in[9 * num_threads + tid];
		out[10 * num_threads + tid] = in[10 * num_threads + tid];
		out[11 * num_threads + tid] = in[11 * num_threads + tid];
		out[12 * num_threads + tid] = in[12 * num_threads + tid];
		out[13 * num_threads + tid] = in[13 * num_threads + tid];
		out[14 * num_threads + tid] = in[14 * num_threads + tid];
		out[15 * num_threads + tid] = in[15 * num_threads + tid];
		out[16 * num_threads + tid] = in[16 * num_threads + tid];
		out[17 * num_threads + tid] = in[17 * num_threads + tid];
		out[18 * num_threads + tid] = in[18 * num_threads + tid];
		out[19 * num_threads + tid] = in[19 * num_threads + tid];
		out[20 * num_threads + tid] = in[20 * num_threads + tid];
		out[21 * num_threads + tid] = in[21 * num_threads + tid];
		out[22 * num_threads + tid] = in[22 * num_threads + tid];
		out[23 * num_threads + tid] = in[23 * num_threads + tid];
		out[24 * num_threads + tid] = in[24 * num_threads + tid];
		out[25 * num_threads + tid] = in[25 * num_threads + tid];
		out[26 * num_threads + tid] = in[26 * num_threads + tid];
		out[27 * num_threads + tid] = in[27 * num_threads + tid];
		out[28 * num_threads + tid] = in[28 * num_threads + tid];
		out[29 * num_threads + tid] = in[29 * num_threads + tid];
		out[30 * num_threads + tid] = in[30 * num_threads + tid];
		out[31 * num_threads + tid] = in[31 * num_threads + tid];
		out[32 * num_threads + tid] = in[32 * num_threads + tid];
		out[33 * num_threads + tid] = in[33 * num_threads + tid];
		out[34 * num_threads + tid] = in[34 * num_threads + tid];
		out[35 * num_threads + tid] = in[35 * num_threads + tid];
		out[36 * num_threads + tid] = in[36 * num_threads + tid];
		out[37 * num_threads + tid] = in[37 * num_threads + tid];
		out[38 * num_threads + tid] = in[38 * num_threads + tid];
		out[39 * num_threads + tid] = in[39 * num_threads + tid];
		out[40 * num_threads + tid] = in[40 * num_threads + tid];
		out[41 * num_threads + tid] = in[41 * num_threads + tid];
		out[42 * num_threads + tid] = in[42 * num_threads + tid];
		out[43 * num_threads + tid] = in[43 * num_threads + tid];
		out[44 * num_threads + tid] = in[44 * num_threads + tid];
		out[45 * num_threads + tid] = in[45 * num_threads + tid];
		out[46 * num_threads + tid] = in[46 * num_threads + tid];
		out[47 * num_threads + tid] = in[47 * num_threads + tid];
		out[48 * num_threads + tid] = in[48 * num_threads + tid];
		out[49 * num_threads + tid] = in[49 * num_threads + tid];
		out[50 * num_threads + tid] = in[50 * num_threads + tid];
		out[51 * num_threads + tid] = in[51 * num_threads + tid];
		out[52 * num_threads + tid] = in[52 * num_threads + tid];
		out[53 * num_threads + tid] = in[53 * num_threads + tid];
		out[54 * num_threads + tid] = in[54 * num_threads + tid];
		out[55 * num_threads + tid] = in[55 * num_threads + tid];
		out[56 * num_threads + tid] = in[56 * num_threads + tid];
		out[57 * num_threads + tid] = in[57 * num_threads + tid];
		out[58 * num_threads + tid] = in[58 * num_threads + tid];
		out[59 * num_threads + tid] = in[59 * num_threads + tid];
		out[60 * num_threads + tid] = in[60 * num_threads + tid];
		out[61 * num_threads + tid] = in[61 * num_threads + tid];
		out[62 * num_threads + tid] = in[62 * num_threads + tid];
		out[63 * num_threads + tid] = in[63 * num_threads + tid];
		out[64 * num_threads + tid] = in[64 * num_threads + tid];
		out[65 * num_threads + tid] = in[65 * num_threads + tid];
		out[66 * num_threads + tid] = in[66 * num_threads + tid];
		out[67 * num_threads + tid] = in[67 * num_threads + tid];
		out[68 * num_threads + tid] = in[68 * num_threads + tid];
		out[69 * num_threads + tid] = in[69 * num_threads + tid];
		out[70 * num_threads + tid] = in[70 * num_threads + tid];
		out[71 * num_threads + tid] = in[71 * num_threads + tid];
		out[72 * num_threads + tid] = in[72 * num_threads + tid];
		out[73 * num_threads + tid] = in[73 * num_threads + tid];
		out[74 * num_threads + tid] = in[74 * num_threads + tid];
		out[75 * num_threads + tid] = in[75 * num_threads + tid];
		out[76 * num_threads + tid] = in[76 * num_threads + tid];
		out[77 * num_threads + tid] = in[77 * num_threads + tid];
		out[78 * num_threads + tid] = in[78 * num_threads + tid];
		out[79 * num_threads + tid] = in[79 * num_threads + tid];
		out[80 * num_threads + tid] = in[80 * num_threads + tid];
		out[81 * num_threads + tid] = in[81 * num_threads + tid];
		out[82 * num_threads + tid] = in[82 * num_threads + tid];
		out[83 * num_threads + tid] = in[83 * num_threads + tid];
		out[84 * num_threads + tid] = in[84 * num_threads + tid];
		out[85 * num_threads + tid] = in[85 * num_threads + tid];
		out[86 * num_threads + tid] = in[86 * num_threads + tid];
		out[87 * num_threads + tid] = in[87 * num_threads + tid];
		out[88 * num_threads + tid] = in[88 * num_threads + tid];
		out[89 * num_threads + tid] = in[89 * num_threads + tid];
		out[90 * num_threads + tid] = in[90 * num_threads + tid];
		out[91 * num_threads + tid] = in[91 * num_threads + tid];
		out[92 * num_threads + tid] = in[92 * num_threads + tid];
		out[93 * num_threads + tid] = in[93 * num_threads + tid];
		out[94 * num_threads + tid] = in[94 * num_threads + tid];
		out[95 * num_threads + tid] = in[95 * num_threads + tid];
		out[96 * num_threads + tid] = in[96 * num_threads + tid];
		out[97 * num_threads + tid] = in[97 * num_threads + tid];
		out[98 * num_threads + tid] = in[98 * num_threads + tid];
		out[99 * num_threads + tid] = in[99 * num_threads + tid];
		out[100 * num_threads + tid] = in[100 * num_threads + tid];
		out[101 * num_threads + tid] = in[101 * num_threads + tid];
		out[102 * num_threads + tid] = in[102 * num_threads + tid];
		out[103 * num_threads + tid] = in[103 * num_threads + tid];
		out[104 * num_threads + tid] = in[104 * num_threads + tid];
		out[105 * num_threads + tid] = in[105 * num_threads + tid];
		out[106 * num_threads + tid] = in[106 * num_threads + tid];
		out[107 * num_threads + tid] = in[107 * num_threads + tid];
		out[108 * num_threads + tid] = in[108 * num_threads + tid];
		out[109 * num_threads + tid] = in[109 * num_threads + tid];
		out[110 * num_threads + tid] = in[110 * num_threads + tid];
		out[111 * num_threads + tid] = in[111 * num_threads + tid];
		out[112 * num_threads + tid] = in[112 * num_threads + tid];
		out[113 * num_threads + tid] = in[113 * num_threads + tid];
		out[114 * num_threads + tid] = in[114 * num_threads + tid];
		out[115 * num_threads + tid] = in[115 * num_threads + tid];
		out[116 * num_threads + tid] = in[116 * num_threads + tid];
		out[117 * num_threads + tid] = in[117 * num_threads + tid];
		out[118 * num_threads + tid] = in[118 * num_threads + tid];
		out[119 * num_threads + tid] = in[119 * num_threads + tid];
		out[120 * num_threads + tid] = in[120 * num_threads + tid];
		out[121 * num_threads + tid] = in[121 * num_threads + tid];
		out[122 * num_threads + tid] = in[122 * num_threads + tid];
		out[123 * num_threads + tid] = in[123 * num_threads + tid];
		out[124 * num_threads + tid] = in[124 * num_threads + tid];
		out[125 * num_threads + tid] = in[125 * num_threads + tid];
		out[126 * num_threads + tid] = in[126 * num_threads + tid];
		out[127 * num_threads + tid] = in[127 * num_threads + tid];
	}
}

