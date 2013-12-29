section .text progbits alloc exec nowrite align=32

%macro XORSHIFT_29 2
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 4
	XOR %1, %2
	
	AND %1, (1<<29) - 1
	
	MOV %2, %1
	SHR %1, 5
	XOR %1, %2
%endmacro

%macro XORSHIFT_28 2
	MOV %2, %1
	SHR %1, 1
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 3
	XOR %1, %2
	
	AND %1, (1<<28) - 1
	
	MOV %2, %1
	SHR %1, 9
	XOR %1, %2
%endmacro

%macro XORSHIFT_27 2
	MOV %2, %1
	SHR %1, 1
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 2
	XOR %1, %2
	
	AND %1, (1<<27) - 1
	
	MOV %2, %1
	SHR %1, 6
	XOR %1, %2
%endmacro

%macro XORSHIFT_26 2
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 5
	XOR %1, %2
	
	AND %1, (1<<26) - 1
	
	MOV %2, %1
	SHR %1, 3
	XOR %1, %2
%endmacro

%macro XORSHIFT_25 2
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 1
	XOR %1, %2
	
	AND %1, (1<<25) - 1
	
	MOV %2, %1
	SHR %1, 6
	XOR %1, %2
%endmacro

%macro XORSHIFT_24 2
	MOV %2, %1
	SHR %1, 6
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 1
	XOR %1, %2
	
	AND %1, (1<<24) - 1
	
	MOV %2, %1
	SHR %1, 9
	XOR %1, %2
%endmacro

%macro XORSHIFT_23 2
	MOV %2, %1
	SHR %1, 7
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 8
	XOR %1, %2
	
	AND %1, (1<<23) - 1
	
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
%endmacro

%macro XORSHIFT_22 2
	MOV %2, %1
	SHR %1, 5
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 3
	XOR %1, %2
	
	AND %1, (1<<22) - 1
	
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
%endmacro

%macro XORSHIFT_21 2
	MOV %2, %1
	SHR %1, 4
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 3
	XOR %1, %2
	
	AND %1, (1<<21) - 1
	
	MOV %2, %1
	SHR %1, 6
	XOR %1, %2
%endmacro

%macro XORSHIFT_20 2
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 1
	XOR %1, %2
	
	AND %1, (1<<20) - 1
	
	MOV %2, %1
	SHR %1, 9
	XOR %1, %2
%endmacro

%macro XORSHIFT_19 2
	MOV %2, %1
	SHR %1, 9
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 6
	XOR %1, %2
	
	AND %1, (1<<19) - 1
	
	MOV %2, %1
	SHR %1, 4
	XOR %1, %2
%endmacro

%macro XORSHIFT_18 2
	MOV %2, %1
	SHR %1, 3
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 9
	XOR %1, %2
	
	AND %1, (1<<18) - 1
	
	MOV %2, %1
	SHR %1, 8
	XOR %1, %2
%endmacro

%macro XORSHIFT_17 2
	MOV %2, %1
	SHR %1, 9
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 6
	XOR %1, %2
	
	AND %1, (1<<17) - 1
	
	MOV %2, %1
	SHR %1, 1
	XOR %1, %2
%endmacro

%macro XORSHIFT_16 2
	MOV %2, %1
	SHR %1, 8
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 9
	XOR %1, %2
	
	AND %1, (1<<16) - 1
	
	MOV %2, %1
	SHR %1, 5
	XOR %1, %2
%endmacro

%macro XORSHIFT_15 2
	MOV %2, %1
	SHR %1, 4
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 1
	XOR %1, %2
	
	AND %1, (1<<15) - 1
	
	MOV %2, %1
	SHR %1, 9
	XOR %1, %2
%endmacro

%macro XORSHIFT_14 2
	MOV %2, %1
	SHR %1, 9
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 7
	XOR %1, %2
	
	AND %1, (1<<14) - 1
	
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
%endmacro

%macro XORSHIFT_13 2
	MOV %2, %1
	SHR %1, 8
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 5
	XOR %1, %2
	
	AND %1, (1<<13) - 1
	
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
%endmacro

%macro XORSHIFT_12 2
	MOV %2, %1
	SHR %1, 7
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 5
	XOR %1, %2
	
	AND %1, (1<<12) - 1
	
	MOV %2, %1
	SHR %1, 9
	XOR %1, %2
%endmacro

%macro XORSHIFT_11 2
	MOV %2, %1
	SHR %1, 6
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 4
	XOR %1, %2
	
	AND %1, (1<<11) - 1
	
	MOV %2, %1
	SHR %1, 7
	XOR %1, %2
