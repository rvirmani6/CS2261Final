	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet.part.0, %function
updateBullet.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #16]
	ldr	r1, [r0]
	add	r2, r1, r3
	cmp	r3, r2
	mov	r4, r0
	sub	sp, sp, #20
	ldr	r0, [r0, #4]
	bge	.L2
	ldr	r2, [r4, #12]
	add	r2, r0, r2
	sub	ip, r2, #1
	cmp	ip, #238
	bls	.L48
.L2:
	mov	r2, #0
	str	r2, [r4, #24]
.L3:
	ldr	r2, .L49
	ldr	ip, [r2, #8]
	ldr	r5, [r2, #12]
	str	ip, [sp, #12]
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	str	r5, [sp, #8]
	ldr	r5, .L49+4
	ldr	r2, [r4, #20]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L4
	ldr	r3, .L49+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L4:
	ldr	r2, .L49+12
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L5
	ldr	r3, .L49+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L5:
	ldr	r2, .L49+16
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L6
	ldr	r3, .L49+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L6:
	ldr	r2, .L49+20
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L7
	ldr	r3, .L49+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L7:
	ldr	r2, .L49+24
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L8
	ldr	r3, .L49+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L8:
	ldr	r2, .L49+28
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L1
	ldr	r3, .L49+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L48:
	ldr	r0, [r4, #8]
	add	r1, r1, r0
	str	r2, [r4, #4]
	mov	r0, r2
	str	r1, [r4]
	b	.L3
.L50:
	.align	2
.L49:
	.word	cloud1
	.word	collision
	.word	cloudsActive
	.word	cloud2
	.word	cloud3
	.word	cloudA
	.word	cloudB
	.word	cloudC
	.size	updateBullet.part.0, .-updateBullet.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLaser.part.4, %function
updateLaser.part.4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r3, [r0, #16]
	ldr	r1, [r0]
	add	r2, r1, r3
	cmp	r3, r2
	mov	r4, r0
	sub	sp, sp, #20
	ldr	r0, [r0, #4]
	bge	.L52
	ldr	r2, [r4, #12]
	add	r2, r0, r2
	sub	ip, r2, #1
	cmp	ip, #238
	bls	.L100
.L52:
	mov	r2, #0
	str	r2, [r4, #24]
.L53:
	ldr	r2, .L101
	ldr	ip, [r2, #8]
	ldr	r5, [r2, #12]
	str	ip, [sp, #12]
	ldr	lr, [r2]
	ldr	ip, [r2, #4]
	str	r5, [sp, #8]
	ldr	r5, .L101+4
	ldr	r2, [r4, #20]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L54
	ldr	r3, .L101+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L54:
	ldr	r2, .L101+12
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L55
	ldr	r3, .L101+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L55:
	ldr	r2, .L101+16
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L56
	ldr	r3, .L101+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L56:
	ldr	r2, .L101+20
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L57
	ldr	r3, .L101+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L57:
	ldr	r2, .L101+24
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L58
	ldr	r3, .L101+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L58:
	ldr	r2, .L101+28
	ldr	lr, [r2, #8]
	ldr	r1, [r2, #12]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L59
	ldr	r3, .L101+8
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #0
	strne	r3, [r4, #24]
.L59:
	ldr	r2, .L101+32
	ldr	lr, [r2, #16]
	ldr	r1, [r2, #20]
	ldm	r2, {r0, ip}
	ldr	r3, [r4, #16]
	str	lr, [sp, #12]
	ldr	r2, [r4, #20]
	str	r1, [sp, #8]
	ldr	r1, [r4]
	str	r0, [sp, #4]
	ldr	r0, [r4, #4]
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L51
	mov	r3, #0
	ldr	r2, .L101+36
	ldr	r1, [r2]
	cmp	r1, #2
	ldrle	r1, .L101+40
	str	r3, [r4, #24]
	ldrle	r3, [r1, #52]
	addle	r3, r3, #1
	strle	r3, [r1, #52]
	strle	r3, [r2]
.L51:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L100:
	ldr	r0, [r4, #8]
	add	r1, r1, r0
	str	r2, [r4, #4]
	mov	r0, r2
	str	r1, [r4]
	b	.L53
.L102:
	.align	2
.L101:
	.word	cloud1
	.word	collision
	.word	cloudsActive
	.word	cloud2
	.word	cloud3
	.word	cloudA
	.word	cloudB
	.word	cloudC
	.word	star
	.word	livesRemaining
	.word	player
	.size	updateLaser.part.4, .-updateLaser.part.4
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateUfo.part.6, %function
updateUfo.part.6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r2, [r0]
	cmp	r2, #1
	mov	r5, r0
	sub	sp, sp, #16
	mov	r7, r1
	ldr	r0, [r0, #8]
	ble	.L104
	ldr	r3, [r5, #20]
	add	r3, r2, r3
	cmp	r3, #90
	bgt	.L104
.L105:
	ldr	r3, [r5, #4]
	cmp	r3, #1
	ldr	r1, [r5, #12]
	ble	.L106
	ldr	ip, [r5, #16]
	add	ip, r3, ip
	cmp	ip, #238
	bgt	.L106
.L107:
	mov	r8, #0
	add	r2, r2, r0
	add	r3, r3, r1
	ldr	r4, .L120
	stm	r5, {r2, r3}
	ldr	r9, .L120+4
	ldr	r10, .L120+8
	add	r6, r4, #160
.L111:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L118
.L109:
	add	r4, r4, #32
	cmp	r4, r6
	bne	.L111
	ldr	r3, .L120+12
	mov	lr, pc
	bx	r3
	ldr	r1, .L120+16
	smull	r2, r3, r0, r1
	add	r2, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #6
	add	r2, r3, r3, lsl #2
	add	r2, r3, r2, lsl #1
	add	r3, r3, r2, lsl #3
	cmp	r0, r3
	bne	.L103
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L119
.L103:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L106:
	rsb	r1, r1, #0
	str	r1, [r5, #12]
	b	.L107
.L104:
	rsb	r0, r0, #0
	str	r0, [r5, #8]
	b	.L105
.L118:
	ldr	lr, [r4, #16]
	ldr	ip, [r4, #20]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L109
	ldr	r3, [r10]
	sub	r3, r3, #1
	str	r8, [r4, #24]
	str	r3, [r10]
	str	r8, [r5, #48]
	str	r8, [r5, #44]
	b	.L109
.L119:
	mov	r0, #1
	ldr	r1, [r5, #16]
	ldr	r3, [r5, #4]
	ldr	r2, [r7, #20]
	add	r1, r1, r1, lsr #31
	add	r3, r3, r1, asr r0
	add	r2, r2, r2, lsr #31
	ldr	r1, [r5]
	sub	r3, r3, r2, asr r0
	stm	r7, {r1, r3}
	str	r0, [r7, #24]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L121:
	.align	2
.L120:
	.word	bullets
	.word	collision
	.word	ufosRemaining
	.word	rand
	.word	-1206451487
	.size	updateUfo.part.6, .-updateUfo.part.6
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUfo.part.7, %function
drawUfo.part.7:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	ldr	r2, .L127
	ldr	r1, [r0, #52]
	ldr	r2, [r2]
	str	lr, [sp, #-4]!
	ldr	ip, .L127+4
	ldrb	lr, [r0]	@ zero_extendqisi2
	lsl	r3, r3, #23
	lsl	r1, r1, #3
	lsr	r3, r3, #23
	add	r0, ip, r1
	strh	lr, [ip, r1]	@ movhi
	orr	r3, r3, #16384
	ands	r1, r2, #63
	strh	r3, [r0, #2]	@ movhi
	strheq	r1, [r0, #4]	@ movhi
	beq	.L122
	rsbs	r2, r2, #0
	and	r2, r2, #63
	rsbpl	r1, r2, #0
	cmp	r1, #8
	moveq	r3, #2
	strheq	r3, [r0, #4]	@ movhi
	beq	.L122
	cmp	r1, #32
	moveq	r3, #4
	strheq	r3, [r0, #4]	@ movhi
.L122:
	ldr	lr, [sp], #4
	bx	lr
.L128:
	.align	2
.L127:
	.word	numFrames
	.word	shadowOAM
	.size	drawUfo.part.7, .-drawUfo.part.7
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCloud.part.9, %function
drawCloud.part.9:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	str	lr, [sp, #-4]!
	mvn	r3, r3, lsr #17
	mov	lr, #192
	ldr	r2, [r0, #28]
	ldrb	r1, [r0]	@ zero_extendqisi2
	ldr	ip, .L131
	lsl	r2, r2, #3
	add	r0, ip, r2
	orr	r1, r1, #16384
	strh	r1, [ip, r2]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L132:
	.align	2
.L131:
	.word	shadowOAM
	.size	drawCloud.part.9, .-drawCloud.part.9
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCloud1.part.11, %function
drawCloud1.part.11:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r2, [r0, #28]
	ldrb	r1, [r0]	@ zero_extendqisi2
	ldr	ip, .L135
	str	lr, [sp, #-4]!
	lsl	r2, r2, #3
	ldr	lr, .L135+4
	add	r0, ip, r2
	orr	r1, r1, #16384
	strh	r1, [ip, r2]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L136:
	.align	2
.L135:
	.word	shadowOAM
	.word	257
	.size	drawCloud1.part.11, .-drawCloud1.part.11
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStar.part.13, %function
updateStar.part.13:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, #0
	ldr	r5, .L146
	ldr	ip, [r5, #4]
	ldr	r3, [r5, #12]
	ldr	lr, [r5, #20]
	add	ip, ip, r3
	cmp	ip, #0
	str	ip, [r5, #4]
	ldr	r4, .L146+4
	addlt	ip, lr, #240
	strlt	ip, [r5, #4]
	ldr	r8, .L146+8
	sub	sp, sp, #16
	add	r7, r4, #160
.L141:
	ldr	r10, [r5, #16]
	ldr	r6, [r5]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #20]
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	str	lr, [sp, #8]
	str	ip, [sp]
	str	r10, [sp, #12]
	str	r6, [sp, #4]
	mov	lr, pc
	bx	r8
	add	r4, r4, #32
	cmp	r0, #0
	strne	r9, [r5, #24]
	cmp	r4, r7
	ldrne	ip, [r5, #4]
	ldrne	lr, [r5, #20]
	bne	.L141
.L137:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L147:
	.align	2
.L146:
	.word	star
	.word	laser
	.word	collision
	.size	updateStar.part.13, .-updateStar.part.13
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStar.part.14, %function
drawStar.part.14:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L152
	str	lr, [sp, #-4]!
	ldr	lr, .L152+4
	ldr	r1, [r3, #52]
	ldrb	r0, [r3]	@ zero_extendqisi2
	ldr	r2, [r3, #4]
	ldr	ip, .L152+8
	ldr	r3, [lr]
	lsl	r1, r1, #3
	orr	r0, r0, #16384
	add	lr, ip, r1
	strh	r0, [ip, r1]	@ movhi
	ands	r1, r3, #63
	moveq	r3, #64
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	strh	r2, [lr, #2]	@ movhi
	strheq	r3, [lr, #4]	@ movhi
	beq	.L148
	rsbs	r3, r3, #0
	and	r3, r3, #63
	rsbpl	r1, r3, #0
	cmp	r1, #8
	moveq	r3, #66
	strheq	r3, [lr, #4]	@ movhi
.L148:
	ldr	lr, [sp], #4
	bx	lr
.L153:
	.align	2
.L152:
	.word	star
	.word	numFrames
	.word	shadowOAM
	.size	drawStar.part.14, .-drawStar.part.14
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r1, #1
	mov	r2, #0
	mov	r5, #140
	mov	r4, #120
	mov	lr, #20
	mov	ip, #16
	mov	r0, #3
	ldr	r3, .L156
	str	r5, [r3]
	str	r4, [r3, #4]
	str	lr, [r3, #48]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #56]
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r0, [r3, #40]
	str	r0, [r3, #52]
	pop	{r4, r5, lr}
	bx	lr
.L157:
	.align	2
.L156:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #384
	ldr	r3, .L159
	ldm	r3, {r0, r2}
	ldr	r3, .L159+4
	orr	r2, r2, #16384
	strh	r2, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L160:
	.align	2
.L159:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullet, %function
initBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #4
	mov	r0, #8
	mvn	lr, #7
	mov	r1, #0
	mvn	ip, #1
	ldr	r3, .L165
.L162:
	str	r2, [r3, #28]
	add	r2, r2, #1
	cmp	r2, #9
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3]
	stmib	r3, {r1, ip}
	str	r1, [r3, #12]
	str	r1, [r3, #24]
	add	r3, r3, #32
	bne	.L162
	ldr	lr, [sp], #4
	bx	lr
.L166:
	.align	2
.L165:
	.word	bullets
	.size	initBullet, .-initBullet
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L178
	mov	r2, ip
	ldr	r3, [r2, #24]
	cmp	r3, #0
	mov	r0, #0
	beq	.L177
.L168:
	add	r0, r0, #1
	cmp	r0, #5
	add	r2, r2, #32
	bxeq	lr
	ldr	r3, [r2, #24]
	cmp	r3, #0
	bne	.L168
.L177:
	push	{r4, r5, r6, lr}
	mov	r5, #1
	ldr	r1, .L178+4
	ldr	r4, [r1, #20]
	ldr	r2, [r1, #4]
	add	lr, ip, r0, lsl #5
	add	r4, r4, r4, lsr #31
	add	r2, r2, r4, asr r5
	ldr	r4, [lr, #20]
	add	r4, r4, r4, lsr #31
	sub	r2, r2, r4, asr r5
	ldr	r6, [r1, #44]
	ldr	r4, [r1]
	str	r2, [lr, #4]
	str	r4, [ip, r0, lsl #5]
	str	r6, [lr, #12]
	ldr	r4, .L178+8
	str	r5, [lr, #24]
	ldr	r2, .L178+12
	ldr	r1, .L178+16
	ldr	r0, .L178+20
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L179:
	.align	2
.L178:
	.word	bullets
	.word	player
	.word	playSoundB
	.word	11025
	.word	14177
	.word	Laser
	.size	fireBullet, .-fireBullet
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateBullet.part.0
	.size	updateBullet, .-updateBullet
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	ldr	r3, [r0, #28]
	bne	.L189
	mov	r1, #512
	ldr	r2, .L190
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L189:
	mov	ip, #448
	ldr	r1, .L190
	str	lr, [sp, #-4]!
	lsl	r3, r3, #3
	ldr	lr, [r0]
	ldr	r0, [r0, #4]
	add	r2, r1, r3
	strh	lr, [r1, r3]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L191:
	.align	2
.L190:
	.word	shadowOAM
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initBullet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullet1, %function
initBullet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #22
	mov	r0, #8
	mvn	lr, #7
	mov	r1, #0
	mov	ip, #2
	ldr	r3, .L196
.L193:
	str	r2, [r3, #28]
	add	r2, r2, #1
	cmp	r2, #27
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3]
	stmib	r3, {r1, ip}
	str	r1, [r3, #12]
	str	r1, [r3, #24]
	add	r3, r3, #32
	bne	.L193
	ldr	lr, [sp], #4
	bx	lr
.L197:
	.align	2
.L196:
	.word	bullets1
	.size	initBullet1, .-initBullet1
	.align	2
	.global	fireBullet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet1, %function
fireBullet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #24]
	cmp	r3, #0
	bxne	lr
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldr	ip, [r0, #16]
	ldr	r3, [r0, #4]
	ldr	r2, [r1, #20]
	add	ip, ip, ip, lsr #31
	add	r3, r3, ip, asr lr
	ldr	r0, [r0]
	add	r2, r2, r2, lsr #31
	sub	r3, r3, r2, asr lr
	str	lr, [r1, #24]
	stm	r1, {r0, r3}
	ldr	lr, [sp], #4
	bx	lr
	.size	fireBullet1, .-fireBullet1
	.align	2
	.global	updateBullet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet1, %function
updateBullet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #24]
	cmp	r3, #0
	sub	sp, sp, #16
	mov	r4, r0
	ldr	r1, [r0]
	beq	.L205
	ldr	r3, [r0, #16]
	add	r2, r3, r1
	cmp	r3, r2
	ldr	r0, [r0, #4]
	blt	.L214
.L206:
	ldr	r5, .L215
	ldr	lr, [r5, #16]
	ldr	ip, [r5, #20]
	ldr	r2, [r4, #20]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r5]
	ldr	ip, [r5, #4]
	ldr	r6, .L215+4
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	movne	r1, #0
	ldrne	r3, [r5, #52]
	ldrne	r2, .L215+8
	subne	r3, r3, #1
	strne	r1, [r4, #24]
	strne	r3, [r2]
	strne	r3, [r5, #52]
	ldr	r1, [r4]
.L205:
	cmp	r1, #159
	movgt	r3, #0
	strgt	r3, [r4, #24]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L214:
	ldr	r2, [r4, #12]
	add	r2, r0, r2
	sub	ip, r2, #1
	cmp	ip, #238
	ldrls	ip, [r4, #8]
	addls	r1, r1, ip
	movls	r0, r2
	stmls	r4, {r1, r2}
	b	.L206
.L216:
	.align	2
.L215:
	.word	player
	.word	collision
	.word	livesRemaining
	.size	updateBullet1, .-updateBullet1
	.align	2
	.global	drawBullet1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet1, %function
drawBullet1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	ldr	r3, [r0, #28]
	bne	.L224
	mov	r1, #512
	ldr	r2, .L225
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L224:
	mov	ip, #448
	ldr	r1, .L225
	str	lr, [sp, #-4]!
	lsl	r3, r3, #3
	ldr	lr, [r0]
	ldr	r0, [r0, #4]
	add	r2, r1, r3
	strh	lr, [r1, r3]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L226:
	.align	2
.L225:
	.word	shadowOAM
	.size	drawBullet1, .-drawBullet1
	.align	2
	.global	drawLives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLives, %function
drawLives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r1, r3
	mov	r5, #142
	mov	r10, #132
	mov	r9, #130
	mov	r8, #128
	mov	r7, #512
	ldr	r2, .L235
	ldr	ip, [r2]
	ldr	r2, .L235+4
	subs	r0, r3, ip
	and	r0, r0, #63
	and	ip, ip, #63
	ldrh	r4, [r2, #20]
	ldr	lr, [r2, #52]
	ldr	r2, .L235+8
	mov	r6, ip
	rsbpl	r6, r0, #0
.L232:
	cmp	ip, #0
	orr	r0, r3, #16384
	strh	r5, [r2, #8]	@ movhi
	strh	r0, [r2, #10]	@ movhi
	strheq	r8, [r2, #12]	@ movhi
	beq	.L229
	cmp	r6, #8
	strheq	r9, [r2, #12]	@ movhi
	beq	.L229
	cmp	r6, #32
	strheq	r10, [r2, #12]	@ movhi
.L229:
	cmp	lr, r1
	add	r3, r4, r3
	add	r1, r1, #1
	strhle	r7, [r2, #8]	@ movhi
	lsl	r3, r3, #16
	cmp	r1, #3
	lsr	r3, r3, #16
	add	r2, r2, #8
	bne	.L232
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L236:
	.align	2
.L235:
	.word	numFrames
	.word	player
	.word	shadowOAM
	.size	drawLives, .-drawLives
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #384
	ldr	r2, .L312
	ldm	r2, {r2, r3}
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L312+4
	orr	r3, r3, #16384
	strh	r3, [r4, #2]	@ movhi
	strh	r1, [r4, #4]	@ movhi
	strh	r2, [r4]	@ movhi
	mov	r6, #448
	bl	drawLives
	mov	ip, #512
	ldr	r3, .L312+8
	add	r1, r3, #160
.L240:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldr	r2, [r3, #28]
	ldmne	r3, {r5, lr}
	lsl	r2, r2, #3
	addne	r0, r4, r2
	add	r3, r3, #32
	strhne	r5, [r4, r2]	@ movhi
	strheq	ip, [r4, r2]	@ movhi
	strhne	r6, [r0, #4]	@ movhi
	strhne	lr, [r0, #2]	@ movhi
	cmp	r3, r1
	bne	.L240
	mov	ip, #512
	mov	r6, #448
	ldr	r3, .L312+12
	add	r1, r3, #160
.L243:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldr	r2, [r3, #28]
	ldmne	r3, {r5, lr}
	lsl	r2, r2, #3
	addne	r0, r4, r2
	add	r3, r3, #32
	strhne	r5, [r4, r2]	@ movhi
	strheq	ip, [r4, r2]	@ movhi
	strhne	r6, [r0, #4]	@ movhi
	strhne	lr, [r0, #2]	@ movhi
	cmp	r3, r1
	bne	.L243
	mov	ip, #512
	mov	r6, #480
	ldr	r3, .L312+16
	add	r1, r3, #160
.L246:
	ldr	r2, [r3, #24]
	cmp	r2, #0
	ldr	r2, [r3, #28]
	ldmne	r3, {r5, lr}
	lsl	r2, r2, #3
	addne	r0, r4, r2
	add	r3, r3, #32
	strhne	r5, [r4, r2]	@ movhi
	strheq	ip, [r4, r2]	@ movhi
	strhne	r6, [r0, #4]	@ movhi
	strhne	lr, [r0, #2]	@ movhi
	cmp	r3, r1
	bne	.L246
	mov	r7, #512
	ldr	r5, .L312+20
	add	r6, r5, #280
.L249:
	ldr	r3, [r5, #48]
	cmp	r3, #0
	bne	.L304
	ldr	r3, [r5, #52]
	lsl	r3, r3, #3
	strh	r7, [r4, r3]	@ movhi
.L248:
	add	r5, r5, #56
	cmp	r5, r6
	bne	.L249
	ldr	r3, .L312+24
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	.L305
	mov	r2, #512
	ldr	r3, [r3, #52]
	lsl	r3, r3, #3
	strh	r2, [r4, r3]	@ movhi
.L251:
	ldr	r0, .L312+28
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L252
	ldr	r3, .L312+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L306
.L252:
	mov	r2, #512
	ldr	r3, [r0, #28]
	lsl	r3, r3, #3
	strh	r2, [r4, r3]	@ movhi
.L253:
	ldr	r0, .L312+36
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L254
	ldr	r3, .L312+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L307
.L254:
	mov	r2, #512
	ldr	r3, [r0, #28]
	lsl	r3, r3, #3
	strh	r2, [r4, r3]	@ movhi
.L255:
	ldr	r0, .L312+40
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L256
	ldr	r3, .L312+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L308
.L256:
	mov	r2, #512
	ldr	r3, [r0, #28]
	lsl	r3, r3, #3
	strh	r2, [r4, r3]	@ movhi
.L257:
	ldr	r0, .L312+44
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L258
	ldr	r3, .L312+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L309
.L258:
	mov	r2, #512
	ldr	r3, [r0, #28]
	lsl	r3, r3, #3
	strh	r2, [r4, r3]	@ movhi
.L259:
	ldr	r0, .L312+48
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L260
	ldr	r3, .L312+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L310
.L260:
	mov	r2, #512
	ldr	r3, [r0, #28]
	lsl	r3, r3, #3
	strh	r2, [r4, r3]	@ movhi
.L261:
	ldr	r0, .L312+52
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L262
	ldr	r3, .L312+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L311
.L262:
	mov	r2, #512
	ldr	r3, [r0, #28]
	lsl	r3, r3, #3
	strh	r2, [r4, r3]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L304:
	mov	r0, r5
	bl	drawUfo.part.7
	b	.L248
.L305:
	bl	drawStar.part.14
	b	.L251
.L310:
	bl	drawCloud1.part.11
	b	.L261
.L306:
	bl	drawCloud.part.9
	b	.L253
.L307:
	bl	drawCloud.part.9
	b	.L255
.L308:
	bl	drawCloud.part.9
	b	.L257
.L309:
	bl	drawCloud1.part.11
	b	.L259
.L311:
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawCloud1.part.11
.L313:
	.align	2
.L312:
	.word	player
	.word	shadowOAM
	.word	bullets
	.word	bullets1
	.word	laser
	.word	ufos
	.word	star
	.word	cloudA
	.word	cloudsActive
	.word	cloudB
	.word	cloudC
	.word	cloud1
	.word	cloud2
	.word	cloud3
	.size	drawGame, .-drawGame
	.align	2
	.global	initLaser
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLaser, %function
initLaser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #27
	mov	r0, #8
	mvn	lr, #7
	mov	r1, #0
	mvn	ip, #1
	ldr	r3, .L318
.L315:
	str	r2, [r3, #28]
	add	r2, r2, #1
	cmp	r2, #32
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3]
	stmib	r3, {r1, ip}
	str	r1, [r3, #12]
	str	r1, [r3, #24]
	add	r3, r3, #32
	bne	.L315
	ldr	lr, [sp], #4
	bx	lr
.L319:
	.align	2
.L318:
	.word	laser
	.size	initLaser, .-initLaser
	.align	2
	.global	fireLaser
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireLaser, %function
fireLaser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L331
	mov	r2, r0
	ldr	r1, [r2, #24]
	cmp	r1, #0
	mov	r3, #0
	beq	.L330
.L321:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #32
	bxeq	lr
	ldr	r1, [r2, #24]
	cmp	r1, #0
	bne	.L321
.L330:
	push	{r4, lr}
	mov	r4, #1
	ldr	ip, .L331+4
	ldr	lr, [ip, #20]
	ldr	r2, [ip, #4]
	add	r1, r0, r3, lsl #5
	add	lr, lr, lr, lsr #31
	add	r2, r2, lr, asr r4
	ldr	lr, [r1, #20]
	add	lr, lr, lr, lsr #31
	sub	r2, r2, lr, asr r4
	ldr	lr, [ip, #44]
	ldr	ip, [ip]
	str	lr, [r1, #12]
	str	r4, [r1, #24]
	str	r2, [r1, #4]
	str	ip, [r0, r3, lsl #5]
	pop	{r4, lr}
	bx	lr
.L332:
	.align	2
.L331:
	.word	laser
	.word	player
	.size	fireLaser, .-fireLaser
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L368
	ldr	r3, [r4, #28]
	cmp	r3, #0
	strne	r3, [r4, #32]
	mov	r3, #0
	ldr	r2, .L368+4
	ldrh	r2, [r2, #48]
	tst	r2, #32
	str	r3, [r4, #28]
	bne	.L335
	ldr	r3, [r4, #4]
	cmp	r3, #48
	ble	.L335
	mvn	r2, #0
	ldr	r1, [r4, #12]
	ldr	r5, .L368+8
	sub	r3, r3, r1
	str	r3, [r4, #4]
	ldrh	r3, [r5]
	tst	r3, #32
	str	r2, [r4, #44]
	bne	.L365
.L338:
	tst	r3, #16
	beq	.L342
	ldr	r2, .L368+12
	ldrh	r2, [r2]
	ands	r2, r2, #16
	bne	.L342
	ldr	r1, [r4, #28]
	cmp	r1, #0
	bne	.L343
	mov	ip, #2
	ldr	r2, [r4, #40]
	ldr	r0, [r4, #36]
	sub	r2, r2, #1
	cmp	r0, r2
	addlt	r0, r0, #1
	str	r1, [r4, #32]
	str	ip, [r4, #28]
	strlt	r0, [r4, #36]
	blt	.L342
.L344:
	mov	r2, #0
	str	r2, [r4, #36]
.L342:
	tst	r3, #1
	ldr	r2, [r4, #48]
	beq	.L345
	ldr	r1, .L368+12
	ldrh	r1, [r1]
	ands	r6, r1, #1
	bne	.L345
	cmp	r2, #12
	bgt	.L366
.L345:
	tst	r3, #2
	bne	.L346
.L364:
	add	r2, r2, #1
.L347:
	str	r2, [r4, #48]
.L333:
	pop	{r4, r5, r6, lr}
	bx	lr
.L335:
	ldr	r3, .L368+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L367
.L337:
	mov	r3, #0
	str	r3, [r4, #44]
.L336:
	ldr	r5, .L368+8
	ldrh	r3, [r5]
	tst	r3, #32
	beq	.L338
.L365:
	ldr	r2, .L368+12
	ldrh	r2, [r2]
	ands	r2, r2, #32
	bne	.L338
	ldr	r1, [r4, #28]
	cmp	r1, #0
	bne	.L339
	mov	ip, #1
	ldr	r2, [r4, #40]
	ldr	r0, [r4, #36]
	sub	r2, r2, #1
	cmp	r0, r2
	addlt	r0, r0, ip
	str	r1, [r4, #32]
	str	ip, [r4, #28]
	strlt	r0, [r4, #36]
	blt	.L338
.L340:
	mov	r2, #0
	str	r2, [r4, #36]
	b	.L338
.L346:
	ldr	r3, .L368+12
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L364
	cmp	r2, #12
	ble	.L364
	bl	fireLaser
	mov	r2, #1
	b	.L347
.L367:
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #12]
	add	r3, r2, r3
	rsb	r0, r1, #240
	cmp	r3, r0
	bgt	.L337
	mov	r3, #1
	add	r2, r2, r1
	str	r2, [r4, #4]
	str	r3, [r4, #44]
	b	.L336
.L339:
	cmp	r1, #2
	bne	.L333
	ldr	r0, [r4, #40]
	ldr	ip, [r4, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	str	r1, [r4, #32]
	str	r2, [r4, #28]
	bge	.L340
	add	ip, ip, #1
	str	ip, [r4, #36]
	b	.L338
.L343:
	cmp	r1, #1
	bne	.L342
	ldr	r0, [r4, #40]
	ldr	ip, [r4, #36]
	sub	r0, r0, #1
	cmp	ip, r0
	str	r1, [r4, #32]
	str	r2, [r4, #28]
	bge	.L344
	add	ip, ip, #1
	str	ip, [r4, #36]
	b	.L342
.L366:
	bl	fireBullet
	mov	r2, r6
	str	r6, [r4, #48]
	ldrh	r3, [r5]
	b	.L345
.L369:
	.align	2
.L368:
	.word	player
	.word	67109120
	.word	oldButtons
	.word	buttons
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateLaser
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLaser, %function
updateLaser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateLaser.part.4
	.size	updateLaser, .-updateLaser
	.align	2
	.global	drawLaser
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLaser, %function
drawLaser:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	ldr	r3, [r0, #28]
	bne	.L379
	mov	r1, #512
	ldr	r2, .L380
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L379:
	mov	ip, #480
	ldr	r1, .L380
	str	lr, [sp, #-4]!
	lsl	r3, r3, #3
	ldr	lr, [r0]
	ldr	r0, [r0, #4]
	add	r2, r1, r3
	strh	lr, [r1, r3]	@ movhi
	strh	r0, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L381:
	.align	2
.L380:
	.word	shadowOAM
	.size	drawLaser, .-drawLaser
	.align	2
	.global	initUfo
	.syntax unified
	.arm
	.fpu softvfp
	.type	initUfo, %function
initUfo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #0
	mov	r9, #16
	ldr	r4, .L386
	ldr	r5, .L386+4
	ldr	r7, .L386+8
	ldr	r6, .L386+12
.L383:
	str	r9, [r4, #20]
	str	r9, [r4, #16]
	mov	lr, pc
	bx	r5
	smull	fp, ip, r0, r7
	asr	r2, r0, #31
	rsb	r3, r2, ip, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r3, r0, r3, lsl #1
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	mov	r1, #1
	mov	lr, #0
	mov	ip, #4
	smull	r10, fp, r0, r6
	asr	r2, r0, #31
	rsb	r3, r2, fp, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl r1
	asr	r2, r8, #2
	add	r3, r8, #17
	add	r8, r8, r1
	add	r0, r0, #10
	cmp	r8, #5
	stmib	r4, {r0, r1}
	str	r1, [r4, #12]
	str	r1, [r4, #48]
	str	r1, [r4, #44]
	str	lr, [r4, #28]
	str	ip, [r4, #40]
	str	r2, [r4, #36]
	str	r3, [r4, #52]
	add	r4, r4, #56
	bne	.L383
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L387:
	.align	2
.L386:
	.word	ufos
	.word	rand
	.word	156180629
	.word	2114445439
	.size	initUfo, .-initUfo
	.align	2
	.global	updateUfo
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateUfo, %function
updateUfo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	cmp	r3, #0
	bxeq	lr
	b	updateUfo.part.6
	.size	updateUfo, .-updateUfo
	.align	2
	.global	drawUfo
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUfo, %function
drawUfo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #48]
	cmp	r2, #0
	bne	drawUfo.part.7
.L391:
	mov	r1, #512
	ldr	r3, [r0, #52]
	ldr	r2, .L392
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L393:
	.align	2
.L392:
	.word	shadowOAM
	.size	drawUfo, .-drawUfo
	.align	2
	.global	initCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCloud, %function
initCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #30
	mov	r3, #12
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r0, #1
	mov	lr, #16
	mov	ip, #32
	mov	r10, #15
	mvn	r9, #46
	mov	r8, #13
	mov	r7, #35
	mvn	r6, #61
	mov	r5, #14
	ldr	r1, .L396
	ldr	r4, .L396+4
	str	r2, [r1]
	ldr	r4, [r4]
	ldr	r2, .L396+8
	str	r3, [r1, #28]
	ldr	r3, .L396+12
	str	r4, [r1, #24]
	str	r4, [r2, #24]
	str	r4, [r3, #24]
	str	r10, [r2]
	str	r9, [r2, #4]
	str	r8, [r2, #28]
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #28]
	str	lr, [r1, #8]
	str	lr, [r2, #8]
	str	lr, [r3, #8]
	str	ip, [r1, #12]
	str	ip, [r1, #4]
	str	ip, [r2, #12]
	str	ip, [r3, #12]
	str	r0, [r1, #16]
	str	r0, [r1, #20]
	str	r0, [r2, #16]
	str	r0, [r2, #20]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L397:
	.align	2
.L396:
	.word	cloudA
	.word	cloudsActive
	.word	cloudB
	.word	cloudC
	.size	initCloud, .-initCloud
	.align	2
	.global	updateCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCloud, %function
updateCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L399
	ldr	r2, .L410
	ldr	r3, [r0, #4]
	ldr	r2, [r2]
	cmp	r3, #0
	str	r2, [r0, #24]
	movle	r2, #1
	strle	r2, [r0, #20]
	ble	.L401
	cmp	r3, #239
	ldrgt	r3, [r0, #12]
	ldrle	r2, [r0, #20]
	ldrgt	r2, [r0, #20]
	rsbgt	r3, r3, #0
.L401:
	add	r3, r2, r3
	str	r3, [r0, #4]
.L399:
	ldr	r3, .L410+4
	ldrh	r3, [r3]
	tst	r3, #64
	bxeq	lr
	ldr	r3, .L410+8
	ldrh	r3, [r3]
	ands	r3, r3, #64
	ldreq	r2, .L410
	streq	r3, [r2]
	bx	lr
.L411:
	.align	2
.L410:
	.word	cloudsActive
	.word	oldButtons
	.word	buttons
	.size	updateCloud, .-updateCloud
	.align	2
	.global	drawCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCloud, %function
drawCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #24]
	cmp	r2, #0
	mov	r3, r0
	beq	.L413
	ldr	r2, .L421
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L420
.L413:
	mov	r1, #512
	ldr	r3, [r3, #28]
	ldr	r2, .L421+4
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L420:
	b	drawCloud.part.9
.L422:
	.align	2
.L421:
	.word	cloudsActive
	.word	shadowOAM
	.size	drawCloud, .-drawCloud
	.align	2
	.global	initCloud1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCloud1, %function
initCloud1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mvn	r2, #63
	mov	r3, #9
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r0, #1
	mov	r4, #32
	mov	lr, #64
	mov	ip, #90
	mvn	r9, #142
	mov	r8, #10
	mvn	r7, #221
	mov	r6, #11
	ldr	r1, .L425
	ldr	r5, .L425+4
	str	r2, [r1, #4]
	ldr	r5, [r5]
	ldr	r2, .L425+8
	str	r3, [r1, #28]
	ldr	r3, .L425+12
	str	r5, [r1, #24]
	str	r5, [r2, #24]
	str	r5, [r3, #24]
	str	r9, [r2, #4]
	str	r8, [r2, #28]
	str	r7, [r3, #4]
	str	r6, [r3, #28]
	str	r4, [r1, #8]
	str	r4, [r2, #8]
	str	r4, [r3, #8]
	str	lr, [r1, #12]
	str	lr, [r2, #12]
	str	lr, [r3, #12]
	str	ip, [r1]
	str	ip, [r2]
	str	ip, [r3]
	str	r0, [r1, #16]
	str	r0, [r1, #20]
	str	r0, [r2, #16]
	str	r0, [r2, #20]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L426:
	.align	2
.L425:
	.word	cloud1
	.word	cloudsActive
	.word	cloud2
	.word	cloud3
	.size	initCloud1, .-initCloud1
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #256
	mov	r5, #0
	ldr	r4, .L435
	ldr	r2, .L435+4
	ldr	r1, .L435+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L435+12
	ldr	r1, .L435+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r7, #16
	mov	r4, #1
	mov	r6, #3
	mov	r10, #140
	mov	r9, #120
	mov	r8, #20
	mov	r2, #4
	mov	r0, #8
	mvn	lr, #7
	mvn	ip, #1
	ldr	r3, .L435+20
	mov	r1, r5
	str	r5, [r3, #24]
	str	r5, [r3, #36]
	str	r5, [r3, #28]
	ldr	r5, .L435+24
	str	r10, [r3]
	str	r9, [r3, #4]
	str	r8, [r3, #48]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r4, [r3, #56]
	str	r7, [r3, #16]
	str	r7, [r3, #20]
	str	r6, [r3, #40]
	str	r6, [r3, #52]
	str	r4, [r5]
	ldr	r3, .L435+28
.L428:
	str	r2, [r3, #28]
	add	r2, r2, #1
	cmp	r2, #9
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3]
	stmib	r3, {r1, ip}
	str	r1, [r3, #12]
	str	r1, [r3, #24]
	add	r3, r3, #32
	bne	.L428
	mov	r2, #22
	mov	r0, #8
	mvn	lr, #7
	mov	r1, #0
	mov	ip, #2
	ldr	r3, .L435+32
.L429:
	str	r2, [r3, #28]
	add	r2, r2, #1
	cmp	r2, #27
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	lr, [r3]
	stmib	r3, {r1, ip}
	str	r1, [r3, #12]
	str	r1, [r3, #24]
	add	r3, r3, #32
	bne	.L429
	mov	r5, #8
	mvn	r0, #7
	mov	r4, #0
	mvn	r1, #1
	ldr	r3, .L435+36
.L430:
	str	r2, [r3, #28]
	add	r2, r2, #1
	cmp	r2, #32
	str	r5, [r3, #16]
	str	r5, [r3, #20]
	stm	r3, {r0, r4}
	str	r1, [r3, #8]
	str	r4, [r3, #12]
	str	r4, [r3, #24]
	add	r3, r3, #32
	bne	.L430
	bl	initCloud
	bl	initCloud1
	mov	r2, #35
	mov	r1, #1
	mvn	lr, #0
	mov	ip, #2
	mov	r0, #15
	mov	r6, #16
	ldr	r3, .L435+40
	str	r2, [r3]
	ldr	r2, [r3, #20]
	add	r2, r2, #240
	str	r5, [r3, #16]
	str	r4, [r3, #24]
	str	r4, [r3, #40]
	str	r4, [r3, #32]
	str	r2, [r3, #4]
	str	r6, [r3, #20]
	str	lr, [r3, #12]
	str	ip, [r3, #44]
	str	r0, [r3, #52]
	str	r1, [r3, #8]
	str	r1, [r3, #48]
	bl	initUfo
	mov	ip, #5
	mov	r1, #3
	ldr	r0, .L435+44
	ldr	r2, .L435+48
	ldr	r3, .L435+52
	str	ip, [r0]
	str	r1, [r2]
	str	r4, [r3]
	ldr	ip, .L435+56
	ldr	r0, .L435+60
	ldr	r1, .L435+64
	ldr	r2, .L435+68
	ldr	r3, .L435+72
	str	r4, [ip]
	str	r4, [r0]
	str	r4, [r1]
	str	r4, [r2]
	strh	r4, [r3]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L436:
	.align	2
.L435:
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	player
	.word	cloudsActive
	.word	bullets
	.word	bullets1
	.word	laser
	.word	star
	.word	ufosRemaining
	.word	livesRemaining
	.word	cloud1Timer
	.word	cloudATimer
	.word	starTimer
	.word	numFrames
	.word	bgTimer
	.word	hOff
	.size	initGame, .-initGame
	.align	2
	.global	updateCloud1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCloud1, %function
updateCloud1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L438
	ldr	r2, .L449
	ldr	r3, [r0, #4]
	ldr	r2, [r2]
	cmp	r3, #0
	str	r2, [r0, #24]
	movle	r2, #1
	strle	r2, [r0, #20]
	ble	.L440
	cmp	r3, #239
	ldrgt	r3, [r0, #12]
	ldrle	r2, [r0, #20]
	ldrgt	r2, [r0, #20]
	rsbgt	r3, r3, #0
.L440:
	add	r3, r2, r3
	str	r3, [r0, #4]
.L438:
	ldr	r3, .L449+4
	ldrh	r3, [r3]
	tst	r3, #64
	bxeq	lr
	ldr	r3, .L449+8
	ldrh	r3, [r3]
	ands	r3, r3, #64
	ldreq	r2, .L449
	streq	r3, [r2]
	bx	lr
.L450:
	.align	2
.L449:
	.word	cloudsActive
	.word	oldButtons
	.word	buttons
	.size	updateCloud1, .-updateCloud1
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	ip, .L483
	ldr	r7, .L483+4
	ldr	r3, [ip]
	ldr	r2, [r7]
	ldr	r0, .L483+8
	ldr	r8, .L483+12
	ldr	r6, .L483+16
	add	r2, r2, #1
	add	r3, r3, #1
	ldr	r1, [r8]
	str	r2, [r7]
	str	r3, [ip]
	ldr	r2, [r6]
	ldr	r3, [r0]
	add	r1, r1, #1
	add	r2, r2, #1
	add	r3, r3, #1
	str	r1, [r8]
	str	r2, [r6]
	str	r3, [r0]
	bl	updatePlayer
	ldr	r4, .L483+20
	add	r5, r4, #160
.L453:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L478
.L452:
	add	r4, r4, #32
	cmp	r4, r5
	bne	.L453
	ldr	r0, .L483+24
	bl	updateBullet1
	ldr	r0, .L483+28
	bl	updateBullet1
	ldr	r0, .L483+32
	bl	updateBullet1
	ldr	r0, .L483+36
	bl	updateBullet1
	ldr	r0, .L483+40
	bl	updateBullet1
	ldr	r4, .L483+44
	add	r5, r4, #160
.L455:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L479
.L454:
	add	r4, r4, #32
	cmp	r4, r5
	bne	.L455
	mov	r5, #0
	ldr	r4, .L483+48
	ldr	r9, .L483+24
.L457:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L480
.L456:
	add	r5, r5, #1
	cmp	r5, #5
	add	r4, r4, #56
	bne	.L457
	ldr	r4, .L483+52
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L481
.L458:
	ldr	r0, .L483+56
	bl	updateCloud
	ldr	r0, .L483+60
	bl	updateCloud
	ldr	r0, .L483+64
	bl	updateCloud
	ldr	r3, [r7]
	cmp	r3, #5
	beq	.L482
.L459:
	ldr	r1, [r8]
	ldr	r3, .L483+68
	smull	r8, r9, r1, r3
	asr	r3, r1, #31
	rsb	r3, r3, r9, asr #6
	add	r2, r3, r3, lsl #1
	add	r2, r2, r2, lsl #5
	add	r3, r3, r2, lsl #1
	cmp	r1, r3
	bne	.L460
	ldr	r3, [r4, #24]
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, [r4, #20]
	addeq	r3, r3, #240
	streq	r3, [r4, #4]
	streq	r2, [r4, #24]
.L460:
	ldr	r3, [r6]
	cmp	r3, #2
	bne	.L451
	mov	r1, #0
	ldr	r2, .L483+72
	ldrh	r3, [r2]
	sub	r3, r3, #1
	strh	r3, [r2]	@ movhi
	str	r1, [r6]
.L451:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L480:
	add	r1, r9, r5, lsl #5
	mov	r0, r4
	bl	updateUfo.part.6
	b	.L456
.L479:
	mov	r0, r4
	bl	updateLaser.part.4
	b	.L454
.L478:
	mov	r0, r4
	bl	updateBullet.part.0
	b	.L452
.L481:
	bl	updateStar.part.13
	b	.L458
.L482:
	ldr	r0, .L483+76
	bl	updateCloud1
	ldr	r0, .L483+80
	bl	updateCloud1
	ldr	r0, .L483+84
	bl	updateCloud1
	mov	r3, #0
	str	r3, [r7]
	b	.L459
.L484:
	.align	2
.L483:
	.word	cloudATimer
	.word	cloud1Timer
	.word	numFrames
	.word	starTimer
	.word	bgTimer
	.word	bullets
	.word	bullets1
	.word	bullets1+32
	.word	bullets1+64
	.word	bullets1+96
	.word	bullets1+128
	.word	laser
	.word	ufos
	.word	star
	.word	cloudA
	.word	cloudB
	.word	cloudC
	.word	1381296015
	.word	hOff
	.word	cloud1
	.word	cloud2
	.word	cloud3
	.size	updateGame, .-updateGame
	.align	2
	.global	drawCloud1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCloud1, %function
drawCloud1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #24]
	cmp	r2, #0
	mov	r3, r0
	beq	.L486
	ldr	r2, .L494
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L493
.L486:
	mov	r1, #512
	ldr	r3, [r3, #28]
	ldr	r2, .L494+4
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L493:
	b	drawCloud1.part.11
.L495:
	.align	2
.L494:
	.word	cloudsActive
	.word	shadowOAM
	.size	drawCloud1, .-drawCloud1
	.align	2
	.global	initStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	initStar, %function
initStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #35
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r6, #8
	mov	r5, #16
	mvn	r4, #0
	mov	lr, #2
	mov	r0, #1
	mov	ip, #15
	ldr	r3, .L498
	str	r1, [r3]
	ldr	r1, [r3, #20]
	add	r1, r1, #240
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	str	r4, [r3, #12]
	str	lr, [r3, #44]
	str	r1, [r3, #4]
	str	ip, [r3, #52]
	str	r0, [r3, #8]
	str	r0, [r3, #48]
	str	r2, [r3, #24]
	str	r2, [r3, #40]
	str	r2, [r3, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L499:
	.align	2
.L498:
	.word	star
	.size	initStar, .-initStar
	.align	2
	.global	shootStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	shootStar, %function
shootStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L502
	ldr	r2, [r3, #24]
	cmp	r2, #0
	moveq	r1, #1
	ldreq	r2, [r3, #20]
	addeq	r2, r2, #240
	streq	r2, [r3, #4]
	streq	r1, [r3, #24]
	bx	lr
.L503:
	.align	2
.L502:
	.word	star
	.size	shootStar, .-shootStar
	.align	2
	.global	updateStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStar, %function
updateStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L506
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateStar.part.13
.L507:
	.align	2
.L506:
	.word	star
	.size	updateStar, .-updateStar
	.align	2
	.global	drawStar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStar, %function
drawStar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L510
	ldr	r2, [r3, #24]
	cmp	r2, #0
	bne	drawStar.part.14
.L509:
	mov	r1, #512
	ldr	r3, [r3, #52]
	ldr	r2, .L510+4
	lsl	r3, r3, #3
	strh	r1, [r2, r3]	@ movhi
	bx	lr
.L511:
	.align	2
.L510:
	.word	star
	.word	shadowOAM
	.size	drawStar, .-drawStar
	.comm	hOff,2,2
	.comm	numFrames,4,4
	.comm	cloudsActive,4,4
	.comm	bgTimer,4,4
	.comm	starTimer,4,4
	.comm	cloudCTimer,4,4
	.comm	cloudBTimer,4,4
	.comm	cloudATimer,4,4
	.comm	cloud3Timer,4,4
	.comm	cloud2Timer,4,4
	.comm	cloud1Timer,4,4
	.comm	livesRemaining,4,4
	.comm	ufosRemaining,4,4
	.comm	cloudC,32,4
	.comm	cloudB,32,4
	.comm	cloudA,32,4
	.comm	cloud3,32,4
	.comm	cloud2,32,4
	.comm	cloud1,32,4
	.comm	clouds1,96,4
	.comm	clouds,96,4
	.comm	star,56,4
	.comm	stars,112,4
	.comm	ufos,280,4
	.comm	laser,160,4
	.comm	bullets1,160,4
	.comm	bullets,160,4
	.comm	player,60,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
