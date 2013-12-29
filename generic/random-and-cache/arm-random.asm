.macro BEGIN_ARM_FUNCTION name
	.section .text.\name,"ax",%progbits
	.arm
	.globl \name
	.align 2
	.func \name
	.internal \name
\name:
.endm

.macro END_ARM_FUNCTION name
	.endfunc
	.type \name, %function
	.size \name, .-\name
.endm

.macro XORSHIFT_29 state, mask
	EOR \state, \state, \state, LSR #3
	EOR \state, \state, \state, LSL #4
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #5
.endm

.macro XORSHIFT_28 state, mask
	EOR \state, \state, \state, LSR #1
	EOR \state, \state, \state, LSL #3
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #9
.endm

.macro XORSHIFT_27 state, mask
	EOR \state, \state, \state, LSR #1
	EOR \state, \state, \state, LSL #2
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #6
.endm

.macro XORSHIFT_26 state, mask
	EOR \state, \state, \state, LSR #2
	EOR \state, \state, \state, LSL #5
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #3
.endm

.macro XORSHIFT_25 state, mask
	EOR \state, \state, \state, LSR #2
	EOR \state, \state, \state, LSL #1
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #6
.endm

.macro XORSHIFT_24 state, mask
	EOR \state, \state, \state, LSR #6
	EOR \state, \state, \state, LSL #1
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #9
.endm

.macro XORSHIFT_23 state, mask
	EOR \state, \state, \state, LSR #7
	EOR \state, \state, \state, LSL #8
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #2
.endm

.macro XORSHIFT_22 state, mask
	EOR \state, \state, \state, LSR #5
	EOR \state, \state, \state, LSL #3
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #2
.endm

.macro XORSHIFT_21 state, mask
	EOR \state, \state, \state, LSR #4
	EOR \state, \state, \state, LSL #3
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #6
.endm

.macro XORSHIFT_20 state, mask
	EOR \state, \state, \state, LSR #2
	EOR \state, \state, \state, LSL #1
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #9
.endm

.macro XORSHIFT_19 state, mask
	EOR \state, \state, \state, LSR #9
	EOR \state, \state, \state, LSL #6
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #4
.endm

.macro XORSHIFT_18 state, mask
	EOR \state, \state, \state, LSR #3
	EOR \state, \state, \state, LSL #9
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #8
.endm

.macro XORSHIFT_17 state, mask
	EOR \state, \state, \state, LSR #9
	EOR \state, \state, \state, LSL #6
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #1
.endm

.macro XORSHIFT_16 state, mask
	EOR \state, \state, \state, LSR #8
	EOR \state, \state, \state, LSL #9
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #5
.endm

.macro XORSHIFT_15 state, mask
	EOR \state, \state, \state, LSR #4
	EOR \state, \state, \state, LSL #1
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #9
.endm

.macro XORSHIFT_14 state, mask
	EOR \state, \state, \state, LSR #9
	EOR \state, \state, \state, LSL #7
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #2
.endm

.macro XORSHIFT_13 state, mask
	EOR \state, \state, \state, LSR #8
	EOR \state, \state, \state, LSL #5
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #2
.endm

.macro XORSHIFT_12 state, mask
	EOR \state, \state, \state, LSR #7
	EOR \state, \state, \state, LSL #5
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #9
.endm

.macro XORSHIFT_11 state, mask
	EOR \state, \state, \state, LSR #6
	EOR \state, \state, \state, LSL #4
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #7
.endm

.macro XORSHIFT_10 state, mask
	EOR \state, \state, \state, LSR #5
	EOR \state, \state, \state, LSL #1
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #3
.endm

.macro XORSHIFT_9 state, mask
	EOR \state, \state, \state, LSR #8
	EOR \state, \state, \state, LSL #4
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #5
.endm

.macro XORSHIFT_8 state, mask
	EOR \state, \state, \state, LSR #3
	EOR \state, \state, \state, LSL #1
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #5
.endm

.macro XORSHIFT_7 state, mask
	EOR \state, \state, \state, LSR #5
	EOR \state, \state, \state, LSL #2
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #6
.endm

.macro XORSHIFT_6 state, mask
	EOR \state, \state, \state, LSR #2
	EOR \state, \state, \state, LSL #3
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #1
.endm

.macro XORSHIFT_5 state, mask
	EOR \state, \state, \state, LSR #4
	EOR \state, \state, \state, LSL #3
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #1
.endm

.macro XORSHIFT_4 state, mask
	EOR \state, \state, \state, LSR #3
	EOR \state, \state, \state, LSL #1
	AND \state, \state, \mask
	EOR \state, \state, \state, LSR #2
.endm

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random30_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 25-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #25
1:
	XORSHIFT_25 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random30_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random30_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 24-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #24
1:
	XORSHIFT_24 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random30_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random30_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 23-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #23
1:
	XORSHIFT_23 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random30_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random29_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 24-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #24
1:
	XORSHIFT_24 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random29_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random29_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 23-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #23
1:
	XORSHIFT_23 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random29_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random29_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 22-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #22
1:
	XORSHIFT_22 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random29_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random28_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 23-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #23
1:
	XORSHIFT_23 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random28_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random28_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 22-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #22
1:
	XORSHIFT_22 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random28_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random28_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 21-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #21
1:
	XORSHIFT_21 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random28_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random27_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 22-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #22
1:
	XORSHIFT_22 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random27_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random27_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 21-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #21
1:
	XORSHIFT_21 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random27_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random27_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 20-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #20
1:
	XORSHIFT_20 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random27_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random26_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 21-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #21
1:
	XORSHIFT_21 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random26_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random26_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 20-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #20
1:
	XORSHIFT_20 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random26_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random26_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 19-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #19
1:
	XORSHIFT_19 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random26_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random25_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 20-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #20
1:
	XORSHIFT_20 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random25_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random25_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 19-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #19
1:
	XORSHIFT_19 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random25_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random25_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 18-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #18
1:
	XORSHIFT_18 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random25_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random24_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 19-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #19
1:
	XORSHIFT_19 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random24_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random24_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 18-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #18
1:
	XORSHIFT_18 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random24_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random24_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 17-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #17
1:
	XORSHIFT_17 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random24_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random23_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 18-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #18
1:
	XORSHIFT_18 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random23_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random23_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 17-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #17
1:
	XORSHIFT_17 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random23_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random23_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 16-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #16
1:
	XORSHIFT_16 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random23_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random22_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 17-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #17
1:
	XORSHIFT_17 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random22_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random22_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 16-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #16
1:
	XORSHIFT_16 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random22_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random22_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 15-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #15
