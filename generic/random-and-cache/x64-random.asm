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

global uBench_ReadMemory_Random30_MOV_Stride32
align 32
uBench_ReadMemory_Random30_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_25 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random30_MOV_Stride64
align 32
uBench_ReadMemory_Random30_MOV_Stride64:
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

global uBench_ReadMemory_Random30_MOV_Stride128
align 32
uBench_ReadMemory_Random30_MOV_Stride128:
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

global uBench_ReadMemory_Random29_MOV_Stride32
align 32
uBench_ReadMemory_Random29_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_24 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random29_MOV_Stride64
align 32
uBench_ReadMemory_Random29_MOV_Stride64:
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

global uBench_ReadMemory_Random29_MOV_Stride128
align 32
uBench_ReadMemory_Random29_MOV_Stride128:
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

global uBench_ReadMemory_Random28_MOV_Stride32
align 32
uBench_ReadMemory_Random28_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_23 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random28_MOV_Stride64
align 32
uBench_ReadMemory_Random28_MOV_Stride64:
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

global uBench_ReadMemory_Random28_MOV_Stride128
align 32
uBench_ReadMemory_Random28_MOV_Stride128:
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

global uBench_ReadMemory_Random27_MOV_Stride32
align 32
uBench_ReadMemory_Random27_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_22 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random27_MOV_Stride64
align 32
uBench_ReadMemory_Random27_MOV_Stride64:
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

global uBench_ReadMemory_Random27_MOV_Stride128
align 32
uBench_ReadMemory_Random27_MOV_Stride128:
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

global uBench_ReadMemory_Random26_MOV_Stride32
align 32
uBench_ReadMemory_Random26_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_21 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random26_MOV_Stride64
align 32
uBench_ReadMemory_Random26_MOV_Stride64:
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

global uBench_ReadMemory_Random26_MOV_Stride128
align 32
uBench_ReadMemory_Random26_MOV_Stride128:
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

global uBench_ReadMemory_Random25_MOV_Stride32
align 32
uBench_ReadMemory_Random25_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_20 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random25_MOV_Stride64
align 32
uBench_ReadMemory_Random25_MOV_Stride64:
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

global uBench_ReadMemory_Random25_MOV_Stride128
align 32
uBench_ReadMemory_Random25_MOV_Stride128:
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

global uBench_ReadMemory_Random24_MOV_Stride32
align 32
uBench_ReadMemory_Random24_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_19 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random24_MOV_Stride64
align 32
uBench_ReadMemory_Random24_MOV_Stride64:
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

global uBench_ReadMemory_Random24_MOV_Stride128
align 32
uBench_ReadMemory_Random24_MOV_Stride128:
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

global uBench_ReadMemory_Random23_MOV_Stride32
align 32
uBench_ReadMemory_Random23_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_18 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random23_MOV_Stride64
align 32
uBench_ReadMemory_Random23_MOV_Stride64:
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

global uBench_ReadMemory_Random23_MOV_Stride128
align 32
uBench_ReadMemory_Random23_MOV_Stride128:
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

global uBench_ReadMemory_Random22_MOV_Stride32
align 32
uBench_ReadMemory_Random22_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_17 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random22_MOV_Stride64
align 32
uBench_ReadMemory_Random22_MOV_Stride64:
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

global uBench_ReadMemory_Random22_MOV_Stride128
align 32
uBench_ReadMemory_Random22_MOV_Stride128:
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

global uBench_ReadMemory_Random21_MOV_Stride32
align 32
uBench_ReadMemory_Random21_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_16 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random21_MOV_Stride64
align 32
uBench_ReadMemory_Random21_MOV_Stride64:
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

global uBench_ReadMemory_Random21_MOV_Stride128
align 32
uBench_ReadMemory_Random21_MOV_Stride128:
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

global uBench_ReadMemory_Random20_MOV_Stride32
align 32
uBench_ReadMemory_Random20_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_15 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random20_MOV_Stride64
align 32
uBench_ReadMemory_Random20_MOV_Stride64:
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

global uBench_ReadMemory_Random20_MOV_Stride128
align 32
uBench_ReadMemory_Random20_MOV_Stride128:
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

global uBench_ReadMemory_Random19_MOV_Stride32
align 32
uBench_ReadMemory_Random19_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_14 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random19_MOV_Stride64
align 32
uBench_ReadMemory_Random19_MOV_Stride64:
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

global uBench_ReadMemory_Random19_MOV_Stride128
align 32
uBench_ReadMemory_Random19_MOV_Stride128:
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

global uBench_ReadMemory_Random18_MOV_Stride32
align 32
uBench_ReadMemory_Random18_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_13 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random18_MOV_Stride64
align 32
uBench_ReadMemory_Random18_MOV_Stride64:
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

global uBench_ReadMemory_Random18_MOV_Stride128
align 32
uBench_ReadMemory_Random18_MOV_Stride128:
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

global uBench_ReadMemory_Random17_MOV_Stride32
align 32
uBench_ReadMemory_Random17_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_12 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random17_MOV_Stride64
align 32
uBench_ReadMemory_Random17_MOV_Stride64:
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

global uBench_ReadMemory_Random17_MOV_Stride128
align 32
uBench_ReadMemory_Random17_MOV_Stride128:
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

global uBench_ReadMemory_Random16_MOV_Stride32
align 32
uBench_ReadMemory_Random16_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_11 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random16_MOV_Stride64
align 32
uBench_ReadMemory_Random16_MOV_Stride64:
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

global uBench_ReadMemory_Random16_MOV_Stride128
align 32
uBench_ReadMemory_Random16_MOV_Stride128:
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

global uBench_ReadMemory_Random15_MOV_Stride32
align 32
uBench_ReadMemory_Random15_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_10 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random15_MOV_Stride64
align 32
uBench_ReadMemory_Random15_MOV_Stride64:
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

global uBench_ReadMemory_Random15_MOV_Stride128
align 32
uBench_ReadMemory_Random15_MOV_Stride128:
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

global uBench_ReadMemory_Random14_MOV_Stride32
align 32
uBench_ReadMemory_Random14_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_9 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random14_MOV_Stride64
align 32
uBench_ReadMemory_Random14_MOV_Stride64:
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

global uBench_ReadMemory_Random14_MOV_Stride128
align 32
uBench_ReadMemory_Random14_MOV_Stride128:
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

global uBench_ReadMemory_Random13_MOV_Stride32
align 32
uBench_ReadMemory_Random13_MOV_Stride32:
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
	MOV r8d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r9d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r10d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r11d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r12d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r13d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r14d, [rdi + rdx * 1]
	CMP esi, 1
	JE .finish

	XORSHIFT_8 esi, edx
	MOV edx, esi
	SHL edx, 5
	MOV r15d, [rdi + rdx * 1]
	CMP esi, 1
	JNE .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_Random13_MOV_Stride64
align 32
uBench_ReadMemory_Random13_MOV_Stride64:
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

global uBench_ReadMemory_Random13_MOV_Stride128
align 32
uBench_ReadMemory_Random13_MOV_Stride128:
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

global uBench_ReadMemory_2KRandom_MOV
align 32
uBench_ReadMemory_2KRandom_MOV:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	SUB rsi, 2048
	JB .restore
	ALIGN 32
