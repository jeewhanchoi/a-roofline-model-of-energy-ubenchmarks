section .text progbits alloc exec nowrite align=32

global uBench_ReadMemory_Sequential_AVX_NoPrefetch
align 32
uBench_ReadMemory_Sequential_AVX_NoPrefetch:
	MOV edx, 256
	SUB rsi, rdx
	JB .restore
	SUB rdi, -128
	align 32
.process_256:
	VMOVAPS ymm0, [byte rdi - 128]    ; 5 bytes
	VMOVAPS ymm1, [byte rdi - 96]     ; 5 bytes
	ds VMOVAPS ymm2, [byte rdi - 64]  ; 6 bytes
	
	VMOVAPS ymm3, [byte rdi - 32]     ; 5 bytes
	VMOVAPS ymm4, [byte rdi + 0]      ; 5 bytes
	ds VMOVAPS ymm5, [byte rdi + 32]  ; 6 bytes
	
	VMOVAPS ymm6, [byte rdi + 64]     ; 5 bytes
	VMOVAPS ymm7, [byte rdi + 96]     ; 5 bytes
	ADD rdi, rdx                      ; 3 bytes
	SUB rsi, rdx                      ; 3 bytes

	JAE .process_256                  ; 2 bytes
.restore:
	ADD rdi, -128
	ADD rsi, rdx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_Sequential_AVX_Prefetch32
align 32
uBench_ReadMemory_Sequential_AVX_Prefetch32:
	MOV edx, 256
	MOV ecx, 1536 + 128
	SUB rsi, rdx
	JB .restore
	SUB rdi, -128
	align 32
.process_256:
	PREFETCHNTA [byte rdi + rcx - 128]   ; 5 bytes
	VMOVAPS ymm0, [byte rdi - 128]       ; 5 bytes
	ds PREFETCHNTA [byte rdi + rcx - 96] ; 6 bytes
	
	VMOVAPS ymm1, [byte rdi - 96]        ; 5 bytes
	PREFETCHNTA [byte rdi + rcx - 64]    ; 5 bytes
	ds VMOVAPS ymm2, [byte rdi - 64]     ; 6 bytes
	
	PREFETCHNTA [byte rdi + rcx - 32]    ; 5 bytes
	VMOVAPS ymm3, [byte rdi - 32]        ; 5 bytes
	ds PREFETCHNTA [byte rdi + rcx + 0]  ; 6 bytes

	VMOVAPS ymm4, [byte rdi + 0]         ; 5 bytes
	PREFETCHNTA [byte rdi + rcx + 32]    ; 5 bytes
	ds VMOVAPS ymm5, [byte rdi + 32]     ; 6 bytes
	
	PREFETCHNTA [byte rdi + rcx + 64]    ; 5 bytes
	VMOVAPS ymm6, [byte rdi + 64]        ; 5 bytes
	ds PREFETCHNTA [byte rdi + rcx + 96] ; 6 bytes

	VMOVAPS ymm7, [byte rdi + 96]        ; 5 bytes
	ADD rdi, rdx                         ; 3 bytes
	SUB rsi, rdx                         ; 3 bytes
	JAE .process_256                     ; 2 bytes
.restore:
	ADD rdi, -128
	ADD rsi, rdx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_Sequential_AVX_Prefetch64
align 32
uBench_ReadMemory_Sequential_AVX_Prefetch64:
	MOV edx, 256
	MOV ecx, 1536 + 128
	SUB rsi, rdx
	JB .restore
	SUB rdi, -128
	align 32
.process_256:
	PREFETCHNTA [byte rdi + rcx * 1 - 128] ; 5 bytes
	VMOVAPS ymm0, [byte rdi - 128]         ; 5 bytes
	ds VMOVAPS ymm1, [byte rdi - 96]       ; 6 bytes

	PREFETCHNTA [byte rdi + rcx * 1 - 64]  ; 5 bytes
	VMOVAPS ymm2, [byte rdi - 64]          ; 5 bytes
	ds VMOVAPS ymm3, [byte rdi - 32]       ; 6 bytes

	PREFETCHNTA [byte rdi + rcx * 1 + 0]   ; 5 bytes
	VMOVAPS ymm4, [byte rdi + 0]           ; 5 bytes
	ds VMOVAPS ymm5, [byte rdi + 32]       ; 6 bytes
	
	PREFETCHNTA [byte rdi + rcx * 1 + 64]  ; 5 bytes
	VMOVAPS ymm6, [byte rdi + 64]          ; 5 bytes
	ds VMOVAPS ymm7, [byte rdi + 96]       ; 6 bytes

	ADD rdi, rdx                           ; 3 bytes
	SUB rsi, rdx                           ; 3 bytes
	JAE .process_256                       ; 2 bytes