1:
	XORSHIFT_15 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random22_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random21_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 16-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #16
1:
	XORSHIFT_16 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random21_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random21_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 15-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #15
1:
	XORSHIFT_15 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random21_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random21_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 14-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #14
1:
	XORSHIFT_14 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random21_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random20_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 15-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #15
1:
	XORSHIFT_15 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random20_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random20_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 14-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #14
1:
	XORSHIFT_14 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random20_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random20_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 13-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #13
1:
	XORSHIFT_13 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random20_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random19_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 14-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #14
1:
	XORSHIFT_14 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random19_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random19_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 13-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #13
1:
	XORSHIFT_13 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random19_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random19_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 12-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #12
1:
	XORSHIFT_12 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random19_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random18_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 13-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #13
1:
	XORSHIFT_13 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random18_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random18_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 12-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #12
1:
	XORSHIFT_12 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random18_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random18_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 11-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #11
1:
	XORSHIFT_11 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random18_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random17_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 12-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #12
1:
	XORSHIFT_12 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random17_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random17_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 11-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #11
1:
	XORSHIFT_11 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random17_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random17_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 10-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #10
1:
	XORSHIFT_10 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random17_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random16_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 11-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #11
1:
	XORSHIFT_11 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random16_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random16_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 10-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #10
1:
	XORSHIFT_10 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random16_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random16_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 9-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #9
1:
	XORSHIFT_9 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random16_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random15_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 11-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #11
1:
	XORSHIFT_11 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random15_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random15_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 10-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #10
1:
	XORSHIFT_10 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random15_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random15_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 9-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #9
1:
	XORSHIFT_9 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random15_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random14_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 10-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #10
1:
	XORSHIFT_10 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random14_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random14_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 9-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #9
1:
	XORSHIFT_9 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random14_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random14_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 8-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #8
1:
	XORSHIFT_8 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random14_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random13_LDR_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 9-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #9
