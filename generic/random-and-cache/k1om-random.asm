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

.macro XORSHIFT_29 state, tmp
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 4
	XOR \tmp, \state
	
	AND \state, (1<<29) - 1
	
	MOV \tmp, \state
	SHR \state, 5
	XOR \state, \tmp
.endm

.macro XORSHIFT_28 state, tmp
	MOV \tmp, \state
	SHR \state, 1
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 3
	XOR \state, \tmp
	
	AND \state, (1<<28) - 1
	
	MOV \tmp, \state
	SHR \state, 9
	XOR \state, \tmp
.endm

.macro XORSHIFT_27 state, tmp
	MOV \tmp, \state
	SHR \state, 1
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 2
	XOR \state, \tmp
	
	AND \state, (1<<27) - 1
	
	MOV \tmp, \state
	SHR \state, 6
	XOR \state, \tmp
.endm

.macro XORSHIFT_26 state, tmp
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 5
	XOR \state, \tmp
	
	AND \state, (1<<26) - 1
	
	MOV \tmp, \state
	SHR \state, 3
	XOR \state, \tmp
.endm

.macro XORSHIFT_25 state, tmp
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 1
	XOR \state, \tmp
	
	AND \state, (1<<25) - 1
	
	MOV \tmp, \state
	SHR \state, 6
	XOR \state, \tmp
.endm

.macro XORSHIFT_24 state, tmp
	MOV \tmp, \state
	SHR \state, 6
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 1
	XOR \state, \tmp
	
	AND \state, (1<<24) - 1
	
	MOV \tmp, \state
	SHR \state, 9
	XOR \state, \tmp
.endm

.macro XORSHIFT_23 state, tmp
	MOV \tmp, \state
	SHR \state, 7
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 8
	XOR \state, \tmp
	
	AND \state, (1<<23) - 1
	
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
.endm

.macro XORSHIFT_22 state, tmp
	MOV \tmp, \state
	SHR \state, 5
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 3
	XOR \state, \tmp
	
	AND \state, (1<<22) - 1
	
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
.endm

.macro XORSHIFT_21 state, tmp
	MOV \tmp, \state
	SHR \state, 4
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 3
	XOR \state, \tmp
	
	AND \state, (1<<21) - 1
	
	MOV \tmp, \state
	SHR \state, 6
	XOR \state, \tmp
.endm

.macro XORSHIFT_20 state, tmp
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 1
	XOR \state, \tmp
	
	AND \state, (1<<20) - 1
	
	MOV \tmp, \state
	SHR \state, 9
	XOR \state, \tmp
.endm

.macro XORSHIFT_19 state, tmp
	MOV \tmp, \state
	SHR \state, 9
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 6
	XOR \state, \tmp
	
	AND \state, (1<<19) - 1
	
	MOV \tmp, \state
	SHR \state, 4
	XOR \state, \tmp
.endm

.macro XORSHIFT_18 state, tmp
	MOV \tmp, \state
	SHR \state, 3
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 9
	XOR \state, \tmp
	
	AND \state, (1<<18) - 1
	
	MOV \tmp, \state
	SHR \state, 8
	XOR \state, \tmp
.endm

.macro XORSHIFT_17 state, tmp
	MOV \tmp, \state
	SHR \state, 9
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 6
	XOR \state, \tmp
	
	AND \state, (1<<17) - 1
	
	MOV \tmp, \state
	SHR \state, 1
	XOR \state, \tmp
.endm

.macro XORSHIFT_16 state, tmp
	MOV \tmp, \state
	SHR \state, 8
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 9
	XOR \state, \tmp
	
	AND \state, (1<<16) - 1
	
	MOV \tmp, \state
	SHR \state, 5
	XOR \state, \tmp
.endm

.macro XORSHIFT_15 state, tmp
	MOV \tmp, \state
	SHR \state, 4
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 1
	XOR \state, \tmp
	
	AND \state, (1<<15) - 1
	
	MOV \tmp, \state
	SHR \state, 9
	XOR \state, \tmp
.endm

.macro XORSHIFT_14 state, tmp
	MOV \tmp, \state
	SHR \state, 9
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 7
	XOR \state, \tmp
	
	AND \state, (1<<14) - 1
	
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
.endm

