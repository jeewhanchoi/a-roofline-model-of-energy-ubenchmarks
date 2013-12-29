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

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_LDR_NoPrefetch
	PUSH	{r4-r11, ip, lr}
	SUBS r1, #48
	BLO 2f
1:
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	SUBS r1, #48
	BHS 1b
2:
	ADDS r1, #48
	BEQ 4f
3:
	LDR ip, [r0], #4
	SUBS r1, #4
	BNE 3b
4:
	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Sequential_LDR_NoPrefetch

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_LDR_Prefetch32
	PUSH	{r4-r11, ip, lr}
	SUBS r1, #96
	BLO 2f
1:
	PLD [r0, #1536]
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	PLD [r0, #1536]
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	PLD [r0, #1536]
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	SUBS r1, #96
	BHS 1b
2:
	ADDS r1, #96
	BEQ 4f
3:
	LDR ip, [r0], #4
	SUBS r1, #4
	BNE 3b
4:
	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Sequential_LDR_Prefetch32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_LDR_Prefetch64
	PUSH	{r4-r11, ip, lr}
	SUBS r1, #192
	BLO 2f
1:
	PLD [r0, #1536]
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	PLD [r0, #1536]
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	PLD [r0, #1536]
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	SUBS r1, #192
	BHS 1b
2:
	ADDS r1, #192
	BEQ 4f
3:
	LDR ip, [r0], #4
	SUBS r1, #4
	BNE 3b
4:
	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Sequential_LDR_Prefetch64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_LDR_Prefetch128
	PUSH	{r4-r11, ip, lr}
	SUBS r1, #384
	BLO 2f
1:
	PLD [r0, #1536]
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	PLD [r0, #1536]
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	PLD [r0, #1536]
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	LDR r2, [r0], #4
	LDR r3, [r0], #4
	LDR r4, [r0], #4
	LDR r5, [r0], #4
	LDR r6, [r0], #4
	LDR r7, [r0], #4
	LDR r8, [r0], #4
	LDR r9, [r0], #4
	LDR r10, [r0], #4
	LDR r11, [r0], #4
	LDR r12, [r0], #4
	LDR lr, [r0], #4
	SUBS r1, #384
	BHS 1b
2:
	ADDS r1, #384
	BEQ 4f
3:
	LDR ip, [r0], #4
	SUBS r1, #4
	BNE 3b
4:
	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Sequential_LDR_Prefetch128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_LDM_NoPrefetch
	PUSH	{r4-r11, ip, lr}
	SUBS r1, #48
	BLO 2f
1:
	LDM r0!, {r2-r12, lr}
	SUBS r1, #48
	BHS 1b
2:
	ADDS r1, #48
	BEQ 4f
3:
	LDR ip, [r0], #4
	SUBS r1, #4
	BNE 3b
4:
	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Sequential_LDM_NoPrefetch

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_LDM_Prefetch32
	PUSH	{r4-r11, ip, lr}
	SUBS r1, #32
	BLO 2f
1:
	PLD [r0, #1536]
	LDM r0!, {r2-r9}
	SUBS r1, #32
	BHS 1b
2:
	ADDS r1, #32
	BEQ 3f
	BKPT
3:
	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Sequential_LDM_Prefetch32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_LDM_Prefetch64
	PUSH	{r4-r11, ip, lr}
	SUBS r1, #64
	BLO 2f
1:
	PLD [r0, #1536]
	LDM r0!, {r2-r9}
	LDM r0!, {r2-r9}
	SUBS r1, #64
	BHS 1b
2:
	ADDS r1, #64
	BEQ 3f
	BKPT
3:
	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Sequential_LDM_Prefetch64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_LDM_Prefetch128
	PUSH	{r4-r11, ip, lr}
	SUBS r1, #128
	BLO 2f
1:
	PLD [r0, #1536]
	LDM r0!, {r2-r9}
	LDM r0!, {r2-r9}
	LDM r0!, {r2-r9}
	LDM r0!, {r2-r9}
	SUBS r1, #128
	BHS 1b
2:
	ADDS r1, #128
	BEQ 3f
	BKPT
3:
	POP {r4-r11, ip, pc}
END_ARM_FUNCTION uBench_ReadMemory_Sequential_LDM_Prefetch128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDR_NoPrefetch
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	VLDR d0, [r0, #0]
	VLDR d1, [r0, #8]
	VLDR d2, [r0, #16]
	VLDR d3, [r0, #24]
	VLDR d4, [r0, #32]
	VLDR d5, [r0, #40]
	VLDR d6, [r0, #48]
	VLDR d7, [r0, #56]
	VLDR d8, [r0, #64]
	VLDR d9, [r0, #72]
	VLDR d10, [r0, #80]
	VLDR d11, [r0, #88]
	VLDR d12, [r0, #96]
	VLDR d13, [r0, #104]
	VLDR d14, [r0, #112]
	VLDR d15, [r0, #120]
	VLDR d16, [r0, #128]
	VLDR d17, [r0, #136]
	VLDR d18, [r0, #144]
	VLDR d19, [r0, #152]
	VLDR d20, [r0, #160]
	VLDR d21, [r0, #168]
	VLDR d22, [r0, #176]
	VLDR d23, [r0, #184]
	VLDR d24, [r0, #192]
	VLDR d25, [r0, #200]
	VLDR d26, [r0, #208]
	VLDR d27, [r0, #216]
	VLDR d28, [r0, #224]
	VLDR d29, [r0, #232]
	VLDR d30, [r0, #240]
	VLDR d31, [r0, #248]
	ADD r0, r0, #256
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDR_NoPrefetch

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDR_Prefetch32
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	PLD [r0, #1536]
	VLDR d0, [r0, #0]
	VLDR d1, [r0, #8]
	VLDR d2, [r0, #16]
	VLDR d3, [r0, #24]
	PLD [r0, #1568]
	VLDR d4, [r0, #32]
	VLDR d5, [r0, #40]
	VLDR d6, [r0, #48]
	VLDR d7, [r0, #56]
	PLD [r0, #1600]
	VLDR d8, [r0, #64]
	VLDR d9, [r0, #72]
	VLDR d10, [r0, #80]
	VLDR d11, [r0, #88]
	PLD [r0, #1632]
	VLDR d12, [r0, #96]
	VLDR d13, [r0, #104]
	VLDR d14, [r0, #112]
	VLDR d15, [r0, #120]
	PLD [r0, #1664]
	VLDR d16, [r0, #128]
	VLDR d17, [r0, #136]
	VLDR d18, [r0, #144]
	VLDR d19, [r0, #152]
	PLD [r0, #1696]
	VLDR d20, [r0, #160]
	VLDR d21, [r0, #168]
	VLDR d22, [r0, #176]
	VLDR d23, [r0, #184]
	PLD [r0, #1728]
	VLDR d24, [r0, #192]
	VLDR d25, [r0, #200]
	VLDR d26, [r0, #208]
	VLDR d27, [r0, #216]
	PLD [r0, #1760]
	VLDR d28, [r0, #224]
	VLDR d29, [r0, #232]
	VLDR d30, [r0, #240]
	VLDR d31, [r0, #248]
	ADD r0, r0, #256
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDR_Prefetch32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDR_Prefetch64
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	PLD [r0, #1536]
	VLDR d0, [r0, #0]
	VLDR d1, [r0, #8]
	VLDR d2, [r0, #16]
	VLDR d3, [r0, #24]
	VLDR d4, [r0, #32]
	VLDR d5, [r0, #40]
	VLDR d6, [r0, #48]
	VLDR d7, [r0, #56]
	PLD [r0, #1600]
	VLDR d8, [r0, #64]
	VLDR d9, [r0, #72]
	VLDR d10, [r0, #80]
	VLDR d11, [r0, #88]
	VLDR d12, [r0, #96]
	VLDR d13, [r0, #104]
	VLDR d14, [r0, #112]
	VLDR d15, [r0, #120]
	PLD [r0, #1664]
	VLDR d16, [r0, #128]
	VLDR d17, [r0, #136]
	VLDR d18, [r0, #144]
	VLDR d19, [r0, #152]
	VLDR d20, [r0, #160]
	VLDR d21, [r0, #168]
	VLDR d22, [r0, #176]
	VLDR d23, [r0, #184]
	PLD [r0, #1728]
	VLDR d24, [r0, #192]
	VLDR d25, [r0, #200]
	VLDR d26, [r0, #208]
	VLDR d27, [r0, #216]
	VLDR d28, [r0, #224]
	VLDR d29, [r0, #232]
	VLDR d30, [r0, #240]
	VLDR d31, [r0, #248]
	ADD r0, r0, #256
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDR_Prefetch64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDR_Prefetch128
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	PLD [r0, #1536]
	VLDR d0, [r0, #0]
	VLDR d1, [r0, #8]
	VLDR d2, [r0, #16]
	VLDR d3, [r0, #24]
	VLDR d4, [r0, #32]
	VLDR d5, [r0, #40]
	VLDR d6, [r0, #48]
	VLDR d7, [r0, #56]
	VLDR d8, [r0, #64]
	VLDR d9, [r0, #72]
	VLDR d10, [r0, #80]
	VLDR d11, [r0, #88]
	VLDR d12, [r0, #96]
	VLDR d13, [r0, #104]
	VLDR d14, [r0, #112]
	VLDR d15, [r0, #120]
	PLD [r0, #1664]
	VLDR d16, [r0, #128]
	VLDR d17, [r0, #136]
	VLDR d18, [r0, #144]
	VLDR d19, [r0, #152]
	VLDR d20, [r0, #160]
	VLDR d21, [r0, #168]
	VLDR d22, [r0, #176]
	VLDR d23, [r0, #184]
	VLDR d24, [r0, #192]
	VLDR d25, [r0, #200]
	VLDR d26, [r0, #208]
	VLDR d27, [r0, #216]
	VLDR d28, [r0, #224]
	VLDR d29, [r0, #232]
	VLDR d30, [r0, #240]
	VLDR d31, [r0, #248]
	ADD r0, r0, #256
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDR_Prefetch128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDM_NoPrefetch
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	VLDM r0!, {d0-d15}
	VLDM r0!, {d16-d31}
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDM_NoPrefetch

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDM_Prefetch32
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	PLD [r0, #1536]
	VLDM r0!, {d0-d3}
	PLD [r0, #1536]
	VLDM r0!, {d4-d7}
	PLD [r0, #1536]
	VLDM r0!, {d8-d11}
	PLD [r0, #1536]
	VLDM r0!, {d12-d15}
	PLD [r0, #1536]
	VLDM r0!, {d16-d19}
	PLD [r0, #1536]
	VLDM r0!, {d20-d23}
	PLD [r0, #1536]
	VLDM r0!, {d24-d27}
	PLD [r0, #1536]
	VLDM r0!, {d28-d31}
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDM_Prefetch32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDM_Prefetch64
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	PLD [r0, #1536]
	VLDM r0!, {d0-d7}
	PLD [r0, #1536]
	VLDM r0!, {d8-d15}
	PLD [r0, #1536]
	VLDM r0!, {d16-d23}
	PLD [r0, #1536]
	VLDM r0!, {d24-d31}
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDM_Prefetch64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDM_Prefetch128
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	PLD [r0, #1536]
	VLDM r0!, {d0-d15}
	PLD [r0, #1536]
	VLDM r0!, {d16-d31}
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLDM_Prefetch128

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLD1_NoPrefetch
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	VLD1.64 {d0-d3}, [r0:256]!
	VLD1.64 {d4-d7}, [r0:256]!
	VLD1.64 {d8-d11}, [r0:256]!
	VLD1.64 {d12-d15}, [r0:256]!
	VLD1.64 {d16-d19}, [r0:256]!
	VLD1.64 {d20-d23}, [r0:256]!
	VLD1.64 {d24-d27}, [r0:256]!
	VLD1.64 {d28-d31}, [r0:256]!
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLD1_NoPrefetch

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLD1_Prefetch32
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	PLD [r0, #1536]
	VLD1.64 {d0-d3}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d4-d7}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d8-d11}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d12-d15}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d16-d19}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d20-d23}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d24-d27}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d28-d31}, [r0:256]!
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLD1_Prefetch32

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLD1_Prefetch64
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	PLD [r0, #1536]
	VLD1.64 {d0-d3}, [r0:256]!
	VLD1.64 {d4-d7}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d8-d11}, [r0:256]!
	VLD1.64 {d12-d15}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d16-d19}, [r0:256]!
	VLD1.64 {d20-d23}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d24-d27}, [r0:256]!
	VLD1.64 {d28-d31}, [r0:256]!
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLD1_Prefetch64

BEGIN_ARM_FUNCTION uBench_ReadMemory_Sequential_VLD1_Prefetch128
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	SUBS r1, #256
	BLO 2f
1:
	PLD [r0, #1536]
	VLD1.64 {d0-d3}, [r0:256]!
	VLD1.64 {d4-d7}, [r0:256]!
	VLD1.64 {d8-d11}, [r0:256]!
	VLD1.64 {d12-d15}, [r0:256]!
	PLD [r0, #1536]
	VLD1.64 {d16-d19}, [r0:256]!
	VLD1.64 {d20-d23}, [r0:256]!
	VLD1.64 {d24-d27}, [r0:256]!
	VLD1.64 {d28-d31}, [r0:256]!
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_Sequential_VLD1_Prefetch128

BEGIN_ARM_FUNCTION uBench_ReadMemory_SemiSequential_LDR_NoPrefetch
	PUSH	{r4-r10, lr}
	ADD r2, r0, r1
	SUBS r1, #32
	BLO 2f
1:
	LDR r3, [r0], #4
	LDR r4, [r2], #-4
	LDR r5, [r0], #4
	LDR r6, [r2], #-4
	LDR r7, [r0], #4
	LDR r8, [r2], #-4
	LDR r9, [r0], #4
	LDR r10, [r2], #-4
	SUBS r1, #32
	BHS 1b
2:
	ADDS r1, #32
	BEQ 3f
	BKPT
3:
	POP {r4-r10, pc}
END_ARM_FUNCTION uBench_ReadMemory_SemiSequential_LDR_NoPrefetch

BEGIN_ARM_FUNCTION uBench_ReadMemory_SemiSequential_LDM_NoPrefetch
	PUSH	{r4-r10, lr}
	ADD r2, r0, r1
	SUBS r1, #32
	BLO 2f
1:
	LDMIA r0!, {r3-r6}
	LDMDA r2!, {r7-r10}
	SUBS r1, #32
	BHS 1b
2:
	ADDS r1, #32
	BEQ 3f
	BKPT
3:
	POP {r4-r10, pc}
END_ARM_FUNCTION uBench_ReadMemory_SemiSequential_LDM_NoPrefetch

BEGIN_ARM_FUNCTION uBench_ReadMemory_SemiSequential_VLDR_NoPrefetch
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	ADD r2, r0, r1
	SUBS r1, #256
	BLO 2f
1:
	VLDR d0, [r0, #0]
	VLDR d1, [r2, #-8]
	VLDR d2, [r0, #8]
	VLDR d3, [r2, #-16]
	VLDR d4, [r0, #16]
	VLDR d5, [r2, #-24]
	VLDR d6, [r0, #24]
	VLDR d7, [r2, #-32]
	VLDR d8, [r0, #32]
	VLDR d9, [r2, #-40]
	VLDR d10, [r0, #40]
	VLDR d11, [r2, #-48]
	VLDR d12, [r0, #48]
	VLDR d13, [r2, #-56]
	VLDR d14, [r0, #56]
	VLDR d15, [r2, #-64]
	VLDR d16, [r0, #64]
	VLDR d17, [r2, #-72]
	VLDR d18, [r0, #72]
	VLDR d19, [r2, #-80]
	VLDR d20, [r0, #80]
	VLDR d21, [r2, #-88]
	VLDR d22, [r0, #88]
	VLDR d23, [r2, #-96]
	VLDR d24, [r0, #96]
	VLDR d25, [r2, #-104]
	VLDR d26, [r0, #104]
	VLDR d27, [r2, #-112]
	VLDR d28, [r0, #112]
	VLDR d29, [r2, #-120]
	VLDR d30, [r0, #120]
	VLDR d31, [r2, #-128]
	ADD r0, r0, #128
	SUB r2, r2, #128
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_SemiSequential_VLDR_NoPrefetch

BEGIN_ARM_FUNCTION uBench_ReadMemory_SemiSequential_VLDM_NoPrefetch
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	ADD r2, r0, r1
	SUBS r1, #256
	BLO 2f
1:
	VLDMIA r0!, {d0-d15}
	VLDMDB r2!, {d16-d31}
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_SemiSequential_VLDM_NoPrefetch

BEGIN_ARM_FUNCTION uBench_ReadMemory_SemiSequential_VLD1_NoPrefetch
	.arch armv7-a
	.fpu neon
	VPUSH {q4-q7}
	ADD r2, r0, r1
	MOV r3, #-32
	SUBS r1, #256
	BLO 2f
1:
	VLD1.64 {d0-d3}, [r0:256]!
	VLD1.64 {d4-d7}, [r2:256], r3
	VLD1.64 {d8-d11}, [r0:256]!
	VLD1.64 {d12-d15}, [r2:256], r3
	VLD1.64 {d16-d19}, [r0:256]!
	VLD1.64 {d20-d23}, [r2:256], r3
	VLD1.64 {d24-d27}, [r0:256]!
	VLD1.64 {d28-d31}, [r2:256], r3
	SUBS r1, r1, #256
	BHS 1b
2:
	ADDS r1, r1, #256
	BEQ 3f
	BKPT
3:
	VPOP {q4-q7}
	BX lr
END_ARM_FUNCTION uBench_ReadMemory_SemiSequential_VLD1_NoPrefetch