1:
	XORSHIFT_9 r1, r2
	LDR r3, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r4, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r5, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r6, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r7, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r8, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r9, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	LDR r10, [r0, r1, LSL #5] @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random13_LDR_Stride32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random13_LDR_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 8-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #8
1:
	XORSHIFT_8 r1, r2
	LDR r3, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r4, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r5, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r6, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r7, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r8, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r9, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	LDR r10, [r0, r1, LSL #6] @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random13_LDR_Stride64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Random13_LDR_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 7-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #7
1:
	XORSHIFT_7 r1, r2
	LDR r3, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	LDR r4, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	LDR r5, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	LDR r6, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	LDR r7, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	LDR r8, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	LDR r9, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	LDR r10, [r0, r1, LSL #7] @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Random13_LDR_Stride128

BEGIN_ARM_FUNCTION uBench_ReadMemory_2KRandom_LDR
	PUSH	{r4-r11, ip, lr}
	SUBS r1, #2048
	BLO 2f
1:
	LDR r2, [r0, #1120]
	LDR r3, [r0, #536]
	LDR r4, [r0, #1892]
	LDR r5, [r0, #932]
	LDR r6, [r0, #688]
	LDR r7, [r0, #512]
	LDR r8, [r0, #1344]
	LDR r9, [r0, #204]

	LDR r2, [r0, #752]
	LDR r3, [r0, #604]
	LDR r4, [r0, #876]
	LDR r5, [r0, #12]
	LDR r6, [r0, #1724]
	LDR r7, [r0, #1236]
	LDR r8, [r0, #920]
	LDR r9, [r0, #56]

	LDR r2, [r0, #1240]
	LDR r3, [r0, #940]
	LDR r4, [r0, #780]
	LDR r5, [r0, #252]
	LDR r6, [r0, #1512]
	LDR r7, [r0, #396]
	LDR r8, [r0, #1124]
	LDR r9, [r0, #1784]

	LDR r2, [r0, #720]
	LDR r3, [r0, #1096]
	LDR r4, [r0, #1324]
	LDR r5, [r0, #832]
	LDR r6, [r0, #740]
	LDR r7, [r0, #524]
	LDR r8, [r0, #220]
	LDR r9, [r0, #1860]

	LDR r2, [r0, #1980]
	LDR r3, [r0, #1920]
	LDR r4, [r0, #1268]
	LDR r5, [r0, #1488]
	LDR r6, [r0, #1352]
	LDR r7, [r0, #696]
	LDR r8, [r0, #648]
	LDR r9, [r0, #136]

	LDR r2, [r0, #888]
	LDR r3, [r0, #392]
	LDR r4, [r0, #4]
	LDR r5, [r0, #1056]
	LDR r6, [r0, #1108]
	LDR r7, [r0, #988]
	LDR r8, [r0, #1580]
	LDR r9, [r0, #712]

	LDR r2, [r0, #1068]
	LDR r3, [r0, #1816]
	LDR r4, [r0, #856]
	LDR r5, [r0, #148]
	LDR r6, [r0, #1060]
	LDR r7, [r0, #1828]
	LDR r8, [r0, #508]
	LDR r9, [r0, #1128]

	LDR r2, [r0, #1576]
	LDR r3, [r0, #1568]
	LDR r4, [r0, #312]
	LDR r5, [r0, #1188]
	LDR r6, [r0, #636]
	LDR r7, [r0, #180]
	LDR r8, [r0, #1404]
	LDR r9, [r0, #1944]

	LDR r2, [r0, #736]
	LDR r3, [r0, #1588]
	LDR r4, [r0, #52]
	LDR r5, [r0, #668]
	LDR r6, [r0, #140]
	LDR r7, [r0, #1652]
	LDR r8, [r0, #1284]
	LDR r9, [r0, #1604]

	LDR r2, [r0, #660]
	LDR r3, [r0, #1228]
	LDR r4, [r0, #1232]
	LDR r5, [r0, #1836]
	LDR r6, [r0, #1100]
	LDR r7, [r0, #1572]
	LDR r8, [r0, #1636]
	LDR r9, [r0, #800]

	LDR r2, [r0, #936]
	LDR r3, [r0, #664]
	LDR r4, [r0, #384]
	LDR r5, [r0, #1216]
	LDR r6, [r0, #1644]
	LDR r7, [r0, #1076]
	LDR r8, [r0, #1988]
	LDR r9, [r0, #1504]

	LDR r2, [r0, #44]
	LDR r3, [r0, #1520]
	LDR r4, [r0, #296]
	LDR r5, [r0, #956]
	LDR r6, [r0, #1664]
	LDR r7, [r0, #1688]
	LDR r8, [r0, #1628]
	LDR r9, [r0, #172]

	LDR r2, [r0, #104]
	LDR r3, [r0, #1372]
	LDR r4, [r0, #568]
	LDR r5, [r0, #500]
	LDR r6, [r0, #2040]
	LDR r7, [r0, #588]
	LDR r8, [r0, #1804]
	LDR r9, [r0, #548]

	LDR r2, [r0, #1112]
	LDR r3, [r0, #1704]
	LDR r4, [r0, #1252]
	LDR r5, [r0, #1084]
	LDR r6, [r0, #716]
	LDR r7, [r0, #1168]
	LDR r8, [r0, #1676]
	LDR r9, [r0, #1972]

	LDR r2, [r0, #600]
	LDR r3, [r0, #216]
	LDR r4, [r0, #892]
	LDR r5, [r0, #1280]
	LDR r6, [r0, #1292]
	LDR r7, [r0, #116]
	LDR r8, [r0, #1624]
	LDR r9, [r0, #704]

	LDR r2, [r0, #2020]
	LDR r3, [r0, #1464]
	LDR r4, [r0, #1760]
	LDR r5, [r0, #36]
	LDR r6, [r0, #1328]
	LDR r7, [r0, #1608]
	LDR r8, [r0, #1384]
	LDR r9, [r0, #1192]

	LDR r2, [r0, #412]
	LDR r3, [r0, #1136]
	LDR r4, [r0, #368]
	LDR r5, [r0, #1700]
	LDR r6, [r0, #48]
	LDR r7, [r0, #1764]
	LDR r8, [r0, #828]
	LDR r9, [r0, #1312]

	LDR r2, [r0, #1004]
	LDR r3, [r0, #1484]
	LDR r4, [r0, #1772]
	LDR r5, [r0, #80]
	LDR r6, [r0, #1092]
	LDR r7, [r0, #64]
	LDR r8, [r0, #1248]
	LDR r9, [r0, #1532]

	LDR r2, [r0, #1712]
	LDR r3, [r0, #1984]
	LDR r4, [r0, #8]
	LDR r5, [r0, #1380]
	LDR r6, [r0, #948]
	LDR r7, [r0, #228]
	LDR r8, [r0, #1080]
	LDR r9, [r0, #764]

	LDR r2, [r0, #1028]
	LDR r3, [r0, #1048]
	LDR r4, [r0, #1888]
	LDR r5, [r0, #1316]
	LDR r6, [r0, #1740]
	LDR r7, [r0, #248]
	LDR r8, [r0, #1356]
	LDR r9, [r0, #32]

	LDR r2, [r0, #432]
	LDR r3, [r0, #824]
	LDR r4, [r0, #544]
	LDR r5, [r0, #288]
	LDR r6, [r0, #1432]
	LDR r7, [r0, #1452]
	LDR r8, [r0, #1680]
	LDR r9, [r0, #232]

	LDR r2, [r0, #1692]
	LDR r3, [r0, #1848]
	LDR r4, [r0, #572]
	LDR r5, [r0, #124]
	LDR r6, [r0, #1224]
	LDR r7, [r0, #472]
	LDR r8, [r0, #1876]
	LDR r9, [r0, #388]

	LDR r2, [r0, #408]
	LDR r3, [r0, #1364]
	LDR r4, [r0, #724]
	LDR r5, [r0, #460]
	LDR r6, [r0, #352]
	LDR r7, [r0, #1412]
	LDR r8, [r0, #1396]
	LDR r9, [r0, #700]

	LDR r2, [r0, #632]
	LDR r3, [r0, #1868]
	LDR r4, [r0, #552]
	LDR r5, [r0, #776]
	LDR r6, [r0, #984]
	LDR r7, [r0, #520]
	LDR r8, [r0, #592]
	LDR r9, [r0, #184]

	LDR r2, [r0, #320]
	LDR r3, [r0, #968]
	LDR r4, [r0, #624]
	LDR r5, [r0, #1556]
	LDR r6, [r0, #1748]
	LDR r7, [r0, #928]
	LDR r8, [r0, #1656]
	LDR r9, [r0, #2004]

	LDR r2, [r0, #484]
	LDR r3, [r0, #1496]
	LDR r4, [r0, #1672]
	LDR r5, [r0, #1584]
	LDR r6, [r0, #1220]
	LDR r7, [r0, #1264]
	LDR r8, [r0, #372]
	LDR r9, [r0, #100]

	LDR r2, [r0, #76]
	LDR r3, [r0, #24]
	LDR r4, [r0, #616]
	LDR r5, [r0, #1340]
	LDR r6, [r0, #644]
	LDR r7, [r0, #820]
	LDR r8, [r0, #772]
	LDR r9, [r0, #812]

	LDR r2, [r0, #1544]
	LDR r3, [r0, #1668]
	LDR r4, [r0, #840]
	LDR r5, [r0, #652]
	LDR r6, [r0, #1156]
	LDR r7, [r0, #596]
	LDR r8, [r0, #768]
	LDR r9, [r0, #2008]

	LDR r2, [r0, #708]
	LDR r3, [r0, #1272]
	LDR r4, [r0, #1428]
	LDR r5, [r0, #1612]
	LDR r6, [r0, #452]
	LDR r7, [r0, #340]
	LDR r8, [r0, #156]
	LDR r9, [r0, #1368]

	LDR r2, [r0, #836]
	LDR r3, [r0, #1796]
	LDR r4, [r0, #272]
	LDR r5, [r0, #992]
	LDR r6, [r0, #0]
	LDR r7, [r0, #1148]
	LDR r8, [r0, #256]
	LDR r9, [r0, #1756]

	LDR r2, [r0, #400]
	LDR r3, [r0, #2036]
	LDR r4, [r0, #268]
	LDR r5, [r0, #1792]
	LDR r6, [r0, #200]
	LDR r7, [r0, #1992]
	LDR r8, [r0, #1616]
	LDR r9, [r0, #1952]

	LDR r2, [r0, #1020]
	LDR r3, [r0, #144]
	LDR r4, [r0, #92]
	LDR r5, [r0, #1596]
	LDR r6, [r0, #516]
	LDR r7, [r0, #728]
	LDR r8, [r0, #332]
	LDR r9, [r0, #1116]

	LDR r2, [r0, #420]
	LDR r3, [r0, #872]
	LDR r4, [r0, #1408]
	LDR r5, [r0, #1960]
	LDR r6, [r0, #1508]
	LDR r7, [r0, #1800]
	LDR r8, [r0, #1648]
	LDR r9, [r0, #1720]

	LDR r2, [r0, #1436]
	LDR r3, [r0, #1640]
	LDR r4, [r0, #264]
	LDR r5, [r0, #844]
	LDR r6, [r0, #1044]
	LDR r7, [r0, #276]
	LDR r8, [r0, #376]
	LDR r9, [r0, #528]

	LDR r2, [r0, #912]
	LDR r3, [r0, #1308]
	LDR r4, [r0, #1600]
	LDR r5, [r0, #996]
	LDR r6, [r0, #868]
	LDR r7, [r0, #1016]
	LDR r8, [r0, #112]
	LDR r9, [r0, #1528]

	LDR r2, [r0, #476]
	LDR r3, [r0, #428]
	LDR r4, [r0, #1180]
	LDR r5, [r0, #1736]
	LDR r6, [r0, #496]
	LDR r7, [r0, #1460]
	LDR r8, [r0, #244]
	LDR r9, [r0, #980]

	LDR r2, [r0, #904]
	LDR r3, [r0, #972]
	LDR r4, [r0, #2016]
	LDR r5, [r0, #208]
	LDR r6, [r0, #1296]
	LDR r7, [r0, #1480]
	LDR r8, [r0, #1660]
	LDR r9, [r0, #1008]

	LDR r2, [r0, #1592]
	LDR r3, [r0, #1144]
	LDR r4, [r0, #236]
	LDR r5, [r0, #1932]
	LDR r6, [r0, #436]
	LDR r7, [r0, #1064]
	LDR r8, [r0, #1392]
	LDR r9, [r0, #860]

	LDR r2, [r0, #96]
	LDR r3, [r0, #1808]
	LDR r4, [r0, #1812]
	LDR r5, [r0, #444]
	LDR r6, [r0, #1912]
	LDR r7, [r0, #1036]
	LDR r8, [r0, #976]
	LDR r9, [r0, #284]

	LDR r2, [r0, #896]
	LDR r3, [r0, #160]
	LDR r4, [r0, #1632]
	LDR r5, [r0, #908]
	LDR r6, [r0, #1472]
	LDR r7, [r0, #748]
	LDR r8, [r0, #1820]
	LDR r9, [r0, #1176]

	LDR r2, [r0, #2012]
	LDR r3, [r0, #1768]
	LDR r4, [r0, #564]
	LDR r5, [r0, #1164]
	LDR r6, [r0, #808]
	LDR r7, [r0, #1896]
	LDR r8, [r0, #456]
	LDR r9, [r0, #1052]

	LDR r2, [r0, #1684]
	LDR r3, [r0, #1948]
	LDR r4, [r0, #108]
	LDR r5, [r0, #1336]
	LDR r6, [r0, #656]
	LDR r7, [r0, #1088]
	LDR r8, [r0, #1928]
	LDR r9, [r0, #1936]

	LDR r2, [r0, #676]
	LDR r3, [r0, #448]
	LDR r4, [r0, #744]
	LDR r5, [r0, #344]
	LDR r6, [r0, #608]
	LDR r7, [r0, #1416]
	LDR r8, [r0, #1260]
	LDR r9, [r0, #1840]

	LDR r2, [r0, #304]
	LDR r3, [r0, #816]
	LDR r4, [r0, #916]
	LDR r5, [r0, #1708]
	LDR r6, [r0, #1172]
	LDR r7, [r0, #480]
	LDR r8, [r0, #532]
	LDR r9, [r0, #1072]

	LDR r2, [r0, #1212]
	LDR r3, [r0, #1360]
	LDR r4, [r0, #952]
	LDR r5, [r0, #1864]
	LDR r6, [r0, #620]
	LDR r7, [r0, #540]
	LDR r8, [r0, #1256]
	LDR r9, [r0, #1552]

	LDR r2, [r0, #692]
	LDR r3, [r0, #1304]
	LDR r4, [r0, #16]
	LDR r5, [r0, #584]
	LDR r6, [r0, #1492]
	LDR r7, [r0, #380]
	LDR r8, [r0, #504]
	LDR r9, [r0, #20]

	LDR r2, [r0, #280]
	LDR r3, [r0, #852]
	LDR r4, [r0, #804]
	LDR r5, [r0, #1300]
	LDR r6, [r0, #152]
	LDR r7, [r0, #1880]
	LDR r8, [r0, #188]
	LDR r9, [r0, #1152]

	LDR r2, [r0, #1872]
	LDR r3, [r0, #464]
	LDR r4, [r0, #640]
	LDR r5, [r0, #360]
	LDR r6, [r0, #1996]
	LDR r7, [r0, #1856]
	LDR r8, [r0, #1832]
	LDR r9, [r0, #192]

	LDR r2, [r0, #924]
	LDR r3, [r0, #1884]
	LDR r4, [r0, #1964]
	LDR r5, [r0, #1376]
	LDR r6, [r0, #1788]
	LDR r7, [r0, #1200]
	LDR r8, [r0, #1424]
	LDR r9, [r0, #440]

	LDR r2, [r0, #488]
	LDR r3, [r0, #628]
	LDR r4, [r0, #2028]
	LDR r5, [r0, #1140]
	LDR r6, [r0, #132]
	LDR r7, [r0, #60]
	LDR r8, [r0, #760]
	LDR r9, [r0, #364]

	LDR r2, [r0, #300]
	LDR r3, [r0, #964]
	LDR r4, [r0, #1032]
	LDR r5, [r0, #1940]
	LDR r6, [r0, #1348]
	LDR r7, [r0, #120]
	LDR r8, [r0, #196]
	LDR r9, [r0, #2024]

	LDR r2, [r0, #1752]
	LDR r3, [r0, #1012]
	LDR r4, [r0, #1968]
	LDR r5, [r0, #784]
	LDR r6, [r0, #260]
	LDR r7, [r0, #468]
	LDR r8, [r0, #40]
	LDR r9, [r0, #944]

	LDR r2, [r0, #68]
	LDR r3, [r0, #348]
	LDR r4, [r0, #1500]
	LDR r5, [r0, #176]
	LDR r6, [r0, #1564]
	LDR r7, [r0, #1780]
	LDR r8, [r0, #732]
	LDR r9, [r0, #1320]

	LDR r2, [r0, #1560]
	LDR r3, [r0, #328]
	LDR r4, [r0, #1204]
	LDR r5, [r0, #1524]
	LDR r6, [r0, #1908]
	LDR r7, [r0, #2032]
	LDR r8, [r0, #84]
	LDR r9, [r0, #164]

	LDR r2, [r0, #1548]
	LDR r3, [r0, #1400]
	LDR r4, [r0, #1448]
	LDR r5, [r0, #1104]
	LDR r6, [r0, #1160]
	LDR r7, [r0, #2000]
	LDR r8, [r0, #1332]
	LDR r9, [r0, #88]

	LDR r2, [r0, #1924]
	LDR r3, [r0, #560]
	LDR r4, [r0, #1276]
	LDR r5, [r0, #672]
	LDR r6, [r0, #316]
	LDR r7, [r0, #612]
	LDR r8, [r0, #2044]
	LDR r9, [r0, #1904]

	LDR r2, [r0, #576]
	LDR r3, [r0, #1468]
	LDR r4, [r0, #424]
	LDR r5, [r0, #1852]
	LDR r6, [r0, #1040]
	LDR r7, [r0, #1132]
	LDR r8, [r0, #884]
	LDR r9, [r0, #1776]

	LDR r2, [r0, #848]
	LDR r3, [r0, #336]
	LDR r4, [r0, #492]
	LDR r5, [r0, #792]
	LDR r6, [r0, #240]
	LDR r7, [r0, #556]
	LDR r8, [r0, #1440]
	LDR r9, [r0, #1420]

	LDR r2, [r0, #1844]
	LDR r3, [r0, #1696]
	LDR r4, [r0, #1728]
	LDR r5, [r0, #1244]
	LDR r6, [r0, #1208]
	LDR r7, [r0, #28]
	LDR r8, [r0, #1288]
	LDR r9, [r0, #224]

	LDR r2, [r0, #1444]
	LDR r3, [r0, #796]
	LDR r4, [r0, #756]
	LDR r5, [r0, #1476]
	LDR r6, [r0, #1956]
	LDR r7, [r0, #1536]
	LDR r8, [r0, #1540]
	LDR r9, [r0, #1456]

	LDR r2, [r0, #1976]
	LDR r3, [r0, #168]
	LDR r4, [r0, #880]
	LDR r5, [r0, #404]
	LDR r6, [r0, #864]
	LDR r7, [r0, #1388]
	LDR r8, [r0, #1024]
	LDR r9, [r0, #1732]

	LDR r2, [r0, #308]
	LDR r3, [r0, #1000]
	LDR r4, [r0, #684]
	LDR r5, [r0, #960]
	LDR r6, [r0, #1916]
	LDR r7, [r0, #580]
	LDR r8, [r0, #128]
	LDR r9, [r0, #1620]

	LDR r2, [r0, #1824]
	LDR r3, [r0, #900]
	LDR r4, [r0, #680]
	LDR r5, [r0, #1196]
	LDR r6, [r0, #356]
	LDR r7, [r0, #212]
	LDR r8, [r0, #324]
	LDR r9, [r0, #788]

	LDR r2, [r0, #1516]
	LDR r3, [r0, #72]
	LDR r4, [r0, #1716]
	LDR r5, [r0, #1900]
	LDR r6, [r0, #292]
	LDR r7, [r0, #416]
	LDR r8, [r0, #1184]
	LDR r9, [r0, #1744]
	ADD r0, r0, #2048
	SUBS r1, r1, #2048
	BHS 1b
2:
	ADDS r1, r1, #2048
	BEQ 3f
	BKPT
3:
	POP {r4-r11, ip, lr}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_2KRandom_LDR

BEGIN_ARM_FUNCTION uBench_ReadMemory_2KRandom_VLDR
	.fpu vfp
	PUSH	{r4-r11, ip, lr}
	MOV r2, r0
	ADD r0, r0, #1024
	SUBS r1, #2048
	BLO 2f
1:
	VLDR s0, [r0, #96]
	VLDR s1, [r0, #-488]
	VLDR s2, [r0, #868]
	VLDR s3, [r0, #-92]
	VLDR s4, [r0, #-336]
	VLDR s5, [r0, #-512]
	VLDR s6, [r0, #320]
	VLDR s7, [r0, #-820]
	VLDR s8, [r0, #-272]
	VLDR s9, [r0, #-420]
	VLDR s10, [r0, #-148]
	VLDR s11, [r0, #-1012]
	VLDR s12, [r0, #700]
	VLDR s13, [r0, #212]
	VLDR s14, [r0, #-104]
	VLDR s15, [r0, #-968]
	VLDR s16, [r0, #216]
	VLDR s17, [r0, #-84]
	VLDR s18, [r0, #-244]
	VLDR s19, [r0, #-772]
	VLDR s20, [r0, #488]
	VLDR s21, [r0, #-628]
	VLDR s22, [r0, #100]
	VLDR s23, [r0, #760]
	VLDR s24, [r0, #-304]
	VLDR s25, [r0, #72]
	VLDR s26, [r0, #300]
	VLDR s27, [r0, #-192]
	VLDR s28, [r0, #-284]
	VLDR s29, [r0, #-500]
	VLDR s30, [r0, #-804]
	VLDR s31, [r0, #836]

	VLDR s0, [r0, #956]
	VLDR s1, [r0, #896]
	VLDR s2, [r0, #244]
	VLDR s3, [r0, #464]
	VLDR s4, [r0, #328]
	VLDR s5, [r0, #-328]
	VLDR s6, [r0, #-376]
	VLDR s7, [r0, #-888]
	VLDR s8, [r0, #-136]
	VLDR s9, [r0, #-632]
	VLDR s10, [r0, #-1020]
	VLDR s11, [r0, #32]
	VLDR s12, [r0, #84]
	VLDR s13, [r0, #-36]
	VLDR s14, [r0, #556]
	VLDR s15, [r0, #-312]
	VLDR s16, [r0, #44]
	VLDR s17, [r0, #792]
	VLDR s18, [r0, #-168]
	VLDR s19, [r0, #-876]
	VLDR s20, [r0, #36]
	VLDR s21, [r0, #804]
	VLDR s22, [r0, #-516]
	VLDR s23, [r0, #104]
	VLDR s24, [r0, #552]
	VLDR s25, [r0, #544]
	VLDR s26, [r0, #-712]
	VLDR s27, [r0, #164]
	VLDR s28, [r0, #-388]
	VLDR s29, [r0, #-844]
	VLDR s30, [r0, #380]
	VLDR s31, [r0, #920]

	VLDR s0, [r0, #-288]
	VLDR s1, [r0, #564]
	VLDR s2, [r0, #-972]
	VLDR s3, [r0, #-356]
	VLDR s4, [r0, #-884]
	VLDR s5, [r0, #628]
	VLDR s6, [r0, #260]
	VLDR s7, [r0, #580]
	VLDR s8, [r0, #-364]
	VLDR s9, [r0, #204]
	VLDR s10, [r0, #208]
	VLDR s11, [r0, #812]
	VLDR s12, [r0, #76]
	VLDR s13, [r0, #548]
	VLDR s14, [r0, #612]
	VLDR s15, [r0, #-224]
	VLDR s16, [r0, #-88]
	VLDR s17, [r0, #-360]
	VLDR s18, [r0, #-640]
	VLDR s19, [r0, #192]
	VLDR s20, [r0, #620]
	VLDR s21, [r0, #52]
	VLDR s22, [r0, #964]
	VLDR s23, [r0, #480]
	VLDR s24, [r0, #-980]
	VLDR s25, [r0, #496]
	VLDR s26, [r0, #-728]
	VLDR s27, [r0, #-68]
	VLDR s28, [r0, #640]
	VLDR s29, [r0, #664]
	VLDR s30, [r0, #604]
	VLDR s31, [r0, #-852]

	VLDR s0, [r0, #-920]
	VLDR s1, [r0, #348]
	VLDR s2, [r0, #-456]
	VLDR s3, [r0, #-524]
	VLDR s4, [r0, #1016]
	VLDR s5, [r0, #-436]
	VLDR s6, [r0, #780]
	VLDR s7, [r0, #-476]
	VLDR s8, [r0, #88]
	VLDR s9, [r0, #680]
	VLDR s10, [r0, #228]
	VLDR s11, [r0, #60]
	VLDR s12, [r0, #-308]
	VLDR s13, [r0, #144]
	VLDR s14, [r0, #652]
	VLDR s15, [r0, #948]
	VLDR s16, [r0, #-424]
	VLDR s17, [r0, #-808]
	VLDR s18, [r0, #-132]
	VLDR s19, [r0, #256]
	VLDR s20, [r0, #268]
	VLDR s21, [r0, #-908]
	VLDR s22, [r0, #600]
	VLDR s23, [r0, #-320]
	VLDR s24, [r0, #996]
	VLDR s25, [r0, #440]
	VLDR s26, [r0, #736]
	VLDR s27, [r0, #-988]
	VLDR s28, [r0, #304]
	VLDR s29, [r0, #584]
	VLDR s30, [r0, #360]
	VLDR s31, [r0, #168]

	VLDR s0, [r0, #-612]
	VLDR s1, [r0, #112]
	VLDR s2, [r0, #-656]
	VLDR s3, [r0, #676]
	VLDR s4, [r0, #-976]
	VLDR s5, [r0, #740]
	VLDR s6, [r0, #-196]
	VLDR s7, [r0, #288]
	VLDR s8, [r0, #-20]
	VLDR s9, [r0, #460]
	VLDR s10, [r0, #748]
	VLDR s11, [r0, #-944]
	VLDR s12, [r0, #68]
	VLDR s13, [r0, #-960]
	VLDR s14, [r0, #224]
	VLDR s15, [r0, #508]
	VLDR s16, [r0, #688]
	VLDR s17, [r0, #960]
	VLDR s18, [r0, #-1016]
	VLDR s19, [r0, #356]
	VLDR s20, [r0, #-76]
	VLDR s21, [r0, #-796]
	VLDR s22, [r0, #56]
	VLDR s23, [r0, #-260]
	VLDR s24, [r0, #4]
	VLDR s25, [r0, #24]
	VLDR s26, [r0, #864]
	VLDR s27, [r0, #292]
	VLDR s28, [r0, #716]
	VLDR s29, [r0, #-776]
	VLDR s30, [r0, #332]
	VLDR s31, [r0, #-992]

	VLDR s0, [r0, #-592]
	VLDR s1, [r0, #-200]
	VLDR s2, [r0, #-480]
	VLDR s3, [r0, #-736]
	VLDR s4, [r0, #408]
	VLDR s5, [r0, #428]
	VLDR s6, [r0, #656]
	VLDR s7, [r0, #-792]
	VLDR s8, [r0, #668]
	VLDR s9, [r0, #824]
	VLDR s10, [r0, #-452]
	VLDR s11, [r0, #-900]
	VLDR s12, [r0, #200]
	VLDR s13, [r0, #-552]
	VLDR s14, [r0, #852]
	VLDR s15, [r0, #-636]
	VLDR s16, [r0, #-616]
	VLDR s17, [r0, #340]
	VLDR s18, [r0, #-300]
	VLDR s19, [r0, #-564]
	VLDR s20, [r0, #-672]
	VLDR s21, [r0, #388]
	VLDR s22, [r0, #372]
	VLDR s23, [r0, #-324]
	VLDR s24, [r0, #-392]
	VLDR s25, [r0, #844]
	VLDR s26, [r0, #-472]
	VLDR s27, [r0, #-248]
	VLDR s28, [r0, #-40]
	VLDR s29, [r0, #-504]
	VLDR s30, [r0, #-432]
	VLDR s31, [r0, #-840]

	VLDR s0, [r0, #-704]
	VLDR s1, [r0, #-56]
	VLDR s2, [r0, #-400]
	VLDR s3, [r0, #532]
	VLDR s4, [r0, #724]
	VLDR s5, [r0, #-96]
	VLDR s6, [r0, #632]
	VLDR s7, [r0, #980]
	VLDR s8, [r0, #-540]
	VLDR s9, [r0, #472]
	VLDR s10, [r0, #648]
	VLDR s11, [r0, #560]
	VLDR s12, [r0, #196]
	VLDR s13, [r0, #240]
	VLDR s14, [r0, #-652]
	VLDR s15, [r0, #-924]
	VLDR s16, [r0, #-948]
	VLDR s17, [r0, #-1000]
	VLDR s18, [r0, #-408]
	VLDR s19, [r0, #316]
	VLDR s20, [r0, #-380]
	VLDR s21, [r0, #-204]
	VLDR s22, [r0, #-252]
	VLDR s23, [r0, #-212]
	VLDR s24, [r0, #520]
	VLDR s25, [r0, #644]
	VLDR s26, [r0, #-184]
	VLDR s27, [r0, #-372]
	VLDR s28, [r0, #132]
	VLDR s29, [r0, #-428]
	VLDR s30, [r0, #-256]
	VLDR s31, [r0, #984]

	VLDR s0, [r0, #-316]
	VLDR s1, [r0, #248]
	VLDR s2, [r0, #404]
	VLDR s3, [r0, #588]
	VLDR s4, [r0, #-572]
	VLDR s5, [r0, #-684]
	VLDR s6, [r0, #-868]
	VLDR s7, [r0, #344]
	VLDR s8, [r0, #-188]
	VLDR s9, [r0, #772]
	VLDR s10, [r0, #-752]
	VLDR s11, [r0, #-32]
	VLDR s12, [r2, #0]
	VLDR s13, [r0, #124]
	VLDR s14, [r0, #-768]
	VLDR s15, [r0, #732]
	VLDR s16, [r0, #-624]
	VLDR s17, [r0, #1012]
	VLDR s18, [r0, #-756]
	VLDR s19, [r0, #768]
	VLDR s20, [r0, #-824]
	VLDR s21, [r0, #968]
	VLDR s22, [r0, #592]
	VLDR s23, [r0, #928]
	VLDR s24, [r0, #-4]
	VLDR s25, [r0, #-880]
	VLDR s26, [r0, #-932]
	VLDR s27, [r0, #572]
	VLDR s28, [r0, #-508]
	VLDR s29, [r0, #-296]
	VLDR s30, [r0, #-692]
	VLDR s31, [r0, #92]

	VLDR s0, [r0, #-604]
	VLDR s1, [r0, #-152]
	VLDR s2, [r0, #384]
	VLDR s3, [r0, #936]
	VLDR s4, [r0, #484]
	VLDR s5, [r0, #776]
	VLDR s6, [r0, #624]
	VLDR s7, [r0, #696]
	VLDR s8, [r0, #412]
	VLDR s9, [r0, #616]
	VLDR s10, [r0, #-760]
	VLDR s11, [r0, #-180]
	VLDR s12, [r0, #20]
	VLDR s13, [r0, #-748]
	VLDR s14, [r0, #-648]
	VLDR s15, [r0, #-496]
	VLDR s16, [r0, #-112]
	VLDR s17, [r0, #284]
	VLDR s18, [r0, #576]
	VLDR s19, [r0, #-28]
	VLDR s20, [r0, #-156]
	VLDR s21, [r0, #-8]
	VLDR s22, [r0, #-912]
	VLDR s23, [r0, #504]
	VLDR s24, [r0, #-548]
	VLDR s25, [r0, #-596]
	VLDR s26, [r0, #156]
	VLDR s27, [r0, #712]
	VLDR s28, [r0, #-528]
	VLDR s29, [r0, #436]
	VLDR s30, [r0, #-780]
	VLDR s31, [r0, #-44]

	VLDR s0, [r0, #-120]
	VLDR s1, [r0, #-52]
	VLDR s2, [r0, #992]
	VLDR s3, [r0, #-816]
	VLDR s4, [r0, #272]
	VLDR s5, [r0, #456]
	VLDR s6, [r0, #636]
	VLDR s7, [r0, #-16]
	VLDR s8, [r0, #568]
	VLDR s9, [r0, #120]
	VLDR s10, [r0, #-788]
	VLDR s11, [r0, #908]
	VLDR s12, [r0, #-588]
	VLDR s13, [r0, #40]
	VLDR s14, [r0, #368]
	VLDR s15, [r0, #-164]
	VLDR s16, [r0, #-928]
	VLDR s17, [r0, #784]
	VLDR s18, [r0, #788]
	VLDR s19, [r0, #-580]
	VLDR s20, [r0, #888]
	VLDR s21, [r0, #12]
	VLDR s22, [r0, #-48]
	VLDR s23, [r0, #-740]
	VLDR s24, [r0, #-128]
	VLDR s25, [r0, #-864]
	VLDR s26, [r0, #608]
	VLDR s27, [r0, #-116]
	VLDR s28, [r0, #448]
	VLDR s29, [r0, #-276]
	VLDR s30, [r0, #796]
	VLDR s31, [r0, #152]

	VLDR s0, [r0, #988]
	VLDR s1, [r0, #744]
	VLDR s2, [r0, #-460]
	VLDR s3, [r0, #140]
	VLDR s4, [r0, #-216]
	VLDR s5, [r0, #872]
	VLDR s6, [r0, #-568]
	VLDR s7, [r0, #28]
	VLDR s8, [r0, #660]
	VLDR s9, [r0, #924]
	VLDR s10, [r0, #-916]
	VLDR s11, [r0, #312]
	VLDR s12, [r0, #-368]
	VLDR s13, [r0, #64]
	VLDR s14, [r0, #904]
	VLDR s15, [r0, #912]
	VLDR s16, [r0, #-348]
	VLDR s17, [r0, #-576]
	VLDR s18, [r0, #-280]
	VLDR s19, [r0, #-680]
	VLDR s20, [r0, #-416]
	VLDR s21, [r0, #392]
	VLDR s22, [r0, #236]
	VLDR s23, [r0, #816]
	VLDR s24, [r0, #-720]
	VLDR s25, [r0, #-208]
	VLDR s26, [r0, #-108]
	VLDR s27, [r0, #684]
	VLDR s28, [r0, #148]
	VLDR s29, [r0, #-544]
	VLDR s30, [r0, #-492]
	VLDR s31, [r0, #48]

	VLDR s0, [r0, #188]
	VLDR s1, [r0, #336]
	VLDR s2, [r0, #-72]
	VLDR s3, [r0, #840]
	VLDR s4, [r0, #-404]
	VLDR s5, [r0, #-484]
	VLDR s6, [r0, #232]
	VLDR s7, [r0, #528]
	VLDR s8, [r0, #-332]
	VLDR s9, [r0, #280]
	VLDR s10, [r0, #-1008]
	VLDR s11, [r0, #-440]
	VLDR s12, [r0, #468]
	VLDR s13, [r0, #-644]
	VLDR s14, [r0, #-520]
	VLDR s15, [r0, #-1004]
	VLDR s16, [r0, #-744]
	VLDR s17, [r0, #-172]
	VLDR s18, [r0, #-220]
	VLDR s19, [r0, #276]
	VLDR s20, [r0, #-872]
	VLDR s21, [r0, #856]
	VLDR s22, [r0, #-836]
	VLDR s23, [r0, #128]
	VLDR s24, [r0, #848]
	VLDR s25, [r0, #-560]
	VLDR s26, [r0, #-384]
	VLDR s27, [r0, #-664]
	VLDR s28, [r0, #972]
	VLDR s29, [r0, #832]
	VLDR s30, [r0, #808]
	VLDR s31, [r0, #-832]

	VLDR s0, [r0, #-100]
	VLDR s1, [r0, #860]
	VLDR s2, [r0, #940]
	VLDR s3, [r0, #352]
	VLDR s4, [r0, #764]
	VLDR s5, [r0, #176]
	VLDR s6, [r0, #400]
	VLDR s7, [r0, #-584]
	VLDR s8, [r0, #-536]
	VLDR s9, [r0, #-396]
	VLDR s10, [r0, #1004]
	VLDR s11, [r0, #116]
	VLDR s12, [r0, #-892]
	VLDR s13, [r0, #-964]
	VLDR s14, [r0, #-264]
	VLDR s15, [r0, #-660]
	VLDR s16, [r0, #-724]
	VLDR s17, [r0, #-60]
	VLDR s18, [r0, #8]
	VLDR s19, [r0, #916]
	VLDR s20, [r0, #324]
	VLDR s21, [r0, #-904]
	VLDR s22, [r0, #-828]
	VLDR s23, [r0, #1000]
	VLDR s24, [r0, #728]
	VLDR s25, [r0, #-12]
	VLDR s26, [r0, #944]
	VLDR s27, [r0, #-240]
	VLDR s28, [r0, #-764]
	VLDR s29, [r0, #-556]
	VLDR s30, [r0, #-984]
	VLDR s31, [r0, #-80]

	VLDR s0, [r0, #-956]
	VLDR s1, [r0, #-676]
	VLDR s2, [r0, #476]
	VLDR s3, [r0, #-848]
	VLDR s4, [r0, #540]
	VLDR s5, [r0, #756]
	VLDR s6, [r0, #-292]
	VLDR s7, [r0, #296]
	VLDR s8, [r0, #536]
	VLDR s9, [r0, #-696]
	VLDR s10, [r0, #180]
	VLDR s11, [r0, #500]
	VLDR s12, [r0, #884]
	VLDR s13, [r0, #1008]
	VLDR s14, [r0, #-940]
	VLDR s15, [r0, #-860]
	VLDR s16, [r0, #524]
	VLDR s17, [r0, #376]
	VLDR s18, [r0, #424]
	VLDR s19, [r0, #80]
	VLDR s20, [r0, #136]
	VLDR s21, [r0, #976]
	VLDR s22, [r0, #308]
	VLDR s23, [r0, #-936]
	VLDR s24, [r0, #900]
	VLDR s25, [r0, #-464]
	VLDR s26, [r0, #252]
	VLDR s27, [r0, #-352]
	VLDR s28, [r0, #-708]
	VLDR s29, [r0, #-412]
	VLDR s30, [r0, #1020]
	VLDR s31, [r0, #880]

	VLDR s0, [r0, #-448]
	VLDR s1, [r0, #444]
	VLDR s2, [r0, #-600]
	VLDR s3, [r0, #828]
	VLDR s4, [r0, #16]
	VLDR s5, [r0, #108]
	VLDR s6, [r0, #-140]
	VLDR s7, [r0, #752]
	VLDR s8, [r0, #-176]
	VLDR s9, [r0, #-688]
	VLDR s10, [r0, #-532]
	VLDR s11, [r0, #-232]
	VLDR s12, [r0, #-784]
	VLDR s13, [r0, #-468]
	VLDR s14, [r0, #416]
	VLDR s15, [r0, #396]
	VLDR s16, [r0, #820]
	VLDR s17, [r0, #672]
	VLDR s18, [r0, #704]
	VLDR s19, [r0, #220]
	VLDR s20, [r0, #184]
	VLDR s21, [r0, #-996]
	VLDR s22, [r0, #264]
	VLDR s23, [r0, #-800]
	VLDR s24, [r0, #420]
	VLDR s25, [r0, #-228]
	VLDR s26, [r0, #-268]
	VLDR s27, [r0, #452]
	VLDR s28, [r0, #932]
	VLDR s29, [r0, #512]
	VLDR s30, [r0, #516]
	VLDR s31, [r0, #432]

	VLDR s0, [r0, #952]
	VLDR s1, [r0, #-856]
	VLDR s2, [r0, #-144]
	VLDR s3, [r0, #-620]
	VLDR s4, [r0, #-160]
	VLDR s5, [r0, #364]
	VLDR s6, [r0, #0]
	VLDR s7, [r0, #708]
	VLDR s8, [r0, #-716]
	VLDR s9, [r0, #-24]
	VLDR s10, [r0, #-340]
	VLDR s11, [r0, #-64]
	VLDR s12, [r0, #892]
	VLDR s13, [r0, #-444]
	VLDR s14, [r0, #-896]
	VLDR s15, [r0, #596]
	VLDR s16, [r0, #800]
	VLDR s17, [r0, #-124]
	VLDR s18, [r0, #-344]
	VLDR s19, [r0, #172]
	VLDR s20, [r0, #-668]
	VLDR s21, [r0, #-812]
	VLDR s22, [r0, #-700]
	VLDR s23, [r0, #-236]
	VLDR s24, [r0, #492]
	VLDR s25, [r0, #-952]
	VLDR s26, [r0, #692]
	VLDR s27, [r0, #876]
	VLDR s28, [r0, #-732]
	VLDR s29, [r0, #-608]
	VLDR s30, [r0, #160]
	VLDR s31, [r0, #720]
	ADD r0, r0, #2048
	ADD r2, r2, #2048
	SUBS r1, r1, #2048
	BHS 1b
2:
	ADDS r1, r1, #2048
	BEQ 3f
	BKPT
3:
	POP {r4-r11, ip, lr}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_2KRandom_VLDR

BEGIN_ARM_FUNCTION uBench_ReadMemory_12PointerChasing_LDR
	PUSH	{r4-r11, ip, lr}
	LDR lr, [r2, #44]
	LDR r12, [r2, #40]
	LDR r11, [r2, #36]
	LDR r10, [r2, #32]
	LDR r9, [r2, #28]
	LDR r8, [r2, #24]
	LDR r7, [r2, #20]
	LDR r6, [r2, #16]
	LDR r5, [r2, #12]
	LDR r4, [r2, #8]
	LDR r3, [r2, #4]
	LDR r2, [r2, #0]
	
1:
	LDR lr, [r1, lr, LSL #2]
	LDR r12, [r1, r12, LSL #2]
	LDR r11, [r1, r11, LSL #2]
	LDR r10, [r1, r10, LSL #2]
	LDR r9, [r1, r9, LSL #2]
	LDR r8, [r1, r8, LSL #2]
	LDR r7, [r1, r7, LSL #2]
	LDR r6, [r1, r6, LSL #2]
	LDR r5, [r1, r5, LSL #2]
	LDR r4, [r1, r4, LSL #2]
	LDR r3, [r1, r3, LSL #2]
	LDR r2, [r1, r2, LSL #2]
	SUBS r0, r0, #1
	BNE 1b

	POP {r4-r11, ip, lr}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_12PointerChasing_LDR