.macro XORSHIFT_13 state, tmp
	MOV \tmp, \state
	SHR \state, 8
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 5
	XOR \state, \tmp
	
	AND \state, (1<<13) - 1
	
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
.endm

.macro XORSHIFT_12 state, tmp
	MOV \tmp, \state
	SHR \state, 7
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 5
	XOR \state, \tmp
	
	AND \state, (1<<12) - 1
	
	MOV \tmp, \state
	SHR \state, 9
	XOR \state, \tmp
.endm

.macro XORSHIFT_11 state, tmp
	MOV \tmp, \state
	SHR \state, 6
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 4
	XOR \state, \tmp
	
	AND \state, (1<<11) - 1
	
	MOV \tmp, \state
	SHR \state, 7
	XOR \state, \tmp
.endm

.macro XORSHIFT_10 state, tmp
	MOV \tmp, \state
	SHR \state, 5
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 1
	XOR \state, \tmp
	
	AND \state, (1<<10) - 1
	
	MOV \tmp, \state
	SHR \state, 3
	XOR \state, \tmp
.endm

.macro XORSHIFT_9 state, tmp
	MOV \tmp, \state
	SHR \state, 8
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 4
	XOR \state, \tmp
	
	AND \state, (1<<9) - 1
	
	MOV \tmp, \state
	SHR \state, 5
	XOR \state, \tmp
.endm

.macro XORSHIFT_8 state, tmp
	MOV \tmp, \state
	SHR \state, 3
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 1
	XOR \state, \tmp
	
	AND \state, (1<<8) - 1
	
	MOV \tmp, \state
	SHR \state, 5
	XOR \state, \tmp
.endm

.macro XORSHIFT_7 state, tmp
	MOV \tmp, \state
	SHR \state, 5
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 2
	XOR \state, \tmp
	
	AND \state, (1<<7) - 1
	
	MOV \tmp, \state
	SHR \state, 6
	XOR \state, \tmp
.endm

.macro XORSHIFT_6 state, tmp
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 3
	XOR \state, \tmp
	
	AND \state, (1<<6) - 1
	
	MOV \tmp, \state
	SHR \state, 1
	XOR \state, \tmp
.endm

.macro XORSHIFT_5 state, tmp
	MOV \tmp, \state
	SHR \state, 4
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 3
	XOR \state, \tmp
	
	AND \state, (1<<5) - 1
	
	MOV \tmp, \state
	SHR \state, 1
	XOR \state, \tmp
.endm

.macro XORSHIFT_4 state, tmp
	MOV \tmp, \state
	SHR \state, 3
	XOR \state, \tmp
	
	MOV \tmp, \state
	SHL \state, 1
	XOR \state, \tmp
	
	AND \state, (1<<4) - 1
	
	MOV \tmp, \state
	SHR \state, 2
	XOR \state, \tmp
.endm

.section .text

BEGIN_X86_FUNCTION uBench_ReadMemory_Random30_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 25-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random30_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random30_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 24-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random30_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random30_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 23-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random30_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random29_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 24-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random29_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random29_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 23-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random29_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random29_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 22-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random29_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random28_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 23-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random28_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random28_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 22-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random28_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random28_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 21-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random28_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random27_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 22-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random27_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random27_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 21-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random27_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random27_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 20-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random27_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random26_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 21-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random26_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random26_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 20-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random26_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random26_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 19-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random26_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random25_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 20-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random25_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random25_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 19-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random25_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random25_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 18-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random25_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random24_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 19-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random24_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random24_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 18-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random24_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random24_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 17-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random24_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random23_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 18-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random23_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random23_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 17-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random23_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random23_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 16-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random23_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random22_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 17-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random22_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random22_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 16-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random22_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random22_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 15-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random22_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random21_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 16-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random21_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random21_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 15-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random21_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random21_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 14-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random21_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random20_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 15-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random20_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random20_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 14-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random20_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random20_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 13-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random20_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random19_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 14-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random19_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random19_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 13-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random19_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random19_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 12-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random19_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random18_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 13-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random18_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random18_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 12-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random18_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random18_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 11-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random18_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random17_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 12-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random17_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random17_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 11-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random17_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random17_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 10-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random17_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random16_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 11-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random16_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random16_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 10-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random16_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random16_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 9-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random16_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random15_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 10-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random15_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random15_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 9-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random15_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random15_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 8-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random15_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random14_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 9-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random14_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random14_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 8-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random14_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random14_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 7-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random14_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_Random13_MOV_Stride32
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 8-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE 2f

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random13_MOV_Stride32

