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
	.file	"nrfx_uart.c"
	.text
.Ltext0:
	.section	.text.nrf_uart_event_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_uart_event_clear, %function
nrf_uart_event_clear:
.LVL0:
.LFB236:
	.file 1 "../../../../../../modules/nrfx/hal/nrf_uart.h"
	.loc 1 346 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 347 5 view .LVU1
	.loc 1 347 66 is_stmt 0 view .LVU2
	movs	r3, #0
	str	r3, [r0, r1]
	.loc 1 349 5 is_stmt 1 view .LVU3
	.loc 1 346 1 is_stmt 0 view .LVU4
	sub	sp, sp, #8
.LCFI0:
	.loc 1 349 31 view .LVU5
	ldr	r3, [r0, r1]
	.loc 1 349 23 view .LVU6
	str	r3, [sp, #4]
	.loc 1 350 5 is_stmt 1 view .LVU7
	ldr	r3, [sp, #4]
	.loc 1 352 1 is_stmt 0 view .LVU8
	add	sp, sp, #8
.LCFI1:
	@ sp needed
	bx	lr
.LFE236:
	.size	nrf_uart_event_clear, .-nrf_uart_event_clear
	.section	.text.tx_byte,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	tx_byte, %function
tx_byte:
.LVL1:
.LFB304:
	.file 2 "C:\\Users\\CPS Lab\\Documents\\nordic_semi\\nRF5_SDK_17.0.2_d674dde\\modules\\nrfx\\drivers\\src\\nrfx_uart.c"
	.loc 2 245 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 246 5 view .LVU10
	.loc 2 245 1 is_stmt 0 view .LVU11
	mov	r2, r1
	push	{r4, lr}
.LCFI2:
	.loc 2 246 5 view .LVU12
	mov	r1, #284
.LVL2:
	.loc 2 246 5 view .LVU13
	bl	nrf_uart_event_clear
.LVL3:
	.loc 2 247 5 is_stmt 1 view .LVU14
	.loc 2 247 41 is_stmt 0 view .LVU15
	ldr	r3, [r2, #32]
	.loc 2 247 13 view .LVU16
	ldr	r1, [r2, #8]
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
.LVL4:
	.loc 2 248 5 is_stmt 1 view .LVU17
	.loc 2 248 9 is_stmt 0 view .LVU18
	ldr	r3, [r2, #32]
	.loc 2 248 21 view .LVU19
	adds	r3, r3, #1
	str	r3, [r2, #32]
	.loc 2 249 5 is_stmt 1 view .LVU20
.LVL5:
.LBB183:
.LBI183:
	.loc 1 477 22 view .LVU21
.LBB184:
	.loc 1 479 5 view .LVU22
	.loc 1 479 16 is_stmt 0 view .LVU23
	str	r1, [r0, #1308]
.LVL6:
	.loc 1 479 16 view .LVU24
.LBE184:
.LBE183:
	.loc 2 250 1 view .LVU25
	pop	{r4, pc}
.LFE304:
	.size	tx_byte, .-tx_byte
	.section	.text.rx_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	rx_enable, %function
rx_enable:
.LVL7:
.LFB308:
	.loc 2 338 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 339 5 view .LVU27
	.loc 2 338 1 is_stmt 0 view .LVU28
	mov	r2, r0
	push	{r3, lr}
.LCFI3:
	.loc 2 339 5 view .LVU29
	ldr	r0, [r0]
.LVL8:
	.loc 2 339 5 view .LVU30
	mov	r1, #292
	bl	nrf_uart_event_clear
.LVL9:
	.loc 2 340 5 is_stmt 1 view .LVU31
	ldr	r0, [r2]
	mov	r1, #264
	bl	nrf_uart_event_clear
.LVL10:
	.loc 2 341 5 view .LVU32
	ldr	r3, [r2]
.LVL11:
.LBB185:
.LBI185:
	.loc 1 482 22 view .LVU33
.LBB186:
	.loc 1 484 5 view .LVU34
	.loc 1 484 65 is_stmt 0 view .LVU35
	movs	r2, #1
.LVL12:
	.loc 1 484 65 view .LVU36
	str	r2, [r3]
.LVL13:
	.loc 1 484 65 view .LVU37
.LBE186:
.LBE185:
	.loc 2 342 1 view .LVU38
	pop	{r3, pc}
.LFE308:
	.size	rx_enable, .-rx_enable
	.section	.text.rx_byte,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	rx_byte, %function
rx_byte:
.LVL14:
.LFB309:
	.loc 2 345 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 346 5 view .LVU40
	.loc 2 346 8 is_stmt 0 view .LVU41
	ldr	r3, [r1, #24]
	.loc 2 345 1 view .LVU42
	mov	r2, r1
	push	{r4, lr}
.LCFI4:
.LBB195:
.LBB196:
	.loc 2 348 9 view .LVU43
	mov	r1, #264
.LVL15:
	.loc 2 348 9 view .LVU44
.LBE196:
.LBE195:
	.loc 2 346 8 view .LVU45
	cbnz	r3, .L5
.LVL16:
.LBB200:
.LBI195:
	.loc 2 344 13 is_stmt 1 view .LVU46
.LBB199:
	.loc 2 348 9 view .LVU47
	bl	nrf_uart_event_clear
.LVL17:
	.loc 2 350 9 view .LVU48
.LBB197:
.LBI197:
	.loc 1 472 25 view .LVU49
.LBB198:
	.loc 1 474 5 view .LVU50
	.loc 1 474 17 is_stmt 0 view .LVU51
	ldr	r3, [r0, #1304]
.LVL18:
	.loc 1 474 17 view .LVU52
.LBE198:
.LBE197:
	.loc 2 351 9 is_stmt 1 view .LVU53
.L4:
	.loc 2 351 9 is_stmt 0 view .LVU54
.LBE199:
.LBE200:
	.loc 2 356 1 view .LVU55
	pop	{r4, pc}
.LVL19:
.L5:
	.loc 2 353 5 is_stmt 1 view .LVU56
	bl	nrf_uart_event_clear
.LVL20:
	.loc 2 354 5 view .LVU57
	.loc 2 354 27 is_stmt 0 view .LVU58
	ldr	r3, [r2, #36]
.LVL21:
.LBB201:
.LBI201:
	.loc 1 472 25 is_stmt 1 view .LVU59
.LBB202:
	.loc 1 474 5 view .LVU60
.LBE202:
.LBE201:
	.loc 2 354 41 is_stmt 0 view .LVU61
	ldr	r1, [r2, #12]
.LBB204:
.LBB203:
	.loc 1 474 17 view .LVU62
	ldr	r0, [r0, #1304]
.LVL22:
	.loc 1 474 17 view .LVU63
	strb	r0, [r1, r3]
.LBE203:
.LBE204:
	.loc 2 355 5 is_stmt 1 view .LVU64
	.loc 2 355 9 is_stmt 0 view .LVU65
	ldr	r3, [r2, #36]
	.loc 2 355 21 view .LVU66
	adds	r3, r3, #1
	str	r3, [r2, #36]
	b	.L4
.LFE309:
	.size	rx_byte, .-rx_byte
	.section	.text.rx_done_event.constprop.0,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	rx_done_event.constprop.0, %function
rx_done_event.constprop.0:
.LVL23:
.LFB326:
	.loc 2 503 13 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 507 5 view .LVU68
	.loc 2 509 5 view .LVU69
	.loc 2 503 13 is_stmt 0 view .LVU70
	push	{r0, r1, r2, r3, r4, lr}
.LCFI5:
	.loc 2 509 28 view .LVU71
	movs	r3, #1
	strb	r3, [sp]
	.loc 2 510 5 is_stmt 1 view .LVU72
	.loc 2 513 5 is_stmt 0 view .LVU73
	ldr	r3, .L8
	.loc 2 511 28 view .LVU74
	strd	r1, r0, [sp, #4]
	.loc 2 513 5 is_stmt 1 view .LVU75
	ldrd	r1, r2, [r3]
.LVL24:
	.loc 2 513 5 is_stmt 0 view .LVU76
	mov	r0, sp
.LVL25:
	.loc 2 513 5 view .LVU77
	blx	r2
.LVL26:
	.loc 2 514 1 view .LVU78
	add	sp, sp, #20
.LCFI6:
	@ sp needed
	ldr	pc, [sp], #4
.L9:
	.align	2
.L8:
	.word	.LANCHOR0
.LFE326:
	.size	rx_done_event.constprop.0, .-rx_done_event.constprop.0
	.section	.text.nrfx_uart_0_irq_handler,"ax",%progbits
	.align	1
	.global	nrfx_uart_0_irq_handler
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_0_irq_handler, %function
nrfx_uart_0_irq_handler:
.LFB320:
	.loc 2 649 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 650 5 view .LVU80
.LBB236:
.LBI236:
	.loc 2 553 13 view .LVU81
.LVL27:
.LBB237:
	.loc 2 556 5 view .LVU82
.LBB238:
.LBI238:
	.loc 1 370 22 view .LVU83
.LBB239:
	.loc 1 372 5 view .LVU84
.LBE239:
.LBE238:
.LBE237:
.LBE236:
	.loc 2 649 1 is_stmt 0 view .LVU85
	push	{r4, r5, lr}
.LCFI7:
.LBB276:
.LBB273:
.LBB241:
.LBB240:
	.loc 1 372 24 view .LVU86
	ldr	r5, .L45
	ldr	r3, [r5, #772]
.LVL28:
	.loc 1 372 24 view .LVU87
.LBE240:
.LBE241:
	.loc 2 556 8 view .LVU88
	lsls	r2, r3, #22
.LBE273:
.LBE276:
	.loc 2 649 1 view .LVU89
	sub	sp, sp, #20
.LCFI8:
.LBB277:
.LBB274:
	.loc 2 556 8 view .LVU90
	bpl	.L11
.LVL29:
.LBB242:
.LBI242:
	.loc 1 354 22 is_stmt 1 view .LVU91
.LBB243:
	.loc 1 356 5 view .LVU92
	.loc 1 356 18 is_stmt 0 view .LVU93
	ldr	r3, [r5, #292]
.LVL30:
	.loc 1 356 18 view .LVU94
.LBE243:
.LBE242:
	.loc 2 556 68 view .LVU95
	cmp	r3, #0
	beq	.L11
.LBB244:
	.loc 2 559 9 is_stmt 1 view .LVU96
	.loc 2 560 9 view .LVU97
	mov	r1, #292
	mov	r0, r5
	bl	nrf_uart_event_clear
.LVL31:
	.loc 2 561 9 view .LVU98
	.loc 2 561 71 view .LVU99
	.loc 2 562 9 view .LVU100
.LBB245:
.LBI245:
	.loc 1 375 22 view .LVU101
.LBB246:
	.loc 1 377 5 view .LVU102
	.loc 1 377 21 is_stmt 0 view .LVU103
	mov	r3, #516
	str	r3, [r5, #776]
.LVL32:
	.loc 1 377 21 view .LVU104
.LBE246:
.LBE245:
	.loc 2 564 9 is_stmt 1 view .LVU105
	.loc 2 564 18 is_stmt 0 view .LVU106
	ldr	r3, .L45+4
	.loc 2 564 12 view .LVU107
	ldrb	r2, [r3, #41]	@ zero_extendqisi2
	cbnz	r2, .L12
	.loc 2 566 13 is_stmt 1 view .LVU108
.LVL33:
.LBB247:
.LBI247:
	.loc 1 482 22 view .LVU109
.LBB248:
	.loc 1 484 5 view .LVU110
	.loc 1 484 65 is_stmt 0 view .LVU111
	movs	r2, #1
	str	r2, [r5, #4]
.LVL34:
.L12:
	.loc 1 484 65 view .LVU112
.LBE248:
.LBE247:
	.loc 2 568 9 is_stmt 1 view .LVU113
.LBB249:
.LBB250:
	.loc 1 382 14 is_stmt 0 view .LVU114
	ldr	r1, .L45
.LBE250:
.LBE249:
	.loc 2 568 38 view .LVU115
	movs	r2, #2
	strb	r2, [sp]
	.loc 2 569 9 is_stmt 1 view .LVU116
.LVL35:
.LBB252:
.LBI249:
	.loc 1 380 26 view .LVU117
.LBB251:
	.loc 1 382 5 view .LVU118
	.loc 1 382 14 is_stmt 0 view .LVU119
	ldr	r2, [r1, #1152]
.LVL36:
	.loc 1 383 5 is_stmt 1 view .LVU120
	.loc 1 383 21 is_stmt 0 view .LVU121
	str	r2, [r1, #1152]
	.loc 1 384 5 is_stmt 1 view .LVU122
.LVL37:
	.loc 1 384 5 is_stmt 0 view .LVU123
.LBE251:
.LBE252:
	.loc 2 569 38 view .LVU124
	str	r2, [sp, #12]
	.loc 2 570 9 is_stmt 1 view .LVU125
	.loc 2 570 38 is_stmt 0 view .LVU126
	ldr	r2, [r3, #24]
	str	r2, [sp, #8]
	.loc 2 571 9 is_stmt 1 view .LVU127
	.loc 2 571 38 is_stmt 0 view .LVU128
	ldr	r2, [r3, #12]
	str	r2, [sp, #4]
	.loc 2 574 9 is_stmt 1 view .LVU129
	.loc 2 574 32 is_stmt 0 view .LVU130
	movs	r2, #0
	.loc 2 575 42 view .LVU131
	strd	r2, r2, [r3, #24]
	.loc 2 577 9 is_stmt 1 view .LVU132
	mov	r0, sp
	ldrd	r1, r2, [r3]
	blx	r2
.LVL38:
.L13:
.LBE244:
	.loc 2 611 5 view .LVU133
.LBB253:
.LBI253:
	.loc 1 354 22 view .LVU134
.LBB254:
	.loc 1 356 5 view .LVU135
	.loc 1 356 18 is_stmt 0 view .LVU136
	ldr	r0, .L45
	ldr	r3, [r0, #284]
.LVL39:
	.loc 1 356 18 view .LVU137
.LBE254:
.LBE253:
	.loc 2 611 8 view .LVU138
	cbz	r3, .L19
.LBB255:
	.loc 2 615 9 is_stmt 1 view .LVU139
	.loc 2 615 22 is_stmt 0 view .LVU140
	ldr	r2, .L45+4
	ldr	r1, [r2, #20]
.LVL40:
	.loc 2 616 9 is_stmt 1 view .LVU141
	.loc 2 616 17 is_stmt 0 view .LVU142
	ldr	r3, [r2, #32]
	.loc 2 616 12 view .LVU143
	cmp	r1, r3
	bls	.L20
	.loc 2 616 57 view .LVU144
	ldrb	r3, [r2, #40]	@ zero_extendqisi2
	.loc 2 616 49 view .LVU145
	cmp	r3, #0
	bne	.L20
	.loc 2 618 13 is_stmt 1 view .LVU146
	mov	r1, r2
.LVL41:
	.loc 2 618 13 is_stmt 0 view .LVU147
	bl	tx_byte
.LVL42:
.L19:
	.loc 2 618 13 view .LVU148
.LBE255:
	.loc 2 630 5 is_stmt 1 view .LVU149
.LBB258:
.LBI258:
	.loc 1 354 22 view .LVU150
.LBB259:
	.loc 1 356 5 view .LVU151
	.loc 1 356 18 is_stmt 0 view .LVU152
	ldr	r0, .L45
	ldr	r3, [r0, #324]
.LVL43:
	.loc 1 356 18 view .LVU153
.LBE259:
.LBE258:
	.loc 2 630 8 view .LVU154
	cmp	r3, #0
	beq	.L10
	.loc 2 632 9 is_stmt 1 view .LVU155
	mov	r1, #324
	bl	nrf_uart_event_clear
.LVL44:
	.loc 2 635 9 view .LVU156
	.loc 2 635 17 is_stmt 0 view .LVU157
	ldr	r3, .L45+4
	.loc 2 635 12 view .LVU158
	ldrb	r2, [r3, #41]	@ zero_extendqisi2
	cbz	r2, .L24
	.loc 2 637 13 is_stmt 1 view .LVU159
.LVL45:
.LBB260:
.LBI260:
	.loc 1 482 22 view .LVU160
.LBB261:
	.loc 1 484 5 view .LVU161
	.loc 1 484 65 is_stmt 0 view .LVU162
	movs	r2, #1
	str	r2, [r0]
.LVL46:
.L24:
	.loc 1 484 65 view .LVU163
.LBE261:
.LBE260:
	.loc 2 639 9 is_stmt 1 view .LVU164
	.loc 2 639 12 is_stmt 0 view .LVU165
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L10
	.loc 2 641 13 is_stmt 1 view .LVU166
	.loc 2 642 13 is_stmt 0 view .LVU167
	ldr	r0, [r3, #36]
	ldr	r1, [r3, #12]
	.loc 2 641 36 view .LVU168
	movs	r2, #0
	str	r2, [r3, #24]
	.loc 2 642 13 is_stmt 1 view .LVU169
.LBE274:
.LBE277:
	.loc 2 651 1 is_stmt 0 view .LVU170
	add	sp, sp, #20
.LCFI9:
	@ sp needed
	pop	{r4, r5, lr}
.LCFI10:
.LBB278:
.LBB275:
	.loc 2 642 13 view .LVU171
	b	rx_done_event.constprop.0
.LVL47:
.L11:
.LCFI11:
	.loc 2 579 10 is_stmt 1 view .LVU172
.LBB262:
.LBI262:
	.loc 1 370 22 view .LVU173
.LBB263:
	.loc 1 372 5 view .LVU174
	.loc 1 372 24 is_stmt 0 view .LVU175
	ldr	r3, [r5, #772]
.LVL48:
	.loc 1 372 24 view .LVU176
.LBE263:
.LBE262:
	.loc 2 579 13 view .LVU177
	lsls	r3, r3, #29
	bpl	.L13
.LVL49:
.LBB264:
.LBI264:
	.loc 1 354 22 is_stmt 1 view .LVU178
.LBB265:
	.loc 1 356 5 view .LVU179
	.loc 1 356 18 is_stmt 0 view .LVU180
	ldr	r3, [r5, #264]
.LVL50:
	.loc 1 356 18 view .LVU181
.LBE265:
.LBE264:
	.loc 2 579 74 view .LVU182
	cmp	r3, #0
	beq	.L13
	.loc 2 582 9 is_stmt 1 view .LVU183
	ldr	r4, .L45+4
	ldr	r0, .L45
	mov	r1, r4
	bl	rx_byte
.LVL51:
	.loc 2 583 9 view .LVU184
	.loc 2 583 43 is_stmt 0 view .LVU185
	ldr	r3, [r4, #36]
	.loc 2 583 12 view .LVU186
	ldr	r2, [r4, #24]
	cmp	r2, r3
	bne	.L13
	.loc 2 585 13 is_stmt 1 view .LVU187
	.loc 2 585 21 is_stmt 0 view .LVU188
	ldr	r3, [r4, #28]
.LBB266:
	.loc 2 587 27 view .LVU189
	ldr	r1, [r4, #12]
.LBE266:
	.loc 2 585 16 view .LVU190
	cbz	r3, .L16
.LBB267:
	.loc 2 587 17 is_stmt 1 view .LVU191
.LVL52:
	.loc 2 588 17 view .LVU192
	.loc 2 591 40 is_stmt 0 view .LVU193
	str	r3, [r4, #24]
	.loc 2 592 35 view .LVU194
	ldr	r3, [r4, #16]
	str	r3, [r4, #12]
	.loc 2 593 50 view .LVU195
	movs	r3, #0
	.loc 2 588 27 view .LVU196
	ldr	r0, [r4, #36]
.LVL53:
	.loc 2 591 17 is_stmt 1 view .LVU197
	.loc 2 592 17 view .LVU198
	.loc 2 593 17 view .LVU199
	.loc 2 593 50 is_stmt 0 view .LVU200
	str	r3, [r4, #28]
	.loc 2 594 17 is_stmt 1 view .LVU201
	.loc 2 594 34 is_stmt 0 view .LVU202
	str	r3, [r4, #36]
	.loc 2 595 17 is_stmt 1 view .LVU203
.LVL54:
.L44:
	.loc 2 595 17 is_stmt 0 view .LVU204
.LBE267:
	.loc 2 606 17 view .LVU205
	bl	rx_done_event.constprop.0
.LVL55:
	b	.L13
.L16:
	.loc 2 599 17 is_stmt 1 view .LVU206
	.loc 2 599 20 is_stmt 0 view .LVU207
	ldrb	r3, [r4, #41]	@ zero_extendqisi2
	cbnz	r3, .L17
	.loc 2 601 21 is_stmt 1 view .LVU208
.LVL56:
.LBB268:
.LBI268:
	.loc 1 482 22 view .LVU209
.LBB269:
	.loc 1 484 5 view .LVU210
	.loc 1 484 65 is_stmt 0 view .LVU211
	movs	r3, #1
	str	r3, [r5, #4]
.LVL57:
.L17:
	.loc 1 484 65 view .LVU212
.LBE269:
.LBE268:
	.loc 2 603 17 is_stmt 1 view .LVU213
.LBB270:
.LBI270:
	.loc 1 375 22 view .LVU214
.LBB271:
	.loc 1 377 5 view .LVU215
	.loc 1 377 21 is_stmt 0 view .LVU216
	ldr	r3, .L45
	mov	r2, #516
	str	r2, [r3, #776]
.LVL58:
	.loc 1 377 21 view .LVU217
.LBE271:
.LBE270:
	.loc 2 605 17 is_stmt 1 view .LVU218
	.loc 2 605 40 is_stmt 0 view .LVU219
	movs	r3, #0
	.loc 2 606 17 view .LVU220
	ldr	r0, [r4, #36]
	.loc 2 605 40 view .LVU221
	str	r3, [r4, #24]
	.loc 2 606 17 is_stmt 1 view .LVU222
	b	.L44
.LVL59:
.L20:
.LBB272:
	.loc 2 622 13 view .LVU223
	ldr	r0, .L45
	mov	r1, #284
.LVL60:
	.loc 2 622 13 is_stmt 0 view .LVU224
	bl	nrf_uart_event_clear
.LVL61:
	.loc 2 623 13 is_stmt 1 view .LVU225
	.loc 2 623 21 is_stmt 0 view .LVU226
	ldr	r3, [r2, #20]
	.loc 2 623 16 view .LVU227
	cmp	r3, #0
	beq	.L19
	.loc 2 625 17 is_stmt 1 view .LVU228
	ldr	r1, [r2, #20]
.LVL62:
.LBB256:
.LBI256:
	.loc 2 516 13 view .LVU229
.LBB257:
	.loc 2 519 5 view .LVU230
	.loc 2 521 5 view .LVU231
	.loc 2 522 28 is_stmt 0 view .LVU232
	str	r1, [sp, #8]
	.loc 2 521 28 view .LVU233
	movs	r3, #0
	.loc 2 523 28 view .LVU234
	ldr	r1, [r2, #8]
.LVL63:
	.loc 2 521 28 view .LVU235
	strb	r3, [sp]
	.loc 2 522 5 is_stmt 1 view .LVU236
	.loc 2 523 5 view .LVU237
	.loc 2 523 28 is_stmt 0 view .LVU238
	str	r1, [sp, #4]
	.loc 2 525 5 is_stmt 1 view .LVU239
	.loc 2 525 28 is_stmt 0 view .LVU240
	str	r3, [r2, #20]
	.loc 2 527 5 is_stmt 1 view .LVU241
	mov	r0, sp
	ldrd	r1, r3, [r2]
	blx	r3
.LVL64:
	.loc 2 528 1 is_stmt 0 view .LVU242
	b	.L19
.LVL65:
.L10:
	.loc 2 528 1 view .LVU243
.LBE257:
.LBE256:
.LBE272:
.LBE275:
.LBE278:
	.loc 2 651 1 view .LVU244
	add	sp, sp, #20
.LCFI12:
	@ sp needed
	pop	{r4, r5, pc}
.L46:
	.align	2
.L45:
	.word	1073750016
	.word	.LANCHOR0
.LFE320:
	.size	nrfx_uart_0_irq_handler, .-nrfx_uart_0_irq_handler
	.section	.text.nrf_gpio_cfg_default,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_gpio_cfg_default, %function
nrf_gpio_cfg_default:
.LVL66:
.LFB267:
	.file 3 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
	.loc 3 574 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 575 5 view .LVU246
.LBB283:
.LBI283:
	.loc 3 531 22 view .LVU247
.LBB284:
	.loc 3 539 5 view .LVU248
.LBB285:
.LBI285:
	.loc 3 490 33 view .LVU249
.LBB286:
	.loc 3 492 5 view .LVU250
	.loc 3 492 52 view .LVU251
	.loc 3 496 5 view .LVU252
	.loc 3 496 8 is_stmt 0 view .LVU253
	cmp	r0, #31
	.loc 3 502 9 is_stmt 1 view .LVU254
	.loc 3 502 25 is_stmt 0 view .LVU255
	itte	hi
	andhi	r0, r0, #31
.LVL67:
	.loc 3 503 9 is_stmt 1 view .LVU256
	.loc 3 503 16 is_stmt 0 view .LVU257
	ldrhi	r3, .L50
	.loc 3 498 16 view .LVU258
	movls	r3, #1342177280
.LVL68:
	.loc 3 498 16 view .LVU259
.LBE286:
.LBE285:
	.loc 3 541 5 is_stmt 1 view .LVU260
	.loc 3 541 30 is_stmt 0 view .LVU261
	add	r0, r0, #448
.LVL69:
	.loc 3 541 30 view .LVU262
	movs	r2, #2
	str	r2, [r3, r0, lsl #2]
.LVL70:
	.loc 3 541 30 view .LVU263
.LBE284:
.LBE283:
	.loc 3 582 1 view .LVU264
	bx	lr
.L51:
	.align	2
.L50:
	.word	1342178048
.LFE267:
	.size	nrf_gpio_cfg_default, .-nrf_gpio_cfg_default
	.section	.text.nrfx_uart_init,"ax",%progbits
	.align	1
	.global	nrfx_uart_init
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_init, %function
nrfx_uart_init:
.LVL71:
.LFB302:
	.loc 2 169 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 170 5 view .LVU266
	.loc 2 170 26 view .LVU267
	.loc 2 171 5 view .LVU268
	.loc 2 169 1 is_stmt 0 view .LVU269
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
.LCFI13:
	.loc 2 174 13 view .LVU270
	ldr	r5, .L86
	.loc 2 171 51 view .LVU271
	ldrb	r8, [r0, #4]	@ zero_extendqisi2
.LVL72:
	.loc 2 172 5 is_stmt 1 view .LVU272
	.loc 2 174 5 view .LVU273
	.loc 2 174 13 is_stmt 0 view .LVU274
	movs	r3, #44
	mla	r3, r3, r8, r5
	.loc 2 169 1 view .LVU275
	mov	r6, r0
	.loc 2 174 8 view .LVU276
	ldrb	r3, [r3, #42]	@ zero_extendqisi2
	.loc 2 169 1 view .LVU277
	mov	r4, r1
	mov	r9, r2
	.loc 2 174 8 view .LVU278
	cmp	r3, #0
	bne	.L65
	.loc 2 184 5 is_stmt 1 view .LVU279
	.loc 2 189 5 view .LVU280
	.loc 2 189 9 is_stmt 0 view .LVU281
	ldr	r1, .L86+4
.LVL73:
	.loc 2 189 9 view .LVU282
	ldr	r0, [r0]
.LVL74:
	.loc 2 189 9 view .LVU283
	bl	nrfx_prs_acquire
.LVL75:
	.loc 2 189 8 view .LVU284
	mov	r7, r0
	cmp	r0, #0
	bne	.L66
	.loc 2 200 5 is_stmt 1 view .LVU285
.LVL76:
.LBB351:
.LBI351:
	.loc 2 81 13 view .LVU286
.LBB352:
	.loc 2 84 5 view .LVU287
	.loc 2 84 17 is_stmt 0 view .LVU288
	ldr	r2, [r4]
	.loc 2 84 8 view .LVU289
	adds	r3, r2, #1
	beq	.L54
	.loc 2 86 9 is_stmt 1 view .LVU290
.LVL77:
.LBB353:
.LBI353:
	.loc 3 649 22 view .LVU291
.LBB354:
	.loc 3 651 5 view .LVU292
.LBB355:
.LBI355:
	.loc 3 490 33 view .LVU293
.LBB356:
	.loc 3 492 5 view .LVU294
	.loc 3 492 52 view .LVU295
	.loc 3 496 5 view .LVU296
	.loc 3 496 8 is_stmt 0 view .LVU297
	cmp	r2, #31
	.loc 3 502 9 is_stmt 1 view .LVU298
	.loc 3 503 16 is_stmt 0 view .LVU299
	ittee	hi
	ldrhi	r1, .L86+8
	.loc 3 502 25 view .LVU300
	andhi	r3, r2, #31
.LVL78:
	.loc 3 503 9 is_stmt 1 view .LVU301
	movls	r3, r2
.LVL79:
	.loc 3 498 16 is_stmt 0 view .LVU302
	movls	r1, #1342177280
.LVL80:
	.loc 3 498 16 view .LVU303
.LBE356:
.LBE355:
	.loc 3 653 5 is_stmt 1 view .LVU304
	.loc 3 653 36 is_stmt 0 view .LVU305
	movs	r0, #1
	lsls	r0, r0, r3
.LVL81:
.LBB357:
.LBI357:
	.loc 3 780 22 is_stmt 1 view .LVU306
.LBB358:
	.loc 3 782 5 view .LVU307
.LBE358:
.LBE357:
.LBE354:
.LBE353:
.LBB362:
.LBB363:
.LBB364:
.LBB365:
	.loc 3 541 30 is_stmt 0 view .LVU308
	add	r3, r3, #448
.LVL82:
	.loc 3 541 30 view .LVU309
.LBE365:
.LBE364:
.LBE363:
.LBE362:
.LBB372:
.LBB361:
.LBB360:
.LBB359:
	.loc 3 782 19 view .LVU310
	str	r0, [r1, #1288]
.LVL83:
	.loc 3 782 19 view .LVU311
.LBE359:
.LBE360:
.LBE361:
.LBE372:
	.loc 2 87 9 is_stmt 1 view .LVU312
.LBB373:
.LBI362:
	.loc 3 549 22 view .LVU313
.LBB370:
	.loc 3 551 5 view .LVU314
.LBB368:
.LBI364:
	.loc 3 531 22 view .LVU315
.LBB366:
	.loc 3 539 5 view .LVU316
	.loc 3 539 5 is_stmt 0 view .LVU317
.LBE366:
.LBE368:
.LBE370:
.LBE373:
.LBE352:
.LBE351:
	.loc 3 492 5 is_stmt 1 view .LVU318
	.loc 3 492 52 view .LVU319
	.loc 3 496 5 view .LVU320
.LBB421:
.LBB419:
.LBB374:
.LBB371:
.LBB369:
.LBB367:
	.loc 3 541 5 view .LVU321
	.loc 3 541 30 is_stmt 0 view .LVU322
	movs	r0, #3
	str	r0, [r1, r3, lsl #2]
.LVL84:
.L54:
	.loc 3 541 30 view .LVU323
.LBE367:
.LBE369:
.LBE371:
.LBE374:
	.loc 2 89 5 is_stmt 1 view .LVU324
	.loc 2 89 17 is_stmt 0 view .LVU325
	ldr	r1, [r4, #4]
	.loc 2 89 8 view .LVU326
	adds	r0, r1, #1
	beq	.L56
	.loc 2 91 9 is_stmt 1 view .LVU327
.LVL85:
.LBB375:
.LBI375:
	.loc 3 561 22 view .LVU328
.LBB376:
	.loc 3 563 5 view .LVU329
.LBB377:
.LBI377:
	.loc 3 531 22 view .LVU330
.LBB378:
	.loc 3 539 5 view .LVU331
.LBB379:
.LBI379:
	.loc 3 490 33 view .LVU332
.LBB380:
	.loc 3 492 5 view .LVU333
	.loc 3 492 52 view .LVU334
	.loc 3 496 5 view .LVU335
	.loc 3 496 8 is_stmt 0 view .LVU336
	cmp	r1, #31
	.loc 3 502 9 is_stmt 1 view .LVU337
	.loc 3 502 25 is_stmt 0 view .LVU338
	itete	hi
	andhi	r3, r1, #31
.LVL86:
	.loc 3 503 9 is_stmt 1 view .LVU339
	movls	r3, r1
.LVL87:
	.loc 3 503 16 is_stmt 0 view .LVU340
	ldrhi	r0, .L86+8
	.loc 3 498 16 view .LVU341
	movls	r0, #1342177280
.LVL88:
	.loc 3 498 16 view .LVU342
.LBE380:
.LBE379:
	.loc 3 541 5 is_stmt 1 view .LVU343
	.loc 3 541 30 is_stmt 0 view .LVU344
	add	r3, r3, #448
.LVL89:
	.loc 3 541 30 view .LVU345
	mov	ip, #0
	str	ip, [r0, r3, lsl #2]
.LVL90:
.L56:
	.loc 3 541 30 view .LVU346
.LBE378:
.LBE377:
.LBE376:
.LBE375:
	.loc 2 94 5 is_stmt 1 view .LVU347
	ldr	r0, [r6]
	ldr	r3, [r4, #24]
.LVL91:
.LBB381:
.LBI381:
	.loc 1 499 22 view .LVU348
.LBB382:
	.loc 1 501 5 view .LVU349
	.loc 1 501 21 is_stmt 0 view .LVU350
	str	r3, [r0, #1316]
.LVL92:
	.loc 1 501 21 view .LVU351
.LBE382:
.LBE381:
	.loc 2 95 5 is_stmt 1 view .LVU352
	ldrb	ip, [r4, #20]	@ zero_extendqisi2
.LVL93:
.LBB383:
.LBI383:
	.loc 1 492 22 view .LVU353
.LBB384:
	.loc 1 496 5 view .LVU354
	.loc 1 496 38 is_stmt 0 view .LVU355
	ldrb	r3, [r4, #21]	@ zero_extendqisi2
.LBE384:
.LBE383:
	.loc 2 97 8 view .LVU356
	cmp	ip, #1
.LBB386:
.LBB385:
	.loc 1 496 38 view .LVU357
	orr	r3, ip, r3
	.loc 1 496 19 view .LVU358
	str	r3, [r0, #1388]
.LVL94:
	.loc 1 496 19 view .LVU359
.LBE385:
.LBE386:
	.loc 2 96 5 is_stmt 1 view .LVU360
.LBB387:
.LBI387:
	.loc 1 397 22 view .LVU361
.LBB388:
	.loc 1 400 5 view .LVU362
	.loc 1 400 21 is_stmt 0 view .LVU363
	str	r1, [r0, #1300]
	.loc 1 405 5 is_stmt 1 view .LVU364
	.loc 1 405 21 is_stmt 0 view .LVU365
	str	r2, [r0, #1292]
.LVL95:
	.loc 1 405 21 view .LVU366
.LBE388:
.LBE387:
	.loc 2 97 5 is_stmt 1 view .LVU367
	.loc 2 97 8 is_stmt 0 view .LVU368
	bne	.L58
	.loc 2 99 9 is_stmt 1 view .LVU369
	.loc 2 99 21 is_stmt 0 view .LVU370
	ldr	r3, [r4, #8]
	.loc 2 99 12 view .LVU371
	adds	r1, r3, #1
	beq	.L59
	.loc 2 101 13 is_stmt 1 view .LVU372
.LVL96:
.LBB389:
.LBI389:
	.loc 3 561 22 view .LVU373
.LBB390:
	.loc 3 563 5 view .LVU374
.LBB391:
.LBI391:
	.loc 3 531 22 view .LVU375
.LBB392:
	.loc 3 539 5 view .LVU376
.LBB393:
.LBI393:
	.loc 3 490 33 view .LVU377
.LBB394:
	.loc 3 492 5 view .LVU378
	.loc 3 492 52 view .LVU379
	.loc 3 496 5 view .LVU380
	.loc 3 496 8 is_stmt 0 view .LVU381
	cmp	r3, #31
	.loc 3 502 9 is_stmt 1 view .LVU382
	.loc 3 502 25 is_stmt 0 view .LVU383
	itete	hi
	andhi	r2, r3, #31
.LVL97:
	.loc 3 503 9 is_stmt 1 view .LVU384
	movls	r2, r3
.LVL98:
	.loc 3 503 16 is_stmt 0 view .LVU385
	ldrhi	r1, .L86+8
	.loc 3 498 16 view .LVU386
	movls	r1, #1342177280
.LVL99:
	.loc 3 498 16 view .LVU387
.LBE394:
.LBE393:
	.loc 3 541 5 is_stmt 1 view .LVU388
	.loc 3 541 30 is_stmt 0 view .LVU389
	add	r2, r2, #448
.LVL100:
	.loc 3 541 30 view .LVU390
	mov	ip, #0
	str	ip, [r1, r2, lsl #2]
.LVL101:
.L59:
	.loc 3 541 30 view .LVU391
.LBE392:
.LBE391:
.LBE390:
.LBE389:
	.loc 2 103 9 is_stmt 1 view .LVU392
	.loc 2 103 21 is_stmt 0 view .LVU393
	ldr	r1, [r4, #12]
	.loc 2 103 12 view .LVU394
	adds	r2, r1, #1
	beq	.L61
	.loc 2 105 13 is_stmt 1 view .LVU395
.LVL102:
.LBB395:
.LBI395:
	.loc 3 649 22 view .LVU396
.LBB396:
	.loc 3 651 5 view .LVU397
.LBB397:
.LBI397:
	.loc 3 490 33 view .LVU398
.LBB398:
	.loc 3 492 5 view .LVU399
	.loc 3 492 52 view .LVU400
	.loc 3 496 5 view .LVU401
	.loc 3 496 8 is_stmt 0 view .LVU402
	cmp	r1, #31
	.loc 3 502 9 is_stmt 1 view .LVU403
	.loc 3 503 16 is_stmt 0 view .LVU404
	ittee	hi
	ldrhi	r2, .L86+8
	.loc 3 502 25 view .LVU405
	andhi	ip, r1, #31
.LVL103:
	.loc 3 503 9 is_stmt 1 view .LVU406
	movls	ip, r1
.LVL104:
	.loc 3 498 16 is_stmt 0 view .LVU407
	movls	r2, #1342177280
.LVL105:
	.loc 3 498 16 view .LVU408
.LBE398:
.LBE397:
	.loc 3 653 5 is_stmt 1 view .LVU409
	.loc 3 653 36 is_stmt 0 view .LVU410
	mov	lr, #1
	lsl	lr, lr, ip
.LVL106:
.LBB399:
.LBI399:
	.loc 3 780 22 is_stmt 1 view .LVU411
.LBB400:
	.loc 3 782 5 view .LVU412
.LBE400:
.LBE399:
.LBE396:
.LBE395:
.LBB404:
.LBB405:
.LBB406:
.LBB407:
	.loc 3 541 30 is_stmt 0 view .LVU413
	add	ip, ip, #448
.LVL107:
	.loc 3 541 30 view .LVU414
.LBE407:
.LBE406:
.LBE405:
.LBE404:
.LBB414:
.LBB403:
.LBB402:
.LBB401:
	.loc 3 782 19 view .LVU415
	str	lr, [r2, #1288]
.LVL108:
	.loc 3 782 19 view .LVU416
.LBE401:
.LBE402:
.LBE403:
.LBE414:
	.loc 2 106 13 is_stmt 1 view .LVU417
.LBB415:
.LBI404:
	.loc 3 549 22 view .LVU418
.LBB412:
	.loc 3 551 5 view .LVU419
.LBB410:
.LBI406:
	.loc 3 531 22 view .LVU420
.LBB408:
	.loc 3 539 5 view .LVU421
	.loc 3 539 5 is_stmt 0 view .LVU422
.LBE408:
.LBE410:
.LBE412:
.LBE415:
.LBE419:
.LBE421:
	.loc 3 492 5 is_stmt 1 view .LVU423
	.loc 3 492 52 view .LVU424
	.loc 3 496 5 view .LVU425
.LBB422:
.LBB420:
.LBB416:
.LBB413:
.LBB411:
.LBB409:
	.loc 3 541 5 view .LVU426
	.loc 3 541 30 is_stmt 0 view .LVU427
	mov	lr, #3
	str	lr, [r2, ip, lsl #2]
.LVL109:
.L61:
	.loc 3 541 30 view .LVU428
.LBE409:
.LBE411:
.LBE413:
.LBE416:
	.loc 2 108 9 is_stmt 1 view .LVU429
.LBB417:
.LBI417:
	.loc 1 452 22 view .LVU430
.LBB418:
	.loc 1 455 5 view .LVU431
	.loc 1 455 21 is_stmt 0 view .LVU432
	str	r1, [r0, #1288]
	.loc 1 461 5 is_stmt 1 view .LVU433
	.loc 1 461 21 is_stmt 0 view .LVU434
	str	r3, [r0, #1296]
.LVL110:
.L58:
	.loc 1 461 21 view .LVU435
.LBE418:
.LBE417:
.LBE420:
.LBE422:
	.loc 2 202 5 is_stmt 1 view .LVU436
	.loc 2 202 21 is_stmt 0 view .LVU437
	movs	r2, #44
	mul	r2, r2, r8
	adds	r3, r5, r2
	str	r9, [r3, #4]
	.loc 2 203 5 is_stmt 1 view .LVU438
	.loc 2 203 21 is_stmt 0 view .LVU439
	ldr	r3, [r4, #16]
	str	r3, [r5, r2]
	.loc 2 205 5 is_stmt 1 view .LVU440
	.loc 2 205 8 is_stmt 0 view .LVU441
	cmp	r9, #0
	beq	.L63
	.loc 2 207 9 is_stmt 1 view .LVU442
.LBB423:
.LBB424:
	.loc 2 115 5 is_stmt 0 view .LVU443
	mov	r1, #284
.LBE424:
.LBE423:
	.loc 2 207 9 view .LVU444
	ldrb	r4, [r4, #28]	@ zero_extendqisi2
.LVL111:
.LBB451:
.LBI423:
	.loc 2 112 13 is_stmt 1 view .LVU445
.LBB444:
	.loc 2 115 5 view .LVU446
	bl	nrf_uart_event_clear
.LVL112:
	.loc 2 116 5 view .LVU447
	mov	r1, #324
	ldr	r0, [r6]
	bl	nrf_uart_event_clear
.LVL113:
	.loc 2 117 5 view .LVU448
	ldr	r2, [r6]
.LVL114:
.LBB425:
.LBI425:
	.loc 1 365 22 view .LVU449
.LBB426:
	.loc 1 367 5 view .LVU450
	.loc 1 367 21 is_stmt 0 view .LVU451
	ldr	r3, .L86+12
	str	r3, [r2, #772]
.LVL115:
	.loc 1 367 21 view .LVU452
.LBE426:
.LBE425:
	.loc 2 119 5 is_stmt 1 view .LVU453
.LBB427:
.LBI427:
	.file 4 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.loc 4 317 27 view .LVU454
.LBB428:
	.loc 4 319 5 view .LVU455
	.loc 4 319 23 is_stmt 0 view .LVU456
	lsrs	r3, r2, #12
	.loc 4 319 12 view .LVU457
	sbfx	r2, r2, #12, #8
.LVL116:
	.loc 4 319 12 view .LVU458
.LBE428:
.LBE427:
.LBB429:
.LBI429:
	.file 5 "../../../../../../integration/nrfx/nrfx_glue.h"
	.loc 5 104 20 is_stmt 1 view .LVU459
.LBE429:
.LBE444:
.LBE451:
	.loc 5 107 5 view .LVU460
	.loc 5 107 50 view .LVU461
	.loc 5 108 5 view .LVU462
.LBB452:
.LBB445:
.LBB434:
.LBB430:
.LBI430:
	.file 6 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.loc 6 1809 22 view .LVU463
.LBB431:
	.loc 6 1811 3 view .LVU464
	.loc 6 1813 48 is_stmt 0 view .LVU465
	lsls	r1, r4, #5
	.loc 6 1811 6 view .LVU466
	cmp	r2, #0
	.loc 6 1813 48 view .LVU467
	uxtb	r1, r1
	.loc 6 1811 6 view .LVU468
	blt	.L64
	.loc 6 1813 5 is_stmt 1 view .LVU469
	.loc 6 1813 46 is_stmt 0 view .LVU470
	ldr	r0, .L86+16
	adds	r4, r0, r2
.LVL117:
	.loc 6 1813 46 view .LVU471
	strb	r1, [r4, #768]
.LVL118:
	.loc 6 1813 46 view .LVU472
.LBE431:
.LBE430:
.LBE434:
	.loc 2 121 5 is_stmt 1 view .LVU473
	.loc 2 121 5 is_stmt 0 view .LVU474
.LBE445:
.LBE452:
	.loc 4 319 5 is_stmt 1 view .LVU475
.LBB453:
.LBB446:
.LBB435:
.LBI435:
	.loc 5 117 20 view .LVU476
.LBE435:
.LBE446:
.LBE453:
	.loc 5 119 5 view .LVU477
.LBB454:
.LBB447:
.LBB440:
.LBB436:
.LBI436:
	.loc 6 1679 22 view .LVU478
.LBB437:
	.loc 6 1681 3 view .LVU479
	.loc 6 1683 5 view .LVU480
	.loc 6 1684 5 view .LVU481
	.loc 6 1684 60 is_stmt 0 view .LVU482
	movs	r1, #1
	.loc 6 1684 34 view .LVU483
	lsrs	r2, r2, #5
	.loc 6 1684 81 view .LVU484
	and	r3, r3, #31
.LVL119:
	.loc 6 1684 60 view .LVU485
	lsl	r3, r1, r3
	.loc 6 1684 43 view .LVU486
	str	r3, [r0, r2, lsl #2]
	.loc 6 1685 5 is_stmt 1 view .LVU487
.LVL120:
.L63:
	.loc 6 1685 5 is_stmt 0 view .LVU488
.LBE437:
.LBE436:
.LBE440:
.LBE447:
.LBE454:
	.loc 2 210 5 is_stmt 1 view .LVU489
	ldr	r3, [r6]
.LVL121:
.LBB455:
.LBI455:
	.loc 1 387 22 view .LVU490
.LBB456:
	.loc 1 389 5 view .LVU491
	.loc 1 389 19 is_stmt 0 view .LVU492
	movs	r2, #4
	str	r2, [r3, #1280]
.LVL122:
	.loc 1 389 19 view .LVU493
.LBE456:
.LBE455:
	.loc 2 211 5 is_stmt 1 view .LVU494
	.loc 2 211 38 is_stmt 0 view .LVU495
	movs	r3, #44
	mla	r3, r3, r8, r5
	movs	r2, #0
	.loc 2 212 38 view .LVU496
	strd	r2, r2, [r3, #24]
	.loc 2 213 5 is_stmt 1 view .LVU497
	.loc 2 213 38 is_stmt 0 view .LVU498
	strb	r2, [r3, #41]
	.loc 2 214 5 is_stmt 1 view .LVU499
	.loc 2 214 38 is_stmt 0 view .LVU500
	str	r2, [r3, #20]
	.loc 2 215 5 is_stmt 1 view .LVU501
	.loc 2 215 38 is_stmt 0 view .LVU502
	movs	r2, #1
	strb	r2, [r3, #42]
	.loc 2 216 5 is_stmt 1 view .LVU503
	.loc 2 218 58 view .LVU504
	.loc 2 219 5 view .LVU505
.LVL123:
.L52:
	.loc 2 220 1 is_stmt 0 view .LVU506
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL124:
.L64:
.LBB457:
.LBB448:
.LBB441:
.LBB433:
.LBB432:
	.loc 6 1817 5 is_stmt 1 view .LVU507
	.loc 6 1817 46 is_stmt 0 view .LVU508
	ldr	r2, .L86+20
	.loc 6 1817 32 view .LVU509
	and	r3, r3, #15
.LVL125:
	.loc 6 1817 46 view .LVU510
	strb	r1, [r2, r3]
.LVL126:
	.loc 6 1817 46 view .LVU511
.LBE432:
.LBE433:
.LBE441:
	.loc 2 121 5 is_stmt 1 view .LVU512
	.loc 2 121 5 is_stmt 0 view .LVU513
.LBE448:
.LBE457:
	.loc 4 319 5 is_stmt 1 view .LVU514
.LBB458:
.LBB449:
.LBB442:
	.loc 5 117 20 view .LVU515
.LBE442:
.LBE449:
.LBE458:
	.loc 5 119 5 view .LVU516
.LBB459:
.LBB450:
.LBB443:
.LBB439:
	.loc 6 1679 22 view .LVU517
.LBB438:
	.loc 6 1681 3 view .LVU518
	b	.L63
.LVL127:
.L65:
	.loc 6 1681 3 is_stmt 0 view .LVU519
.LBE438:
.LBE439:
.LBE443:
.LBE450:
.LBE459:
	.loc 2 180 16 view .LVU520
	movs	r7, #8
	b	.L52
.LVL128:
.L66:
	.loc 2 196 16 view .LVU521
	movs	r7, #17
.LVL129:
	.loc 2 196 16 view .LVU522
	b	.L52
.L87:
	.align	2
.L86:
	.word	.LANCHOR0
	.word	nrfx_uart_0_irq_handler
	.word	1342178048
	.word	131200
	.word	-536813312
	.word	-536810220
.LFE302:
	.size	nrfx_uart_init, .-nrfx_uart_init
	.section	.text.nrfx_uart_uninit,"ax",%progbits
	.align	1
	.global	nrfx_uart_uninit
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_uninit, %function
nrfx_uart_uninit:
.LVL130:
.LFB303:
	.loc 2 223 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 224 5 view .LVU524
	.loc 2 223 1 is_stmt 0 view .LVU525
	push	{r4, r5, r6, r7, r8, lr}
.LCFI14:
	.loc 2 226 5 view .LVU526
	ldr	r3, [r0]
	.loc 2 224 51 view .LVU527
	ldrb	r5, [r0, #4]	@ zero_extendqisi2
.LVL131:
	.loc 2 226 5 is_stmt 1 view .LVU528
.LBB492:
.LBI492:
	.loc 1 392 22 view .LVU529
.LBB493:
	.loc 1 394 5 view .LVU530
.LBE493:
.LBE492:
	.loc 2 228 13 is_stmt 0 view .LVU531
	ldr	r4, .L108
.LBB495:
.LBB494:
	.loc 1 394 19 view .LVU532
	movs	r2, #0
	str	r2, [r3, #1280]
.LVL132:
	.loc 1 394 19 view .LVU533
.LBE494:
.LBE495:
	.loc 2 228 5 is_stmt 1 view .LVU534
	.loc 2 228 13 is_stmt 0 view .LVU535
	movs	r2, #44
	mla	r2, r2, r5, r4
	.loc 2 223 1 view .LVU536
	mov	r1, r0
	.loc 2 228 8 view .LVU537
	ldr	r2, [r2, #4]
	cbz	r2, .L90
	.loc 2 230 9 is_stmt 1 view .LVU538
.LBB496:
.LBI496:
	.loc 2 124 13 view .LVU539
.LVL133:
	.loc 2 124 13 is_stmt 0 view .LVU540
.LBE496:
	.loc 2 126 5 is_stmt 1 view .LVU541
.LBB509:
.LBB497:
.LBI497:
	.loc 1 375 22 view .LVU542
.LBB498:
	.loc 1 377 5 view .LVU543
	.loc 1 377 21 is_stmt 0 view .LVU544
	ldr	r2, .L108+4
	str	r2, [r3, #776]
.LVL134:
	.loc 1 377 21 view .LVU545
.LBE498:
.LBE497:
.LBE509:
	.loc 2 130 5 is_stmt 1 view .LVU546
.LBB510:
.LBB499:
.LBI499:
	.loc 4 317 27 view .LVU547
.LBB500:
	.loc 4 319 5 view .LVU548
	.loc 4 319 23 is_stmt 0 view .LVU549
	lsrs	r2, r3, #12
	.loc 4 319 12 view .LVU550
	sbfx	r3, r3, #12, #8
.LVL135:
	.loc 4 319 12 view .LVU551
.LBE500:
.LBE499:
.LBB501:
.LBI501:
	.loc 5 142 20 is_stmt 1 view .LVU552
.LBE501:
.LBE510:
	.loc 5 144 5 view .LVU553
.LBB511:
.LBB508:
.LBB502:
.LBI502:
	.loc 6 1717 22 view .LVU554
.LBB503:
	.loc 6 1719 3 view .LVU555
	.loc 6 1719 6 is_stmt 0 view .LVU556
	cmp	r3, #0
	blt	.L90
	.loc 6 1721 5 is_stmt 1 view .LVU557
	.loc 6 1721 81 is_stmt 0 view .LVU558
	and	r0, r2, #31
.LVL136:
	.loc 6 1721 34 view .LVU559
	lsrs	r3, r3, #5
.LVL137:
	.loc 6 1721 60 view .LVU560
	movs	r2, #1
	lsls	r2, r2, r0
	.loc 6 1721 43 view .LVU561
	adds	r3, r3, #32
	ldr	r0, .L108+8
	str	r2, [r0, r3, lsl #2]
	.loc 6 1722 5 is_stmt 1 view .LVU562
.LBB504:
.LBI504:
	.file 7 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.loc 7 944 27 view .LVU563
.LBB505:
	.loc 7 946 3 view .LVU564
	.syntax unified
@ 946 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE505:
.LBE504:
	.loc 6 1723 5 view .LVU565
.LBB506:
.LBI506:
	.loc 7 933 27 view .LVU566
.LBB507:
	.loc 7 935 3 view .LVU567
	.syntax unified
@ 935 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	isb 0xF
@ 0 "" 2
.LVL138:
	.thumb
	.syntax unified
.L90:
	.loc 7 935 3 is_stmt 0 view .LVU568
.LBE507:
.LBE506:
.LBE503:
.LBE502:
.LBE508:
.LBE511:
	.loc 2 233 5 is_stmt 1 view .LVU569
	ldr	r3, [r1]
.LBB512:
.LBI512:
	.loc 2 133 13 view .LVU570
.LVL139:
.LBB513:
	.loc 2 136 5 view .LVU571
	.loc 2 137 5 view .LVU572
	.loc 2 138 5 view .LVU573
	.loc 2 139 5 view .LVU574
	.loc 2 141 5 view .LVU575
.LBB514:
.LBI514:
	.loc 1 416 26 view .LVU576
.LBB515:
	.loc 1 419 5 view .LVU577
	.loc 1 419 23 is_stmt 0 view .LVU578
	ldr	r0, [r3, #1292]
.LVL140:
	.loc 1 419 23 view .LVU579
.LBE515:
.LBE514:
	.loc 2 142 5 is_stmt 1 view .LVU580
.LBB516:
.LBI516:
	.loc 1 425 26 view .LVU581
.LBB517:
	.loc 1 428 5 view .LVU582
	.loc 1 428 23 is_stmt 0 view .LVU583
	ldr	r8, [r3, #1300]
.LVL141:
	.loc 1 428 23 view .LVU584
.LBE517:
.LBE516:
	.loc 2 143 5 is_stmt 1 view .LVU585
.LBB518:
.LBI518:
	.loc 1 434 26 view .LVU586
.LBB519:
	.loc 1 437 5 view .LVU587
	.loc 1 437 23 is_stmt 0 view .LVU588
	ldr	r6, [r3, #1288]
.LVL142:
	.loc 1 437 23 view .LVU589
.LBE519:
.LBE518:
	.loc 2 144 5 is_stmt 1 view .LVU590
.LBB520:
.LBI520:
	.loc 1 443 26 view .LVU591
.LBB521:
	.loc 1 446 5 view .LVU592
	.loc 1 446 23 is_stmt 0 view .LVU593
	ldr	r7, [r3, #1296]
.LVL143:
	.loc 1 446 23 view .LVU594
.LBE521:
.LBE520:
	.loc 2 145 5 is_stmt 1 view .LVU595
.LBB522:
.LBI522:
	.loc 1 411 22 view .LVU596
.LBE522:
.LBE513:
.LBE512:
	.loc 1 413 5 view .LVU597
.LBB535:
.LBB533:
.LBB527:
.LBB523:
.LBI523:
	.loc 1 397 22 view .LVU598
.LBB524:
	.loc 1 400 5 view .LVU599
	.loc 1 400 21 is_stmt 0 view .LVU600
	mov	r2, #-1
.LBE524:
.LBE523:
.LBE527:
	.loc 2 148 8 view .LVU601
	cmp	r0, r2
.LBB528:
.LBB526:
.LBB525:
	.loc 1 400 21 view .LVU602
	str	r2, [r3, #1300]
	.loc 1 405 5 is_stmt 1 view .LVU603
	.loc 1 405 21 is_stmt 0 view .LVU604
	str	r2, [r3, #1292]
.LVL144:
	.loc 1 405 21 view .LVU605
.LBE525:
.LBE526:
.LBE528:
	.loc 2 146 5 is_stmt 1 view .LVU606
.LBB529:
.LBI529:
	.loc 1 467 22 view .LVU607
.LBE529:
.LBE533:
.LBE535:
	.loc 1 469 5 view .LVU608
.LBB536:
.LBB534:
.LBB532:
.LBB530:
.LBI530:
	.loc 1 452 22 view .LVU609
.LBB531:
	.loc 1 455 5 view .LVU610
	.loc 1 455 21 is_stmt 0 view .LVU611
	str	r2, [r3, #1288]
	.loc 1 461 5 is_stmt 1 view .LVU612
	.loc 1 461 21 is_stmt 0 view .LVU613
	str	r2, [r3, #1296]
.LVL145:
	.loc 1 461 21 view .LVU614
.LBE531:
.LBE530:
.LBE532:
	.loc 2 148 5 is_stmt 1 view .LVU615
	.loc 2 148 8 is_stmt 0 view .LVU616
	beq	.L92
	.loc 2 150 9 is_stmt 1 view .LVU617
	bl	nrf_gpio_cfg_default
.LVL146:
.L92:
	.loc 2 152 5 view .LVU618
	.loc 2 152 8 is_stmt 0 view .LVU619
	cmp	r8, #-1
	beq	.L93
	.loc 2 154 9 is_stmt 1 view .LVU620
	mov	r0, r8
	bl	nrf_gpio_cfg_default
.LVL147:
.L93:
	.loc 2 156 5 view .LVU621
	.loc 2 156 8 is_stmt 0 view .LVU622
	adds	r2, r7, #1
	beq	.L94
	.loc 2 158 9 is_stmt 1 view .LVU623
	mov	r0, r7
	bl	nrf_gpio_cfg_default
.LVL148:
.L94:
	.loc 2 160 5 view .LVU624
	.loc 2 160 8 is_stmt 0 view .LVU625
	adds	r3, r6, #1
	beq	.L95
	.loc 2 162 9 is_stmt 1 view .LVU626
	mov	r0, r6
	bl	nrf_gpio_cfg_default
.LVL149:
.L95:
	.loc 2 162 9 is_stmt 0 view .LVU627
.LBE534:
.LBE536:
	.loc 2 236 5 is_stmt 1 view .LVU628
	ldr	r0, [r1]
	bl	nrfx_prs_release
.LVL150:
	.loc 2 239 5 view .LVU629
	.loc 2 239 19 is_stmt 0 view .LVU630
	movs	r3, #44
	mla	r4, r3, r5, r4
	movs	r3, #0
	strb	r3, [r4, #42]
	.loc 2 240 5 is_stmt 1 view .LVU631
	.loc 2 240 19 is_stmt 0 view .LVU632
	str	r3, [r4, #4]
	.loc 2 241 5 is_stmt 1 view .LVU633
	.loc 2 241 75 view .LVU634
	.loc 2 242 1 is_stmt 0 view .LVU635
	pop	{r4, r5, r6, r7, r8, pc}
.LVL151:
.L109:
	.loc 2 242 1 view .LVU636
	.align	2
.L108:
	.word	.LANCHOR0
	.word	131716
	.word	-536813312
.LFE303:
	.size	nrfx_uart_uninit, .-nrfx_uart_uninit
	.section	.text.nrfx_uart_tx_in_progress,"ax",%progbits
	.align	1
	.global	nrfx_uart_tx_in_progress
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_tx_in_progress, %function
nrfx_uart_tx_in_progress:
.LVL152:
.LFB307:
	.loc 2 333 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 334 5 view .LVU638
	.loc 2 334 28 is_stmt 0 view .LVU639
	ldrb	r2, [r0, #4]	@ zero_extendqisi2
	.loc 2 334 43 view .LVU640
	ldr	r3, .L111
	movs	r1, #44
	mla	r3, r1, r2, r3
	ldr	r0, [r3, #20]
.LVL153:
	.loc 2 335 1 view .LVU641
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L112:
	.align	2
.L111:
	.word	.LANCHOR0
.LFE307:
	.size	nrfx_uart_tx_in_progress, .-nrfx_uart_tx_in_progress
	.section	.text.nrfx_uart_tx,"ax",%progbits
	.align	1
	.global	nrfx_uart_tx
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_tx, %function
nrfx_uart_tx:
.LVL154:
.LFB306:
	.loc 2 278 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 279 5 view .LVU643
	.loc 2 278 1 is_stmt 0 view .LVU644
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI15:
	.loc 2 278 1 view .LVU645
	mov	r6, r0
	.loc 2 279 51 view .LVU646
	ldrb	r8, [r0, #4]	@ zero_extendqisi2
.LVL155:
	.loc 2 280 5 is_stmt 1 view .LVU647
	.loc 2 280 59 view .LVU648
	.loc 2 281 5 view .LVU649
	.loc 2 281 24 view .LVU650
	.loc 2 282 5 view .LVU651
	.loc 2 282 28 view .LVU652
	.loc 2 284 5 view .LVU653
	.loc 2 286 5 view .LVU654
	.loc 2 278 1 is_stmt 0 view .LVU655
	mov	r9, r1
	mov	r10, r2
	.loc 2 286 9 view .LVU656
	bl	nrfx_uart_tx_in_progress
.LVL156:
	.loc 2 286 8 view .LVU657
	mov	r4, r0
	cmp	r0, #0
	bne	.L120
	.loc 2 279 28 view .LVU658
	ldr	r7, .L126
	movs	r5, #44
	mla	fp, r8, r5, r7
	.loc 2 294 5 is_stmt 1 view .LVU659
	.loc 2 306 5 is_stmt 0 view .LVU660
	mov	r1, #284
	.loc 2 294 28 view .LVU661
	str	r10, [fp, #20]
	.loc 2 295 5 is_stmt 1 view .LVU662
	.loc 2 295 28 is_stmt 0 view .LVU663
	str	r9, [fp, #8]
	.loc 2 296 5 is_stmt 1 view .LVU664
	.loc 2 296 28 is_stmt 0 view .LVU665
	str	r0, [fp, #32]
	.loc 2 297 5 is_stmt 1 view .LVU666
	.loc 2 297 28 is_stmt 0 view .LVU667
	strb	r0, [fp, #40]
	.loc 2 299 5 is_stmt 1 view .LVU668
	.loc 2 299 66 view .LVU669
	.loc 2 300 5 view .LVU670
	.loc 2 300 31 view .LVU671
	.loc 2 301 5 view .LVU672
	.loc 2 302 82 view .LVU673
	.loc 2 304 5 view .LVU674
.LVL157:
	.loc 2 306 5 view .LVU675
	ldr	r0, [r6]
	bl	nrf_uart_event_clear
.LVL158:
	.loc 2 307 5 view .LVU676
	ldr	r0, [r6]
.LVL159:
.LBB547:
.LBI547:
	.loc 1 482 22 view .LVU677
.LBB548:
	.loc 1 484 5 view .LVU678
	.loc 1 484 65 is_stmt 0 view .LVU679
	movs	r3, #1
	str	r3, [r0, #8]
.LVL160:
	.loc 1 484 65 view .LVU680
.LBE548:
.LBE547:
	.loc 2 309 5 is_stmt 1 view .LVU681
	mov	r1, fp
	bl	tx_byte
.LVL161:
	.loc 2 311 5 view .LVU682
	.loc 2 311 8 is_stmt 0 view .LVU683
	ldr	r3, [fp, #4]
	.loc 2 294 28 view .LVU684
	mov	r5, fp
	.loc 2 311 8 view .LVU685
	cbnz	r3, .L121
	.loc 2 313 9 is_stmt 1 view .LVU686
	.loc 2 313 14 is_stmt 0 view .LVU687
	ldr	r0, [r6]
.LVL162:
.LBB549:
.LBI549:
	.loc 2 252 13 is_stmt 1 view .LVU688
.LBB550:
	.loc 2 256 5 view .LVU689
	.loc 2 256 18 is_stmt 0 view .LVU690
	ldr	r4, [fp, #20]
.LVL163:
	.loc 2 257 5 is_stmt 1 view .LVU691
.L115:
	.loc 2 257 11 view .LVU692
	.loc 2 257 16 is_stmt 0 view .LVU693
	ldr	r3, [r5, #32]
	.loc 2 257 11 view .LVU694
	cmp	r4, r3
	bhi	.L118
.LBE550:
.LBE549:
	.loc 2 321 21 view .LVU695
	ldr	r3, [r6]
.LVL164:
.L119:
	.loc 2 322 14 is_stmt 1 discriminator 1 view .LVU696
	.loc 2 321 19 discriminator 1 view .LVU697
.LBB554:
.LBI554:
	.loc 1 354 22 discriminator 1 view .LVU698
.LBB555:
	.loc 1 356 5 discriminator 1 view .LVU699
	.loc 1 356 18 is_stmt 0 discriminator 1 view .LVU700
	ldr	r2, [r3, #284]
.LVL165:
	.loc 1 356 18 discriminator 1 view .LVU701
.LBE555:
.LBE554:
	.loc 2 321 19 discriminator 1 view .LVU702
	cmp	r2, #0
	beq	.L119
	.loc 2 323 13 is_stmt 1 view .LVU703
.LVL166:
.LBB556:
.LBI556:
	.loc 1 482 22 view .LVU704
.LBB557:
	.loc 1 484 5 view .LVU705
	.loc 1 484 65 is_stmt 0 view .LVU706
	movs	r2, #1
	str	r2, [r3, #12]
.LBE557:
.LBE556:
	.loc 2 304 14 view .LVU707
	movs	r0, #0
.LVL167:
.L116:
	.loc 2 325 9 is_stmt 1 view .LVU708
	.loc 2 325 32 is_stmt 0 view .LVU709
	movs	r3, #44
	mla	r7, r3, r8, r7
	movs	r3, #0
	str	r3, [r7, #20]
.LVL168:
.L113:
	.loc 2 330 1 view .LVU710
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL169:
.L117:
.LBB558:
.LBB553:
	.loc 2 263 13 is_stmt 1 view .LVU711
	.loc 2 263 21 is_stmt 0 view .LVU712
	ldrb	r3, [r5, #40]	@ zero_extendqisi2
	.loc 2 263 16 view .LVU713
	cbnz	r3, .L122
.L118:
	.loc 2 261 15 is_stmt 1 view .LVU714
.LVL170:
.LBB551:
.LBI551:
	.loc 1 354 22 view .LVU715
.LBB552:
	.loc 1 356 5 view .LVU716
	.loc 1 356 18 is_stmt 0 view .LVU717
	ldr	r3, [r0, #284]
.LVL171:
	.loc 1 356 18 view .LVU718
.LBE552:
.LBE551:
	.loc 2 261 15 view .LVU719
	cmp	r3, #0
	beq	.L117
	.loc 2 269 9 is_stmt 1 view .LVU720
	mov	r1, fp
	bl	tx_byte
.LVL172:
	b	.L115
.L122:
.LBE553:
.LBE558:
	.loc 2 316 22 is_stmt 0 view .LVU721
	movs	r0, #15
.LVL173:
	.loc 2 316 22 view .LVU722
	b	.L116
.LVL174:
.L120:
	.loc 2 292 16 view .LVU723
	movs	r0, #17
	b	.L113
.LVL175:
.L121:
	.loc 2 304 14 view .LVU724
	mov	r0, r4
.LVL176:
	.loc 2 304 14 view .LVU725
	b	.L113
.L127:
	.align	2
.L126:
	.word	.LANCHOR0
.LFE306:
	.size	nrfx_uart_tx, .-nrfx_uart_tx
	.section	.text.nrfx_uart_rx,"ax",%progbits
	.align	1
	.global	nrfx_uart_rx
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_rx, %function
nrfx_uart_rx:
.LVL177:
.LFB310:
	.loc 2 361 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 362 5 view .LVU727
	.loc 2 361 1 is_stmt 0 view .LVU728
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
.LCFI16:
	.loc 2 372 13 view .LVU729
	ldr	r5, .L150
	.loc 2 362 51 view .LVU730
	ldrb	r7, [r0, #4]	@ zero_extendqisi2
.LVL178:
	.loc 2 364 5 is_stmt 1 view .LVU731
	.loc 2 364 84 view .LVU732
	.loc 2 365 5 view .LVU733
	.loc 2 365 24 view .LVU734
	.loc 2 366 5 view .LVU735
	.loc 2 366 28 view .LVU736
	.loc 2 368 5 view .LVU737
	.loc 2 370 5 view .LVU738
	.loc 2 372 5 view .LVU739
	.loc 2 372 13 is_stmt 0 view .LVU740
	movs	r3, #44
	mla	r3, r3, r7, r5
	.loc 2 361 1 view .LVU741
	mov	r6, r0
	.loc 2 372 13 view .LVU742
	ldr	r4, [r3, #4]
	.loc 2 372 8 view .LVU743
	cbz	r4, .L129
	.loc 2 374 9 is_stmt 1 view .LVU744
	ldr	r3, [r0]
.LVL179:
.LBB559:
.LBI559:
	.loc 1 375 22 view .LVU745
.LBB560:
	.loc 1 377 5 view .LVU746
	.loc 1 377 21 is_stmt 0 view .LVU747
	mov	r0, #516
.LVL180:
	.loc 1 377 21 view .LVU748
	str	r0, [r3, #776]
.LVL181:
.L129:
	.loc 1 377 21 view .LVU749
.LBE560:
.LBE559:
	.loc 2 377 5 is_stmt 1 view .LVU750
	.loc 2 377 13 is_stmt 0 view .LVU751
	movs	r3, #44
	mla	r3, r3, r7, r5
	.loc 2 377 8 view .LVU752
	ldr	r0, [r3, #24]
	cbz	r0, .L130
	.loc 2 379 9 is_stmt 1 view .LVU753
	.loc 2 379 12 is_stmt 0 view .LVU754
	ldr	r0, [r3, #28]
	cmp	r0, #0
	beq	.L131
	.loc 2 381 13 is_stmt 1 view .LVU755
	.loc 2 381 16 is_stmt 0 view .LVU756
	cbz	r4, .L141
	.loc 2 383 17 is_stmt 1 view .LVU757
	ldr	r3, [r6]
.LVL182:
.LBB561:
.LBI561:
	.loc 1 365 22 view .LVU758
.LBB562:
	.loc 1 367 5 view .LVU759
	.loc 1 367 21 is_stmt 0 view .LVU760
	mov	r2, #516
.LVL183:
	.loc 1 367 21 view .LVU761
	str	r2, [r3, #772]
.LVL184:
.L141:
	.loc 1 367 21 view .LVU762
.LBE562:
.LBE561:
	.loc 2 390 20 view .LVU763
	movs	r4, #17
	b	.L128
.LVL185:
.L130:
	.loc 2 395 5 is_stmt 1 view .LVU764
	.loc 2 397 9 view .LVU765
	.loc 2 397 32 is_stmt 0 view .LVU766
	str	r2, [r3, #24]
	.loc 2 398 9 is_stmt 1 view .LVU767
	.loc 2 398 32 is_stmt 0 view .LVU768
	str	r1, [r3, #12]
	.loc 2 399 9 is_stmt 1 view .LVU769
	.loc 2 399 32 is_stmt 0 view .LVU770
	str	r0, [r3, #36]
	.loc 2 400 9 is_stmt 1 view .LVU771
	.loc 2 400 42 is_stmt 0 view .LVU772
	str	r0, [r3, #28]
.LVL186:
.L133:
	.loc 2 408 5 is_stmt 1 discriminator 5 view .LVU773
	.loc 2 408 50 discriminator 5 view .LVU774
	.loc 2 410 5 discriminator 5 view .LVU775
	.loc 2 410 15 is_stmt 0 discriminator 5 view .LVU776
	movs	r3, #44
	mla	r3, r3, r7, r5
	.loc 2 410 8 discriminator 5 view .LVU777
	ldrb	r3, [r3, #41]	@ zero_extendqisi2
	cbnz	r3, .L134
	.loc 2 410 29 discriminator 1 view .LVU778
	cbnz	r0, .L134
	.loc 2 412 9 is_stmt 1 view .LVU779
	mov	r0, r6
	bl	rx_enable
.LVL187:
.L134:
	.loc 2 415 5 view .LVU780
	.loc 2 415 13 is_stmt 0 view .LVU781
	mov	r8, #44
	mla	r10, r8, r7, r5
.LBB563:
	.loc 2 417 9 view .LVU782
	ldr	r0, [r6]
.LBE563:
	.loc 2 415 8 view .LVU783
	ldr	r3, [r10, #4]
	cmp	r3, #0
	bne	.L135
.LBB574:
	.loc 2 417 9 view .LVU784
	mov	r1, #324
.LBE574:
	.loc 2 362 28 view .LVU785
	mov	r8, r10
.LBB575:
	.loc 2 417 9 is_stmt 1 view .LVU786
	bl	nrf_uart_event_clear
.LVL188:
.L136:
	.loc 2 419 9 discriminator 3 view .LVU787
	.loc 2 420 9 discriminator 3 view .LVU788
	.loc 2 421 9 discriminator 3 view .LVU789
	.loc 2 422 9 discriminator 3 view .LVU790
	.loc 2 424 13 discriminator 3 view .LVU791
	.loc 2 426 17 discriminator 3 view .LVU792
	.loc 2 426 25 is_stmt 0 discriminator 3 view .LVU793
	ldr	r0, [r6]
.LVL189:
.LBB564:
.LBI564:
	.loc 1 354 22 is_stmt 1 discriminator 3 view .LVU794
.LBB565:
	.loc 1 356 5 discriminator 3 view .LVU795
	.loc 1 356 18 is_stmt 0 discriminator 3 view .LVU796
	ldr	r9, [r0, #292]
.LVL190:
	.loc 1 356 18 discriminator 3 view .LVU797
.LBE565:
.LBE564:
	.loc 2 427 17 is_stmt 1 discriminator 3 view .LVU798
.LBB566:
.LBI566:
	.loc 1 354 22 discriminator 3 view .LVU799
.LBB567:
	.loc 1 356 5 discriminator 3 view .LVU800
	.loc 1 356 18 is_stmt 0 discriminator 3 view .LVU801
	ldr	r3, [r0, #264]
.LVL191:
	.loc 1 356 18 discriminator 3 view .LVU802
.LBE567:
.LBE566:
	.loc 2 428 17 is_stmt 1 discriminator 3 view .LVU803
.LBB568:
.LBI568:
	.loc 1 354 22 discriminator 3 view .LVU804
.LBB569:
	.loc 1 356 5 discriminator 3 view .LVU805
	.loc 1 356 18 is_stmt 0 discriminator 3 view .LVU806
	ldr	r4, [r0, #324]
.LVL192:
	.loc 1 356 18 discriminator 3 view .LVU807
.LBE569:
.LBE568:
	.loc 2 429 21 is_stmt 1 discriminator 3 view .LVU808
	.loc 2 429 13 is_stmt 0 discriminator 3 view .LVU809
	cbnz	r3, .L137
	.loc 2 429 31 discriminator 1 view .LVU810
	cbnz	r4, .L138
	.loc 2 429 42 discriminator 2 view .LVU811
	cmp	r9, #0
	beq	.L136
.LVL193:
.L138:
	.loc 2 438 9 is_stmt 1 view .LVU812
	.loc 2 438 32 is_stmt 0 view .LVU813
	movs	r3, #44
	mla	r5, r3, r7, r5
	movs	r3, #0
	str	r3, [r5, #24]
	.loc 2 439 9 is_stmt 1 view .LVU814
	.loc 2 439 12 is_stmt 0 view .LVU815
	cmp	r9, #0
	bne	.L142
	.loc 2 448 9 is_stmt 1 view .LVU816
	.loc 2 448 12 is_stmt 0 view .LVU817
	cbnz	r4, .L143
	.loc 2 457 9 is_stmt 1 view .LVU818
	.loc 2 457 12 is_stmt 0 view .LVU819
	ldrb	r1, [r5, #41]	@ zero_extendqisi2
	.loc 2 459 13 view .LVU820
	ldr	r3, [r6]
	movs	r2, #1
	.loc 2 457 12 view .LVU821
	cbz	r1, .L140
	.loc 2 459 13 is_stmt 1 view .LVU822
.LVL194:
.LBB570:
.LBI570:
	.loc 1 482 22 view .LVU823
.LBB571:
	.loc 1 484 5 view .LVU824
	.loc 1 484 65 is_stmt 0 view .LVU825
	str	r2, [r3]
.LVL195:
.L128:
	.loc 1 484 65 view .LVU826
.LBE571:
.LBE570:
.LBE575:
	.loc 2 475 1 view .LVU827
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL196:
.L131:
	.loc 2 395 5 is_stmt 1 view .LVU828
	.loc 2 404 9 view .LVU829
	.loc 2 404 37 is_stmt 0 view .LVU830
	str	r1, [r3, #16]
	.loc 2 405 9 is_stmt 1 view .LVU831
	.loc 2 405 42 is_stmt 0 view .LVU832
	str	r2, [r3, #28]
	.loc 2 392 23 view .LVU833
	movs	r0, #1
	b	.L133
.LVL197:
.L137:
.LBB576:
	.loc 2 431 13 is_stmt 1 view .LVU834
	.loc 2 431 16 is_stmt 0 view .LVU835
	cmp	r9, #0
	bne	.L138
	.loc 2 431 23 discriminator 1 view .LVU836
	cmp	r4, #0
	bne	.L138
	.loc 2 435 13 is_stmt 1 view .LVU837
	mov	r1, r8
	bl	rx_byte
.LVL198:
	.loc 2 436 17 view .LVU838
	.loc 2 436 47 is_stmt 0 view .LVU839
	ldr	r3, [r10, #36]
	.loc 2 436 9 view .LVU840
	ldr	r2, [r10, #24]
	cmp	r2, r3
	bhi	.L136
	b	.L138
.L140:
	.loc 2 464 13 is_stmt 1 view .LVU841
.LVL199:
.LBB572:
.LBI572:
	.loc 1 482 22 view .LVU842
.LBB573:
	.loc 1 484 5 view .LVU843
	.loc 1 484 65 is_stmt 0 view .LVU844
	str	r2, [r3, #4]
	.loc 1 485 1 view .LVU845
	b	.L128
.LVL200:
.L135:
	.loc 1 485 1 view .LVU846
.LBE573:
.LBE572:
.LBE576:
	.loc 2 469 9 is_stmt 1 view .LVU847
.LBB577:
.LBI577:
	.loc 1 365 22 view .LVU848
.LBB578:
	.loc 1 367 5 view .LVU849
	.loc 1 367 21 is_stmt 0 view .LVU850
	mov	r3, #516
	str	r3, [r0, #772]
.LBE578:
.LBE577:
	.loc 2 474 12 view .LVU851
	movs	r4, #0
.LBB580:
.LBB579:
	.loc 1 368 1 view .LVU852
	b	.L128
.LVL201:
.L142:
	.loc 1 368 1 view .LVU853
.LBE579:
.LBE580:
.LBB581:
	.loc 2 445 20 view .LVU854
	movs	r4, #3
.LVL202:
	.loc 2 445 20 view .LVU855
	b	.L128
.LVL203:
.L143:
	.loc 2 454 20 view .LVU856
	movs	r4, #15
.LVL204:
	.loc 2 454 20 view .LVU857
	b	.L128
.L151:
	.align	2
.L150:
	.word	.LANCHOR0
.LBE581:
.LFE310:
	.size	nrfx_uart_rx, .-nrfx_uart_rx
	.section	.text.nrfx_uart_rx_ready,"ax",%progbits
	.align	1
	.global	nrfx_uart_rx_ready
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_rx_ready, %function
nrfx_uart_rx_ready:
.LVL205:
.LFB311:
	.loc 2 478 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 479 5 view .LVU859
	.loc 2 479 12 is_stmt 0 view .LVU860
	ldr	r3, [r0]
.LVL206:
.LBB582:
.LBI582:
	.loc 1 354 22 is_stmt 1 view .LVU861
.LBB583:
	.loc 1 356 5 view .LVU862
	.loc 1 356 18 is_stmt 0 view .LVU863
	ldr	r0, [r3, #264]
.LVL207:
	.loc 1 356 18 view .LVU864
.LBE583:
.LBE582:
	.loc 2 480 1 view .LVU865
	subs	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.LFE311:
	.size	nrfx_uart_rx_ready, .-nrfx_uart_rx_ready
	.section	.text.nrfx_uart_rx_enable,"ax",%progbits
	.align	1
	.global	nrfx_uart_rx_enable
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_rx_enable, %function
nrfx_uart_rx_enable:
.LVL208:
.LFB312:
	.loc 2 483 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 484 5 view .LVU867
	.loc 2 483 1 is_stmt 0 view .LVU868
	push	{r4, r5, r6, lr}
.LCFI17:
	.loc 2 484 25 view .LVU869
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	.loc 2 484 40 view .LVU870
	ldr	r4, .L155
	movs	r6, #44
	mla	r3, r6, r3, r4
	.loc 2 483 1 view .LVU871
	mov	r5, r0
	.loc 2 484 8 view .LVU872
	ldrb	r3, [r3, #41]	@ zero_extendqisi2
	cbnz	r3, .L153
	.loc 2 486 9 is_stmt 1 view .LVU873
	bl	rx_enable
.LVL209:
	.loc 2 487 9 view .LVU874
	.loc 2 487 24 is_stmt 0 view .LVU875
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	.loc 2 487 51 view .LVU876
	mla	r4, r6, r3, r4
	movs	r3, #1
	strb	r3, [r4, #41]
.L153:
	.loc 2 489 1 view .LVU877
	pop	{r4, r5, r6, pc}
.LVL210:
.L156:
	.loc 2 489 1 view .LVU878
	.align	2
.L155:
	.word	.LANCHOR0
.LFE312:
	.size	nrfx_uart_rx_enable, .-nrfx_uart_rx_enable
	.section	.text.nrfx_uart_rx_disable,"ax",%progbits
	.align	1
	.global	nrfx_uart_rx_disable
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_rx_disable, %function
nrfx_uart_rx_disable:
.LVL211:
.LFB313:
	.loc 2 492 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 493 5 view .LVU880
	ldr	r3, [r0]
.LVL212:
.LBB584:
.LBI584:
	.loc 1 482 22 view .LVU881
.LBB585:
	.loc 1 484 5 view .LVU882
	.loc 1 484 65 is_stmt 0 view .LVU883
	movs	r2, #1
	str	r2, [r3, #4]
.LVL213:
	.loc 1 484 65 view .LVU884
.LBE585:
.LBE584:
	.loc 2 494 5 is_stmt 1 view .LVU885
	.loc 2 494 20 is_stmt 0 view .LVU886
	ldrb	r2, [r0, #4]	@ zero_extendqisi2
	.loc 2 494 47 view .LVU887
	ldr	r3, .L158
	movs	r1, #44
	mla	r3, r1, r2, r3
	movs	r2, #0
	strb	r2, [r3, #41]
	.loc 2 495 1 view .LVU888
	bx	lr
.L159:
	.align	2
.L158:
	.word	.LANCHOR0
.LFE313:
	.size	nrfx_uart_rx_disable, .-nrfx_uart_rx_disable
	.section	.text.nrfx_uart_errorsrc_get,"ax",%progbits
	.align	1
	.global	nrfx_uart_errorsrc_get
	.syntax unified
	.thumb
	.thumb_func
	.type	nrfx_uart_errorsrc_get, %function
nrfx_uart_errorsrc_get:
.LVL214:
.LFB314:
	.loc 2 498 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 499 5 view .LVU890
	.loc 2 498 1 is_stmt 0 view .LVU891
	push	{r3, lr}
.LCFI18:
	.loc 2 498 1 view .LVU892
	mov	r2, r0
	.loc 2 499 5 view .LV