.loop:
	ds MOV r8d, [dword rdi + 1120]
	ds MOV r9d, [dword rdi + 536]
	ds MOV r10d, [dword rdi + 1892]
	ds MOV r11d, [dword rdi + 932]
	ds MOV r12d, [dword rdi + 688]
	ds MOV r13d, [dword rdi + 512]
	ds MOV r14d, [dword rdi + 1344]
	ds MOV r15d, [dword rdi + 204]

	ds MOV r8d, [dword rdi + 752]
	ds MOV r9d, [dword rdi + 604]
	ds MOV r10d, [dword rdi + 876]
	ds MOV r11d, [dword rdi + 12]
	ds MOV r12d, [dword rdi + 1724]
	ds MOV r13d, [dword rdi + 1236]
	ds MOV r14d, [dword rdi + 920]
	ds MOV r15d, [dword rdi + 56]

	ds MOV r8d, [dword rdi + 1240]
	ds MOV r9d, [dword rdi + 940]
	ds MOV r10d, [dword rdi + 780]
	ds MOV r11d, [dword rdi + 252]
	ds MOV r12d, [dword rdi + 1512]
	ds MOV r13d, [dword rdi + 396]
	ds MOV r14d, [dword rdi + 1124]
	ds MOV r15d, [dword rdi + 1784]

	ds MOV r8d, [dword rdi + 720]
	ds MOV r9d, [dword rdi + 1096]
	ds MOV r10d, [dword rdi + 1324]
	ds MOV r11d, [dword rdi + 832]
	ds MOV r12d, [dword rdi + 740]
	ds MOV r13d, [dword rdi + 524]
	ds MOV r14d, [dword rdi + 220]
	ds MOV r15d, [dword rdi + 1860]

	ds MOV r8d, [dword rdi + 1980]
	ds MOV r9d, [dword rdi + 1920]
	ds MOV r10d, [dword rdi + 1268]
	ds MOV r11d, [dword rdi + 1488]
	ds MOV r12d, [dword rdi + 1352]
	ds MOV r13d, [dword rdi + 696]
	ds MOV r14d, [dword rdi + 648]
	ds MOV r15d, [dword rdi + 136]

	ds MOV r8d, [dword rdi + 888]
	ds MOV r9d, [dword rdi + 392]
	ds MOV r10d, [dword rdi + 4]
	ds MOV r11d, [dword rdi + 1056]
	ds MOV r12d, [dword rdi + 1108]
	ds MOV r13d, [dword rdi + 988]
	ds MOV r14d, [dword rdi + 1580]
	ds MOV r15d, [dword rdi + 712]

	ds MOV r8d, [dword rdi + 1068]
	ds MOV r9d, [dword rdi + 1816]
	ds MOV r10d, [dword rdi + 856]
	ds MOV r11d, [dword rdi + 148]
	ds MOV r12d, [dword rdi + 1060]
	ds MOV r13d, [dword rdi + 1828]
	ds MOV r14d, [dword rdi + 508]
	ds MOV r15d, [dword rdi + 1128]

	ds MOV r8d, [dword rdi + 1576]
	ds MOV r9d, [dword rdi + 1568]
	ds MOV r10d, [dword rdi + 312]
	ds MOV r11d, [dword rdi + 1188]
	ds MOV r12d, [dword rdi + 636]
	ds MOV r13d, [dword rdi + 180]
	ds MOV r14d, [dword rdi + 1404]
	ds MOV r15d, [dword rdi + 1944]

	ds MOV r8d, [dword rdi + 736]
	ds MOV r9d, [dword rdi + 1588]
	ds MOV r10d, [dword rdi + 52]
	ds MOV r11d, [dword rdi + 668]
	ds MOV r12d, [dword rdi + 140]
	ds MOV r13d, [dword rdi + 1652]
	ds MOV r14d, [dword rdi + 1284]
	ds MOV r15d, [dword rdi + 1604]

	ds MOV r8d, [dword rdi + 660]
	ds MOV r9d, [dword rdi + 1228]
	ds MOV r10d, [dword rdi + 1232]
	ds MOV r11d, [dword rdi + 1836]
	ds MOV r12d, [dword rdi + 1100]
	ds MOV r13d, [dword rdi + 1572]
	ds MOV r14d, [dword rdi + 1636]
	ds MOV r15d, [dword rdi + 800]

	ds MOV r8d, [dword rdi + 936]
	ds MOV r9d, [dword rdi + 664]
	ds MOV r10d, [dword rdi + 384]
	ds MOV r11d, [dword rdi + 1216]
	ds MOV r12d, [dword rdi + 1644]
	ds MOV r13d, [dword rdi + 1076]
	ds MOV r14d, [dword rdi + 1988]
	ds MOV r15d, [dword rdi + 1504]

	ds MOV r8d, [dword rdi + 44]
	ds MOV r9d, [dword rdi + 1520]
	ds MOV r10d, [dword rdi + 296]
	ds MOV r11d, [dword rdi + 956]
	ds MOV r12d, [dword rdi + 1664]
	ds MOV r13d, [dword rdi + 1688]
	ds MOV r14d, [dword rdi + 1628]
	ds MOV r15d, [dword rdi + 172]

	ds MOV r8d, [dword rdi + 104]
	ds MOV r9d, [dword rdi + 1372]
	ds MOV r10d, [dword rdi + 568]
	ds MOV r11d, [dword rdi + 500]
	ds MOV r12d, [dword rdi + 2040]
	ds MOV r13d, [dword rdi + 588]
	ds MOV r14d, [dword rdi + 1804]
	ds MOV r15d, [dword rdi + 548]

	ds MOV r8d, [dword rdi + 1112]
	ds MOV r9d, [dword rdi + 1704]
	ds MOV r10d, [dword rdi + 1252]
	ds MOV r11d, [dword rdi + 1084]
	ds MOV r12d, [dword rdi + 716]
	ds MOV r13d, [dword rdi + 1168]
	ds MOV r14d, [dword rdi + 1676]
	ds MOV r15d, [dword rdi + 1972]

	ds MOV r8d, [dword rdi + 600]
	ds MOV r9d, [dword rdi + 216]
	ds MOV r10d, [dword rdi + 892]
	ds MOV r11d, [dword rdi + 1280]
	ds MOV r12d, [dword rdi + 1292]
	ds MOV r13d, [dword rdi + 116]
	ds MOV r14d, [dword rdi + 1624]
	ds MOV r15d, [dword rdi + 704]

	ds MOV r8d, [dword rdi + 2020]
	ds MOV r9d, [dword rdi + 1464]
	ds MOV r10d, [dword rdi + 1760]
	ds MOV r11d, [dword rdi + 36]
	ds MOV r12d, [dword rdi + 1328]
	ds MOV r13d, [dword rdi + 1608]
	ds MOV r14d, [dword rdi + 1384]
	ds MOV r15d, [dword rdi + 1192]

	ds MOV r8d, [dword rdi + 412]
	ds MOV r9d, [dword rdi + 1136]
	ds MOV r10d, [dword rdi + 368]
	ds MOV r11d, [dword rdi + 1700]
	ds MOV r12d, [dword rdi + 48]
	ds MOV r13d, [dword rdi + 1764]
	ds MOV r14d, [dword rdi + 828]
	ds MOV r15d, [dword rdi + 1312]

	ds MOV r8d, [dword rdi + 1004]
	ds MOV r9d, [dword rdi + 1484]
	ds MOV r10d, [dword rdi + 1772]
	ds MOV r11d, [dword rdi + 80]
	ds MOV r12d, [dword rdi + 1092]
	ds MOV r13d, [dword rdi + 64]
	ds MOV r14d, [dword rdi + 1248]
	ds MOV r15d, [dword rdi + 1532]

	ds MOV r8d, [dword rdi + 1712]
	ds MOV r9d, [dword rdi + 1984]
	ds MOV r10d, [dword rdi + 8]
	ds MOV r11d, [dword rdi + 1380]
	ds MOV r12d, [dword rdi + 948]
	ds MOV r13d, [dword rdi + 228]
	ds MOV r14d, [dword rdi + 1080]
	ds MOV r15d, [dword rdi + 764]

	ds MOV r8d, [dword rdi + 1028]
	ds MOV r9d, [dword rdi + 1048]
	ds MOV r10d, [dword rdi + 1888]
	ds MOV r11d, [dword rdi + 1316]
	ds MOV r12d, [dword rdi + 1740]
	ds MOV r13d, [dword rdi + 248]
	ds MOV r14d, [dword rdi + 1356]
	ds MOV r15d, [dword rdi + 32]

	ds MOV r8d, [dword rdi + 432]
	ds MOV r9d, [dword rdi + 824]
	ds MOV r10d, [dword rdi + 544]
	ds MOV r11d, [dword rdi + 288]
	ds MOV r12d, [dword rdi + 1432]
	ds MOV r13d, [dword rdi + 1452]
	ds MOV r14d, [dword rdi + 1680]
	ds MOV r15d, [dword rdi + 232]

	ds MOV r8d, [dword rdi + 1692]
	ds MOV r9d, [dword rdi + 1848]
	ds MOV r10d, [dword rdi + 572]
	ds MOV r11d, [dword rdi + 124]
	ds MOV r12d, [dword rdi + 1224]
	ds MOV r13d, [dword rdi + 472]
	ds MOV r14d, [dword rdi + 1876]
	ds MOV r15d, [dword rdi + 388]

	ds MOV r8d, [dword rdi + 408]
	ds MOV r9d, [dword rdi + 1364]
	ds MOV r10d, [dword rdi + 724]
	ds MOV r11d, [dword rdi + 460]
	ds MOV r12d, [dword rdi + 352]
	ds MOV r13d, [dword rdi + 1412]
	ds MOV r14d, [dword rdi + 1396]
	ds MOV r15d, [dword rdi + 700]

	ds MOV r8d, [dword rdi + 632]
	ds MOV r9d, [dword rdi + 1868]
	ds MOV r10d, [dword rdi + 552]
	ds MOV r11d, [dword rdi + 776]
	ds MOV r12d, [dword rdi + 984]
	ds MOV r13d, [dword rdi + 520]
	ds MOV r14d, [dword rdi + 592]
	ds MOV r15d, [dword rdi + 184]

	ds MOV r8d, [dword rdi + 320]
	ds MOV r9d, [dword rdi + 968]
	ds MOV r10d, [dword rdi + 624]
	ds MOV r11d, [dword rdi + 1556]
	ds MOV r12d, [dword rdi + 1748]
	ds MOV r13d, [dword rdi + 928]
	ds MOV r14d, [dword rdi + 1656]
	ds MOV r15d, [dword rdi + 2004]

	ds MOV r8d, [dword rdi + 484]
	ds MOV r9d, [dword rdi + 1496]
	ds MOV r10d, [dword rdi + 1672]
	ds MOV r11d, [dword rdi + 1584]
	ds MOV r12d, [dword rdi + 1220]
	ds MOV r13d, [dword rdi + 1264]
	ds MOV r14d, [dword rdi + 372]
	ds MOV r15d, [dword rdi + 100]

	ds MOV r8d, [dword rdi + 76]
	ds MOV r9d, [dword rdi + 24]
	ds MOV r10d, [dword rdi + 616]
	ds MOV r11d, [dword rdi + 1340]
	ds MOV r12d, [dword rdi + 644]
	ds MOV r13d, [dword rdi + 820]
	ds MOV r14d, [dword rdi + 772]
	ds MOV r15d, [dword rdi + 812]

	ds MOV r8d, [dword rdi + 1544]
	ds MOV r9d, [dword rdi + 1668]
	ds MOV r10d, [dword rdi + 840]
	ds MOV r11d, [dword rdi + 652]
	ds MOV r12d, [dword rdi + 1156]
	ds MOV r13d, [dword rdi + 596]
	ds MOV r14d, [dword rdi + 768]
	ds MOV r15d, [dword rdi + 2008]

	ds MOV r8d, [dword rdi + 708]
	ds MOV r9d, [dword rdi + 1272]
	ds MOV r10d, [dword rdi + 1428]
	ds MOV r11d, [dword rdi + 1612]
	ds MOV r12d, [dword rdi + 452]
	ds MOV r13d, [dword rdi + 340]
	ds MOV r14d, [dword rdi + 156]
	ds MOV r15d, [dword rdi + 1368]

	ds MOV r8d, [dword rdi + 836]
	ds MOV r9d, [dword rdi + 1796]
	ds MOV r10d, [dword rdi + 272]
	ds MOV r11d, [dword rdi + 992]
	ds MOV r12d, [dword rdi + 0]
	ds MOV r13d, [dword rdi + 1148]
	ds MOV r14d, [dword rdi + 256]
	ds MOV r15d, [dword rdi + 1756]

	ds MOV r8d, [dword rdi + 400]
	ds MOV r9d, [dword rdi + 2036]
	ds MOV r10d, [dword rdi + 268]
	ds MOV r11d, [dword rdi + 1792]
	ds MOV r12d, [dword rdi + 200]
	ds MOV r13d, [dword rdi + 1992]
	ds MOV r14d, [dword rdi + 1616]
	ds MOV r15d, [dword rdi + 1952]

	ds MOV r8d, [dword rdi + 1020]
	ds MOV r9d, [dword rdi + 144]
	ds MOV r10d, [dword rdi + 92]
	ds MOV r11d, [dword rdi + 1596]
	ds MOV r12d, [dword rdi + 516]
	ds MOV r13d, [dword rdi + 728]
	ds MOV r14d, [dword rdi + 332]
	ds MOV r15d, [dword rdi + 1116]

	ds MOV r8d, [dword rdi + 420]
	ds MOV r9d, [dword rdi + 872]
	ds MOV r10d, [dword rdi + 1408]
	ds MOV r11d, [dword rdi + 1960]
	ds MOV r12d, [dword rdi + 1508]
	ds MOV r13d, [dword rdi + 1800]
	ds MOV r14d, [dword rdi + 1648]
	ds MOV r15d, [dword rdi + 1720]

	ds MOV r8d, [dword rdi + 1436]
	ds MOV r9d, [dword rdi + 1640]
	ds MOV r10d, [dword rdi + 264]
	ds MOV r11d, [dword rdi + 844]
	ds MOV r12d, [dword rdi + 1044]
	ds MOV r13d, [dword rdi + 276]
	ds MOV r14d, [dword rdi + 376]
	ds MOV r15d, [dword rdi + 528]

	ds MOV r8d, [dword rdi + 912]
	ds MOV r9d, [dword rdi + 1308]
	ds MOV r10d, [dword rdi + 1600]
	ds MOV r11d, [dword rdi + 996]
	ds MOV r12d, [dword rdi + 868]
	ds MOV r13d, [dword rdi + 1016]
	ds MOV r14d, [dword rdi + 112]
	ds MOV r15d, [dword rdi + 1528]

	ds MOV r8d, [dword rdi + 476]
	ds MOV r9d, [dword rdi + 428]
	ds MOV r10d, [dword rdi + 1180]
	ds MOV r11d, [dword rdi + 1736]
	ds MOV r12d, [dword rdi + 496]
	ds MOV r13d, [dword rdi + 1460]
	ds MOV r14d, [dword rdi + 244]
	ds MOV r15d, [dword rdi + 980]

	ds MOV r8d, [dword rdi + 904]
	ds MOV r9d, [dword rdi + 972]
	ds MOV r10d, [dword rdi + 2016]
	ds MOV r11d, [dword rdi + 208]
	ds MOV r12d, [dword rdi + 1296]
	ds MOV r13d, [dword rdi + 1480]
	ds MOV r14d, [dword rdi + 1660]
	ds MOV r15d, [dword rdi + 1008]

	ds MOV r8d, [dword rdi + 1592]
	ds MOV r9d, [dword rdi + 1144]
	ds MOV r10d, [dword rdi + 236]
	ds MOV r11d, [dword rdi + 1932]
	ds MOV r12d, [dword rdi + 436]
	ds MOV r13d, [dword rdi + 1064]
	ds MOV r14d, [dword rdi + 1392]
	ds MOV r15d, [dword rdi + 860]

	ds MOV r8d, [dword rdi + 96]
	ds MOV r9d, [dword rdi + 1808]
	ds MOV r10d, [dword rdi + 1812]
	ds MOV r11d, [dword rdi + 444]
	ds MOV r12d, [dword rdi + 1912]
	ds MOV r13d, [dword rdi + 1036]
	ds MOV r14d, [dword rdi + 976]
	ds MOV r15d, [dword rdi + 284]

	ds MOV r8d, [dword rdi + 896]
	ds MOV r9d, [dword rdi + 160]
	ds MOV r10d, [dword rdi + 1632]
	ds MOV r11d, [dword rdi + 908]
	ds MOV r12d, [dword rdi + 1472]
	ds MOV r13d, [dword rdi + 748]
	ds MOV r14d, [dword rdi + 1820]
	ds MOV r15d, [dword rdi + 1176]

	ds MOV r8d, [dword rdi + 2012]
	ds MOV r9d, [dword rdi + 1768]
	ds MOV r10d, [dword rdi + 564]
	ds MOV r11d, [dword rdi + 1164]
	ds MOV r12d, [dword rdi + 808]
	ds MOV r13d, [dword rdi + 1896]
	ds MOV r14d, [dword rdi + 456]
	ds MOV r15d, [dword rdi + 1052]

	ds MOV r8d, [dword rdi + 1684]
	ds MOV r9d, [dword rdi + 1948]
	ds MOV r10d, [dword rdi + 108]
	ds MOV r11d, [dword rdi + 1336]
	ds MOV r12d, [dword rdi + 656]
	ds MOV r13d, [dword rdi + 1088]
	ds MOV r14d, [dword rdi + 1928]
	ds MOV r15d, [dword rdi + 1936]

	ds MOV r8d, [dword rdi + 676]
	ds MOV r9d, [dword rdi + 448]
	ds MOV r10d, [dword rdi + 744]
	ds MOV r11d, [dword rdi + 344]
	ds MOV r12d, [dword rdi + 608]
	ds MOV r13d, [dword rdi + 1416]
	ds MOV r14d, [dword rdi + 1260]
	ds MOV r15d, [dword rdi + 1840]

	ds MOV r8d, [dword rdi + 304]
	ds MOV r9d, [dword rdi + 816]
	ds MOV r10d, [dword rdi + 916]
	ds MOV r11d, [dword rdi + 1708]
	ds MOV r12d, [dword rdi + 1172]
	ds MOV r13d, [dword rdi + 480]
	ds MOV r14d, [dword rdi + 532]
	ds MOV r15d, [dword rdi + 1072]

	ds MOV r8d, [dword rdi + 1212]
	ds MOV r9d, [dword rdi + 1360]
	ds MOV r10d, [dword rdi + 952]
	ds MOV r11d, [dword rdi + 1864]
	ds MOV r12d, [dword rdi + 620]
	ds MOV r13d, [dword rdi + 540]
	ds MOV r14d, [dword rdi + 1256]
	ds MOV r15d, [dword rdi + 1552]

	ds MOV r8d, [dword rdi + 692]
	ds MOV r9d, [dword rdi + 1304]
	ds MOV r10d, [dword rdi + 16]
	ds MOV r11d, [dword rdi + 584]
	ds MOV r12d, [dword rdi + 1492]
	ds MOV r13d, [dword rdi + 380]
	ds MOV r14d, [dword rdi + 504]
	ds MOV r15d, [dword rdi + 20]

	ds MOV r8d, [dword rdi + 280]
	ds MOV r9d, [dword rdi + 852]
	ds MOV r10d, [dword rdi + 804]
	ds MOV r11d, [dword rdi + 1300]
	ds MOV r12d, [dword rdi + 152]
	ds MOV r13d, [dword rdi + 1880]
	ds MOV r14d, [dword rdi + 188]
	ds MOV r15d, [dword rdi + 1152]

	ds MOV r8d, [dword rdi + 1872]
	ds MOV r9d, [dword rdi + 464]
	ds MOV r10d, [dword rdi + 640]
	ds MOV r11d, [dword rdi + 360]
	ds MOV r12d, [dword rdi + 1996]
	ds MOV r13d, [dword rdi + 1856]
	ds MOV r14d, [dword rdi + 1832]
	ds MOV r15d, [dword rdi + 192]

	ds MOV r8d, [dword rdi + 924]
	ds MOV r9d, [dword rdi + 1884]
	ds MOV r10d, [dword rdi + 1964]
	ds MOV r11d, [dword rdi + 1376]
	ds MOV r12d, [dword rdi + 1788]
	ds MOV r13d, [dword rdi + 1200]
	ds MOV r14d, [dword rdi + 1424]
	ds MOV r15d, [dword rdi + 440]

	ds MOV r8d, [dword rdi + 488]
	ds MOV r9d, [dword rdi + 628]
	ds MOV r10d, [dword rdi + 2028]
	ds MOV r11d, [dword rdi + 1140]
	ds MOV r12d, [dword rdi + 132]
	ds MOV r13d, [dword rdi + 60]
	ds MOV r14d, [dword rdi + 760]
	ds MOV r15d, [dword rdi + 364]

	ds MOV r8d, [dword rdi + 300]
	ds MOV r9d, [dword rdi + 964]
	ds MOV r10d, [dword rdi + 1032]
	ds MOV r11d, [dword rdi + 1940]
	ds MOV r12d, [dword rdi + 1348]
	ds MOV r13d, [dword rdi + 120]
	ds MOV r14d, [dword rdi + 196]
	ds MOV r15d, [dword rdi + 2024]

	ds MOV r8d, [dword rdi + 1752]
	ds MOV r9d, [dword rdi + 1012]
	ds MOV r10d, [dword rdi + 1968]
	ds MOV r11d, [dword rdi + 784]
	ds MOV r12d, [dword rdi + 260]
	ds MOV r13d, [dword rdi + 468]
	ds MOV r14d, [dword rdi + 40]
	ds MOV r15d, [dword rdi + 944]

	ds MOV r8d, [dword rdi + 68]
	ds MOV r9d, [dword rdi + 348]
	ds MOV r10d, [dword rdi + 1500]
	ds MOV r11d, [dword rdi + 176]
	ds MOV r12d, [dword rdi + 1564]
	ds MOV r13d, [dword rdi + 1780]
	ds MOV r14d, [dword rdi + 732]
	ds MOV r15d, [dword rdi + 1320]

	ds MOV r8d, [dword rdi + 1560]
	ds MOV r9d, [dword rdi + 328]
	ds MOV r10d, [dword rdi + 1204]
	ds MOV r11d, [dword rdi + 1524]
	ds MOV r12d, [dword rdi + 1908]
	ds MOV r13d, [dword rdi + 2032]
	ds MOV r14d, [dword rdi + 84]
	ds MOV r15d, [dword rdi + 164]

	ds MOV r8d, [dword rdi + 1548]
	ds MOV r9d, [dword rdi + 1400]
	ds MOV r10d, [dword rdi + 1448]
	ds MOV r11d, [dword rdi + 1104]
	ds MOV r12d, [dword rdi + 1160]
	ds MOV r13d, [dword rdi + 2000]
	ds MOV r14d, [dword rdi + 1332]
	ds MOV r15d, [dword rdi + 88]

	ds MOV r8d, [dword rdi + 1924]
	ds MOV r9d, [dword rdi + 560]
	ds MOV r10d, [dword rdi + 1276]
	ds MOV r11d, [dword rdi + 672]
	ds MOV r12d, [dword rdi + 316]
	ds MOV r13d, [dword rdi + 612]
	ds MOV r14d, [dword rdi + 2044]
	ds MOV r15d, [dword rdi + 1904]

	ds MOV r8d, [dword rdi + 576]
	ds MOV r9d, [dword rdi + 1468]
	ds MOV r10d, [dword rdi + 424]
	ds MOV r11d, [dword rdi + 1852]
	ds MOV r12d, [dword rdi + 1040]
	ds MOV r13d, [dword rdi + 1132]
	ds MOV r14d, [dword rdi + 884]
	ds MOV r15d, [dword rdi + 1776]

	ds MOV r8d, [dword rdi + 848]
	ds MOV r9d, [dword rdi + 336]
	ds MOV r10d, [dword rdi + 492]
	ds MOV r11d, [dword rdi + 792]
	ds MOV r12d, [dword rdi + 240]
	ds MOV r13d, [dword rdi + 556]
	ds MOV r14d, [dword rdi + 1440]
	ds MOV r15d, [dword rdi + 1420]

	ds MOV r8d, [dword rdi + 1844]
	ds MOV r9d, [dword rdi + 1696]
	ds MOV r10d, [dword rdi + 1728]
	ds MOV r11d, [dword rdi + 1244]
	ds MOV r12d, [dword rdi + 1208]
	ds MOV r13d, [dword rdi + 28]
	ds MOV r14d, [dword rdi + 1288]
	ds MOV r15d, [dword rdi + 224]

	ds MOV r8d, [dword rdi + 1444]
	ds MOV r9d, [dword rdi + 796]
	ds MOV r10d, [dword rdi + 756]
	ds MOV r11d, [dword rdi + 1476]
	ds MOV r12d, [dword rdi + 1956]
	ds MOV r13d, [dword rdi + 1536]
	ds MOV r14d, [dword rdi + 1540]
	ds MOV r15d, [dword rdi + 1456]

	ds MOV r8d, [dword rdi + 1976]
	ds MOV r9d, [dword rdi + 168]
	ds MOV r10d, [dword rdi + 880]
	ds MOV r11d, [dword rdi + 404]
	ds MOV r12d, [dword rdi + 864]
	ds MOV r13d, [dword rdi + 1388]
	ds MOV r14d, [dword rdi + 1024]
	ds MOV r15d, [dword rdi + 1732]

	ds MOV r8d, [dword rdi + 308]
	ds MOV r9d, [dword rdi + 1000]
	ds MOV r10d, [dword rdi + 684]
	ds MOV r11d, [dword rdi + 960]
	ds MOV r12d, [dword rdi + 1916]
	ds MOV r13d, [dword rdi + 580]
	ds MOV r14d, [dword rdi + 128]
	ds MOV r15d, [dword rdi + 1620]

	ds MOV r8d, [dword rdi + 1824]
	ds MOV r9d, [dword rdi + 900]
	ds MOV r10d, [dword rdi + 680]
	ds MOV r11d, [dword rdi + 1196]
	ds MOV r12d, [dword rdi + 356]
	ds MOV r13d, [dword rdi + 212]
	ds MOV r14d, [dword rdi + 324]
	ds MOV r15d, [dword rdi + 788]

	ds MOV r8d, [dword rdi + 1516]
	ds MOV r9d, [dword rdi + 72]
	ds MOV r10d, [dword rdi + 1716]
	ds MOV r11d, [dword rdi + 1900]
	ds MOV r12d, [dword rdi + 292]
	ds MOV r13d, [dword rdi + 416]
	ds MOV r14d, [dword rdi + 1184]
	ds MOV r15d, [dword rdi + 1744]

	ADD rdi, 2048
	SUB rsi, 2048
	JAE .loop

