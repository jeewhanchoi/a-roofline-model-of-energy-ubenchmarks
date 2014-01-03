section .data align=64
	c1_f64         dd  1.0, 1.0
	c2_f64         dd  1.0, 1.0
	c3_f64         dd  1.0, 1.0
	c4_f64         dd  1.0, 1.0
	c5_f64         dd  1.0, 1.0
	c6_f64         dd  1.0, 1.0
	c7_f64         dd  1.0, 1.0
	c8_f64         dd  1.0, 1.0
	c9_f64         dd  1.0, 1.0
	c10_f64         dd  1.0, 1.0
	c11_f64         dd  1.0, 1.0
	c12_f64         dd  1.0, 1.0
	c13_f64         dd  1.0, 1.0
	c14_f64         dd  1.0, 1.0
	c15_f64         dd  1.0, 1.0
	c16_f64         dd  1.0, 1.0
	c17_f64         dd  1.0, 1.0
	c18_f64         dd  1.0, 1.0
	c19_f64         dd  1.0, 1.0
	c20_f64         dd  1.0, 1.0
	c21_f64         dd  1.0, 1.0
	c22_f64         dd  1.0, 1.0
	c23_f64         dd  1.0, 1.0
	c24_f64         dd  1.0, 1.0
	c25_f64         dd  1.0, 1.0
	c26_f64         dd  1.0, 1.0
	c27_f64         dd  1.0, 1.0
	c28_f64         dd  1.0, 1.0
	c29_f64         dd  1.0, 1.0
	c30_f64         dd  1.0, 1.0
	c31_f64         dd  1.0, 1.0
	c32_f64         dd  1.0, 1.0
	c33_f64         dd  1.0, 1.0
	c34_f64         dd  1.0, 1.0
	c35_f64         dd  1.0, 1.0
	c36_f64         dd  1.0, 1.0
	c37_f64         dd  1.0, 1.0
	c38_f64         dd  1.0, 1.0
	c39_f64         dd  1.0, 1.0
	c40_f64         dd  1.0, 1.0
	c41_f64         dd  1.0, 1.0
	c42_f64         dd  1.0, 1.0
	c43_f64         dd  1.0, 1.0
	c44_f64         dd  1.0, 1.0
	c45_f64         dd  1.0, 1.0
	c46_f64         dd  1.0, 1.0
	c47_f64         dd  1.0, 1.0
	c48_f64         dd  1.0, 1.0
	c49_f64         dd  1.0, 1.0
	c50_f64         dd  1.0, 1.0

section .text align=64
global polevl

polevl:
	lea rax, [c50_f64 - 120]
	sub rsp, 6*16 + 8
	sub rsi, 20
	
	jb .restore
	align 32
.process_by_20:
  prefetcht0 [rdi + 1408]
  prefetcht0 [rdi + 1472]
  prefetcht0 [rdi + 1472 + 64]
	movaps xmm0, [rdi]
	movaps xmm1, [rdi + 16]
	movaps xmm2, [rdi + 32]
	movaps xmm3, [rdi + 48]
	movaps xmm4, [rdi + 64]
	movaps xmm5, [rdi + 80]
	movaps xmm6, [rdi + 96]
	movaps xmm7, [rdi + 112]
	movaps xmm8, [rdi + 128]
	movaps xmm9, [rdi + 144]

%if POLYNOMIAL_POWER > 0
	movaps [rsp], xmm0
	movaps [rsp + 16], xmm1
	movaps [rsp + 32], xmm3
	movaps [rsp + 48], xmm5
	movaps [rsp + 64], xmm7
	movaps [rsp + 80], xmm9
	
	movddup xmm0, [rax + 120]
	movaps xmm1, xmm0
	movaps xmm3, xmm0
	movaps xmm5, xmm0
	
	movddup xmm7, [rax + 120]
	movaps xmm9, xmm0
	movaps xmm10, xmm0
	movaps xmm11, xmm0
	
	movddup xmm12, [rax + 120]
	movaps xmm13, xmm0
%endif


%assign iteration 1
%rep POLYNOMIAL_POWER
	movddup xmm15, [rax - iteration * 8 + 120]
	
	movaps xmm14, [rsp]
	mulps xmm0, xmm14
	addps xmm0, xmm15
	
	movaps xmm14, [rsp + 16]
	mulps xmm1, xmm14
	addps xmm1, xmm15
	
	mulps xmm3, xmm2
	addps xmm3, xmm15
	
	movaps xmm14, [rsp + 32]
	mulps xmm5, xmm14
	addps xmm5, xmm15
	
	mulps xmm7, xmm4
	addps xmm7, xmm15
	
	movaps xmm14, [rsp + 48]
	mulps xmm9, xmm14
	addps xmm9, xmm15
	
	mulps xmm10, xmm6
	addps xmm10, xmm15
	
	movaps xmm14, [rsp + 64]
	mulps xmm11, xmm14
	addps xmm11, xmm15
	
	mulps xmm12, xmm8
	addps xmm12, xmm14
	
	movaps xmm14, [rsp + 80]
	mulps xmm13, xmm14
	addps xmm13, xmm15
	%assign iteration iteration + 1 
%endrep
	
	add rdi, 160
	sub rsi, 20
	jae .process_by_20
.restore:
	add rsi, 20
	jz .finish
.finish:
	add rsp, 6*16 + 8
	ret



