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
	.file	"unoptimized_poor_condition.c"
	.global	__aeabi_fcmpge
	.text
	.align	2
	.global	pivoting
	.type	pivoting, %function
pivoting:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, .L20
	ldr	sl, [r3, #0]
	ldr	r1, .L20+4
	mov	r3, #0
	cmp	sl, #0
	sub	sp, sp, #28
	str	r3, [r1, #0]
	ble	.L15
	ldr	r2, .L20+8
	ldr	r1, .L20+12
	ldr	ip, [r2, #0]
	ldr	r1, [r1, #0]
	ldr	r2, .L20+16
	str	r1, [sp, #20]
	ldr	r2, [r2, #0]	@ float
	ldr	r1, .L20+20
	str	r2, [sp, #8]	@ float
	ldr	r1, [r1, #0]
	ldr	r2, .L20+24
	str	r3, [sp, #16]
	mov	r3, sl, asl #2
	str	r1, [sp, #12]
	ldr	fp, [r2, #0]
	ldr	r9, .L20+28
	str	r3, [sp, #4]
.L14:
	mov	r6, #0
	mov	r8, #0
.L11:
	ldr	r3, [r9, r8, asl #2]
	cmp	r3, #1
	moveq	r7, r6
	beq	.L8
	ldr	r1, .L20+32
	mov	r3, r8, asl #5
	add	r5, r1, r3
	mov	r4, #0
.L9:
	ldr	r3, [r9, r4, asl #2]
	cmp	r3, #0
	mov	r1, r6
	bne	.L4
	ldr	r3, [r5, #0]
	bic	r7, r3, #-2147483648
	mov	r0, r7
	bl	__aeabi_fcmpge
	cmp	r0, #0
	movne	fp, r4
	strne	r8, [sp, #12]
	bne	.L6
.L4:
	mov	r7, r6
.L6:
	add	r4, r4, #1
	cmp	sl, r4
	mov	r6, r7
	add	r5, r5, #4
	bgt	.L9
	mov	ip, sl
.L8:
	add	r8, r8, #1
	cmp	sl, r8
	movgt	r6, r7
	bgt	.L11
.L10:
	ldr	r3, [r9, fp, asl #2]
	ldr	r2, [sp, #12]
	add	r3, r3, #1
	cmp	fp, r2
	str	r3, [r9, fp, asl #2]
	beq	.L12
	ldr	r1, .L20+32
	mov	r3, r2, asl #5
	mov	r2, fp, asl #5
	add	r0, r1, r3
	add	r1, r1, r2
	mov	r2, #0
.L13:
	ldr	r3, [r0, #0]	@ float
	str	r3, [sp, #8]	@ float
	ldr	r3, [r1, #0]	@ float
	add	r2, r2, #1
	str	r3, [r0], #4	@ float
	ldr	r3, [sp, #8]	@ float
	cmp	sl, r2
	str	r3, [r1], #4	@ float
	bgt	.L13
	str	sl, [sp, #20]
	ldr	r2, [sp, #12]
.L12:
	ldr	r1, [sp, #16]
	ldr	r3, .L20+36
	str	r2, [r3, r1]
	ldr	r2, .L20+40
	ldr	r3, [sp, #4]
	str	fp, [r2, r1]
	add	r1, r1, #4
	cmp	r1, r3
	str	r1, [sp, #16]
	bne	.L14
	ldr	r1, .L20+8
	ldr	r3, [sp, #20]
	ldr	r2, .L20+12
	str	ip, [r1, #0]
	str	r3, [r2, #0]
	ldr	r1, [sp, #8]	@ float
	ldr	r2, .L20+16
	ldr	r3, [sp, #12]
	str	r1, [r2, #0]	@ float
	ldr	r1, .L20+20
	ldr	r2, .L20+24
	str	r3, [r1, #0]
	ldr	r3, .L20+44
	str	fp, [r2, #0]
	str	sl, [r3, #0]
	ldr	r2, .L20+48
	ldr	r3, .L20+4
	str	r7, [r2, #0]	@ float
	str	sl, [r3, #0]
.L15:
	add	sp, sp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	n
	.word	i
	.word	k
	.word	l
	.word	dum
	.word	irow
	.word	icol
	.word	.LANCHOR0
	.word	a
	.word	indexrow
	.word	indexcol
	.word	j
	.word	largest
	.size	pivoting, .-pivoting
	.align	2
	.global	reverse_pivot
	.type	reverse_pivot, %function
reverse_pivot:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L31
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r4, [r3, #0]
	ldr	r2, .L31+4
	sub	r8, r4, #1
	cmp	r8, #0
	str	r8, [r2, #0]
	blt	.L28
	ldr	fp, .L31+8
	ldr	r9, .L31+12
	ldr	sl, .L31+16
	ldr	r3, .L31+20
	mov	r2, r4, asl #2
	ldr	r1, [fp, #0]
	ldr	ip, [r9, #0]	@ float
	ldr	r7, .L31+24
	add	r6, r3, r2
	add	r5, sl, r2
.L27:
	ldr	r3, [r5, #-4]
	ldr	r2, [r6, #-4]
	cmp	r3, r2
	beq	.L24
	cmp	r4, #0
	movle	r1, #0
	ble	.L24
	mov	r3, r3, asl #2
	mov	r2, r2, asl #2
	add	r1, r7, r3
	add	r2, r7, r2
	mov	r0, #0
.L26:
	ldr	ip, [r1, #0]	@ float
	ldr	r3, [r2, #0]	@ float
	add	r0, r0, #1
	cmp	r4, r0
	str	r3, [r1], #32	@ float
	str	ip, [r2], #32	@ float
	bgt	.L26
	mov	r1, r4
.L24:
	sub	r5, r5, #4
	cmp	r5, sl
	sub	r6, r6, #4
	bne	.L27
	ldr	r2, .L31+4
	rsb	r3, r4, r8
	str	r1, [fp, #0]
	str	ip, [r9, #0]	@ float
	str	r3, [r2, #0]
.L28:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L32:
	.align	2
.L31:
	.word	n
	.word	l
	.word	k
	.word	dum
	.word	indexrow
	.word	indexcol
	.word	a
	.size	reverse_pivot, .-reverse_pivot
	.global	__aeabi_fcmpeq
	.global	__aeabi_fdiv
	.global	__aeabi_fmul
	.global	__aeabi_fsub
	.align	2
	.global	row_reduction
	.type	row_reduction, %function
row_reduction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r0, .L51
	ldr	r3, [r0, #0]
	ldr	r1, .L51+4
	cmp	r3, #0
	mov	r3, #0
	sub	sp, sp, #12
	str	r3, [r1, #0]
	ble	.L44
	mov	r0, r3
.L42:
	ldr	r3, .L51+8
	ldr	r2, [r3, r0, asl #2]
	mov	r1, r2, asl #5
	mov	r3, r2, asl #2
	add	r3, r3, r1
	ldr	r1, .L51+12
	ldr	ip, [r1, r0, asl #2]
	ldr	r1, .L51+16
	ldr	r0, [r1, r3]	@ float
	ldr	r3, .L51+20
	str	ip, [r3, #0]
	ldr	r3, .L51+24
	mov	r1, #0
	str	r2, [r3, #0]
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	.L50
.L35:
	ldr	r0, .L51+24
	ldr	r1, .L51
	ldr	fp, [r0, #0]
	ldr	r8, [r1, #0]
	ldr	r0, .L51+28
	mov	r1, #0
	mov	r2, fp, asl #5
	cmp	r8, #0
	str	r1, [r0, #0]
	mov	sl, fp, asl #2
	ldr	r0, .L51+16
	add	r3, sl, r2
	mov	r1, #1065353216
	ldrle	r2, .L51+32
	ldr	r6, [r0, r3]	@ float
	str	r1, [r0, r3]	@ float
	movle	r3, #0
	strle	r3, [r2, #0]
	ble	.L43
	add	r2, r0, r2
	str	r2, [sp, #4]
	mov	r5, r2
	mov	r4, #0
.L38:
	ldr	r0, [r5, #0]	@ float
	mov	r1, r6
	bl	__aeabi_fdiv
	add	r4, r4, #1
	cmp	r4, r8
	str	r0, [r5], #4	@ float
	blt	.L38
	ldr	r2, .L51+28
	ldr	r3, .L51+32
	ldr	r1, .L51+36
	mov	r0, #0
	str	r8, [r2, #0]
	ldr	r2, .L51+16
	str	r0, [r3, #0]
	ldr	r7, [r1, #0]	@ float
	add	r9, r2, sl
	mov	sl, r0
.L41:
	cmp	fp, sl
	beq	.L39
	mov	r3, #0
	ldr	r0, .L51+16
	ldr	r7, [r9, #0]	@ float
	ldr	r6, [sp, #4]
	str	r3, [r9, #0]	@ float
	mov	r3, sl, asl #5
	add	r5, r0, r3
	mov	r4, #0
.L40:
	ldr	r1, [r6], #4	@ float
	mov	r0, r7
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r5, #0]	@ float
	bl	__aeabi_fsub
	add	r4, r4, #1
	cmp	r4, r8
	str	r0, [r5], #4	@ float
	blt	.L40
.L39:
	add	sl, sl, #1
	cmp	sl, r8
	add	r9, r9, #32
	blt	.L41
	ldr	r1, .L51+36
	ldr	r2, .L51+28
	ldr	r3, .L51+32
	str	r7, [r1, #0]	@ float
	str	r8, [r2, #0]
	str	r8, [r3, #0]
.L43:
	ldr	r0, .L51+4
	ldr	r3, [r0, #0]
	ldr	r1, .L51+4
	add	r0, r3, #1
	cmp	r0, r8
	str	r0, [r1, #0]
	blt	.L42
.L44:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L50:
	ldr	r0, .L51+40
	bl	printf
	b	.L35
.L52:
	.align	2
.L51:
	.word	n
	.word	i
	.word	indexcol
	.word	indexrow
	.word	a
	.word	irow
	.word	icol
	.word	l
	.word	p
	.word	dum
	.word	.LC0
	.size	row_reduction, .-row_reduction
	.global	__aeabi_f2d
	.align	2
	.global	print_result
	.type	print_result, %function
print_result:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r6, .L61
	ldr	r3, [r6, #0]
	ldr	r5, .L61+4
	cmp	r3, #0
	mov	r3, #0
	str	r3, [r5, #0]
	ble	.L58
	ldr	r4, .L61+8
	ldr	r7, .L61+12
	mov	r8, r3
.L57:
	ldr	r3, [r6, #0]
	cmp	r3, #0
	str	r8, [r4, #0]
	ble	.L55
	mov	r1, r8
.L56:
	ldr	r3, [r5, #0]
	mov	r3, r3, asl #3
	add	r3, r3, r1
	ldr	r0, [r7, r3, asl #2]	@ float
	bl	__aeabi_f2d
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L61+16
	bl	printf
	ldr	r3, [r4, #0]
	ldr	r2, [r6, #0]
	add	r1, r3, #1
	cmp	r2, r1
	str	r1, [r4, #0]
	bgt	.L56
.L55:
	mov	r0, #10
	bl	putchar
	ldr	r3, [r5, #0]
	ldr	r2, [r6, #0]
	add	r3, r3, #1
	cmp	r2, r3
	str	r3, [r5, #0]
	bgt	.L57
.L58:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L62:
	.align	2
.L61:
	.word	n
	.word	i
	.word	j
	.word	a
	.word	.LC1
	.size	print_result, .-print_result
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r9, .L110
	mov	r3, #8
	str	r3, [r9, #0]
	mov	r1, #1073741824
	ldr	r3, .L110+4
	mov	ip, #1073741824
	mov	lr, #1073741824
	mov	r5, #1073741824
	mov	r0, #1073741824
	mov	r8, #1090519040
	mov	sl, #1090519040
	add	r1, r1, #8388608
	add	ip, ip, #4194304
	mov	r2, #1065353216
	add	lr, lr, #14680064
	mov	r4, #1073741824
	add	r5, r5, #10485760
	mov	r6, #1090519040
	add	r0, r0, #12582912
	add	r8, r8, #6291456
	add	sl, sl, #4194304
	ldr	r9, .L110+4
	str	r1, [r3, #4]	@ float
	str	r1, [r3, #32]	@ float
	str	r1, [r3, #68]	@ float
	str	r1, [r3, #76]	@ float
	str	r8, [r3, #88]	@ float
	str	r0, [r3, #108]	@ float
	str	r2, [r3, #0]	@ float
	str	ip, [r3, #8]	@ float
	str	lr, [r3, #12]	@ float
	str	lr, [r3, #20]	@ float
	str	r2, [r3, #24]	@ float
	str	r0, [r3, #40]	@ float
	str	r0, [r3, #44]	@ float
	str	r8, [r3, #52]	@ float
	str	r2, [r3, #56]	@ float
	str	ip, [r3, #72]	@ float
	str	r2, [r3, #80]	@ float
	str	r2, [r3, #96]	@ float
	str	r2, [r3, #100]	@ float
	str	ip, [r3, #116]	@ float
	str	r2, [r3, #120]	@ float
	str	r6, [r3, #16]	@ float
	str	r5, [r3, #28]	@ float
	str	r4, [r3, #36]	@ float
	str	r6, [r3, #48]	@ float
	str	r5, [r3, #60]	@ float
	str	r4, [r3, #64]	@ float
	str	r5, [r3, #84]	@ float
	str	sl, [r3, #92]	@ float
	str	r4, [r3, #104]	@ float
	str	r4, [r3, #112]	@ float
	str	r1, [r3, #124]	@ float
	str	r2, [r3, #144]	@ float
	str	r4, [r3, #128]	@ float
	str	sl, [r3, #184]	@ float
	str	r5, [r3, #188]	@ float
	mov	r3, #1090519040
	add	r3, r3, #5242880
	str	r3, [r9, #196]	@ float
	mov	r7, #1090519040
	mov	r3, #1090519040
	mov	r2, #1090519040
	add	r7, r7, #1048576
	add	r3, r3, #7340032
	add	r2, r2, #8388608
	sub	sp, sp, #52
	str	r3, [r9, #224]	@ float
	str	r1, [r9, #252]	@ float
	str	r1, [r9, #140]	@ float
	str	r1, [r9, #172]	@ float
	str	r1, [r9, #180]	@ float
	str	r1, [r9, #240]	@ float
	str	ip, [r9, #220]	@ float
	str	r2, [r9, #228]	@ float
	str	r6, [r9, #232]	@ float
	str	r4, [r9, #236]	@ float
	str	lr, [r9, #244]	@ float
	str	r7, [r9, #248]	@ float
	str	r5, [r9, #132]	@ float
	str	r6, [r9, #136]	@ float
	str	ip, [r9, #148]	@ float
	str	lr, [r9, #152]	@ float
	str	ip, [r9, #156]	@ float
	str	ip, [r9, #160]	@ float
	str	r7, [r9, #164]	@ float
	str	ip, [r9, #168]	@ float
	str	r5, [r9, #176]	@ float
	str	lr, [r9, #192]	@ float
	str	r7, [r9, #200]	@ float
	str	lr, [r9, #204]	@ float
	str	ip, [r9, #208]	@ float
	str	r4, [r9, #212]	@ float
	str	lr, [r9, #216]	@ float
	bl	clock
	str	r0, [sp, #24]
	ldr	r0, .L110
	ldr	r8, [r0, #0]
	ldr	r1, .L110+8
	mov	r3, #0
	cmp	r8, #0
	str	r3, [r1, #0]
	ble	.L64
	ldr	r9, .L110+12
	ldr	r2, .L110+16
	ldr	r0, .L110+20
	ldr	r1, [r9, #0]
	str	r9, [sp, #16]
	ldr	r9, .L110+24
	str	r2, [sp, #20]
	ldr	ip, [r2, #0]
	ldr	r2, [r0, #0]	@ float
	ldr	r9, [r9, #0]
	str	r0, [sp, #8]
	str	r1, [sp, #28]
	ldr	r0, .L110+28
	ldr	r1, .L110+32
	str	r2, [sp, #32]	@ float
	mov	r2, r8, asl #2
	str	r9, [sp, #36]
	ldr	fp, [r0, #0]
	ldr	r9, .L110+36
	str	r1, [sp, #12]
	str	r3, [sp, #40]
	str	r2, [sp, #4]
.L76:
	mov	r6, #0
	mov	sl, #0
.L73:
	ldr	r3, [r9, sl, asl #2]
	cmp	r3, #1
	moveq	r7, r6
	beq	.L70
	ldr	r0, .L110+4
	mov	r3, sl, asl #5
	add	r5, r0, r3
	mov	r4, #0
.L71:
	ldr	r3, [r9, r4, asl #2]
	cmp	r3, #0
	mov	r1, r6
	bne	.L66
	ldr	r3, [r5, #0]
	bic	r7, r3, #-2147483648
	mov	r0, r7
	bl	__aeabi_fcmpge
	cmp	r0, #0
	movne	fp, r4
	strne	sl, [sp, #36]
	bne	.L68
.L66:
	mov	r7, r6
.L68:
	add	r4, r4, #1
	cmp	r8, r4
	mov	r6, r7
	add	r5, r5, #4
	bgt	.L71
	mov	ip, r8
.L70:
	add	sl, sl, #1
	cmp	r8, sl
	movgt	r6, r7
	bgt	.L73
.L72:
	ldr	r3, [r9, fp, asl #2]
	ldr	r1, [sp, #36]
	add	r3, r3, #1
	cmp	r1, fp
	str	r3, [r9, fp, asl #2]
	beq	.L74
	mov	r3, r1, asl #5
	ldr	r1, .L110+4
	mov	r2, fp, asl #5
	add	r0, r1, r3
	add	r1, r1, r2
	mov	r2, #0
.L75:
	ldr	r3, [r0, #0]	@ float
	str	r3, [sp, #32]	@ float
	ldr	r3, [r1, #0]	@ float
	add	r2, r2, #1
	str	r3, [r0], #4	@ float
	ldr	r3, [sp, #32]	@ float
	cmp	r2, r8
	str	r3, [r1], #4	@ float
	blt	.L75
	str	r8, [sp, #28]
	ldr	r1, [sp, #36]
.L74:
	ldr	r0, [sp, #40]
	ldr	r2, [sp, #12]
	ldr	r3, .L110+40
	str	r1, [r2, r0]
	ldr	r1, [sp, #4]
	str	fp, [r3, r0]
	add	r0, r0, #4
	cmp	r0, r1
	str	r0, [sp, #40]
	bne	.L76
	ldr	r3, [sp, #20]
	str	ip, [r3, #0]
	ldr	r3, .L110+44
	ldr	r1, [sp, #32]	@ float
	str	r7, [r3, #0]	@ float
	ldr	r3, [sp, #8]
	ldr	r0, [sp, #28]
	ldr	r9, [sp, #16]
	str	r1, [r3, #0]	@ float
	ldr	r4, .L110+48
	ldr	r1, .L110+28
	ldr	r3, .L110+8
	mov	r2, #0
	str	r0, [r9, #0]
	ldr	r0, .L110+24
	ldr	r9, [sp, #36]
	str	r8, [r4, #0]
	str	fp, [r1, #0]
	str	r2, [r3, #0]
	str	r9, [r0, #0]
	mov	r0, r2
.L84:
	ldr	r9, .L110+40
	ldr	r2, [r9, r0, asl #2]
	mov	r1, r2, asl #5
	mov	r3, r2, asl #2
	add	r3, r3, r1
	ldr	r9, .L110+4
	ldr	r1, [sp, #12]
	ldr	ip, [r1, r0, asl #2]
	ldr	r0, [r9, r3]	@ float
	ldr	r3, .L110+24
	ldr	r9, .L110+28
	mov	r1, #0
	str	ip, [r3, #0]
	str	r2, [r9, #0]
	bl	__aeabi_fcmpeq
	cmp	r0, #0
	bne	.L109
.L77:
	ldr	r0, .L110+28
	ldr	r1, .L110
	ldr	fp, [r0, #0]
	ldr	r8, [r1, #0]
	ldr	r9, [sp, #16]
	ldr	r1, .L110+4
	mov	r2, fp, asl #5
	mov	sl, fp, asl #2
	mov	r0, #0
	cmp	r8, #0
	add	r3, sl, r2
	str	r0, [r9, #0]
	mov	r9, #1065353216
	ldr	r6, [r1, r3]	@ float
	str	r9, [r1, r3]	@ float
	ldrle	r1, .L110+52
	movle	r2, #0
	strle	r2, [r1, #0]
	ble	.L95
	add	r2, r1, r2
	str	r2, [sp, #44]
	mov	r5, r2
	mov	r4, r0
.L80:
	ldr	r0, [r5, #0]	@ float
	mov	r1, r6
	bl	__aeabi_fdiv
	add	r4, r4, #1
	cmp	r8, r4
	str	r0, [r5], #4	@ float
	bgt	.L80
	ldr	r0, [sp, #16]
	ldr	r1, .L110+52
	ldr	r3, [sp, #8]
	mov	r2, #0
	str	r8, [r0, #0]
	ldr	r0, .L110+4
	str	r2, [r1, #0]
	ldr	r7, [r3, #0]	@ float
	add	r9, r0, sl
	mov	sl, r2
.L83:
	cmp	fp, sl
	beq	.L81
	mov	r1, #0
	ldr	r2, .L110+4
	ldr	r7, [r9, #0]	@ float
	mov	r3, sl, asl #5
	str	r1, [r9, #0]	@ float
	ldr	r6, [sp, #44]
	add	r5, r2, r3
	mov	r4, #0
.L82:
	ldr	r1, [r6], #4	@ float
	mov	r0, r7
	bl	__aeabi_fmul
	mov	r1, r0
	ldr	r0, [r5, #0]	@ float
	bl	__aeabi_fsub
	add	r4, r4, #1
	cmp	r4, r8
	str	r0, [r5], #4	@ float
	blt	.L82
.L81:
	add	sl, sl, #1
	cmp	sl, r8
	add	r9, r9, #32
	blt	.L83
	ldr	r3, [sp, #8]
	ldr	r9, [sp, #16]
	ldr	r0, .L110+52
	str	r7, [r3, #0]	@ float
	str	r8, [r9, #0]
	str	r8, [r0, #0]
.L95:
	ldr	r1, .L110+8
	ldr	r3, [r1, #0]
	add	r0, r3, #1
	cmp	r0, r8
	str	r0, [r1, #0]
	blt	.L84
.L94:
	sub	r5, r8, #1
	ldr	r2, [sp, #16]
	cmp	r5, #0
	str	r5, [r2, #0]
	blt	.L85
	ldr	r3, .L110+16
	ldr	r9, .L110+20
	ldr	r0, .L110+32
	str	r3, [sp, #20]
	ldr	r1, [r3, #0]
	ldr	r3, .L110+40
	mov	r2, r8, asl #2
	str	r9, [sp, #8]
	str	r0, [sp, #12]
	ldr	ip, [r9, #0]	@ float
	add	r4, r3, r2
	add	lr, r0, r2
.L89:
	ldr	r3, [lr, #-4]
	ldr	r2, [r4, #-4]
	cmp	r3, r2
	beq	.L86
	cmp	r8, #0
	movle	r1, #0
	ble	.L86
	ldr	r9, .L110+4
	mov	r3, r3, asl #2
	mov	r2, r2, asl #2
	add	r1, r9, r3
	add	r2, r9, r2
	mov	r0, #0
.L88:
	ldr	ip, [r1, #0]	@ float
	ldr	r3, [r2, #0]	@ float
	add	r0, r0, #1
	cmp	r8, r0
	str	r3, [r1], #32	@ float
	str	ip, [r2], #32	@ float
	bgt	.L88
	mov	r1, r8
.L86:
	ldr	r0, [sp, #12]
	sub	lr, lr, #4
	cmp	lr, r0
	sub	r4, r4, #4
	bne	.L89
	ldr	r2, [sp, #20]
	ldr	r9, [sp, #8]
	ldr	r0, [sp, #16]
	rsb	r3, r8, r5
	str	r1, [r2, #0]
	str	ip, [r9, #0]	@ float
	str	r3, [r0, #0]
.L85:
	bl	clock
	ldr	r1, .L110
	ldr	r3, [r1, #0]
	ldr	r2, .L110+8
	cmp	r3, #0
	mov	r3, #0
	mov	r6, r0
	str	r3, [r2, #0]
	ble	.L90
	ldr	r4, .L110+48
	mov	r5, r3
.L93:
	ldr	r9, .L110
	ldr	r3, [r9, #0]
	cmp	r3, #0
	str	r5, [r4, #0]
	ble	.L91
	mov	r1, r5
.L92:
	ldr	r0, .L110+8
	ldr	r3, [r0, #0]
	mov	r3, r3, asl #3
	add	r3, r3, r1
	ldr	r1, .L110+4
	ldr	r0, [r1, r3, asl #2]	@ float
	bl	__aeabi_f2d
	ldr	r9, .L110
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L110+56
	bl	printf
	ldr	r3, [r4, #0]
	ldr	r2, [r9, #0]
	add	r1, r3, #1
	cmp	r1, r2
	str	r1, [r4, #0]
	blt	.L92
.L91:
	mov	r0, #10
	bl	putchar
	ldr	r0, .L110+8
	ldr	r1, .L110
	ldr	r3, [r0, #0]
	ldr	r2, [r1, #0]
	add	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #0]
	blt	.L93
.L90:
	ldr	r2, [sp, #24]
	rsb	r0, r2, r6
	bl	__aeabi_i2d
	mov	r3, #1090519040
	add	r3, r3, #3047424
	mov	r2, #0
	add	r3, r3, #1152
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	ldr	r0, .L110+60
	bl	printf
	mov	r0, #0
	add	sp, sp, #52
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L109:
	ldr	r0, .L110+64
	bl	printf
	b	.L77
.L64:
	ldr	r9, .L110+8
	ldr	r0, .L110+12
	str	r3, [r9, #0]
	str	r0, [sp, #16]
	b	.L94
.L111:
	.align	2
.L110:
	.word	n
	.word	a
	.word	i
	.word	l
	.word	k
	.word	dum
	.word	irow
	.word	icol
	.word	indexrow
	.word	.LANCHOR0
	.word	indexcol
	.word	largest
	.word	j
	.word	p
	.word	.LC1
	.word	.LC2
	.word	.LC0
	.size	main, .-main
	.global	pivot
	.comm	n,4,4
	.comm	a,256,4
	.comm	dum,4,4
	.comm	pivotinv,4,4
	.comm	largest,4,4
	.comm	i,4,4
	.comm	j,4,4
	.comm	k,4,4
	.comm	irow,4,4
	.comm	icol,4,4
	.comm	l,4,4
	.comm	indexrow,32,4
	.comm	indexcol,32,4
	.comm	p,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"No inverse exists\000"
	.space	2
.LC1:
	.ascii	"%f, \000"
	.space	3
.LC2:
	.ascii	"Time spent: %f\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	pivot, %object
	.size	pivot, 32
pivot:
	.space	32
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