%endmacro

%macro XORSHIFT_10 2
	MOV %2, %1
	SHR %1, 5
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 1
	XOR %1, %2
	
	AND %1, (1<<10) - 1
	
	MOV %2, %1
	SHR %1, 3
	XOR %1, %2
%endmacro

%macro XORSHIFT_9 2
	MOV %2, %1
	SHR %1, 8
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 4
	XOR %1, %2
	
	AND %1, (1<<9) - 1
	
	MOV %2, %1
	SHR %1, 5
	XOR %1, %2
%endmacro

%macro XORSHIFT_8 2
	MOV %2, %1
	SHR %1, 3
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 1
	XOR %1, %2
	
	AND %1, (1<<8) - 1
	
	MOV %2, %1
	SHR %1, 5
	XOR %1, %2
%endmacro

%macro XORSHIFT_7 2
	MOV %2, %1
	SHR %1, 5
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 2
	XOR %1, %2
	
	AND %1, (1<<7) - 1
	
	MOV %2, %1
	SHR %1, 6
	XOR %1, %2
%endmacro

%macro XORSHIFT_6 2
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 3
	XOR %1, %2
	
	AND %1, (1<<6) - 1
	
	MOV %2, %1
	SHR %1, 1
	XOR %1, %2
%endmacro

%macro XORSHIFT_5 2
	MOV %2, %1
	SHR %1, 4
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 3
	XOR %1, %2
	
	AND %1, (1<<5) - 1
	
	MOV %2, %1
	SHR %1, 1
	XOR %1, %2
%endmacro

%macro XORSHIFT_4 2
	MOV %2, %1
	SHR %1, 3
	XOR %1, %2
	
	MOV %2, %1
	SHL %1, 1
	XOR %1, %2
	
	AND %1, (1<<4) - 1
	
	MOV %2, %1
	SHR %1, 2
	XOR %1, %2
%endmacro

global uBench_UpdateMemory_RandomAtomic30_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic30_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 25-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic30_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic30_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 24-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic30_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic30_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 23-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic29_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic29_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 24-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic29_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic29_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 23-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic29_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic29_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 22-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic28_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic28_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 23-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic28_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic28_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 22-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic28_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic28_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 21-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic27_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic27_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 22-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic27_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic27_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 21-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic27_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic27_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 20-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic26_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic26_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 21-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic26_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic26_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 20-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic26_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic26_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 19-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic25_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic25_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 20-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic25_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic25_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 19-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic25_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic25_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 18-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic24_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic24_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 19-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic24_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic24_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 18-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic24_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic24_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 17-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic23_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic23_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 18-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic23_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic23_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 17-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic23_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic23_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 16-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic22_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic22_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 17-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic22_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic22_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 16-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic22_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic22_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 15-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic21_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic21_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 16-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic21_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic21_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 15-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic21_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic21_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 14-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic20_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic20_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 15-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic20_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic20_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 14-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic20_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic20_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 13-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic19_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic19_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 14-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic19_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic19_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 13-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic19_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic19_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 12-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic18_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic18_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 13-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic18_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic18_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 12-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic18_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic18_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 11-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic17_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic17_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 12-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic17_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic17_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 11-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic17_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic17_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 10-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic16_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic16_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 11-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic16_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic16_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 10-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic16_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic16_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 9-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic15_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic15_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 10-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic15_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic15_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 9-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic15_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic15_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 8-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic14_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic14_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 9-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic14_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic14_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 8-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic14_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic14_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 7-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic13_INC_Stride32
align 32
uBench_UpdateMemory_RandomAtomic13_INC_Stride32:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 8-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	LOCK INC dword [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic13_INC_Stride64
align 32
uBench_UpdateMemory_RandomAtomic13_INC_Stride64:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 7-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 2]
	CMP esi, 1
	JE .finish

	XORSHIFT_7 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 2]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_UpdateMemory_RandomAtomic13_INC_Stride128
align 32
uBench_UpdateMemory_RandomAtomic13_INC_Stride128:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	; 6-bit XorShift
	MOV esi, 1
	ALIGN 32
.loop:
	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r8d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 4]
	CMP esi, 1
	JE .finish

	XORSHIFT_6 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 4]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

