.macro BEGIN_ARM_FUNCTION name
	.arm
	.globl \name
	.align 2
	.func \name
	\name:
.endm

.macro END_ARM_FUNCTION name
	.endfunc
	.type \name, %function
	.size \name, .-\name
.endm

.cpu cortex-a15
.fpu neon-vfpv4
.syntax unified


.section .text

BEGIN_ARM_FUNCTION sumsq
	VMOV.I32 q8, #0
	VMOV.I32 q9, #0
	VMOV.I32 q10, #0
	VMOV.I32 q11, #0
	VMOV.I32 q12, #0
	VMOV.I32 q13, #0
	VMOV.I32 q14, #0
	VMOV.I32 q15, #0

	SUBS r1, #16
	BCC Lrestore
.align 8
Lprocess_by_16:

.if MLA_PER_DOUBLE > 0
	VFMA.F64 d16, d0, d0
	VFMA.F64 d17, d1, d1
	VFMA.F64 d18, d2, d2
	VFMA.F64 d19, d3, d3
	VLD1.64 {d0-d3}, [r0, :256]!

	VFMA.F64 d20, d4, d4
	VFMA.F64 d21, d5, d5
	VFMA.F64 d22, d6, d6
	VFMA.F64 d23, d7, d7
	VLD1.64 {d4-d7}, [r0, :256]!

	VFMA.F64 d24, d8, d8
	VFMA.F64 d25, d9, d9
	VFMA.F64 d26, d10, d10
	VFMA.F64 d27, d11, d11
	VLD1.64 {d8-d11}, [r0, :256]!

	VFMA.F64 d28, d12, d12
	VFMA.F64 d29, d13, d13
	VFMA.F64 d30, d14, d14
	VFMA.F64 d31, d15, d15
	VLD1.64 {d12-d15}, [r0, :256]!

	.rept (MLA_PER_DOUBLE - 1)
		VFMA.F64 d16, d0, d0
		VFMA.F64 d17, d1, d1
		VFMA.F64 d18, d2, d2
		VFMA.F64 d19, d3, d3

		VFMA.F64 d20, d4, d4
		VFMA.F64 d21, d5, d5
		VFMA.F64 d22, d6, d6
		VFMA.F64 d23, d7, d7

		VFMA.F64 d24, d8, d8
		VFMA.F64 d25, d9, d9
		VFMA.F64 d26, d10, d10
		VFMA.F64 d27, d11, d11

		VFMA.F64 d28, d12, d12
		VFMA.F64 d29, d13, d13
		VFMA.F64 d30, d14, d14
		VFMA.F64 d31, d15, d15
	.endr
.else
	VLD1.64 {d0-d3}, [r0, :256]!
	VLD1.64 {d4-d7}, [r0, :256]!
	VLD1.64 {d8-d11}, [r0, :256]!
	VLD1.64 {d12-d15}, [r0, :256]!
.endif

	SUBS r1, #16
	BCS Lprocess_by_16
Lrestore:
	ADDS r1, #16
	BEQ Lfinish
	BKPT
Lfinish:
	MOV pc, lr
END_ARM_FUNCTION sumsq

BEGIN_ARM_FUNCTION sumsqf
	VMOV.I32 q8, #0
	VMOV.I32 q9, #0
	VMOV.I32 q10, #0
	VMOV.I32 q11, #0
	VMOV.I32 q12, #0
	VMOV.I32 q13, #0
	VMOV.I32 q14, #0
	VMOV.I32 q15, #0

	SUBS r1, #32
	BCC Lrestoref
.align 8
Lprocess_by_32f:

.if MLA_PER_FLOAT > 0
	VFMA.F32 q8, q0, q0
	VFMA.F32 q9, q1, q1
	VLD1.32 {d0-d3}, [r0:256]!
	VFMA.F32 q10, q2, q2
	VFMA.F32 q11, q3, q3
	VLD1.32 {d4-d7}, [r0:256]!
	VFMA.F32 q12, q4, q4
	VFMA.F32 q13, q5, q5
	VLD1.32 {d8-d11}, [r0:256]!
	VFMA.F32 q14, q6, q6
	VFMA.F32 q15, q7, q7
	VLD1.32 {d12-d15}, [r0:256]!

	.rept (MLA_PER_FLOAT - 1)
		VFMA.F32 q8, q0, q0
		VFMA.F32 q9, q1, q1
		VFMA.F32 q10, q2, q2
		VFMA.F32 q11, q3, q3
		VFMA.F32 q12, q4, q4
		VFMA.F32 q13, q5, q5
		VFMA.F32 q14, q6, q6
		VFMA.F32 q15, q7, q7
	.endr
.else
	VLD1.32 {d0-d3}, [r0:256]!
	VLD1.32 {d4-d7}, [r0:256]!
	VLD1.32 {d8-d11}, [r0:256]!
	VLD1.32 {d12-d15}, [r0:256]!
.endif

	SUBS r1, #32
	BCS Lprocess_by_32f
Lrestoref:
	ADDS r1, #32
	BEQ Lfinishf
	BKPT
Lfinishf:
	MOV pc, lr
END_ARM_FUNCTION sumsqf