.restore:
	ADD rsi, 2048
	JZ .finish
	INT 3
	
.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_2KRandom_MOVSS
align 32
uBench_ReadMemory_2KRandom_MOVSS:
	PUSH r12
	PUSH r13
	PUSH r14
	PUSH r15
	
	SUB rsi, 2048
	JB .restore
	ALIGN 32
.loop:
	MOVSS xmm0, [dword rdi + 1120]
	MOVSS xmm1, [dword rdi + 536]
	MOVSS xmm2, [dword rdi + 1892]
	MOVSS xmm3, [dword rdi + 932]
	MOVSS xmm4, [dword rdi + 688]
	MOVSS xmm5, [dword rdi + 512]
	MOVSS xmm6, [dword rdi + 1344]
	MOVSS xmm7, [dword rdi + 204]

	MOVSS xmm0, [dword rdi + 752]
	MOVSS xmm1, [dword rdi + 604]
	MOVSS xmm2, [dword rdi + 876]
	MOVSS xmm3, [dword rdi + 12]
	MOVSS xmm4, [dword rdi + 1724]
	MOVSS xmm5, [dword rdi + 1236]
	MOVSS xmm6, [dword rdi + 920]
	MOVSS xmm7, [dword rdi + 56]

	MOVSS xmm0, [dword rdi + 1240]
	MOVSS xmm1, [dword rdi + 940]
	MOVSS xmm2, [dword rdi + 780]
	MOVSS xmm3, [dword rdi + 252]
	MOVSS xmm4, [dword rdi + 1512]
	MOVSS xmm5, [dword rdi + 396]
	MOVSS xmm6, [dword rdi + 1124]
	MOVSS xmm7, [dword rdi + 1784]

	MOVSS xmm0, [dword rdi + 720]
	MOVSS xmm1, [dword rdi + 1096]
	MOVSS xmm2, [dword rdi + 1324]
	MOVSS xmm3, [dword rdi + 832]
	MOVSS xmm4, [dword rdi + 740]
	MOVSS xmm5, [dword rdi + 524]
	MOVSS xmm6, [dword rdi + 220]
	MOVSS xmm7, [dword rdi + 1860]

	MOVSS xmm0, [dword rdi + 1980]
	MOVSS xmm1, [dword rdi + 1920]
	MOVSS xmm2, [dword rdi + 1268]
	MOVSS xmm3, [dword rdi + 1488]
	MOVSS xmm4, [dword rdi + 1352]
	MOVSS xmm5, [dword rdi + 696]
	MOVSS xmm6, [dword rdi + 648]
	MOVSS xmm7, [dword rdi + 136]

	MOVSS xmm0, [dword rdi + 888]
	MOVSS xmm1, [dword rdi + 392]
	MOVSS xmm2, [dword rdi + 4]
	MOVSS xmm3, [dword rdi + 1056]
	MOVSS xmm4, [dword rdi + 1108]
	MOVSS xmm5, [dword rdi + 988]
	MOVSS xmm6, [dword rdi + 1580]
	MOVSS xmm7, [dword rdi + 712]

	MOVSS xmm0, [dword rdi + 1068]
	MOVSS xmm1, [dword rdi + 1816]
	MOVSS xmm2, [dword rdi + 856]
	MOVSS xmm3, [dword rdi + 148]
	MOVSS xmm4, [dword rdi + 1060]
	MOVSS xmm5, [dword rdi + 1828]
	MOVSS xmm6, [dword rdi + 508]
	MOVSS xmm7, [dword rdi + 1128]

	MOVSS xmm0, [dword rdi + 1576]
	MOVSS xmm1, [dword rdi + 1568]
	MOVSS xmm2, [dword rdi + 312]
	MOVSS xmm3, [dword rdi + 1188]
	MOVSS xmm4, [dword rdi + 636]
	MOVSS xmm5, [dword rdi + 180]
	MOVSS xmm6, [dword rdi + 1404]
	MOVSS xmm7, [dword rdi + 1944]

	MOVSS xmm0, [dword rdi + 736]
	MOVSS xmm1, [dword rdi + 1588]
	MOVSS xmm2, [dword rdi + 52]
	MOVSS xmm3, [dword rdi + 668]
	MOVSS xmm4, [dword rdi + 140]
	MOVSS xmm5, [dword rdi + 1652]
	MOVSS xmm6, [dword rdi + 1284]
	MOVSS xmm7, [dword rdi + 1604]

	MOVSS xmm0, [dword rdi + 660]
	MOVSS xmm1, [dword rdi + 1228]
	MOVSS xmm2, [dword rdi + 1232]
	MOVSS xmm3, [dword rdi + 1836]
	MOVSS xmm4, [dword rdi + 1100]
	MOVSS xmm5, [dword rdi + 1572]
	MOVSS xmm6, [dword rdi + 1636]
	MOVSS xmm7, [dword rdi + 800]

	MOVSS xmm0, [dword rdi + 936]
	MOVSS xmm1, [dword rdi + 664]
	MOVSS xmm2, [dword rdi + 384]
	MOVSS xmm3, [dword rdi + 1216]
	MOVSS xmm4, [dword rdi + 1644]
	MOVSS xmm5, [dword rdi + 1076]
	MOVSS xmm6, [dword rdi + 1988]
	MOVSS xmm7, [dword rdi + 1504]

	MOVSS xmm0, [dword rdi + 44]
	MOVSS xmm1, [dword rdi + 1520]
	MOVSS xmm2, [dword rdi + 296]
	MOVSS xmm3, [dword rdi + 956]
	MOVSS xmm4, [dword rdi + 1664]
	MOVSS xmm5, [dword rdi + 1688]
	MOVSS xmm6, [dword rdi + 1628]
	MOVSS xmm7, [dword rdi + 172]

	MOVSS xmm0, [dword rdi + 104]
	MOVSS xmm1, [dword rdi + 1372]
	MOVSS xmm2, [dword rdi + 568]
	MOVSS xmm3, [dword rdi + 500]
	MOVSS xmm4, [dword rdi + 2040]
	MOVSS xmm5, [dword rdi + 588]
	MOVSS xmm6, [dword rdi + 1804]
	MOVSS xmm7, [dword rdi + 548]

	MOVSS xmm0, [dword rdi + 1112]
	MOVSS xmm1, [dword rdi + 1704]
	MOVSS xmm2, [dword rdi + 1252]
	MOVSS xmm3, [dword rdi + 1084]
	MOVSS xmm4, [dword rdi + 716]
	MOVSS xmm5, [dword rdi + 1168]
	MOVSS xmm6, [dword rdi + 1676]
	MOVSS xmm7, [dword rdi + 1972]

	MOVSS xmm0, [dword rdi + 600]
	MOVSS xmm1, [dword rdi + 216]
	MOVSS xmm2, [dword rdi + 892]
	MOVSS xmm3, [dword rdi + 1280]
	MOVSS xmm4, [dword rdi + 1292]
	MOVSS xmm5, [dword rdi + 116]
	MOVSS xmm6, [dword rdi + 1624]
	MOVSS xmm7, [dword rdi + 704]

	MOVSS xmm0, [dword rdi + 2020]
	MOVSS xmm1, [dword rdi + 1464]
	MOVSS xmm2, [dword rdi + 1760]
	MOVSS xmm3, [dword rdi + 36]
	MOVSS xmm4, [dword rdi + 1328]
	MOVSS xmm5, [dword rdi + 1608]
	MOVSS xmm6, [dword rdi + 1384]
	MOVSS xmm7, [dword rdi + 1192]

	MOVSS xmm0, [dword rdi + 412]
	MOVSS xmm1, [dword rdi + 1136]
	MOVSS xmm2, [dword rdi + 368]
	MOVSS xmm3, [dword rdi + 1700]
	MOVSS xmm4, [dword rdi + 48]
	MOVSS xmm5, [dword rdi + 1764]
	MOVSS xmm6, [dword rdi + 828]
	MOVSS xmm7, [dword rdi + 1312]

	MOVSS xmm0, [dword rdi + 1004]
	MOVSS xmm1, [dword rdi + 1484]
	MOVSS xmm2, [dword rdi + 1772]
	MOVSS xmm3, [dword rdi + 80]
	MOVSS xmm4, [dword rdi + 1092]
	MOVSS xmm5, [dword rdi + 64]
	MOVSS xmm6, [dword rdi + 1248]
	MOVSS xmm7, [dword rdi + 1532]

	MOVSS xmm0, [dword rdi + 1712]
	MOVSS xmm1, [dword rdi + 1984]
	MOVSS xmm2, [dword rdi + 8]
	MOVSS xmm3, [dword rdi + 1380]
	MOVSS xmm4, [dword rdi + 948]
	MOVSS xmm5, [dword rdi + 228]
	MOVSS xmm6, [dword rdi + 1080]
	MOVSS xmm7, [dword rdi + 764]

	MOVSS xmm0, [dword rdi + 1028]
	MOVSS xmm1, [dword rdi + 1048]
	MOVSS xmm2, [dword rdi + 1888]
	MOVSS xmm3, [dword rdi + 1316]
	MOVSS xmm4, [dword rdi + 1740]
	MOVSS xmm5, [dword rdi + 248]
	MOVSS xmm6, [dword rdi + 1356]
	MOVSS xmm7, [dword rdi + 32]

	MOVSS xmm0, [dword rdi + 432]
	MOVSS xmm1, [dword rdi + 824]
	MOVSS xmm2, [dword rdi + 544]
	MOVSS xmm3, [dword rdi + 288]
	MOVSS xmm4, [dword rdi + 1432]
	MOVSS xmm5, [dword rdi + 1452]
	MOVSS xmm6, [dword rdi + 1680]
	MOVSS xmm7, [dword rdi + 232]

	MOVSS xmm0, [dword rdi + 1692]
	MOVSS xmm1, [dword rdi + 1848]
	MOVSS xmm2, [dword rdi + 572]
	MOVSS xmm3, [dword rdi + 124]
	MOVSS xmm4, [dword rdi + 1224]
	MOVSS xmm5, [dword rdi + 472]
	MOVSS xmm6, [dword rdi + 1876]
	MOVSS xmm7, [dword rdi + 388]

	MOVSS xmm0, [dword rdi + 408]
	MOVSS xmm1, [dword rdi + 1364]
	MOVSS xmm2, [dword rdi + 724]
	MOVSS xmm3, [dword rdi + 460]
	MOVSS xmm4, [dword rdi + 352]
	MOVSS xmm5, [dword rdi + 1412]
	MOVSS xmm6, [dword rdi + 1396]
	MOVSS xmm7, [dword rdi + 700]

	MOVSS xmm0, [dword rdi + 632]
	MOVSS xmm1, [dword rdi + 1868]
	MOVSS xmm2, [dword rdi + 552]
	MOVSS xmm3, [dword rdi + 776]
	MOVSS xmm4, [dword rdi + 984]
	MOVSS xmm5, [dword rdi + 520]
	MOVSS xmm6, [dword rdi + 592]
	MOVSS xmm7, [dword rdi + 184]

	MOVSS xmm0, [dword rdi + 320]
	MOVSS xmm1, [dword rdi + 968]
	MOVSS xmm2, [dword rdi + 624]
	MOVSS xmm3, [dword rdi + 1556]
	MOVSS xmm4, [dword rdi + 1748]
	MOVSS xmm5, [dword rdi + 928]
	MOVSS xmm6, [dword rdi + 1656]
	MOVSS xmm7, [dword rdi + 2004]

	MOVSS xmm0, [dword rdi + 484]
	MOVSS xmm1, [dword rdi + 1496]
	MOVSS xmm2, [dword rdi + 1672]
	MOVSS xmm3, [dword rdi + 1584]
	MOVSS xmm4, [dword rdi + 1220]
	MOVSS xmm5, [dword rdi + 1264]
	MOVSS xmm6, [dword rdi + 372]
	MOVSS xmm7, [dword rdi + 100]

	MOVSS xmm0, [dword rdi + 76]
	MOVSS xmm1, [dword rdi + 24]
	MOVSS xmm2, [dword rdi + 616]
	MOVSS xmm3, [dword rdi + 1340]
	MOVSS xmm4, [dword rdi + 644]
	MOVSS xmm5, [dword rdi + 820]
	MOVSS xmm6, [dword rdi + 772]
	MOVSS xmm7, [dword rdi + 812]

	MOVSS xmm0, [dword rdi + 1544]
	MOVSS xmm1, [dword rdi + 1668]
	MOVSS xmm2, [dword rdi + 840]
	MOVSS xmm3, [dword rdi + 652]
	MOVSS xmm4, [dword rdi + 1156]
	MOVSS xmm5, [dword rdi + 596]
	MOVSS xmm6, [dword rdi + 768]
	MOVSS xmm7, [dword rdi + 2008]

	MOVSS xmm0, [dword rdi + 708]
	MOVSS xmm1, [dword rdi + 1272]
	MOVSS xmm2, [dword rdi + 1428]
	MOVSS xmm3, [dword rdi + 1612]
	MOVSS xmm4, [dword rdi + 452]
	MOVSS xmm5, [dword rdi + 340]
	MOVSS xmm6, [dword rdi + 156]
	MOVSS xmm7, [dword rdi + 1368]

	MOVSS xmm0, [dword rdi + 836]
	MOVSS xmm1, [dword rdi + 1796]
	MOVSS xmm2, [dword rdi + 272]
	MOVSS xmm3, [dword rdi + 992]
	MOVSS xmm4, [dword rdi + 0]
	MOVSS xmm5, [dword rdi + 1148]
	MOVSS xmm6, [dword rdi + 256]
	MOVSS xmm7, [dword rdi + 1756]

	MOVSS xmm0, [dword rdi + 400]
	MOVSS xmm1, [dword rdi + 2036]
	MOVSS xmm2, [dword rdi + 268]
	MOVSS xmm3, [dword rdi + 1792]
	MOVSS xmm4, [dword rdi + 200]
	MOVSS xmm5, [dword rdi + 1992]
	MOVSS xmm6, [dword rdi + 1616]
	MOVSS xmm7, [dword rdi + 1952]

	MOVSS xmm0, [dword rdi + 1020]
	MOVSS xmm1, [dword rdi + 144]
	MOVSS xmm2, [dword rdi + 92]
	MOVSS xmm3, [dword rdi + 1596]
	MOVSS xmm4, [dword rdi + 516]
	MOVSS xmm5, [dword rdi + 728]
	MOVSS xmm6, [dword rdi + 332]
	MOVSS xmm7, [dword rdi + 1116]

	MOVSS xmm0, [dword rdi + 420]
	MOVSS xmm1, [dword rdi + 872]
	MOVSS xmm2, [dword rdi + 1408]
	MOVSS xmm3, [dword rdi + 1960]
	MOVSS xmm4, [dword rdi + 1508]
	MOVSS xmm5, [dword rdi + 1800]
	MOVSS xmm6, [dword rdi + 1648]
	MOVSS xmm7, [dword rdi + 1720]

	MOVSS xmm0, [dword rdi + 1436]
	MOVSS xmm1, [dword rdi + 1640]
	MOVSS xmm2, [dword rdi + 264]
	MOVSS xmm3, [dword rdi + 844]
	MOVSS xmm4, [dword rdi + 1044]
	MOVSS xmm5, [dword rdi + 276]
	MOVSS xmm6, [dword rdi + 376]
	MOVSS xmm7, [dword rdi + 528]

	MOVSS xmm0, [dword rdi + 912]
	MOVSS xmm1, [dword rdi + 1308]
	MOVSS xmm2, [dword rdi + 1600]
	MOVSS xmm3, [dword rdi + 996]
	MOVSS xmm4, [dword rdi + 868]
	MOVSS xmm5, [dword rdi + 1016]
	MOVSS xmm6, [dword rdi + 112]
	MOVSS xmm7, [dword rdi + 1528]

	MOVSS xmm0, [dword rdi + 476]
	MOVSS xmm1, [dword rdi + 428]
	MOVSS xmm2, [dword rdi + 1180]
	MOVSS xmm3, [dword rdi + 1736]
	MOVSS xmm4, [dword rdi + 496]
	MOVSS xmm5, [dword rdi + 1460]
	MOVSS xmm6, [dword rdi + 244]
	MOVSS xmm7, [dword rdi + 980]

	MOVSS xmm0, [dword rdi + 904]
	MOVSS xmm1, [dword rdi + 972]
	MOVSS xmm2, [dword rdi + 2016]
	MOVSS xmm3, [dword rdi + 208]
	MOVSS xmm4, [dword rdi + 1296]
	MOVSS xmm5, [dword rdi + 1480]
	MOVSS xmm6, [dword rdi + 1660]
	MOVSS xmm7, [dword rdi + 1008]

	MOVSS xmm0, [dword rdi + 1592]
	MOVSS xmm1, [dword rdi + 1144]
	MOVSS xmm2, [dword rdi + 236]
	MOVSS xmm3, [dword rdi + 1932]
	MOVSS xmm4, [dword rdi + 436]
	MOVSS xmm5, [dword rdi + 1064]
	MOVSS xmm6, [dword rdi + 1392]
	MOVSS xmm7, [dword rdi + 860]

	MOVSS xmm0, [dword rdi + 96]
	MOVSS xmm1, [dword rdi + 1808]
	MOVSS xmm2, [dword rdi + 1812]
	MOVSS xmm3, [dword rdi + 444]
	MOVSS xmm4, [dword rdi + 1912]
	MOVSS xmm5, [dword rdi + 1036]
	MOVSS xmm6, [dword rdi + 976]
	MOVSS xmm7, [dword rdi + 284]

	MOVSS xmm0, [dword rdi + 896]
	MOVSS xmm1, [dword rdi + 160]
	MOVSS xmm2, [dword rdi + 1632]
	MOVSS xmm3, [dword rdi + 908]
	MOVSS xmm4, [dword rdi + 1472]
	MOVSS xmm5, [dword rdi + 748]
	MOVSS xmm6, [dword rdi + 1820]
	MOVSS xmm7, [dword rdi + 1176]

	MOVSS xmm0, [dword rdi + 2012]
	MOVSS xmm1, [dword rdi + 1768]
	MOVSS xmm2, [dword rdi + 564]
	MOVSS xmm3, [dword rdi + 1164]
	MOVSS xmm4, [dword rdi + 808]
	MOVSS xmm5, [dword rdi + 1896]
	MOVSS xmm6, [dword rdi + 456]
	MOVSS xmm7, [dword rdi + 1052]

	MOVSS xmm0, [dword rdi + 1684]
	MOVSS xmm1, [dword rdi + 1948]
	MOVSS xmm2, [dword rdi + 108]
	MOVSS xmm3, [dword rdi + 1336]
	MOVSS xmm4, [dword rdi + 656]
	MOVSS xmm5, [dword rdi + 1088]
	MOVSS xmm6, [dword rdi + 1928]
	MOVSS xmm7, [dword rdi + 1936]

	MOVSS xmm0, [dword rdi + 676]
	MOVSS xmm1, [dword rdi + 448]
	MOVSS xmm2, [dword rdi + 744]
	MOVSS xmm3, [dword rdi + 344]
	MOVSS xmm4, [dword rdi + 608]
	MOVSS xmm5, [dword rdi + 1416]
	MOVSS xmm6, [dword rdi + 1260]
	MOVSS xmm7, [dword rdi + 1840]

	MOVSS xmm0, [dword rdi + 304]
	MOVSS xmm1, [dword rdi + 816]
	MOVSS xmm2, [dword rdi + 916]
	MOVSS xmm3, [dword rdi + 1708]
	MOVSS xmm4, [dword rdi + 1172]
	MOVSS xmm5, [dword rdi + 480]
	MOVSS xmm6, [dword rdi + 532]
	MOVSS xmm7, [dword rdi + 1072]

	MOVSS xmm0, [dword rdi + 1212]
	MOVSS xmm1, [dword rdi + 1360]
	MOVSS xmm2, [dword rdi + 952]
	MOVSS xmm3, [dword rdi + 1864]
	MOVSS xmm4, [dword rdi + 620]
	MOVSS xmm5, [dword rdi + 540]
	MOVSS xmm6, [dword rdi + 1256]
	MOVSS xmm7, [dword rdi + 1552]

	MOVSS xmm0, [dword rdi + 692]
	MOVSS xmm1, [dword rdi + 1304]
	MOVSS xmm2, [dword rdi + 16]
	MOVSS xmm3, [dword rdi + 584]
	MOVSS xmm4, [dword rdi + 1492]
	MOVSS xmm5, [dword rdi + 380]
	MOVSS xmm6, [dword rdi + 504]
	MOVSS xmm7, [dword rdi + 20]

	MOVSS xmm0, [dword rdi + 280]
	MOVSS xmm1, [dword rdi + 852]
	MOVSS xmm2, [dword rdi + 804]
	MOVSS xmm3, [dword rdi + 1300]
	MOVSS xmm4, [dword rdi + 152]
	MOVSS xmm5, [dword rdi + 1880]
	MOVSS xmm6, [dword rdi + 188]
	MOVSS xmm7, [dword rdi + 1152]

	MOVSS xmm0, [dword rdi + 1872]
	MOVSS xmm1, [dword rdi + 464]
	MOVSS xmm2, [dword rdi + 640]
	MOVSS xmm3, [dword rdi + 360]
	MOVSS xmm4, [dword rdi + 1996]
	MOVSS xmm5, [dword rdi + 1856]
	MOVSS xmm6, [dword rdi + 1832]
	MOVSS xmm7, [dword rdi + 192]

	MOVSS xmm0, [dword rdi + 924]
	MOVSS xmm1, [dword rdi + 1884]
	MOVSS xmm2, [dword rdi + 1964]
	MOVSS xmm3, [dword rdi + 1376]
	MOVSS xmm4, [dword rdi + 1788]
	MOVSS xmm5, [dword rdi + 1200]
	MOVSS xmm6, [dword rdi + 1424]
	MOVSS xmm7, [dword rdi + 440]

	MOVSS xmm0, [dword rdi + 488]
	MOVSS xmm1, [dword rdi + 628]
	MOVSS xmm2, [dword rdi + 2028]
	MOVSS xmm3, [dword rdi + 1140]
	MOVSS xmm4, [dword rdi + 132]
	MOVSS xmm5, [dword rdi + 60]
	MOVSS xmm6, [dword rdi + 760]
	MOVSS xmm7, [dword rdi + 364]

	MOVSS xmm0, [dword rdi + 300]
	MOVSS xmm1, [dword rdi + 964]
	MOVSS xmm2, [dword rdi + 1032]
	MOVSS xmm3, [dword rdi + 1940]
	MOVSS xmm4, [dword rdi + 1348]
	MOVSS xmm5, [dword rdi + 120]
	MOVSS xmm6, [dword rdi + 196]
	MOVSS xmm7, [dword rdi + 2024]

	MOVSS xmm0, [dword rdi + 1752]
	MOVSS xmm1, [dword rdi + 1012]
	MOVSS xmm2, [dword rdi + 1968]
	MOVSS xmm3, [dword rdi + 784]
	MOVSS xmm4, [dword rdi + 260]
	MOVSS xmm5, [dword rdi + 468]
	MOVSS xmm6, [dword rdi + 40]
	MOVSS xmm7, [dword rdi + 944]

	MOVSS xmm0, [dword rdi + 68]
	MOVSS xmm1, [dword rdi + 348]
	MOVSS xmm2, [dword rdi + 1500]
	MOVSS xmm3, [dword rdi + 176]
	MOVSS xmm4, [dword rdi + 1564]
	MOVSS xmm5, [dword rdi + 1780]
	MOVSS xmm6, [dword rdi + 732]
	MOVSS xmm7, [dword rdi + 1320]

	MOVSS xmm0, [dword rdi + 1560]
	MOVSS xmm1, [dword rdi + 328]
	MOVSS xmm2, [dword rdi + 1204]
	MOVSS xmm3, [dword rdi + 1524]
	MOVSS xmm4, [dword rdi + 1908]
	MOVSS xmm5, [dword rdi + 2032]
	MOVSS xmm6, [dword rdi + 84]
	MOVSS xmm7, [dword rdi + 164]

	MOVSS xmm0, [dword rdi + 1548]
	MOVSS xmm1, [dword rdi + 1400]
	MOVSS xmm2, [dword rdi + 1448]
	MOVSS xmm3, [dword rdi + 1104]
	MOVSS xmm4, [dword rdi + 1160]
	MOVSS xmm5, [dword rdi + 2000]
	MOVSS xmm6, [dword rdi + 1332]
	MOVSS xmm7, [dword rdi + 88]

	MOVSS xmm0, [dword rdi + 1924]
	MOVSS xmm1, [dword rdi + 560]
	MOVSS xmm2, [dword rdi + 1276]
	MOVSS xmm3, [dword rdi + 672]
	MOVSS xmm4, [dword rdi + 316]
	MOVSS xmm5, [dword rdi + 612]
	MOVSS xmm6, [dword rdi + 2044]
	MOVSS xmm7, [dword rdi + 1904]

	MOVSS xmm0, [dword rdi + 576]
	MOVSS xmm1, [dword rdi + 1468]
	MOVSS xmm2, [dword rdi + 424]
	MOVSS xmm3, [dword rdi + 1852]
	MOVSS xmm4, [dword rdi + 1040]
	MOVSS xmm5, [dword rdi + 1132]
	MOVSS xmm6, [dword rdi + 884]
	MOVSS xmm7, [dword rdi + 1776]

	MOVSS xmm0, [dword rdi + 848]
	MOVSS xmm1, [dword rdi + 336]
	MOVSS xmm2, [dword rdi + 492]
	MOVSS xmm3, [dword rdi + 792]
	MOVSS xmm4, [dword rdi + 240]
	MOVSS xmm5, [dword rdi + 556]
	MOVSS xmm6, [dword rdi + 1440]
	MOVSS xmm7, [dword rdi + 1420]

	MOVSS xmm0, [dword rdi + 1844]
	MOVSS xmm1, [dword rdi + 1696]
	MOVSS xmm2, [dword rdi + 1728]
	MOVSS xmm3, [dword rdi + 1244]
	MOVSS xmm4, [dword rdi + 1208]
	MOVSS xmm5, [dword rdi + 28]
	MOVSS xmm6, [dword rdi + 1288]
	MOVSS xmm7, [dword rdi + 224]

	MOVSS xmm0, [dword rdi + 1444]
	MOVSS xmm1, [dword rdi + 796]
	MOVSS xmm2, [dword rdi + 756]
	MOVSS xmm3, [dword rdi + 1476]
	MOVSS xmm4, [dword rdi + 1956]
	MOVSS xmm5, [dword rdi + 1536]
	MOVSS xmm6, [dword rdi + 1540]
	MOVSS xmm7, [dword rdi + 1456]

	MOVSS xmm0, [dword rdi + 1976]
	MOVSS xmm1, [dword rdi + 168]
	MOVSS xmm2, [dword rdi + 880]
	MOVSS xmm3, [dword rdi + 404]
	MOVSS xmm4, [dword rdi + 864]
	MOVSS xmm5, [dword rdi + 1388]
	MOVSS xmm6, [dword rdi + 1024]
	MOVSS xmm7, [dword rdi + 1732]

	MOVSS xmm0, [dword rdi + 308]
	MOVSS xmm1, [dword rdi + 1000]
	MOVSS xmm2, [dword rdi + 684]
	MOVSS xmm3, [dword rdi + 960]
	MOVSS xmm4, [dword rdi + 1916]
	MOVSS xmm5, [dword rdi + 580]
	MOVSS xmm6, [dword rdi + 128]
	MOVSS xmm7, [dword rdi + 1620]

	MOVSS xmm0, [dword rdi + 1824]
	MOVSS xmm1, [dword rdi + 900]
	MOVSS xmm2, [dword rdi + 680]
	MOVSS xmm3, [dword rdi + 1196]
	MOVSS xmm4, [dword rdi + 356]
	MOVSS xmm5, [dword rdi + 212]
	MOVSS xmm6, [dword rdi + 324]
	MOVSS xmm7, [dword rdi + 788]

	MOVSS xmm0, [dword rdi + 1516]
	MOVSS xmm1, [dword rdi + 72]
	MOVSS xmm2, [dword rdi + 1716]
	MOVSS xmm3, [dword rdi + 1900]
	MOVSS xmm4, [dword rdi + 292]
	MOVSS xmm5, [dword rdi + 416]
	MOVSS xmm6, [dword rdi + 1184]
	MOVSS xmm7, [dword rdi + 1744]

	ADD rdi, 2048
	SUB rsi, 2048
	JAE .loop

.restore:
	ADD rsi, 2048
	JZ .finish
	INT 3
	
.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	RET

global uBench_ReadMemory_12PointerChasing_MOV
align 32
uBench_ReadMemory_12PointerChasing_MOV:
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
	
	ALIGN 32
.loop:
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
	JNZ .loop

.finish:
	POP r15
	POP r14
	POP r13
	POP r12
	POP rbx
	RET