.restore:
	ADD rdi, -128
	ADD rsi, rdx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_Sequential_AVX_Prefetch128
align 32
uBench_ReadMemory_Sequential_AVX_Prefetch128:
	MOV edx, 256
	MOV ecx, 1536 + 128
	SUB rsi, rdx
	JB .restore
	SUB rdi, -128
	align 32
.process_256:
	PREFETCHNTA [byte rdi + rcx * 1 - 128]   ; 5 bytes
	VMOVAPS ymm0, [byte rdi - 128]           ; 5 bytes
	ds VMOVAPS ymm1, [byte rdi - 96]         ; 6 bytes

	VMOVAPS ymm2, [byte rdi - 64]            ; 5 bytes
	VMOVAPS ymm3, [byte rdi - 32]            ; 5 bytes
	ds PREFETCHNTA [byte rdi + rcx * 1 + 0]  ; 6 bytes

	VMOVAPS ymm4, [byte rdi + 0]             ; 5 bytes
	VMOVAPS ymm5, [byte rdi + 32]            ; 5 bytes
	ds VMOVAPS ymm6, [byte rdi + 64]         ; 6 bytes

	VMOVAPS ymm7, [byte rdi + 96]            ; 5 bytes
	ADD rdi, rdx                             ; 3 bytes
	SUB rsi, rdx                             ; 3 bytes
	JAE .process_256                         ; 2 bytes
.restore:
	ADD rdi, -128
	ADD rsi, rdx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_Sequential_SSE41_NonTemporal
align 32
uBench_ReadMemory_Sequential_SSE41_NonTemporal:
	MOV edx, 256
	SUB rsi, rdx
	JB .restore
	SUB rdi, -128
	align 32
.process_256:
	MOVNTDQA xmm0, [dword rdi - 128]    ; 9 bytes
	ds MOVNTDQA xmm1, [byte rdi - 112]  ; 7 bytes

	MOVNTDQA xmm2, [dword rdi - 96]     ; 9 bytes
	ds MOVNTDQA xmm3, [byte rdi - 80]   ; 7 bytes

	MOVNTDQA xmm4, [dword rdi - 64]     ; 9 bytes
	ds MOVNTDQA xmm5, [byte rdi - 48]   ; 7 bytes

	MOVNTDQA xmm6, [dword rdi - 32]     ; 9 bytes
	ds MOVNTDQA xmm7, [byte rdi - 16]   ; 7 bytes

	MOVNTDQA xmm8, [dword rdi + 0]      ; 9 bytes
	ds MOVNTDQA xmm9, [byte rdi + 16]   ; 7 bytes

	MOVNTDQA xmm10, [dword rdi + 32]    ; 9 bytes
	ds MOVNTDQA xmm11, [byte rdi + 48]  ; 7 bytes

	MOVNTDQA xmm12, [dword rdi + 64]    ; 9 bytes
	ds MOVNTDQA xmm13, [byte rdi + 80]  ; 7 bytes

	MOVNTDQA xmm14, [dword rdi + 96]    ; 9 bytes
	ds MOVNTDQA xmm15, [byte rdi + 112] ; 7 bytes

	ADD rdi, rdx                        ; 3 bytes
	SUB rsi, rdx                        ; 3 bytes
	JAE .process_256                    ; 2 bytes
.restore:
	ADD rdi, -128
	ADD rsi, rdx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_Sequential_SSE_NoPrefetch
align 32
uBench_ReadMemory_Sequential_SSE_NoPrefetch:
	MOV edx, 256
	SUB rsi, rdx
	JB .restore
	SUB rdi, -128
	align 32
