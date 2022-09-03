	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"optimized_poor_condition.c"
	.global	__aeabi_i2d
	.global	__aeabi_dcmpeq
	.global	__aeabi_idiv
	.global	__aeabi_i2f
	.global	__aeabi_fmul
	.global	__aeabi_f2d
	.global	__aeabi_ddiv
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r2, #114688
	sub	sp, sp, #428
	ldr	lr, .L33
	mov	r4, #32768
	mov	r5, #24576
	mov	ip, #8192
	mov	fp, #16384
	mov	r6, #57344
	mov	r9, #40960
	mov	r3, #49152
	mov	r1, #65536
	str	r2, [sp, #160]
	str	r2, [sp, #124]
	sub	r2, r2, #16384
	str	r3, [sp, #180]
	str	ip, [sp, #72]
	str	r1, [sp, #88]
	str	ip, [sp, #96]
	str	r3, [sp, #112]
	str	r3, [sp, #116]
	str	r1, [sp, #120]
	str	ip, [sp, #128]
	str	ip, [sp, #152]
	str	r2, [sp, #164]
	str	ip, [sp, #168]
	str	ip, [sp, #172]
	str	ip, [sp, #192]
	mov	r8, lr
	str	r4, [sp, #76]
	add	lr, sp, #392
	str	r5, [sp, #80]
	str	r6, [sp, #84]
	str	r6, [sp, #92]
	str	r9, [sp, #100]
	str	r4, [sp, #104]
	str	fp, [sp, #108]
	str	r9, [sp, #132]
	str	fp, [sp, #136]
	str	r4, [sp, #140]
	str	r5, [sp, #144]
	str	r4, [sp, #148]
	str	r9, [sp, #156]
	str	fp, [sp, #176]
	str	fp, [sp, #184]
	str	r5, [sp, #188]
	str	r4, [sp, #196]
	str	fp, [sp, #200]
	str	ip, [sp, #216]
	add	ip, ip, #90112
	str	lr, [sp, #4]
	str	ip, [sp, #256]
	mov	lr, #131072
	add	ip, ip, #8192
	mov	sl, #73728
	str	ip, [sp, #268]
	str	lr, [sp, #300]
	add	ip, ip, fp
	sub	lr, lr, #65536
	ldmia	r8!, {r0, r1, r2, r3}
	str	ip, [sp, #296]
	str	lr, [sp, #304]
	str	lr, [sp, #208]
	str	r9, [sp, #204]
	str	r9, [sp, #260]
	str	r5, [sp, #292]
	str	fp, [sp, #308]
	str	r6, [sp, #316]
	str	sl, [sp, #320]
	str	r4, [sp, #324]
	str	r4, [sp, #212]
	str	r5, [sp, #220]
	str	r6, [sp, #224]
	str	r5, [sp, #228]
	str	r5, [sp, #232]
	str	sl, [sp, #236]
	str	r5, [sp, #240]
	str	r4, [sp, #244]
	str	r9, [sp, #248]
	str	r4, [sp, #252]
	str	r6, [sp, #264]
	str	sl, [sp, #272]
	str	r6, [sp, #276]
	str	r5, [sp, #280]
	str	fp, [sp, #284]
	ldr	ip, [sp, #4]
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	r8, {r0, r1, r2, r3}
	sub	lr, lr, #65536
	stmia	ip, {r0, r1, r2, r3}
	str	r6, [sp, #288]
	str	r4, [sp, #312]
	str	lr, [sp, #68]
	bl	clock
	str	r0, [sp, #64]
.L2:
	mov	r0, #0
	add	lr, sp, #72
	mov	r1, r0
.L11:
	add	r2, sp, #392
	ldr	r3, [r2, r1, asl #2]
	cmp	r3, #1
	beq	.L3
	ldr	ip, [sp, #392]
	cmp	ip, #0
	bne	.L4
	add	r2, sp, #424
	add	r3, r2, r1, asl #5
	ldr	r2, [r3, #-352]
	cmp	r2, #0
	rsblt	r2, r2, #0
	cmp	r0, r2
	movle	r0, r2
	movle	sl, ip
	movle	r9, r1
.L4:
	ldr	r3, [sp, #396]
	cmp	r3, #0
	bne	.L5
	ldr	r3, [lr, #4]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r0, r3
	movle	r0, r3
	movle	r9, r1
	movle	sl, #1
.L5:
	ldr	r3, [sp, #400]
	cmp	r3, #0
	bne	.L6
	ldr	r3, [lr, #8]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r0, r3
	movle	r0, r3
	movle	r9, r1
	movle	sl, #2
.L6:
	ldr	r3, [sp, #404]
	cmp	r3, #0
	bne	.L7
	ldr	r3, [lr, #12]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r0, r3
	movle	r0, r3
	movle	r9, r1
	movle	sl, #3
.L7:
	ldr	r3, [sp, #408]
	cmp	r3, #0
	bne	.L8
	ldr	r3, [lr, #16]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r0, r3
	movle	r0, r3
	movle	r9, r1
	movle	sl, #4
.L8:
	ldr	r3, [sp, #412]
	cmp	r3, #0
	bne	.L9
	ldr	r3, [lr, #20]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r0, r3
	movle	r0, r3
	movle	r9, r1
	movle	sl, #5
.L9:
	ldr	r3, [sp, #416]
	cmp	r3, #0
	bne	.L10
	ldr	r3, [lr, #24]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r0, r3
	movle	r0, r3
	movle	r9, r1
	movle	sl, #6
.L10:
	ldr	r3, [sp, #420]
	cmp	r3, #0
	bne	.L3
	ldr	r3, [lr, #28]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r3, r0
	movge	r0, r3
	movge	r9, r1
	movge	sl, #7
.L3:
	add	r1, r1, #1
	cmp	r1, #8
	add	lr, lr, #32
	bne	.L11
	mov	r3, sl, asl #2
	add	ip, sp, #424
	str	r3, [sp, #20]
	add	r3, ip, r3
	ldr	r3, [r3, #-32]
	cmp	r9, sl
	str	r3, [sp, #60]
	moveq	fp, r9, asl #5
	beq	.L12
	add	lr, sp, #424
	mov	fp, sl, asl #5
	add	r0, lr, r9, asl #5
	add	ip, lr, fp
	ldr	r1, [r0, #-352]
	ldr	r3, [ip, #-352]
	str	r3, [r0, #-352]
	str	r1, [ip, #-352]
	add	r1, lr, sl, asl #5
	add	r2, r0, #4
	add	r1, r1, #4
	ldr	lr, [r2, #-352]
	ldr	r3, [r1, #-352]
	str	r3, [r2, #-352]
	str	lr, [r1, #-352]
	ldr	lr, [sp, #20]
	add	r1, sp, #424
	add	r3, lr, #1
	add	r2, r0, #8
	add	r1, r1, r3, asl #3
	ldr	lr, [r2, #-352]
	ldr	r3, [r1, #-352]
	str	r3, [r2, #-352]
	str	lr, [r1, #-352]
	ldr	r3, [ip, #-340]
	ldr	r4, [r0, #-340]
	add	r1, sp, #424
	str	r3, [r0, #-340]
	add	r1, r1, sl, asl #5
	str	r4, [ip, #-340]
	add	r2, r0, #16
	add	r1, r1, #16
	ldr	lr, [r2, #-352]
	ldr	r3, [r1, #-352]
	str	r3, [r2, #-352]
	str	lr, [r1, #-352]
	ldr	r2, [r0, #-332]
	ldr	r3, [ip, #-332]
	str	r3, [r0, #-332]
	str	r2, [ip, #-332]
	ldr	r3, [ip, #-328]
	ldr	r2, [r0, #-328]
	str	r3, [r0, #-328]
	str	r2, [ip, #-328]
	ldr	r3, [ip, #-324]
	ldr	r2, [r0, #-324]
	str	r3, [r0, #-324]
	str	r2, [ip, #-324]
.L12:
	ldr	r2, [sp, #20]
	add	ip, sp, #424
	add	r3, r2, fp
	add	r5, ip, r3
	ldr	r4, [r5, #-352]
	mov	r0, r4
	bl	__aeabi_i2d
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.L32
	mov	r1, r4
	mov	r0, #67108864
	bl	__aeabi_idiv
	mov	r3, #8192
	str	r3, [r5, #-352]
	add	lr, sp, #424
	add	ip, lr, fp
	ldr	r2, [ip, #-352]
	mul	r3, r2, r0
	mov	r3, r3, asr #13
	str	r3, [ip, #-352]
	add	r6, lr, sl, asl #5
	add	r6, r6, #4
	ldr	r2, [r6, #-352]
	mul	r3, r2, r0
	ldr	r1, [sp, #20]
	mov	r3, r3, asr #13
	str	r3, [r6, #-352]
	add	r2, r1, #1
	add	r3, sp, #424
	add	r3, r3, r2, asl #3
	ldr	r1, [r3, #-352]
	str	r3, [sp, #56]
	mul	r3, r1, r0
	ldr	lr, [sp, #56]
	mov	r3, r3, asr #13
	str	r3, [lr, #-352]
	ldr	r2, [ip, #-340]
	mul	r3, r2, r0
	mov	r7, sl, asl #1
	mov	r3, r3, asr #13
	str	r3, [ip, #-340]
	add	r2, r7, #1
	add	r1, sp, #424
	add	r4, r1, r2, asl #4
	ldr	r1, [r4, #-352]
	mul	r3, r1, r0
	mov	r3, r3, asr #13
	str	r3, [r4, #-352]
	ldr	r4, [ip, #-328]
	ldr	r3, [ip, #-324]
	ldr	r5, [ip, #-332]
	mul	r2, r3, r0
	mul	r3, r4, r0
	mul	r1, r5, r0
	mov	r3, r3, asr #13
	mov	r2, r2, asr #13
	str	r2, [ip, #-324]
	str	r3, [ip, #-328]
	mov	r1, r1, asr #13
	sub	r2, lr, #352
	ldr	r3, [sp, #20]
	sub	r6, r6, #352
	str	r1, [ip, #-332]
	str	r2, [sp, #12]
	add	ip, sp, #72
	str	r6, [sp, #16]
	add	r5, ip, r3
	add	r6, sp, #72
	mov	r4, #0
.L17:
	add	r1, sp, #424
	cmp	r4, sl
	add	lr, r1, fp
	add	r8, r1, r7, asl #4
	add	r4, r4, #1
	beq	.L16
	mov	r2, #0
	ldr	r0, [r5, #0]
	str	r2, [r5, #0]
	ldr	r2, [lr, #-352]
	mul	r1, r2, r0
	ldr	r3, [ip, #0]
	sub	r3, r3, r1, asr #13
	str	r3, [ip, #0]
	ldr	r3, [sp, #16]
	ldr	r2, [r3, #0]
	mul	r1, r2, r0
	ldr	r3, [ip, #4]
	sub	r3, r3, r1, asr #13
	str	r3, [ip, #4]
	ldr	r1, [sp, #12]
	ldr	r2, [r1, #0]
	mul	r1, r2, r0
	ldr	r3, [ip, #8]
	sub	r3, r3, r1, asr #13
	str	r3, [ip, #8]
	ldr	r2, [lr, #-340]
	mul	r1, r2, r0
	ldr	r3, [ip, #12]
	sub	r3, r3, r1, asr #13
	str	r3, [ip, #12]
	ldr	r2, [r8, #-336]
	mul	r1, r2, r0
	ldr	r3, [ip, #16]
	sub	r3, r3, r1, asr #13
	str	r3, [ip, #16]
	ldr	r2, [lr, #-332]
	mul	r1, r2, r0
	ldr	r3, [ip, #20]
	sub	r3, r3, r1, asr #13
	str	r3, [ip, #20]
	ldr	r2, [lr, #-328]
	mul	r1, r2, r0
	ldr	r3, [ip, #24]
	sub	r3, r3, r1, asr #13
	str	r3, [ip, #24]
	ldr	r2, [lr, #-324]
	mul	r1, r2, r0
	ldr	r3, [ip, #28]
	sub	r3, r3, r1, asr #13
	str	r3, [ip, #28]
.L16:
	cmp	r4, #8
	add	r5, r5, #32
	add	ip, ip, #32
	bne	.L17
	ldr	r3, [sp, #68]
	add	r2, sp, #328
	add	ip, sp, #360
	str	r9, [ip, r3]
	str	sl, [r2, r3]
	add	r3, r3, #4
	cmp	r3, #32
	str	r2, [sp, #0]
	str	r3, [sp, #68]
	beq	.L18
	ldr	lr, [sp, #20]
	ldr	ip, [sp, #60]
	add	r1, sp, #424
	add	r2, r1, lr
	add	r3, ip, #1
	str	r3, [r2, #-32]
	b	.L2
.L18:
	mov	ip, #7
.L20:
	add	lr, sp, #360
	ldr	r0, [lr, ip, asl #2]
	add	r2, sp, #424
	add	r3, r0, #8
	add	r2, r2, r3, asl #2
	add	r1, sp, #424
	str	r2, [sp, #48]
	add	r3, sp, #424
	add	r2, r0, #16
	add	r3, r3, r2, asl #2
	add	r1, r1, r0, asl #2
	add	r2, r0, #32
	str	r1, [sp, #52]
	str	r3, [sp, #44]
	add	lr, sp, #424
	add	r3, r0, #24
	add	r1, sp, #424
	add	lr, lr, r3, asl #2
	add	r1, r1, r2, asl #2
	add	r3, r0, #40
	add	r2, sp, #424
	add	r2, r2, r3, asl #2
	str	r2, [sp, #32]
	add	r3, sp, #424
	add	r2, r0, #48
	add	r3, r3, r2, asl #2
	add	r2, sp, #328
	str	lr, [sp, #40]
	str	r1, [sp, #36]
	str	r3, [sp, #28]
	ldr	r1, [r2, ip, asl #2]
	add	r3, r0, #56
	add	lr, sp, #424
	add	lr, lr, r3, asl #2
	add	r3, sp, #424
	add	r2, sp, #424
	str	lr, [sp, #24]
	add	lr, r3, r1, asl #2
	add	r3, r1, #8
	add	r4, r2, r3, asl #2
	add	r2, r1, #16
	add	r3, sp, #424
	add	r5, r3, r2, asl #2
	add	r3, r1, #24
	add	r2, sp, #424
	add	r7, r2, r3, asl #2
	add	r2, r1, #32
	add	r3, sp, #424
	add	r8, r3, r2, asl #2
	add	r3, r1, #40
	add	r2, sp, #424
	add	sl, r2, r3, asl #2
	add	r2, r1, #48
	add	r3, sp, #424
	add	r9, r3, r2, asl #2
	cmp	r0, r1
	add	r3, r1, #56
	add	r2, sp, #424
	sub	ip, ip, #1
	add	fp, r2, r3, asl #2
	beq	.L19
	ldr	r3, [sp, #52]
	ldr	r1, [sp, #52]
	ldr	r2, [r3, #-352]
	ldr	r3, [lr, #-352]
	str	r3, [r1, #-352]
	str	r2, [lr, #-352]
	ldr	r2, [sp, #48]
	ldr	r3, [r4, #-352]
	ldr	r1, [r2, #-352]
	str	r3, [r2, #-352]
	str	r1, [r4, #-352]
	ldr	r3, [sp, #44]
	ldr	lr, [sp, #44]
	ldr	r2, [r3, #-352]
	ldr	r3, [r5, #-352]
	str	r3, [lr, #-352]
	str	r2, [r5, #-352]
	ldr	r2, [sp, #40]
	ldr	r3, [r7, #-352]
	ldr	r1, [r2, #-352]
	str	r3, [r2, #-352]
	str	r1, [r7, #-352]
	ldr	r3, [sp, #36]
	ldr	lr, [sp, #36]
	ldr	r2, [r3, #-352]
	ldr	r3, [r8, #-352]
	str	r3, [lr, #-352]
	str	r2, [r8, #-352]
	ldr	r2, [sp, #32]
	ldr	r3, [sl, #-352]
	ldr	r1, [r2, #-352]
	str	r3, [r2, #-352]
	str	r1, [sl, #-352]
	ldr	r3, [sp, #28]
	ldr	lr, [sp, #28]
	ldr	r2, [r3, #-352]
	ldr	r3, [r9, #-352]
	str	r3, [lr, #-352]
	str	r2, [r9, #-352]
	ldr	r2, [sp, #24]
	ldr	r3, [fp, #-352]
	ldr	r1, [r2, #-352]
	str	r3, [r2, #-352]
	str	r1, [fp, #-352]
.L19:
	cmn	ip, #1
	bne	.L20
	bl	clock
	mov	r4, r0
.L21:
	ldr	r0, [r6, #0]
	bl	__aeabi_i2f
	mov	r1, #956301312
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L33+4
	bl	printf
	ldr	r0, [r6, #4]
	bl	__aeabi_i2f
	mov	r1, #956301312
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L33+4
	bl	printf
	ldr	r0, [r6, #8]
	bl	__aeabi_i2f
	mov	r1, #956301312
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L33+4
	bl	printf
	ldr	r0, [r6, #12]
	bl	__aeabi_i2f
	mov	r1, #956301312
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L33+4
	bl	printf
	ldr	r0, [r6, #16]
	bl	__aeabi_i2f
	mov	r1, #956301312
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L33+4
	bl	printf
	ldr	r0, [r6, #20]
	bl	__aeabi_i2f
	mov	r1, #956301312
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L33+4
	bl	printf
	ldr	r0, [r6, #24]
	bl	__aeabi_i2f
	mov	r1, #956301312
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L33+4
	bl	printf
	ldr	r0, [r6, #28]
	bl	__aeabi_i2f
	mov	r1, #956301312
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L33+4
	bl	printf
	mov	r0, #10
	bl	putchar
	ldr	r3, [sp, #0]
	add	r6, r6, #32
	cmp	r6, r3
	bne	.L21
	ldr	ip, [sp, #64]
	rsb	r0, ip, r4
	bl	__aeabi_i2d
	mov	r3, #1090519040
	add	r3, r3, #3047424
	mov	r2, #0
	add	r3, r3, #1152
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L33+8
	bl	printf
.L15:
	mov	r0, #0
	add	sp, sp, #428
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L32:
	ldr	r0, .L33+12
	bl	printf
	b	.L15
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
	.word	.LC1
	.word	.LC2
	.word	.LC0
	.size	main, .-main
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.11.2455, %object
	.size	C.11.2455, 32
C.11.2455:
	.space	32
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"No inverse exists\000"
	.space	2
.LC1:
	.ascii	"%.3f, \000"
	.space	1
.LC2:
	.ascii	"Time spent: %f\012\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
