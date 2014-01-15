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

.cpu cortex-a9
.fpu neon
.syntax unified


.section .text

BEGIN_ARM_FUNCTION stdev
	VMOV.I32 q6, #0
	VMOV.I32 q7, #0
	VMOV.I32 q8, #0
	VMOV.I32 q9, #0
	VMOV.I32 q10, #0
	VMOV.I32 q11, #0
	VMOV.I32 q12, #0
	VMOV.I32 q13, #0
	VMOV.I32 q14, #0

	SUBS r1, #12
	BCC Lrestore
.align 8
Lprocess_by_12:

.if MLA_PER_DOUBLE > 0
	VLDM r0!, {d6-d11}
	VMLA.F64 d12, d0, d0
	VADD.F64 d24, d24, d0

	VMLA.F64 d13, d1, d1
	VADD.F64 d25, d25, d1

	VMLA.F64 d14, d2, d2
	VADD.F64 d26, d26, d2

	VMLA.F64 d15, d3, d3
	VADD.F64 d27, d27, d3

	VMLA.F64 d16, d4, d4
	VADD.F64 d28, d28, d4

	VMLA.F64 d17, d5, d5
	VADD.F64 d29, d29, d5

	VLDM r0!, {d0-d5}
	VMLA.F64 d18, d6, d6
	VADD.F64 d24, d24, d6

	VMLA.F64 d19, d7, d7
	VADD.F64 d25, d25, d7

	VMLA.F64 d20, d8, d8
	VADD.F64 d26, d26, d8

	VMLA.F64 d21, d9, d9
	VADD.F64 d27, d27, d9

	VMLA.F64 d22, d10, d10
	VADD.F64 d28, d28, d10

	VMLA.F64 d23, d11, d11
	VADD.F64 d29, d29, d11

	.rept MLA_PER_DOUBLE
		VMLA.F64 d12, d0, d0
		VADD.F64 d24, d24, d0

		VMLA.F64 d13, d1, d1
		VADD.F64 d25, d25, d1

		VMLA.F64 d14, d2, d2
		VADD.F64 d26, d26, d2

		VMLA.F64 d15, d3, d3
		VADD.F64 d27, d27, d3

		VMLA.F64 d16, d4, d4
		VADD.F64 d28, d28, d4

		VMLA.F64 d17, d5, d5
		VADD.F64 d29, d29, d5

		VMLA.F64 d18, d6, d6
		VADD.F64 d24, d24, d6

		VMLA.F64 d19, d7, d7
		VADD.F64 d25, d25, d7

		VMLA.F64 d20, d8, d8
		VADD.F64 d26, d26, d8

		VMLA.F64 d21, d9, d9
		VADD.F64 d27, d27, d9

		VMLA.F64 d22, d10, d10
		VADD.F64 d28, d28, d10

		VMLA.F64 d23, d11, d11
		VADD.F64 d29, d29, d11
	.endr
.else
	VLDM r0!, {d0-d5}
	VLDM r0!, {d6-d11}
.endif

	SUBS r1, #12
	BCS Lprocess_by_12
Lrestore:
	ADDS r1, #12
	BEQ Lfinish
	BKPT
Lfinish:
	MOV pc, lr
END_ARM_FUNCTION stdev

BEGIN_ARM_FUNCTION stdevf
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

	VMLA.F32 q8, q0, q0
	VMLA.F32 q9, q1, q1
	VLD1.32 {d0-d3}, [r0:256]!
	VMLA.F32 q10, q2, q2
	VMLA.F32 q11, q3, q3
	VLD1.32 {d4-d7}, [r0:256]!
	VMLA.F32 q12, q4, q4
	VMLA.F32 q13, q5, q5
	VLD1.32 {d8-d11}, [r0:256]!
	VMLA.F32 q14, q6, q6
	VMLA.F32 q15, q7, q7
	VLD1.32 {d12-d15}, [r0:256]!

	.rept (MLA_PER_FLOAT - 1)
		VMLA.F32 q8, q0, q0
		VMLA.F32 q9, q1, q1
		VMLA.F32 q10, q2, q2
		VMLA.F32 q11, q3, q3
		VMLA.F32 q12, q4, q4
		VMLA.F32 q13, q5, q5
		VMLA.F32 q14, q6, q6
		VMLA.F32 q15, q7, q7
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
END_ARM_FUNCTION stdevf


