	.cpu cortex-m4
	.arch armv7e-m
	.fpu fpv4-sp-d16
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 1
	.eabi_attribute 38, 1
	.eabi_attribute 18, 4
	.file	"SEGGER_RTT.c"
	.text
.Ltext0:
	.section	.text._GetAvailWriteSpace,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_GetAvailWriteSpace, %function
_GetAvailWriteSpace:
.LVL0:
.LFB208:
	.file 1 "C:\\Users\\CPS Lab\\Documents\\nordic_semi\\nRF5_SDK_17.0.2_d674dde\\external\\segger_rtt\\SEGGER_RTT.c"
	.loc 1 485 66 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 486 3 view .LVU1
	.loc 1 487 3 view .LVU2
	.loc 1 488 3 view .LVU3
	.loc 1 493 3 view .LVU4
	.loc 1 493 9 is_stmt 0 view .LVU5
	ldr	r3, [r0, #16]
.LVL1:
	.loc 1 494 3 is_stmt 1 view .LVU6
	.loc 1 494 9 is_stmt 0 view .LVU7
	ldr	r2, [r0, #12]
.LVL2:
	.loc 1 495 3 is_stmt 1 view .LVU8
	.loc 1 495 6 is_stmt 0 view .LVU9
	cmp	r3, r2
	.loc 1 496 5 is_stmt 1 view .LVU10
	.loc 1 496 7 is_stmt 0 view .LVU11
	itt	ls
	ldrls	r0, [r0, #8]
.LVL3:
	.loc 1 496 7 view .LVU12
	addls	r3, r3, r0
.LVL4:
	.loc 1 498 5 is_stmt 1 view .LVU13
	.loc 1 498 7 is_stmt 0 view .LVU14
	subs	r3, r3, #1
	subs	r0, r3, r2
.LVL5:
	.loc 1 500 3 is_stmt 1 view .LVU15
	.loc 1 501 1 is_stmt 0 view .LVU16
	bx	lr
.LFE208:
	.size	_GetAvailWriteSpace, .-_GetAvailWriteSpace
	.section	.text._WriteNoCheck,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_WriteNoCheck, %function
_WriteNoCheck:
.LVL6:
.LFB206:
	.loc 1 399 94 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 400 3 view .LVU18
	.loc 1 401 3 view .LVU19
	.loc 1 402 3 view .LVU20
	.loc 1 407 3 view .LVU21
	.loc 1 399 94 is_stmt 0 view .LVU22
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
.LCFI0:
	.loc 1 408 14 view .LVU23
	ldrd	r9, r4, [r0, #8]
	.loc 1 399 94 view .LVU24
	mov	r5, r0
	.loc 1 408 7 view .LVU25
	sub	r8, r9, r4
.LVL7:
	.loc 1 409 3 is_stmt 1 view .LVU26
	.loc 1 421 5 is_stmt 0 view .LVU27
	ldr	r0, [r0, #4]
.LVL8:
	.loc 1 409 6 view .LVU28
	cmp	r8, r2
	.loc 1 421 5 view .LVU29
	add	r0, r0, r4
	.loc 1 399 94 view .LVU30
	mov	r7, r1
	.loc 1 422 26 view .LVU31
	add	r4, r4, r2
	.loc 1 409 6 view .LVU32
	bls	.L5
.LVL9:
.L7:
	.loc 1 444 5 view .LVU33
	bl	memcpy
.LVL10:
	.loc 1 445 5 is_stmt 1 view .LVU34
	.loc 1 445 18 is_stmt 0 view .LVU35
	str	r4, [r5, #12]
	.loc 1 448 1 view .LVU36
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL11:
.L5:
	.loc 1 441 5 is_stmt 1 view .LVU37
	.loc 1 442 5 view .LVU38
	mov	r2, r8
.LVL12:
	.loc 1 443 20 is_stmt 0 view .LVU39
	sub	r4, r4, r9
	.loc 1 442 5 view .LVU40
	bl	memcpy
.LVL13:
	.loc 1 443 5 is_stmt 1 view .LVU41
	.loc 1 444 5 view .LVU42
	ldr	r0, [r5, #4]
	mov	r2, r4
	add	r1, r7, r8
	b	.L7
.LFE206:
	.size	_WriteNoCheck, .-_WriteNoCheck
	.section	.text._WriteBlocking,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_WriteBlocking, %function
_WriteBlocking:
.LVL14:
.LFB205:
	.loc 1 335 101 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 336 3 view .LVU44
	.loc 1 337 3 view .LVU45
	.loc 1 338 3 view .LVU46
	.loc 1 339 3 view .LVU47
	.loc 1 346 3 view .LVU48
	.loc 1 347 3 view .LVU49
	.loc 1 335 101 is_stmt 0 view .LVU50
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
.LCFI1:
	.loc 1 347 9 view .LVU51
	ldr	r5, [r0, #12]
.LVL15:
	.loc 1 335 101 view .LVU52
	mov	r6, r0
	mov	r9, r1
	mov	r7, r2
	.loc 1 346 19 view .LVU53
	mov	r8, #0
.LVL16:
.L12:
	.loc 1 348 3 is_stmt 1 view .LVU54
	.loc 1 349 5 view .LVU55
	.loc 1 349 11 is_stmt 0 view .LVU56
	ldr	r4, [r6, #16]
.LVL17:
	.loc 1 350 5 is_stmt 1 view .LVU57
	.loc 1 353 30 is_stmt 0 view .LVU58
	ldr	r3, [r6, #8]
	.loc 1 366 5 view .LVU59
	ldr	r0, [r6, #4]
	.loc 1 350 8 view .LVU60
	cmp	r5, r4
	.loc 1 351 7 is_stmt 1 view .LVU61
	.loc 1 353 7 view .LVU62
	.loc 1 353 23 is_stmt 0 view .LVU63
	it	cs
	addcs	r4, r4, r3
.LVL18:
	.loc 1 353 23 view .LVU64
	subs	r4, r4, #1
	subs	r2, r4, r5
.LVL19:
	.loc 1 355 5 is_stmt 1 view .LVU65
	.loc 1 356 5 view .LVU66
	.loc 1 355 23 is_stmt 0 view .LVU67
	subs	r4, r3, r5
.LVL20:
	.loc 1 356 21 view .LVU68
	cmp	r4, r7
	it	cs
	movcs	r4, r7
.LVL21:
	.loc 1 356 21 view .LVU69
	cmp	r4, r2
	it	cs
	movcs	r4, r2
.LVL22:
	.loc 1 366 5 is_stmt 1 view .LVU70
	mov	r1, r9
	add	r0, r0, r5
	mov	r2, r4
	bl	memcpy
.LVL23:
	.loc 1 367 5 view .LVU71
	.loc 1 372 8 is_stmt 0 view .LVU72
	ldr	r3, [r6, #8]
	.loc 1 370 21 view .LVU73
	add	r5, r5, r4
.LVL24:
	.loc 1 373 13 view .LVU74
	cmp	r3, r5
	it	eq
	moveq	r5, #0
	.loc 1 376 3 view .LVU75
	subs	r7, r7, r4
.LVL25:
	.loc 1 367 21 view .LVU76
	add	r8, r8, r4
.LVL26:
	.loc 1 368 5 is_stmt 1 view .LVU77
	.loc 1 368 21 is_stmt 0 view .LVU78
	add	r9, r9, r4
.LVL27:
	.loc 1 369 5 is_stmt 1 view .LVU79
	.loc 1 370 5 view .LVU80
	.loc 1 372 5 view .LVU81
	.loc 1 375 5 view .LVU82
	.loc 1 375 18 is_stmt 0 view .LVU83
	str	r5, [r6, #12]
	.loc 1 376 11 is_stmt 1 view .LVU84
	.loc 1 376 3 is_stmt 0 view .LVU85
	bne	.L12
	.loc 1 378 3 is_stmt 1 view .LVU86
	.loc 1 379 1 is_stmt 0 view .LVU87
	mov	r0, r8
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.loc 1 379 1 view .LVU88
.LFE205:
	.size	_WriteBlocking, .-_WriteBlocking
	.section	.rodata._DoInit.str1.1,"aMS",%progbits,1
.LC0:
	.ascii	"Terminal\000"
.LC1:
	.ascii	"RTT\000"
.LC2:
	.ascii	"SEGGER\000"
	.section	.text._DoInit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_DoInit, %function
_DoInit:
.LFB204:
	.loc 1 280 27 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 281 3 view .LVU90
	.loc 1 285 3 view .LVU91
.LVL28:
	.loc 1 286 3 view .LVU92
	.loc 1 280 27 is_stmt 0 view .LVU93
	push	{r4, lr}
.LCFI2:
	.loc 1 286 25 view .LVU94
	ldr	r4, .L16
	.loc 1 291 27 view .LVU95
	ldr	r2, .L16+4
	str	r2, [r4, #24]
	.loc 1 286 25 view .LVU96
	movs	r3, #2
	.loc 1 287 25 view .LVU97
	strd	r3, r3, [r4, #16]
	.loc 1 291 3 is_stmt 1 view .LVU98
	.loc 1 292 3 view .LVU99
	.loc 1 292 27 is_stmt 0 view .LVU100
	ldr	r3, .L16+8
	str	r3, [r4, #28]
	.loc 1 293 3 is_stmt 1 view .LVU101
	.loc 1 300 29 is_stmt 0 view .LVU102
	str	r2, [r4, #72]
	.loc 1 293 27 view .LVU103
	mov	r3, #512
	.loc 1 301 29 view .LVU104
	ldr	r2, .L16+12
	.loc 1 311 3 view .LVU105
	ldr	r1, .L16+16
	.loc 1 293 27 view .LVU106
	str	r3, [r4, #32]
	.loc 1 294 3 is_stmt 1 view .LVU107
	.loc 1 301 29 is_stmt 0 view .LVU108
	str	r2, [r4, #76]
	.loc 1 294 27 view .LVU109
	movs	r3, #0
	.loc 1 302 29 view .LVU110
	movs	r2, #16
	.loc 1 311 3 view .LVU111
	adds	r0, r4, #7
	.loc 1 294 27 view .LVU112
	str	r3, [r4, #40]
	.loc 1 295 3 is_stmt 1 view .LVU113
	.loc 1 295 27 is_stmt 0 view .LVU114
	str	r3, [r4, #36]
	.loc 1 296 3 is_stmt 1 view .LVU115
	.loc 1 296 27 is_stmt 0 view .LVU116
	str	r3, [r4, #44]
	.loc 1 300 3 is_stmt 1 view .LVU117
	.loc 1 301 3 view .LVU118
	.loc 1 302 3 view .LVU119
	.loc 1 303 29 is_stmt 0 view .LVU120
	str	r3, [r4, #88]
	.loc 1 304 29 view .LVU121
	str	r3, [r4, #84]
	.loc 1 305 29 view .LVU122
	str	r3, [r4, #92]
	.loc 1 302 29 view .LVU123
	str	r2, [r4, #80]
	.loc 1 303 3 is_stmt 1 view .LVU124
	.loc 1 304 3 view .LVU125
	.loc 1 305 3 view .LVU126
	.loc 1 311 3 view .LVU127
	bl	strcpy
.LVL29:
	.loc 1 312 3 view .LVU128
	ldr	r1, .L16+20
	mov	r0, r4
	bl	strcpy
.LVL30:
	.loc 1 313 3 view .LVU129
	.loc 1 313 14 is_stmt 0 view .LVU130
	movs	r3, #32
	strb	r3, [r4, #6]
	.loc 1 314 1 view .LVU131
	pop	{r4, pc}
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LC1
	.word	.LC2
.LFE204:
	.size	_DoInit, .-_DoInit
	.section	.text._PostTerminalSwitch.constprop.0,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	_PostTerminalSwitch.constprop.0, %function
_PostTerminalSwitch.constprop.0:
.LVL31:
.LFB234:
	.loc 1 463 13 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 464 3 view .LVU133
	.loc 1 466 3 view .LVU134
	.loc 1 463 13 is_stmt 0 view .LVU135
	push	{r0, r1, r2, lr}
.LCFI3:
	.loc 1 466 9 view .LVU136
	movs	r3, #255
	strb	r3, [sp, #4]
	.loc 1 467 3 is_stmt 1 view .LVU137
	.loc 1 467 23 is_stmt 0 view .LVU138
	ldr	r3, .L19
	.loc 1 468 3 view .LVU139
	movs	r2, #2
	.loc 1 467 9 view .LVU140
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	.loc 1 468 3 view .LVU141
	ldr	r0, .L19+4
.LVL32:
	.loc 1 467 9 view .LVU142
	strb	r3, [sp, #5]
	.loc 1 468 3 is_stmt 1 view .LVU143
	add	r1, sp, #4
	bl	_WriteBlocking
.LVL33:
	.loc 1 469 1 is_stmt 0 view .LVU144
	add	sp, sp, #12
.LCFI4:
	@ sp needed
	ldr	pc, [sp], #4
.L20:
	.align	2
.L19:
	.word	.LANCHOR3
	.word	.LANCHOR0+24
.LFE234:
	.size	_PostTerminalSwitch.constprop.0, .-_PostTerminalSwitch.constprop.0
	.section	.text.SEGGER_RTT_ReadNoLock,"ax",%progbits
	.align	1
	.global	SEGGER_RTT_ReadNoLock
	.syntax unified
	.thumb
	.thumb_func
	.type	SEGGER_RTT_ReadNoLock, %function
SEGGER_RTT_ReadNoLock:
.LVL34:
.LFB209:
	.loc 1 526 88 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 526 88 is_stmt 0 view .LVU146
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI5:
	.loc 1 537 3 view .LVU147
	ldr	r8, .L33
	ldrb	r3, [r8]	@ zero_extendqisi2
	.loc 1 526 88 view .LVU148
	mov	r10, r0
	mov	r9, r1
	.loc 1 527 3 is_stmt 1 view .LVU149
	.loc 1 528 3 view .LVU150
	.loc 1 529 3 view .LVU151
	.loc 1 530 3 view .LVU152
	.loc 1 531 3 view .LVU153
	.loc 1 532 3 view .LVU154
	.loc 1 537 3 view .LVU155
	.loc 1 537 3 view .LVU156
	.loc 1 526 88 is_stmt 0 view .LVU157
	mov	r6, r2
	.loc 1 537 3 view .LVU158
	cbnz	r3, .L22
	.loc 1 537 3 is_stmt 1 discriminator 1 view .LVU159
	bl	_DoInit
.LVL35:
.L22:
	.loc 1 537 3 discriminator 3 view .LVU160
	.loc 1 538 3 discriminator 3 view .LVU161
	.loc 1 539 3 discriminator 3 view .LVU162
	.loc 1 540 3 discriminator 3 view .LVU163
	.loc 1 540 9 is_stmt 0 discriminator 3 view .LVU164
	movs	r7, #24
	mla	r7, r7, r10, r8
	ldr	r5, [r7, #88]
.LVL36:
	.loc 1 541 3 is_stmt 1 discriminator 3 view .LVU165
	.loc 1 541 9 is_stmt 0 discriminator 3 view .LVU166
	ldr	fp, [r7, #84]
.LVL37:
	.loc 1 542 3 is_stmt 1 discriminator 3 view .LVU167
	.loc 1 546 3 discriminator 3 view .LVU168
	.loc 1 546 6 is_stmt 0 discriminator 3 view .LVU169
	cmp	r5, fp
	bls	.L26
	.loc 1 547 5 is_stmt 1 view .LVU170
	.loc 1 547 17 is_stmt 0 view .LVU171
	ldr	r4, [r7, #80]
	.loc 1 558 5 view .LVU172
	ldr	r1, [r7, #76]
	.loc 1 547 17 view .LVU173
	subs	r4, r4, r5
.LVL38:
	.loc 1 548 5 is_stmt 1 view .LVU174
	.loc 1 548 17 is_stmt 0 view .LVU175
	cmp	r4, r6
	it	cs
	movcs	r4, r6
.LVL39:
	.loc 1 558 5 is_stmt 1 view .LVU176
	add	r1, r1, r5
	mov	r0, r9
	mov	r2, r4
	bl	memcpy
.LVL40:
	.loc 1 559 5 view .LVU177
	.loc 1 560 5 view .LVU178
	.loc 1 567 8 is_stmt 0 view .LVU179
	ldr	r3, [r7, #80]
	.loc 1 562 18 view .LVU180
	add	r5, r5, r4
.LVL41:
	.loc 1 560 18 view .LVU181
	add	r9, r9, r4
.LVL42:
	.loc 1 561 5 is_stmt 1 view .LVU182
	.loc 1 561 18 is_stmt 0 view .LVU183
	subs	r6, r6, r4
.LVL43:
	.loc 1 562 5 is_stmt 1 view .LVU184
	.loc 1 567 5 view .LVU185
	.loc 1 568 13 is_stmt 0 view .LVU186
	cmp	r3, r5
	it	eq
	moveq	r5, #0
.LVL44:
.L23:
	.loc 1 574 3 is_stmt 1 view .LVU187
	.loc 1 574 15 is_stmt 0 view .LVU188
	sub	r2, fp, r5
.LVL45:
	.loc 1 575 3 is_stmt 1 view .LVU189
	.loc 1 575 15 is_stmt 0 view .LVU190
	cmp	r6, r2
	it	cs
	movcs	r6, r2
.LVL46:
	.loc 1 576 3 is_stmt 1 view .LVU191
	.loc 1 576 6 is_stmt 0 view .LVU192
	cbz	r6, .L24
	.loc 1 586 5 is_stmt 1 view .LVU193
	movs	r3, #24
	mla	r3, r3, r10, r8
	mov	r2, r6
	ldr	r1, [r3, #76]
	mov	r0, r9
	add	r1, r1, r5
	bl	memcpy
.LVL47:
	.loc 1 587 5 view .LVU194
	.loc 1 587 18 is_stmt 0 view .LVU195
	add	r4, r4, r6
.LVL48:
	.loc 1 588 5 is_stmt 1 view .LVU196
	.loc 1 589 5 view .LVU197
	.loc 1 590 5 view .LVU198
	.loc 1 590 18 is_stmt 0 view .LVU199
	add	r5, r5, r6
.LVL49:
.L24:
	.loc 1 593 3 is_stmt 1 view .LVU200
	.loc 1 593 6 is_stmt 0 view .LVU201
	cbz	r4, .L21
	.loc 1 594 5 is_stmt 1 view .LVU202
	.loc 1 594 18 is_stmt 0 view .LVU203
	movs	r0, #24
	mla	r8, r0, r10, r8
	str	r5, [r8, #88]
.LVL50:
	.loc 1 597 3 is_stmt 1 view .LVU204
.L21:
	.loc 1 598 1 is_stmt 0 view .LVU205
	mov	r0, r4
	pop	{r3, r4, r5, r6