BEGIN_X86_FUNCTION uBench_ReadMemory_Random13_MOV_Stride64
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 7-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE 2f

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random13_MOV_Stride64

BEGIN_X86_FUNCTION uBench_ReadMemory_Random13_MOV_Stride128
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	/* 6-bit XorShift */
	MOV esi, 1
	.align 32
1:
	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE 2f

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_Random13_MOV_Stride128

BEGIN_X86_FUNCTION uBench_ReadMemory_2KRandom_MOV
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	SUB rsi, 2048
	JB 2f
	.align 32
1:
	MOV r8d, [rdi + 1120]
	MOV r9d, [rdi + 536]
	MOV r10d, [rdi + 1892]
	MOV r11d, [rdi + 932]
	MOV r12d, [rdi + 688]
	MOV r13d, [rdi + 512]
	MOV r14d, [rdi + 1344]
	MOV r15d, [rdi + 204]

	MOV r8d, [rdi + 752]
	MOV r9d, [rdi + 604]
	MOV r10d, [rdi + 876]
	MOV r11d, [rdi + 12]
	MOV r12d, [rdi + 1724]
	MOV r13d, [rdi + 1236]
	MOV r14d, [rdi + 920]
	MOV r15d, [rdi + 56]

	MOV r8d, [rdi + 1240]
	MOV r9d, [rdi + 940]
	MOV r10d, [rdi + 780]
	MOV r11d, [rdi + 252]
	MOV r12d, [rdi + 1512]
	MOV r13d, [rdi + 396]
	MOV r14d, [rdi + 1124]
	MOV r15d, [rdi + 1784]

	MOV r8d, [rdi + 720]
	MOV r9d, [rdi + 1096]
	MOV r10d, [rdi + 1324]
	MOV r11d, [rdi + 832]
	MOV r12d, [rdi + 740]
	MOV r13d, [rdi + 524]
	MOV r14d, [rdi + 220]
	MOV r15d, [rdi + 1860]

	MOV r8d, [rdi + 1980]
	MOV r9d, [rdi + 1920]
	MOV r10d, [rdi + 1268]
	MOV r11d, [rdi + 1488]
	MOV r12d, [rdi + 1352]
	MOV r13d, [rdi + 696]
	MOV r14d, [rdi + 648]
	MOV r15d, [rdi + 136]

	MOV r8d, [rdi + 888]
	MOV r9d, [rdi + 392]
	MOV r10d, [rdi + 4]
	MOV r11d, [rdi + 1056]
	MOV r12d, [rdi + 1108]
	MOV r13d, [rdi + 988]
	MOV r14d, [rdi + 1580]
	MOV r15d, [rdi + 712]

	MOV r8d, [rdi + 1068]
	MOV r9d, [rdi + 1816]
	MOV r10d, [rdi + 856]
	MOV r11d, [rdi + 148]
	MOV r12d, [rdi + 1060]
	MOV r13d, [rdi + 1828]
	MOV r14d, [rdi + 508]
	MOV r15d, [rdi + 1128]

	MOV r8d, [rdi + 1576]
	MOV r9d, [rdi + 1568]
	MOV r10d, [rdi + 312]
	MOV r11d, [rdi + 1188]
	MOV r12d, [rdi + 636]
	MOV r13d, [rdi + 180]
	MOV r14d, [rdi + 1404]
	MOV r15d, [rdi + 1944]

	MOV r8d, [rdi + 736]
	MOV r9d, [rdi + 1588]
	MOV r10d, [rdi + 52]
	MOV r11d, [rdi + 668]
	MOV r12d, [rdi + 140]
	MOV r13d, [rdi + 1652]
	MOV r14d, [rdi + 1284]
	MOV r15d, [rdi + 1604]

	MOV r8d, [rdi + 660]
	MOV r9d, [rdi + 1228]
	MOV r10d, [rdi + 1232]
	MOV r11d, [rdi + 1836]
	MOV r12d, [rdi + 1100]
	MOV r13d, [rdi + 1572]
	MOV r14d, [rdi + 1636]
	MOV r15d, [rdi + 800]

	MOV r8d, [rdi + 936]
	MOV r9d, [rdi + 664]
	MOV r10d, [rdi + 384]
	MOV r11d, [rdi + 1216]
	MOV r12d, [rdi + 1644]
	MOV r13d, [rdi + 1076]
	MOV r14d, [rdi + 1988]
	MOV r15d, [rdi + 1504]

	MOV r8d, [rdi + 44]
	MOV r9d, [rdi + 1520]
	MOV r10d, [rdi + 296]
	MOV r11d, [rdi + 956]
	MOV r12d, [rdi + 1664]
	MOV r13d, [rdi + 1688]
	MOV r14d, [rdi + 1628]
	MOV r15d, [rdi + 172]

	MOV r8d, [rdi + 104]
	MOV r9d, [rdi + 1372]
	MOV r10d, [rdi + 568]
	MOV r11d, [rdi + 500]
	MOV r12d, [rdi + 2040]
	MOV r13d, [rdi + 588]
	MOV r14d, [rdi + 1804]
	MOV r15d, [rdi + 548]

	MOV r8d, [rdi + 1112]
	MOV r9d, [rdi + 1704]
	MOV r10d, [rdi + 1252]
	MOV r11d, [rdi + 1084]
	MOV r12d, [rdi + 716]
	MOV r13d, [rdi + 1168]
	MOV r14d, [rdi + 1676]
	MOV r15d, [rdi + 1972]

	MOV r8d, [rdi + 600]
	MOV r9d, [rdi + 216]
	MOV r10d, [rdi + 892]
	MOV r11d, [rdi + 1280]
	MOV r12d, [rdi + 1292]
	MOV r13d, [rdi + 116]
	MOV r14d, [rdi + 1624]
	MOV r15d, [rdi + 704]

	MOV r8d, [rdi + 2020]
	MOV r9d, [rdi + 1464]
	MOV r10d, [rdi + 1760]
	MOV r11d, [rdi + 36]
	MOV r12d, [rdi + 1328]
	MOV r13d, [rdi + 1608]
	MOV r14d, [rdi + 1384]
	MOV r15d, [rdi + 1192]

	MOV r8d, [rdi + 412]
	MOV r9d, [rdi + 1136]
	MOV r10d, [rdi + 368]
	MOV r11d, [rdi + 1700]
	MOV r12d, [rdi + 48]
	MOV r13d, [rdi + 1764]
	MOV r14d, [rdi + 828]
	MOV r15d, [rdi + 1312]

	MOV r8d, [rdi + 1004]
	MOV r9d, [rdi + 1484]
	MOV r10d, [rdi + 1772]
	MOV r11d, [rdi + 80]
	MOV r12d, [rdi + 1092]
	MOV r13d, [rdi + 64]
	MOV r14d, [rdi + 1248]
	MOV r15d, [rdi + 1532]

	MOV r8d, [rdi + 1712]
	MOV r9d, [rdi + 1984]
	MOV r10d, [rdi + 8]
	MOV r11d, [rdi + 1380]
	MOV r12d, [rdi + 948]
	MOV r13d, [rdi + 228]
	MOV r14d, [rdi + 1080]
	MOV r15d, [rdi + 764]

	MOV r8d, [rdi + 1028]
	MOV r9d, [rdi + 1048]
	MOV r10d, [rdi + 1888]
	MOV r11d, [rdi + 1316]
	MOV r12d, [rdi + 1740]
	MOV r13d, [rdi + 248]
	MOV r14d, [rdi + 1356]
	MOV r15d, [rdi + 32]

	MOV r8d, [rdi + 432]
	MOV r9d, [rdi + 824]
	MOV r10d, [rdi + 544]
	MOV r11d, [rdi + 288]
	MOV r12d, [rdi + 1432]
	MOV r13d, [rdi + 1452]
	MOV r14d, [rdi + 1680]
	MOV r15d, [rdi + 232]

	MOV r8d, [rdi + 1692]
	MOV r9d, [rdi + 1848]
	MOV r10d, [rdi + 572]
	MOV r11d, [rdi + 124]
	MOV r12d, [rdi + 1224]
	MOV r13d, [rdi + 472]
	MOV r14d, [rdi + 1876]
	MOV r15d, [rdi + 388]

	MOV r8d, [rdi + 408]
	MOV r9d, [rdi + 1364]
	MOV r10d, [rdi + 724]
	MOV r11d, [rdi + 460]
	MOV r12d, [rdi + 352]
	MOV r13d, [rdi + 1412]
	MOV r14d, [rdi + 1396]
	MOV r15d, [rdi + 700]

	MOV r8d, [rdi + 632]
	MOV r9d, [rdi + 1868]
	MOV r10d, [rdi + 552]
	MOV r11d, [rdi + 776]
	MOV r12d, [rdi + 984]
	MOV r13d, [rdi + 520]
	MOV r14d, [rdi + 592]
	MOV r15d, [rdi + 184]

	MOV r8d, [rdi + 320]
	MOV r9d, [rdi + 968]
	MOV r10d, [rdi + 624]
	MOV r11d, [rdi + 1556]
	MOV r12d, [rdi + 1748]
	MOV r13d, [rdi + 928]
	MOV r14d, [rdi + 1656]
	MOV r15d, [rdi + 2004]

	MOV r8d, [rdi + 484]
	MOV r9d, [rdi + 1496]
	MOV r10d, [rdi + 1672]
	MOV r11d, [rdi + 1584]
	MOV r12d, [rdi + 1220]
	MOV r13d, [rdi + 1264]
	MOV r14d, [rdi + 372]
	MOV r15d, [rdi + 100]

	MOV r8d, [rdi + 76]
	MOV r9d, [rdi + 24]
	MOV r10d, [rdi + 616]
	MOV r11d, [rdi + 1340]
	MOV r12d, [rdi + 644]
	MOV r13d, [rdi + 820]
	MOV r14d, [rdi + 772]
	MOV r15d, [rdi + 812]

	MOV r8d, [rdi + 1544]
	MOV r9d, [rdi + 1668]
	MOV r10d, [rdi + 840]
	MOV r11d, [rdi + 652]
	MOV r12d, [rdi + 1156]
	MOV r13d, [rdi + 596]
	MOV r14d, [rdi + 768]
	MOV r15d, [rdi + 2008]

	MOV r8d, [rdi + 708]
	MOV r9d, [rdi + 1272]
	MOV r10d, [rdi + 1428]
	MOV r11d, [rdi + 1612]
	MOV r12d, [rdi + 452]
	MOV r13d, [rdi + 340]
	MOV r14d, [rdi + 156]
	MOV r15d, [rdi + 1368]

	MOV r8d, [rdi + 836]
	MOV r9d, [rdi + 1796]
	MOV r10d, [rdi + 272]
	MOV r11d, [rdi + 992]
	MOV r12d, [rdi + 0]
	MOV r13d, [rdi + 1148]
	MOV r14d, [rdi + 256]
	MOV r15d, [rdi + 1756]

	MOV r8d, [rdi + 400]
	MOV r9d, [rdi + 2036]
	MOV r10d, [rdi + 268]
	MOV r11d, [rdi + 1792]
	MOV r12d, [rdi + 200]
	MOV r13d, [rdi + 1992]
	MOV r14d, [rdi + 1616]
	MOV r15d, [rdi + 1952]

	MOV r8d, [rdi + 1020]
	MOV r9d, [rdi + 144]
	MOV r10d, [rdi + 92]
	MOV r11d, [rdi + 1596]
	MOV r12d, [rdi + 516]
	MOV r13d, [rdi + 728]
	MOV r14d, [rdi + 332]
	MOV r15d, [rdi + 1116]

	MOV r8d, [rdi + 420]
	MOV r9d, [rdi + 872]
	MOV r10d, [rdi + 1408]
	MOV r11d, [rdi + 1960]
	MOV r12d, [rdi + 1508]
	MOV r13d, [rdi + 1800]
	MOV r14d, [rdi + 1648]
	MOV r15d, [rdi + 1720]

	MOV r8d, [rdi + 1436]
	MOV r9d, [rdi + 1640]
	MOV r10d, [rdi + 264]
	MOV r11d, [rdi + 844]
	MOV r12d, [rdi + 1044]
	MOV r13d, [rdi + 276]
	MOV r14d, [rdi + 376]
	MOV r15d, [rdi + 528]

	MOV r8d, [rdi + 912]
	MOV r9d, [rdi + 1308]
	MOV r10d, [rdi + 1600]
	MOV r11d, [rdi + 996]
	MOV r12d, [rdi + 868]
	MOV r13d, [rdi + 1016]
	MOV r14d, [rdi + 112]
	MOV r15d, [rdi + 1528]

	MOV r8d, [rdi + 476]
	MOV r9d, [rdi + 428]
	MOV r10d, [rdi + 1180]
	MOV r11d, [rdi + 1736]
	MOV r12d, [rdi + 496]
	MOV r13d, [rdi + 1460]
	MOV r14d, [rdi + 244]
	MOV r15d, [rdi + 980]

	MOV r8d, [rdi + 904]
	MOV r9d, [rdi + 972]
	MOV r10d, [rdi + 2016]
	MOV r11d, [rdi + 208]
	MOV r12d, [rdi + 1296]
	MOV r13d, [rdi + 1480]
	MOV r14d, [rdi + 1660]
	MOV r15d, [rdi + 1008]

	MOV r8d, [rdi + 1592]
	MOV r9d, [rdi + 1144]
	MOV r10d, [rdi + 236]
	MOV r11d, [rdi + 1932]
	MOV r12d, [rdi + 436]
	MOV r13d, [rdi + 1064]
	MOV r14d, [rdi + 1392]
	MOV r15d, [rdi + 860]

	MOV r8d, [rdi + 96]
	MOV r9d, [rdi + 1808]
	MOV r10d, [rdi + 1812]
	MOV r11d, [rdi + 444]
	MOV r12d, [rdi + 1912]
	MOV r13d, [rdi + 1036]
	MOV r14d, [rdi + 976]
	MOV r15d, [rdi + 284]

	MOV r8d, [rdi + 896]
	MOV r9d, [rdi + 160]
	MOV r10d, [rdi + 1632]
	MOV r11d, [rdi + 908]
	MOV r12d, [rdi + 1472]
	MOV r13d, [rdi + 748]
	MOV r14d, [rdi + 1820]
	MOV r15d, [rdi + 1176]

	MOV r8d, [rdi + 2012]
	MOV r9d, [rdi + 1768]
	MOV r10d, [rdi + 564]
	MOV r11d, [rdi + 1164]
	MOV r12d, [rdi + 808]
	MOV r13d, [rdi + 1896]
	MOV r14d, [rdi + 456]
	MOV r15d, [rdi + 1052]

	MOV r8d, [rdi + 1684]
	MOV r9d, [rdi + 1948]
	MOV r10d, [rdi + 108]
	MOV r11d, [rdi + 1336]
	MOV r12d, [rdi + 656]
	MOV r13d, [rdi + 1088]
	MOV r14d, [rdi + 1928]
	MOV r15d, [rdi + 1936]

	MOV r8d, [rdi + 676]
	MOV r9d, [rdi + 448]
	MOV r10d, [rdi + 744]
	MOV r11d, [rdi + 344]
	MOV r12d, [rdi + 608]
	MOV r13d, [rdi + 1416]
	MOV r14d, [rdi + 1260]
	MOV r15d, [rdi + 1840]

	MOV r8d, [rdi + 304]
	MOV r9d, [rdi + 816]
	MOV r10d, [rdi + 916]
	MOV r11d, [rdi + 1708]
	MOV r12d, [rdi + 1172]
	MOV r13d, [rdi + 480]
	MOV r14d, [rdi + 532]
	MOV r15d, [rdi + 1072]

	MOV r8d, [rdi + 1212]
	MOV r9d, [rdi + 1360]
	MOV r10d, [rdi + 952]
	MOV r11d, [rdi + 1864]
	MOV r12d, [rdi + 620]
	MOV r13d, [rdi + 540]
	MOV r14d, [rdi + 1256]
	MOV r15d, [rdi + 1552]

	MOV r8d, [rdi + 692]
	MOV r9d, [rdi + 1304]
	MOV r10d, [rdi + 16]
	MOV r11d, [rdi + 584]
	MOV r12d, [rdi + 1492]
	MOV r13d, [rdi + 380]
	MOV r14d, [rdi + 504]
	MOV r15d, [rdi + 20]

	MOV r8d, [rdi + 280]
	MOV r9d, [rdi + 852]
	MOV r10d, [rdi + 804]
	MOV r11d, [rdi + 1300]
	MOV r12d, [rdi + 152]
	MOV r13d, [rdi + 1880]
	MOV r14d, [rdi + 188]
	MOV r15d, [rdi + 1152]

	MOV r8d, [rdi + 1872]
	MOV r9d, [rdi + 464]
	MOV r10d, [rdi + 640]
	MOV r11d, [rdi + 360]
	MOV r12d, [rdi + 1996]
	MOV r13d, [rdi + 1856]
	MOV r14d, [rdi + 1832]
	MOV r15d, [rdi + 192]

	MOV r8d, [rdi + 924]
	MOV r9d, [rdi + 1884]
	MOV r10d, [rdi + 1964]
	MOV r11d, [rdi + 1376]
	MOV r12d, [rdi + 1788]
	MOV r13d, [rdi + 1200]
	MOV r14d, [rdi + 1424]
	MOV r15d, [rdi + 440]

	MOV r8d, [rdi + 488]
	MOV r9d, [rdi + 628]
	MOV r10d, [rdi + 2028]
	MOV r11d, [rdi + 1140]
	MOV r12d, [rdi + 132]
	MOV r13d, [rdi + 60]
	MOV r14d, [rdi + 760]
	MOV r15d, [rdi + 364]

	MOV r8d, [rdi + 300]
	MOV r9d, [rdi + 964]
	MOV r10d, [rdi + 1032]
	MOV r11d, [rdi + 1940]
	MOV r12d, [rdi + 1348]
	MOV r13d, [rdi + 120]
	MOV r14d, [rdi + 196]
	MOV r15d, [rdi + 2024]

	MOV r8d, [rdi + 1752]
	MOV r9d, [rdi + 1012]
	MOV r10d, [rdi + 1968]
	MOV r11d, [rdi + 784]
	MOV r12d, [rdi + 260]
	MOV r13d, [rdi + 468]
	MOV r14d, [rdi + 40]
	MOV r15d, [rdi + 944]

	MOV r8d, [rdi + 68]
	MOV r9d, [rdi + 348]
	MOV r10d, [rdi + 1500]
	MOV r11d, [rdi + 176]
	MOV r12d, [rdi + 1564]
	MOV r13d, [rdi + 1780]
	MOV r14d, [rdi + 732]
	MOV r15d, [rdi + 1320]

	MOV r8d, [rdi + 1560]
	MOV r9d, [rdi + 328]
	MOV r10d, [rdi + 1204]
	MOV r11d, [rdi + 1524]
	MOV r12d, [rdi + 1908]
	MOV r13d, [rdi + 2032]
	MOV r14d, [rdi + 84]
	MOV r15d, [rdi + 164]

	MOV r8d, [rdi + 1548]
	MOV r9d, [rdi + 1400]
	MOV r10d, [rdi + 1448]
	MOV r11d, [rdi + 1104]
	MOV r12d, [rdi + 1160]
	MOV r13d, [rdi + 2000]
	MOV r14d, [rdi + 1332]
	MOV r15d, [rdi + 88]

	MOV r8d, [rdi + 1924]
	MOV r9d, [rdi + 560]
	MOV r10d, [rdi + 1276]
	MOV r11d, [rdi + 672]
	MOV r12d, [rdi + 316]
	MOV r13d, [rdi + 612]
	MOV r14d, [rdi + 2044]
	MOV r15d, [rdi + 1904]

	MOV r8d, [rdi + 576]
	MOV r9d, [rdi + 1468]
	MOV r10d, [rdi + 424]
	MOV r11d, [rdi + 1852]
	MOV r12d, [rdi + 1040]
	MOV r13d, [rdi + 1132]
	MOV r14d, [rdi + 884]
	MOV r15d, [rdi + 1776]

	MOV r8d, [rdi + 848]
	MOV r9d, [rdi + 336]
	MOV r10d, [rdi + 492]
	MOV r11d, [rdi + 792]
	MOV r12d, [rdi + 240]
	MOV r13d, [rdi + 556]
	MOV r14d, [rdi + 1440]
	MOV r15d, [rdi + 1420]

	MOV r8d, [rdi + 1844]
	MOV r9d, [rdi + 1696]
	MOV r10d, [rdi + 1728]
	MOV r11d, [rdi + 1244]
	MOV r12d, [rdi + 1208]
	MOV r13d, [rdi + 28]
	MOV r14d, [rdi + 1288]
	MOV r15d, [rdi + 224]

	MOV r8d, [rdi + 1444]
	MOV r9d, [rdi + 796]
	MOV r10d, [rdi + 756]
	MOV r11d, [rdi + 1476]
	MOV r12d, [rdi + 1956]
	MOV r13d, [rdi + 1536]
	MOV r14d, [rdi + 1540]
	MOV r15d, [rdi + 1456]

	MOV r8d, [rdi + 1976]
	MOV r9d, [rdi + 168]
	MOV r10d, [rdi + 880]
	MOV r11d, [rdi + 404]
	MOV r12d, [rdi + 864]
	MOV r13d, [rdi + 1388]
	MOV r14d, [rdi + 1024]
	MOV r15d, [rdi + 1732]

	MOV r8d, [rdi + 308]
	MOV r9d, [rdi + 1000]
	MOV r10d, [rdi + 684]
	MOV r11d, [rdi + 960]
	MOV r12d, [rdi + 1916]
	MOV r13d, [rdi + 580]
	MOV r14d, [rdi + 128]
	MOV r15d, [rdi + 1620]

	MOV r8d, [rdi + 1824]
	MOV r9d, [rdi + 900]
	MOV r10d, [rdi + 680]
	MOV r11d, [rdi + 1196]
	MOV r12d, [rdi + 356]
	MOV r13d, [rdi + 212]
	MOV r14d, [rdi + 324]
	MOV r15d, [rdi + 788]

	MOV r8d, [rdi + 1516]
	MOV r9d, [rdi + 72]
	MOV r10d, [rdi + 1716]
	MOV r11d, [rdi + 1900]
	MOV r12d, [rdi + 292]
	MOV r13d, [rdi + 416]
	MOV r14d, [rdi + 1184]
	MOV r15d, [rdi + 1744]

	ADD rdi, 2048
	SUB rsi, 2048
	JAE 1b