.process_256:
	MOVAPS xmm0, [byte rdi - 128]    ; 4 bytes
	MOVAPS xmm1, [byte rdi - 112]    ; 4 bytes
	MOVAPS xmm2, [byte rdi - 96]     ; 4 bytes
	MOVAPS xmm3, [byte rdi - 80]     ; 4 bytes

	MOVAPS xmm4, [byte rdi - 64]     ; 4 bytes
	MOVAPS xmm5, [byte rdi - 48]     ; 4 bytes
	MOVAPS xmm6, [byte rdi - 32]     ; 4 bytes
	MOVAPS xmm7, [byte rdi - 16]     ; 4 bytes

	MOVAPS xmm8,  [byte rdi + 0]     ; 5 bytes
	MOVAPS xmm9,  [byte rdi + 16]    ; 5 bytes
	ds MOVAPS xmm10, [byte rdi + 32] ; 6 bytes
	
	MOVAPS xmm11, [byte rdi + 48]    ; 5 bytes
	MOVAPS xmm12, [byte rdi + 64]    ; 5 bytes
	ds MOVAPS xmm13, [byte rdi + 80] ; 6 bytes
	
	MOVAPS xmm14, [byte rdi + 96]    ; 5 bytes
	MOVAPS xmm15, [byte rdi + 112]   ; 5 bytes
	ADD rdi, rdx                     ; 3 bytes
	SUB rsi, rdx                     ; 3 bytes

	JAE .process_256                 ; 2 bytes
.restore:
	ADD rdi, -128
	ADD rsi, rdx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_Sequential_SSE_Prefetch32
align 32
uBench_ReadMemory_Sequential_SSE_Prefetch32:
	MOV edx, 256
	MOV ecx, 1536 + 128
	SUB rsi, rdx
	JB .restore
	SUB rdi, -128
	align 32
.process_256:
	PREFETCHNTA [dword rdi + rcx - 128] ; 8 bytes
	MOVAPS xmm0, [byte rdi - 128]       ; 4 bytes
	MOVAPS xmm1, [byte rdi - 112]       ; 4 bytes

	PREFETCHNTA [dword rdi + rcx - 96]  ; 8 bytes
	MOVAPS xmm2, [byte rdi - 96]        ; 4 bytes
	MOVAPS xmm3, [byte rdi - 80]        ; 4 bytes

	PREFETCHNTA [dword rdi + rcx - 64]  ; 8 bytes
	MOVAPS xmm4, [byte rdi - 64]        ; 4 bytes
	MOVAPS xmm5, [byte rdi - 48]        ; 4 bytes

	PREFETCHNTA [dword rdi + rcx - 32]  ; 8 bytes
	MOVAPS xmm6, [byte rdi - 32]        ; 4 bytes
	MOVAPS xmm7, [byte rdi - 16]        ; 4 bytes

	PREFETCHNTA [byte rdi + rcx + 0]   ; 5 bytes
	MOVAPS xmm8,  [byte rdi + 0]       ; 5 bytes
	ds MOVAPS xmm9,  [byte rdi + 16]   ; 6 bytes
	
	PREFETCHNTA [byte rdi + rcx + 32]  ; 5 bytes
	MOVAPS xmm10, [byte rdi + 32]      ; 5 bytes
	ds MOVAPS xmm11, [byte rdi + 48]   ; 6 bytes
	
	PREFETCHNTA [byte rdi + rcx + 64]  ; 5 bytes
	MOVAPS xmm12, [byte rdi + 64]      ; 5 bytes
	ds MOVAPS xmm13, [byte rdi + 80]   ; 6 bytes
	
	PREFETCHNTA [byte rdi + rcx + 96]  ; 5 bytes
	MOVAPS xmm14, [byte rdi + 96]      ; 5 bytes
	ds MOVAPS xmm15, [byte rdi + 112]  ; 6 bytes

	ADD rdi, rdx                       ; 3 bytes
	SUB rsi, rdx                       ; 3 bytes

	JAE .process_256                 ; 2 bytes
.restore:
	ADD rdi, -128
	ADD rsi, rdx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_Sequential_SSE_Prefetch64
align 32
uBench_ReadMemory_Sequential_SSE_Prefetch64:
	MOV edx, 256
	MOV ecx, 1536 + 128
	SUB rsi, rdx
	JB .restore
	SUB rdi, -128
	align 32
