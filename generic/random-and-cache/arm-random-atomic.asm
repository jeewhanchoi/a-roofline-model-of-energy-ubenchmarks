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

.macro ATOMIC_INCREMENT array, index, shift, address, temp, status
	ADD \address, \array, \index, LSL \shift
42:
	LDREX \temp, [\address]
	ADD \temp, \temp, #1
	STREX \status, \temp, [\address]
	TST \status, \status
	BNE 42b
.endm

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic30_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 25-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #25
1:
	XORSHIFT_25 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_25 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic30_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic30_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 24-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #24
1:
	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic30_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic30_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 23-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #23
1:
	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic30_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic29_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 24-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #24
1:
	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_24 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic29_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic29_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 23-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #23
1:
	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic29_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic29_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 22-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #22
1:
	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic29_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic28_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 23-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #23
1:
	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_23 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic28_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic28_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 22-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #22
1:
	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic28_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic28_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 21-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #21
1:
	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic28_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic27_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 22-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #22
1:
	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_22 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic27_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic27_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 21-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #21
1:
	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic27_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic27_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 20-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #20
1:
	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic27_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic26_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 21-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #21
1:
	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_21 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic26_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic26_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 20-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #20
1:
	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic26_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic26_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 19-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #19
1:
	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic26_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic25_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 20-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #20
1:
	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_20 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic25_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic25_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 19-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #19
1:
	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic25_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic25_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 18-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #18
1:
	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic25_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic24_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 19-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #19
1:
	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_19 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic24_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic24_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 18-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #18
1:
	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic24_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic24_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 17-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #17
1:
	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic24_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic23_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 18-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #18
1:
	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_18 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic23_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic23_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 17-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #17
1:
	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic23_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic23_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 16-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #16
1:
	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic23_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic22_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 17-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #17
1:
	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_17 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic22_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic22_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 16-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #16
1:
	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic22_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic22_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 15-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #15
1:
	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic22_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic21_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 16-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #16
1:
	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_16 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic21_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic21_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 15-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #15
1:
	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic21_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic21_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 14-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #14
1:
	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic21_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic20_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 15-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #15
1:
	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_15 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic20_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic20_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 14-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #14
1:
	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic20_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic20_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 13-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #13
1:
	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic20_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic19_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 14-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #14
1:
	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_14 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic19_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic19_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 13-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #13
1:
	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic19_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic19_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 12-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #12
1:
	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic19_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic18_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 13-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #13
1:
	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_13 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic18_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic18_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 12-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #12
1:
	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic18_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic18_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 11-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #11
1:
	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic18_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic17_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 12-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #12
1:
	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_12 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic17_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic17_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 11-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #11
1:
	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic17_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic17_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 10-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #10
1:
	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic17_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic16_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 11-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #11
1:
	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic16_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic16_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 10-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #10
1:
	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic16_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic16_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 9-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #9
1:
	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic16_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic15_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 11-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #11
1:
	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_11 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic15_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic15_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 10-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #10
1:
	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic15_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic15_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 9-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #9
1:
	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic15_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic14_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 10-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #10
1:
	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_10 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic14_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic14_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 9-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #9
1:
	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic14_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic14_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 8-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #8
1:
	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic14_LLSC_Stride128

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic13_LLSC_Stride32
	PUSH	{r4-r11, ip, lr}
	
	@ 9-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #9
1:
	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_9 r1, r2
	ATOMIC_INCREMENT r0, r1, #5, r3, r4, r5 @ Offset is multiple of 32 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic13_LLSC_Stride32

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic13_LLSC_Stride64
	PUSH	{r4-r11, ip, lr}
	
	@ 8-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #8
1:
	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_8 r1, r2
	ATOMIC_INCREMENT r0, r1, #6, r3, r4, r5 @ Offset is multiple of 64 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic13_LLSC_Stride64

BEGIN_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic13_LLSC_Stride128
	PUSH	{r4-r11, ip, lr}
	
	@ 7-bit XorShift
	MOV r1, #1
	RSB r2, r1, r1, LSL #7
1:
	XORSHIFT_7 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BEQ 2f

	XORSHIFT_7 r1, r2
	ATOMIC_INCREMENT r0, r1, #7, r3, r4, r5 @ Offset is multiple of 128 bytes
	TEQ r1, #1
	BNE 1b
2:

	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_UpdateMemory_RandomAtomic13_LLSC_Stride128

