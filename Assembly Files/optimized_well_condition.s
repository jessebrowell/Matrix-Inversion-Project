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
	.file	"optimized_well_condition.c"
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
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	ip, .L28
	mov	lr, ip
	sub	sp, sp, #108
	ldmia	lr!, {r0, r1, r2, r3}
	add	r4, sp, #32
	str	r4, [sp, #12]
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	add	ip, ip, #36
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2}
	add	ip, sp, #92
	str	ip, [sp, #8]
	mov	ip, #0
	ldr	r3, [lr, #0]
	str	ip, [sp, #28]
	ldr	ip, [sp, #8]
	str	r3, [r4, #0]
	stmia	ip, {r0, r1, r2}
	add	r0, sp, #68
	str	r0, [sp, #4]
	bl	clock
	str	r0, [sp, #24]
.L2:
	mov	r0, #0
	add	lr, sp, #32
	mov	r1, r0
.L6:
	add	r2, sp, #92
	ldr	r3, [r2, r1, asl #2]
	cmp	r3, #1
	mov	r2, r1, asl #2
	beq	.L3
	ldr	ip, [sp, #92]
	cmp	ip, #0
	bne	.L4
	add	r4, sp, #104
	add	r3, r4, r1, asl #4
	rsb	r3, r2, r3
	ldr	r2, [r3, #-72]
	cmp	r2, #0
	rsblt	r2, r2, #0
	cmp	r0, r2
	movle	r0, r2
	movle	r5, ip
	movle	r8, r1
.L4:
	ldr	r3, [sp, #96]
	cmp	r3, #0
	bne	.L5
	ldr	r3, [lr, #4]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r0, r3
	movle	r0, r3
	movle	r8, r1
	movle	r5, #1
.L5:
	ldr	r3, [sp, #100]
	cmp	r3, #0
	bne	.L3
	ldr	r3, [lr, #8]
	cmp	r3, #0
	rsblt	r3, r3, #0
	cmp	r3, r0
	movge	r0, r3
	movge	r8, r1
	movge	r5, #2
.L3:
	add	r1, r1, #1
	cmp	r1, #3
	add	lr, lr, #12
	bne	.L6
	mov	r9, r5, asl #2
	add	ip, sp, #104
	add	r3, ip, r9
	ldr	r3, [r3, #-12]
	cmp	r8, r5
	str	r3, [sp, #20]
	moveq	r7, r8, asl #4
	beq	.L7
	mov	r3, r8, asl #4
	mov	r7, r5, asl #4
	add	r0, sp, #104
	sub	r3, r3, r8, asl #2
	rsb	r2, r9, r7
	add	r4, r0, r2
	add	lr, r0, r3
	ldr	r0, [lr, #-72]
	ldr	r1, [r4, #-72]
	mov	r3, r8, asl #1
	mov	r2, r5, asl #1
	add	r3, r3, r8
	add	r2, r2, r5
	str	r1, [lr, #-72]
	add	ip, sp, #104
	str	r0, [r4, #-72]
	add	r3, r3, #1
	add	r2, r2, #1
	add	r0, ip, r2, asl #2
	add	r1, ip, r3, asl #2
	ldr	ip, [r1, #-72]
	ldr	r3, [r0, #-72]
	str	r3, [r1, #-72]
	str	ip, [r0, #-72]
	ldr	r2, [lr, #-64]
	ldr	r3, [r4, #-64]
	str	r3, [lr, #-64]
	str	r2, [r4, #-64]
.L7:
	add	r0, sp, #104
	add	r6, r0, r7
	ldr	r4, [r6, #-72]
	mov	r0, r4
	bl	__aeabi_i2d
	mov	r2, #0
	mov	r3, #0
	bl	__aeabi_dcmpeq
	cmp	r0, #0
	bne	.L27
	mov	r1, r4
	mov	r0, #268435456
	bl	__aeabi_idiv
	mov	r1, #16384
	str	r1, [r6, #-72]
	rsb	r3, r9, r7
	add	r2, sp, #104
	add	ip, r2, r3
	ldr	r2, [ip, #-72]
	mul	r1, r2, r0
	mov	r3, r5, asl #1
	mov	r1, r1, asr #14
	add	r3, r3, r5
	str	r1, [ip, #-72]
	add	r3, r3, #1
	add	r4, sp, #104
	add	r1, r4, r3, asl #2
	ldr	r2, [r1, #-72]
	mul	r3, r2, r0
	mov	r3, r3, asr #14
	str	r3, [r1, #-72]
	ldr	r2, [ip, #-64]
	mul	r3, r2, r0
	mov	r7, ip
	mov	r3, r3, asr #14
	add	r0, sp, #32
	str	r3, [ip, #-64]
	sub	fp, r1, #72
	add	ip, r0, r9
	add	r6, sp, #32
	add	lr, sp, #32
	mov	r4, #0
	sub	sl, r7, #72
.L12:
	cmp	r4, r5
	add	r4, r4, #1
	beq	.L11
	mov	r1, #0
	ldr	r0, [ip, #0]
	str	r1, [ip, #0]
	ldr	r2, [sl, #0]
	mul	r1, r2, r0
	ldr	r3, [lr, #0]
	sub	r3, r3, r1, asr #14
	str	r3, [lr, #0]
	ldr	r2, [fp, #0]
	mul	r1, r2, r0
	ldr	r3, [lr, #4]
	sub	r3, r3, r1, asr #14
	str	r3, [lr, #4]
	ldr	r2, [r7, #-64]
	mul	r1, r2, r0
	ldr	r3, [lr, #8]
	sub	r3, r3, r1, asr #14
	str	r3, [lr, #8]
.L11:
	cmp	r4, #3
	add	ip, ip, #12
	add	lr, lr, #12
	bne	.L12
	ldr	r2, [sp, #28]
	add	r3, sp, #80
	add	r4, sp, #68
	str	r8, [r3, r2]
	str	r5, [r4, r2]
	add	r2, r2, #4
	cmp	r2, #12
	str	r2, [sp, #28]
	beq	.L13
	ldr	r0, [sp, #20]
	add	ip, sp, #104
	add	r2, ip, r9
	add	r3, r0, #1
	str	r3, [r2, #-12]
	b	.L2
.L13:
	mov	ip, #2
.L15:
	add	r1, sp, #80
	ldr	r0, [r1, ip, asl #2]
	add	r4, sp, #68
	ldr	r1, [r4, ip, asl #2]
	add	r2, sp, #104
	add	r3, r0, #3
	add	r8, r2, r3, asl #2
	add	r7, r2, r0, asl #2
	add	r3, sp, #104
	add	r2, r0, #6
	add	sl, r3, r2, asl #2
	add	lr, r3, r1, asl #2
	add	r2, sp, #104
	add	r3, r1, #3
	add	r4, r2, r3, asl #2
	cmp	r0, r1
	add	r2, r1, #6
	add	r3, sp, #104
	sub	ip, ip, #1
	add	r5, r3, r2, asl #2
	beq	.L14
	ldr	r2, [r7, #-72]
	ldr	r3, [lr, #-72]
	str	r3, [r7, #-72]
	str	r2, [lr, #-72]
	ldr	r3, [r4, #-72]
	ldr	r1, [r8, #-72]
	str	r3, [r8, #-72]
	str	r1, [r4, #-72]
	ldr	r2, [sl, #-72]
	ldr	r3, [r5, #-72]
	str	r3, [sl, #-72]
	str	r2, [r5, #-72]
.L14:
	cmn	ip, #1
	bne	.L15
	bl	clock
	mov	r4, r0
.L16:
	ldr	r0, [r6, #0]
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L28+4
	bl	printf
	ldr	r0, [r6, #4]
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L28+4
	bl	printf
	ldr	r0, [r6, #8]
	bl	__aeabi_i2f
	mov	r1, #947912704
	bl	__aeabi_fmul
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L28+4
	bl	printf
	mov	r0, #10
	bl	putchar
	ldr	ip, [sp, #4]
	add	r6, r6, #12
	cmp	r6, ip
	bne	.L16
	ldr	r1, [sp, #24]
	rsb	r0, r1, r4
	bl	__aeabi_i2d
	mov	r3, #1090519040
	add	r3, r3, #3047424
	mov	r2, #0
	add	r3, r3, #1152
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L28+8
	bl	printf
.L10:
	mov	r0, #0
	add	sp, sp, #108
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L27:
	ldr	r0, .L28+12
	bl	printf
	b	.L10
.L29:
	.align	2
.L28:
	.word	.LANCHOR0
	.word	.LC1
	.word	.LC2
	.word	.LC0
	.size	main, .-main
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	C.11.2440, %object
	.size	C.11.2440, 36
C.11.2440:
	.word	0
	.word	81920
	.word	0
	.word	49152
	.word	0
	.word	16384
	.word	16384
	.word	49152
	.word	65536
	.type	C.12.2441, %object
	.size	C.12.2441, 12
C.12.2441:
	.space	12
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"No inverse exists\000"
	.space	2
.LC1:
	.ascii	"%.4f, \000"
	.space	1
.LC2:
	.ascii	"Time spent: %f\012\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