.process_256:
	PREFETCHNTA [dword rdi + rcx - 128]  ; 8 bytes
	MOVAPS xmm0, [byte rdi - 128]        ; 4 bytes
	MOVAPS xmm1, [byte rdi - 112]        ; 4 bytes

	MOVAPS xmm2, [byte rdi - 96]         ; 4 bytes
	MOVAPS xmm3, [byte rdi - 80]         ; 4 bytes
	PREFETCHNTA [dword rdi + rcx - 64]   ; 8 bytes

	MOVAPS xmm4, [byte rdi - 64]         ; 4 bytes
	MOVAPS xmm5, [byte rdi - 48]         ; 4 bytes
	MOVAPS xmm6, [byte rdi - 32]         ; 4 bytes
	MOVAPS xmm7, [byte rdi - 16]         ; 4 bytes

	PREFETCHNTA [byte rdi + rcx + 0]     ; 5 bytes
	MOVAPS xmm8,  [byte rdi + 0]         ; 5 bytes
	ds MOVAPS xmm9,  [byte rdi + 16]     ; 6 bytes
	
	MOVAPS xmm10, [byte rdi + 32]        ; 5 bytes
	MOVAPS xmm11, [byte rdi + 48]        ; 5 bytes
	ds PREFETCHNTA [byte rdi + rcx + 64] ; 6 bytes
	
	MOVAPS xmm12, [byte rdi + 64]        ; 5 bytes
	MOVAPS xmm13, [byte rdi + 80]        ; 5 bytes
	ds MOVAPS xmm14, [byte rdi + 96]     ; 6 bytes

	MOVAPS xmm15, [byte rdi + 112]       ; 5 bytes
	ADD rdi, rdx                         ; 3 bytes
	SUB rsi, rdx                         ; 3 bytes
	JAE .process_256                     ; 2 bytes
.restore:
	ADD rdi, -128
	ADD rsi, rdx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_Sequential_SSE_Prefetch128
align 32
uBench_ReadMemory_Sequential_SSE_Prefetch128:
	MOV edx, 256
	MOV ecx, 1536 + 128
	SUB rsi, rdx
	JB .restore
	SUB rdi, -128
	align 32
.process_256:
	PREFETCHNTA [dword rdi + rcx - 128]  ; 8 bytes
	MOVAPS xmm0, [byte rdi - 128]        ; 4 bytes
	MOVAPS xmm1, [byte rdi - 112]        ; 4 bytes

	MOVAPS xmm2, [byte rdi - 96]         ; 4 bytes
	MOVAPS xmm3, [byte rdi - 80]         ; 4 bytes
	MOVAPS xmm4, [byte rdi - 64]         ; 4 bytes
	MOVAPS xmm5, [byte rdi - 48]         ; 4 bytes

	MOVAPS xmm6, [byte rdi - 32]         ; 4 bytes
	MOVAPS xmm7, [byte rdi - 16]         ; 4 bytes
	PREFETCHNTA [dword rdi + rcx + 0]    ; 8 bytes
	
	MOVAPS xmm8,  [byte rdi + 0]         ; 5 bytes
	MOVAPS xmm9,  [byte rdi + 16]        ; 5 bytes
	ds MOVAPS xmm10, [byte rdi + 32]     ; 6 bytes

	MOVAPS xmm11, [byte rdi + 48]        ; 5 bytes
	MOVAPS xmm12, [byte rdi + 64]        ; 5 bytes
	ds MOVAPS xmm13, [byte rdi + 80]     ; 6 bytes

	MOVAPS xmm14, [byte rdi + 96]        ; 5 bytes
	MOVAPS xmm15, [byte rdi + 112]       ; 5 bytes
	ADD rdi, rdx                         ; 3 bytes
	SUB rsi, rdx                         ; 3 bytes

	JAE .process_256                     ; 2 bytes
.restore:
	ADD rdi, -128
	ADD rsi, rdx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_Sequential_MMX_NoPrefetch
align 32
uBench_ReadMemory_Sequential_MMX_NoPrefetch:
	SUB rsi, 64
	JB .restore
	align 32
