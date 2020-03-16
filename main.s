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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L4+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #5120
	ldr	r2, .L8
	push	{r4, lr}
	mov	r0, #3
	ldr	r4, .L8+4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #12]	@ movhi
	ldr	r1, .L8+8
	mov	r3, #256
	mov	r2, #83886080
	mov	lr, pc
	bx	r4
	mov	r3, #3648
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1
	ldr	r2, .L8+28
	ldr	r4, .L8+32
	ldr	r1, .L8+36
	ldr	r0, .L8+40
	mov	lr, pc
	bx	r4
	ldr	r2, .L8+44
	ldr	r3, .L8+48
	ldrh	r2, [r2, #48]
	pop	{r4, lr}
	strh	r2, [r3]	@ movhi
	b	goToStart
.L9:
	.align	2
.L8:
	.word	7948
	.word	DMANow
	.word	startPal
	.word	100712448
	.word	startTiles
	.word	100726784
	.word	startMap
	.word	11025
	.word	playSoundA
	.word	3534336
	.word	SpaceSong
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #5120
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L12
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L12+4
	mov	lr, pc
	bx	r4
	mov	r3, #7552
	ldr	r2, .L12+8
	ldr	r1, .L12+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L12+16
	ldr	r1, .L12+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L12+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L12+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L12+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	instructionsPal
	.word	100712448
	.word	instructionsTiles
	.word	100726784
	.word	instructionsMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r0, #24064
	mov	r1, #6912
	push	{r4, lr}
	mov	lr, #0
	ldr	r2, .L16
	ldr	ip, .L16+4
	ldr	r4, .L16+8
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L16+12
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	strh	lr, [ip]	@ movhi
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+16
	mov	r2, #100663296
	ldr	r1, .L16+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L16+24
	ldr	r1, .L16+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2304
	ldr	r2, .L16+32
	ldr	r1, .L16+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L16+40
	ldr	r1, .L16+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L16+48
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L17:
	.align	2
.L16:
	.word	23560
	.word	hOff
	.word	DMANow
	.word	nightBgPal
	.word	10080
	.word	nightBgTiles
	.word	100724736
	.word	nightBgMap
	.word	100696064
	.word	mountainsTiles
	.word	100720640
	.word	mountainsMap
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L30
	ldr	r3, .L30+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L19
	ldr	r2, .L30+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L28
.L19:
	tst	r3, #1
	beq	.L18
	ldr	r3, .L30+8
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L29
.L18:
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L28:
	ldr	r3, .L30+12
	mov	lr, pc
	bx	r3
	ldr	r5, .L30+16
	ldr	r2, .L30+20
	ldr	r1, .L30+24
	ldr	r0, .L30+28
	mov	r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, .L30+32
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L19
.L31:
	.align	2
.L30:
	.word	oldButtons
	.word	waitForVBlank
	.word	buttons
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	228282
	.word	GlassAnimals
	.word	initGame
	.size	start, .-start
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L39
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L39+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L32
	ldr	r3, .L39+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L38
.L32:
	pop	{r4, lr}
	bx	lr
.L38:
	ldr	r3, .L39+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L39+16
	mov	r3, #1
	ldr	r2, .L39+20
	ldr	r1, .L39+24
	ldr	r0, .L39+28
	mov	lr, pc
	bx	r4
	ldr	r3, .L39+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L40:
	.align	2
.L39:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	228282
	.word	GlassAnimals
	.word	initGame
	.size	instructions, .-instructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #5120
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L43
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L43+4
	mov	lr, pc
	bx	r4
	mov	r3, #3248
	ldr	r2, .L43+8
	ldr	r1, .L43+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L43+16
	ldr	r1, .L43+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L43+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L43+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L43+36
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L44:
	.align	2
.L43:
	.word	DMANow
	.word	pausePal
	.word	100712448
	.word	pauseTiles
	.word	100726784
	.word	pauseMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L57
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L57+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L46
	ldr	r2, .L57+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L55
.L46:
	tst	r3, #4
	beq	.L45
	ldr	r3, .L57+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L56
.L45:
	pop	{r4, lr}
	bx	lr
.L56:
	pop	{r4, lr}
	b	goToStart
.L55:
	ldr	r3, .L57+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToGame
.L58:
	.align	2
.L57:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	unpauseSound
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #5120
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L61
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L61+4
	mov	lr, pc
	bx	r4
	ldr	r3, .L61+8
	ldr	r2, .L61+12
	ldr	r1, .L61+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L61+20
	ldr	r1, .L61+24
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L61+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L61+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L61+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L61+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L62:
	.align	2
.L61:
	.word	DMANow
	.word	winPal
	.word	4320
	.word	100712448
	.word	winTiles
	.word	100726784
	.word	winMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L70
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L70+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L63
	ldr	r3, .L70+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L69
.L63:
	pop	{r4, lr}
	bx	lr
.L69:
	pop	{r4, lr}
	b	initialize
.L71:
	.align	2
.L70:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	mov	r1, #5120
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L74
	strh	r1, [r2]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L74+4
	mov	lr, pc
	bx	r4
	ldr	r3, .L74+8
	ldr	r2, .L74+12
	ldr	r1, .L74+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L74+20
	ldr	r1, .L74+24
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L74+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L74+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L74+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L74+40
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L75:
	.align	2
.L74:
	.word	DMANow
	.word	losePal
	.word	5520
	.word	100712448
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L87
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L87+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L87+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L87+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L87+20
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L84
.L77:
	ldr	r3, .L87+24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L85
.L78:
	ldr	r3, .L87+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L79
	ldr	r3, .L87+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L86
.L79:
	mov	r2, #67108864
	ldr	r3, .L87+36
	ldrh	r1, [r3]
	strh	r1, [r2, #20]	@ movhi
	ldrh	r3, [r3]
	lsr	r3, r3, #1
	strh	r3, [r2, #16]	@ movhi
	pop	{r4, lr}
	bx	lr
.L85:
	ldr	r3, .L87+40
	mov	lr, pc
	bx	r3
	bl	goToLose
	b	.L78
.L84:
	ldr	r3, .L87+40
	mov	lr, pc
	bx	r3
	bl	goToWin
	b	.L77
.L86:
	ldr	r3, .L87+44
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L79
.L88:
	.align	2
.L87:
	.word	updateGame
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	ufosRemaining
	.word	livesRemaining
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	stopSound
	.word	pauseSound
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L101
	mov	lr, pc
	bx	r3
	ldr	r9, .L101+4
	ldr	r4, .L101+8
	ldr	r8, .L101+12
	ldr	r7, .L101+16
	ldr	r6, .L101+20
	ldr	fp, .L101+24
	ldr	r10, .L101+28
	ldr	r5, .L101+32
.L91:
	ldrh	r3, [r4]
	strh	r3, [r9]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	ldr	r3, [r6]
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L91
.L93:
	.word	.L92
	.word	.L94
	.word	.L95
	.word	.L96
	.word	.L97
	.word	.L97
.L97:
	mov	lr, pc
	bx	r10
	b	.L91
.L96:
	ldr	r3, .L101+36
	mov	lr, pc
	bx	r3
	b	.L91
.L95:
	ldr	r3, .L101+40
	mov	lr, pc
	bx	r3
	b	.L91
.L94:
	ldr	r3, .L101+44
	mov	lr, pc
	bx	r3
	b	.L91
.L92:
	mov	lr, pc
	bx	fp
	b	.L91
.L102:
	.align	2
.L101:
	.word	initialize
	.word	oldButtons
	.word	buttons
	.word	setupInterrupts
	.word	setupSounds
	.word	state
	.word	start
	.word	win
	.word	67109120
	.word	pause
	.word	game
	.word	instructions
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	score,41,4
	.comm	shadowOAM,1024,4
	.comm	hOff,2,2
	.comm	cDel,4,4
	.comm	rDel,4,4
	.comm	oldCol,4,4
	.comm	oldRow,4,4
	.comm	col,4,4
	.comm	row,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
