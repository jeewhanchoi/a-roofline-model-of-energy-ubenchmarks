.macro BEGIN_X86_FUNCTION name
	.section .text.\name,"ax",@progbits
	.globl \name
	.align 4
	.func \name
	.internal \name
	.intel_syntax noprefix
\name:
.endm

.macro END_X86_FUNCTION name
	.att_syntax
	.endfunc
	.type \name, @function
	.size \name, .-\name
.endm

.section .text

BEGIN_X86_FUNCTION uBench_ReadMemory_Sequential_KNC_NoPrefetch
	MOV edx, 256
	SUB rsi, rdx
	JB 2f
	ADD rdi, -128
	.align 32
1:
	ADD rdi, rdx
	VMOVAPS zmm0, [rdi - 128]
	VMOVAPS zmm1, [rdi - 64]

	SUB rsi, rdx
	VMOVAPS zmm2, [rdi + 0]
	VMOVAPS zmm3, [rdi + 64]
	JAE 1b
2:
	ADD rdi, -128
	ADD rsi, rdx
	JE 3f
	INT 3
3:
	RET
END_X86_FUNCTION uBench_ReadMemory_Sequential_KNC_NoPrefetch

BEGIN_X86_FUNCTION uBench_ReadMemory_Sequential_KNC_Prefetch64
	MOV edx, 256
	MOV ecx, 1536 + 128
	SUB rsi, rdx
	JB 2f
	ADD rdi, -128
	.align 32
1:
	ADD rdi, rdx
	VPREFETCHNTA [rdi + rcx * 1 - 128]
	VMOVAPS zmm0, [rdi - 128]
	VPREFETCHNTA [rdi + rcx * 1 - 64]
	VMOVAPS zmm1, [rdi - 64]

	SUB rsi, rdx
	VPREFETCHNTA [rdi + rcx * 1 + 0]
	VMOVAPS zmm2, [rdi + 0]
	VPREFETCHNTA [rdi + rcx * 1 + 64]
	VMOVAPS zmm3, [rdi + 64]
	JAE 1b
2:
	ADD rdi, -128
	ADD rsi, rdx
	JE 3f
	INT 3
3:
	RET
END_X86_FUNCTION uBench_ReadMemory_Sequential_KNC_Prefetch64

BEGIN_X86_FUNCTION uBench_ReadMemory_Sequential_KNC_Prefetch128
	MOV edx, 256
	MOV ecx, 1536 + 128
	SUB rsi, rdx
	JB 2f
	ADD rdi, -128
	.align 32
1:
	ADD rdi, rdx
	VMOVAPS zmm0, [rdi - 128]
	VPREFETCHNTA [rdi + rcx * 1 - 128]
	VMOVAPS zmm1, [rdi - 64]

	VPREFETCHNTA [rdi + rcx * 1 + 0]
	VMOVAPS zmm2, [rdi + 0]
	SUB rsi, rdx
	VMOVAPS zmm3, [rdi + 64]
	JAE 1b
2:
	ADD rdi, -128
	ADD rsi, rdx
	JE 3f
	INT 3
3:
	RET
END_X86_FUNCTION uBench_ReadMemory_Sequential_KNC_Prefetch128

BEGIN_X86_FUNCTION uBench_ReadMemory_SemiSequential_KNC_NoPrefetch
	LEA rdx, [rdi + rsi * 1]
	MOV ecx, 256
	SUB rsi, rcx
	JB 2f
	.align 32
1:
	VMOVAPS zmm0, [rdi + 0]
	VMOVAPS zmm1, [rdx - 64]
	VMOVAPS zmm2, [rdi + 64]
	VMOVAPS zmm3, [rdx - 128]

	SUB rdi, -128
	ADD rdx, -128

	SUB rsi, rcx
	JAE 1b
2:
	ADD rsi, rcx
	JE 3f
	INT 3
3:
	RET
END_X86_FUNCTION uBench_ReadMemory_SemiSequential_KNC_NoPrefetch