.process_64:
	MOVQ mm0, [byte rdi + 0]    ; 4 bytes
	MOVQ mm1, [byte rdi + 8]    ; 4 bytes
	MOVQ mm2, [byte rdi + 16]   ; 4 bytes
	MOVQ mm3, [byte rdi + 24]   ; 4 bytes

	MOVQ mm4, [byte rdi + 32]   ; 4 bytes
	MOVQ mm5, [byte rdi + 40]   ; 4 bytes
	MOVQ mm6, [byte rdi + 48]   ; 4 bytes
	MOVQ mm7, [byte rdi + 56]   ; 4 bytes

	ADD rdi, 64                 ; 4 bytes
	SUB rsi, 64                 ; 4 bytes
	JAE .process_64             ; 2 bytes
.restore:
	ADD rsi, 64
	JE .finish
	INT 3
.finish:
	EMMS
	RET

global uBench_ReadMemory_SemiSequential_AVX_NoPrefetch
align 32
uBench_ReadMemory_SemiSequential_AVX_NoPrefetch:
	LEA rdx, [rdi + rsi * 1]
	MOV ecx, 256
	SUB rsi, rcx
	JB .restore
	align 32
.process_256:
	VMOVAPS ymm0, [byte rdi + 0]      ; 5 bytes
	VMOVAPS ymm1, [byte rdx - 32]     ; 5 bytes
	ds VMOVAPS ymm2, [byte rdi + 32]  ; 6 bytes

	VMOVAPS ymm3, [dword rdx - 64]    ; 5 bytes
	VMOVAPS ymm4, [byte rdi + 64]     ; 5 bytes
	ds VMOVAPS ymm5, [dword rdx - 96] ; 6 bytes

	VMOVAPS ymm6, [dword rdi + 96]    ; 8 bytes
	VMOVAPS ymm7, [dword rdx - 128]   ; 8 bytes

	SUB rdi, -128                     ; 4 bytes
	ADD rdx, -128                     ; 4 bytes

	SUB rsi, rcx                      ; 3 bytes
	JAE .process_256                  ; 2 bytes
.restore:
	ADD rsi, rcx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_SemiSequential_SSE_NoPrefetch
align 32
uBench_ReadMemory_SemiSequential_SSE_NoPrefetch:
	LEA rdx, [rdi + rsi * 1]
	MOV ecx, 128
	SUB rsi, rcx
	JB .restore
	align 32
.process_128:
	MOVAPS xmm0, [byte rdi + 0]      ; 4 bytes
	MOVAPS xmm1, [byte rdx - 16]     ; 4 bytes
	MOVAPS xmm2, [byte rdi + 16]     ; 4 bytes
	MOVAPS xmm3, [byte rdx - 32]     ; 4 bytes

	MOVAPS xmm4, [byte rdi + 32]     ; 4 bytes
	MOVAPS xmm5, [byte rdx - 48]     ; 4 bytes
	MOVAPS xmm6, [byte rdi + 48]     ; 4 bytes
	MOVAPS xmm7, [byte rdx - 64]     ; 4 bytes

	ADD rdi, 64                      ; 4 bytes
	SUB rdx, 64                      ; 4 bytes
	SUB rsi, rcx                     ; 3 bytes
	JAE .process_128                 ; 2 bytes
.restore:
	ADD rsi, rcx
	JE .finish
	INT 3
.finish:
	RET

global uBench_ReadMemory_SemiSequential_MMX_NoPrefetch
align 32
uBench_ReadMemory_SemiSequential_MMX_NoPrefetch:
	LEA rdx, [rdi + rsi * 1]
	SUB rsi, 64
	JB .restore
	align 32
.process_64:
	MOVQ mm0, [byte rdi + 0]    ; 4 bytes
	MOVQ mm1, [byte rdx - 8]    ; 4 bytes
	MOVQ mm2, [byte rdi + 8]    ; 4 bytes
	MOVQ mm3, [byte rdi - 16]   ; 4 bytes

	MOVQ mm4, [byte rdi + 16]   ; 4 bytes
	MOVQ mm5, [byte rdi - 24]   ; 4 bytes
	MOVQ mm6, [byte rdi + 24]   ; 4 bytes
	MOVQ mm7, [byte rdi - 32]   ; 4 bytes

	ADD rdi, 32                 ; 4 bytes
	SUB rdx, 32                 ; 4 bytes
	SUB rsi, 64                 ; 4 bytes
	JAE .process_64             ; 2 bytes
.restore:
	ADD rsi, 64
	JE .finish
	INT 3
.finish:
	EMMS
	RET
