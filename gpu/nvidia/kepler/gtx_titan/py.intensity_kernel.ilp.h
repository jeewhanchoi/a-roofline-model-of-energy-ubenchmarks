/* ============================================================ */
/* Stream == 1 */
/* ============================================================ */
/* Flops == 1 */
__global__ void intensity_kernel_1_1(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 2 */
__global__ void intensity_kernel_1_2(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 4 */
__global__ void intensity_kernel_1_4(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 8 */
__global__ void intensity_kernel_1_8(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 16 */
__global__ void intensity_kernel_1_16(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 32 */
__global__ void intensity_kernel_1_32(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 64 */
__global__ void intensity_kernel_1_64(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 128 */
__global__ void intensity_kernel_1_128(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 256 */
__global__ void intensity_kernel_1_256(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 512 */
__global__ void intensity_kernel_1_512(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 1024 */
__global__ void intensity_kernel_1_1024(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 2048 */
__global__ void intensity_kernel_1_2048(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* Flops == 4096 */
__global__ void intensity_kernel_1_4096(int num_threads, int num_streams, TYPE* in, TYPE* out);
/* ============================================================ */

