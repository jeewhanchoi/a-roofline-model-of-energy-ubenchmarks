section .text align=64
global sumsq
global sumsqf

sumsq:
	sub rdi, -128
	vzeroall
	mov eax, 256
	sub rsi, 32
	
	jb .restore
	align 32
.process_by_32:
	vmovapd ymm0, [rdi - 128]
	vmovapd ymm1, [rdi - 96]
	vmovapd ymm2, [rdi - 64]
	vmovapd ymm3, [rdi - 32]
	vmovapd ymm4, [rdi]
	vmovapd ymm5, [rdi + 32]
	vmovapd ymm6, [rdi + 64]
	vmovapd ymm7, [rdi + 96]


%rep MAD_PER_ELEMENT
	vmulpd ymm0, ymm0, ymm0
	vaddpd ymm8, ymm8, ymm0
	vmulpd ymm1, ymm1, ymm1
	vaddpd ymm9, ymm9, ymm1
	vmulpd ymm2, ymm2, ymm2
	vaddpd ymm10, ymm10, ymm2
	vmulpd ymm3, ymm3, ymm3
	vaddpd ymm11, ymm11, ymm3
	vmulpd ymm4, ymm4, ymm4
	vaddpd ymm12, ymm12, ymm4
	vmulpd ymm5, ymm5, ymm5
	vaddpd ymm13, ymm13, ymm5
	vmulpd ymm6, ymm6, ymm6
	vaddpd ymm14, ymm14, ymm6
	vmulpd ymm7, ymm7, ymm7
	vaddpd ymm15, ymm15, ymm7
%endrep
	add rdi, rax
	sub rsi, 32
	jae .process_by_32
.restore:
	add rsi, 32
	jz .finish
	int 3
.finish:
	vzeroupper
	ret

sumsqf:
	sub rdi, -128
	mov eax, 256
	vzeroall
	sub rsi, 64
	
	jb .restore
	align 32
.process_by_64:
	vmovaps ymm0, [rdi - 128]
	vmovaps ymm1, [rdi - 96]
	vmovaps ymm2, [rdi - 64]
	vmovaps ymm3, [rdi - 32]
	vmovaps ymm4, [rdi]
	vmovaps ymm5, [rdi + 32]
	vmovaps ymm6, [rdi + 64]
	vmovaps ymm7, [rdi + 96]


%rep MAD_PER_ELEMENT
	vmulps ymm0, ymm0, ymm0
	vaddps ymm8, ymm8, ymm0
	vmulps ymm1, ymm1, ymm1
	vaddps ymm9, ymm9, ymm1
	vmulps ymm2, ymm2, ymm2
	vaddps ymm10, ymm10, ymm2
	vmulps ymm3, ymm3, ymm3
	vaddps ymm11, ymm11, ymm3
	vmulps ymm4, ymm4, ymm4
	vaddps ymm12, ymm12, ymm4
	vmulps ymm5, ymm5, ymm5
	vaddps ymm13, ymm13, ymm5
	vmulps ymm6, ymm6, ymm6
	vaddps ymm14, ymm14, ymm6
	vmulps ymm7, ymm7, ymm7
	vaddps ymm15, ymm15, ymm7
%endrep
	add rdi, rax
	sub rsi, 64
	jae .process_by_64
.restore:
	add rsi, 64
	jz .finish
	int 3
.finish:
	vzeroupper
	ret