2:
	ADD rsi, 2048
	JZ 3f
	INT 3
	
3:
	POP r15
	POP r14
	POP r13
	POP r12
	RET
END_X86_FUNCTION uBench_ReadMemory_2KRandom_MOV

BEGIN_X86_FUNCTION uBench_ReadMemory_12PointerChasing_MOV
	PUSH rbx
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	MOV r15d, [rdx + 44]
	MOV r14d, [rdx + 40]
	MOV r13d, [rdx + 36]
	MOV r12d, [rdx + 32]
	MOV r11d, [rdx + 28]
	MOV r10d, [rdx + 24]
	MOV r9d, [rdx + 20]
	MOV r8d, [rdx + 16]
	MOV ecx, [rdx + 8]
	MOV ebx, [rdx + 4]
	MOV eax, [rdx]
	MOV edx, [rdx + 12]
	
	.align 32
1:
	MOV eax, [rsi + rax*4]
	MOV ebx, [rsi + rbx*4]
	MOV ecx, [rsi + rcx*4]
	MOV edx, [rsi + rdx*4]
	MOV r8d, [rsi + r8*4]
	MOV r9d, [rsi + r9*4]
	MOV r10d, [rsi + r10*4]
	MOV r11d, [rsi + r11*4]
	MOV r12d, [rsi + r12*4]
	MOV r13d, [rsi + r13*4]
	MOV r14d, [rsi + r14*4]
	MOV r15d, [rsi + r15*4]
	SUB rdi, 1
	JNZ 1b

2:
	POP r15
	POP r14
	POP r13
	POP r12
	POP rbx
	RET
END_X86_FUNCTION uBench_ReadMemory_12PointerChasing_MOV
