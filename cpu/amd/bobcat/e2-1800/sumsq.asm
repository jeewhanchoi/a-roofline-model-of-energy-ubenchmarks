section .text align=64
global sumsq
global sumsqf

sumsq:
	SUB rsi, 10
	XORPS xmm0, xmm0
	XORPS xmm1, xmm1
	XORPS xmm2, xmm2
	XORPS xmm3, xmm3
	XORPS xmm4, xmm4
	XORPS xmm5, xmm5
	XORPS xmm6, xmm6
	XORPS xmm7, xmm7
	XORPS xmm8, xmm8
	XORPS xmm9, xmm9
	
	JB .restore
	ALIGN 32
.process_by_10:
	MOVAPS xmm10, [rdi]
	MOVAPS xmm11, [rdi + 16]
	MOVAPS xmm12, [rdi + 32]
	MOVAPS xmm13, [rdi + 48]
	MOVAPS xmm14, [rdi + 64]

%rep MAD_PER_ELEMENT
	ADDPD xmm0, xmm10
	MULPD xmm10, xmm10
	ADDPD xmm5, xmm10

	ADDPD xmm1, xmm11
	MULPD xmm11, xmm11
	ADDPD xmm6, xmm11

	ADDPD xmm2, xmm12
	MULPD xmm12, xmm12
	ADDPD xmm7, xmm12

	ADDPD xmm3, xmm13
	MULPD xmm13, xmm13
	ADDPD xmm8, xmm13

	ADDPD xmm4, xmm14
	MULPD xmm14, xmm14
	ADDPD xmm9, xmm14
%endrep
	ADD rdi, 80
	SUB rsi, 10
	JAE .process_by_10
.restore:
	ADD rsi, 10
	JZ .finish
	INT 3
.finish:
	RET

sumsqf:
	XORPS xmm8, xmm8
	XORPS xmm9, xmm9
	XORPS xmm10, xmm10
	XORPS xmm11, xmm11
	XORPS xmm12, xmm12
	XORPS xmm13, xmm13
	XORPS xmm14, xmm14
	XORPS xmm15, xmm15

	SUB rsi, 32
	
	JB .restore
	ALIGN 32
.process_by_32:
	MOVAPS xmm0, [rdi]
	MOVAPS xmm1, [rdi + 16]
	MOVAPS xmm2, [rdi + 32]
	MOVAPS xmm3, [rdi + 48]
	MOVAPS xmm4, [rdi + 64]
	MOVAPS xmm5, [rdi + 80]
	MOVAPS xmm6, [rdi + 96]
	MOVAPS xmm7, [rdi + 112]

%rep MAD_PER_ELEMENT
	MULPS xmm0, xmm0
	ADDPS xmm8, xmm0
	MULPS xmm1, xmm1
	ADDPS xmm9, xmm1
	MULPS xmm2, xmm2
	ADDPS xmm10, xmm2
	MULPS xmm3, xmm3
	ADDPS xmm11, xmm3
	MULPS xmm4, xmm4
	ADDPS xmm12, xmm4
	MULPS xmm5, xmm5
	ADDPS xmm13, xmm5
	MULPS xmm6, xmm6
	ADDPS xmm14, xmm6
	MULPS xmm7, xmm7
	ADDPS xmm15, xmm7
%endrep
	SUB rdi, -128
	SUB rsi, 32
	JAE .process_by_32
.restore:
	ADD rsi, 32
	JZ .finish
	INT 3
.finish:
	RET
