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
	.file	"bsp.c"
	.text
.Ltext0:
	.section	.text.nrf_gpio_cfg_sense_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	nrf_gpio_cfg_sense_set, %function
nrf_gpio_cfg_sense_set:
.LVL0:
.LFB246:
	.file 1 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
	.loc 1 620 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 621 5 view .LVU1
.LBB6:
.LBI6:
	.loc 1 490 33 view .LVU2
.LBB7:
	.loc 1 492 5 view .LVU3
	.loc 1 492 52 view .LVU4
	.loc 1 496 5 view .LVU5
	.loc 1 496 8 is_stmt 0 view .LVU6
	cmp	r0, #31
	.loc 1 502 9 is_stmt 1 view .LVU7
	.loc 1 503 16 is_stmt 0 view .LVU8
	itet	hi
	ldrhi	r3, .L4
	.loc 1 498 16 view .LVU9
	movls	r3, #1342177280
	.loc 1 502 25 view .LVU10
	andhi	r0, r0, #31
.LVL1:
	.loc 1 503 9 is_stmt 1 view .LVU11
	.loc 1 503 9 is_stmt 0 view .LVU12
.LBE7:
.LBE6:
	.loc 1 624 5 is_stmt 1 view .LVU13
	add	r0, r3, r0, lsl #2
.LVL2:
	.loc 1 624 30 is_stmt 0 view .LVU14
	ldr	r3, [r0, #1792]
.LVL3:
	.loc 1 624 30 view .LVU15
	bic	r3, r3, #196608
	str	r3, [r0, #1792]
	.loc 1 625 5 is_stmt 1 view .LVU16
	.loc 1 625 30 is_stmt 0 view .LVU17
	ldr	r3, [r0, #1792]
	orr	r1, r3, r1, lsl #16
.LVL4:
	.loc 1 625 30 view .LVU18
	str	r1, [r0, #1792]
	.loc 1 626 1 view .LVU19
	bx	lr
.L5:
	.align	2
.L4:
	.word	1342178048
.LFE246:
	.size	nrf_gpio_cfg_sense_set, .-nrf_gpio_cfg_sense_set
	.section	.text.alert_timer_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	alert_timer_handler, %function
alert_timer_handler:
.LVL5:
.LFB279:
	.file 2 "C:\\Users\\CPS Lab\\Documents\\nordic_semi\\nRF5_SDK_17.0.2_d674dde\\components\\libraries\\bsp\\bsp.c"
	.loc 2 456 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 457 5 view .LVU21
	.loc 2 458 5 view .LVU22
	movs	r0, #2
.LVL6:
	.loc 2 458 5 is_stmt 0 view .LVU23
	b	bsp_board_led_invert
.LVL7:
.LFE279:
	.size	alert_timer_handler, .-alert_timer_handler
	.section	.text.bsp_button_event_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_button_event_handler, %function
bsp_button_event_handler:
.LVL8:
.LFB274:
	.loc 2 133 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 134 5 view .LVU25
	.loc 2 135 5 view .LVU26
	.loc 2 136 5 view .LVU27
	.loc 2 137 5 view .LVU28
	.loc 2 138 5 view .LVU29
	.loc 2 140 5 view .LVU30
	.loc 2 133 1 is_stmt 0 view .LVU31
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
.LCFI0:
	.loc 2 133 1 view .LVU32
	mov	r8, r0
	mov	r5, r1
	.loc 2 140 14 view .LVU33
	bl	bsp_board_pin_to_button_idx
.LVL9:
	.loc 2 142 8 view .LVU34
	cmp	r0, #3
	.loc 2 140 14 view .LVU35
	mov	r4, r0
.LVL10:
	.loc 2 142 5 is_stmt 1 view .LVU36
	.loc 2 142 8 is_stmt 0 view .LVU37
	bhi	.L7
	.loc 2 144 9 is_stmt 1 view .LVU38
	cmp	r5, #1
	beq	.L10
	cmp	r5, #2
	beq	.L11
	cbnz	r5, .L7
	.loc 2 159 17 view .LVU39
	.loc 2 159 23 is_stmt 0 view .LVU40
	ldr	r0, .L24
.LVL11:
	.loc 2 159 23 view .LVU41
	bl	app_timer_stop
.LVL12:
	.loc 2 160 17 is_stmt 1 view .LVU42
	.loc 2 160 75 is_stmt 0 view .LVU43
	ldr	r3, .L24+4
	add	r2, r4, r4, lsl #1
	add	r3, r3, r2
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	.loc 2 160 42 view .LVU44
	ldr	r3, .L24+8
	.loc 2 160 20 view .LVU45
	ldrb	r3, [r3, r4]	@ zero_extendqisi2
	cmp	r3, r5
	beq	.L16
.LVL13:
.L7:
	.loc 2 174 1 view .LVU46
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL14:
.L10:
	.loc 2 147 17 is_stmt 1 view .LVU47
	.loc 2 147 23 is_stmt 0 view .LVU48
	ldr	r6, .L24+4
	add	r3, r0, r0, lsl #1
	adds	r2, r6, r3
	ldrb	r5, [r6, r3]	@ zero_extendqisi2
.LVL15:
	.loc 2 148 17 is_stmt 1 view .LVU49
	.loc 2 148 20 is_stmt 0 view .LVU50
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	.loc 2 147 23 view .LVU51
	lsls	r7, r0, #1
	.loc 2 148 20 view .LVU52
	cbz	r3, .L14
	.loc 2 150 21 is_stmt 1 view .LVU53
	.loc 2 150 32 is_stmt 0 view .LVU54
	ldr	r9, .L24+16
	ldr	r0, .L24
.LVL16:
	.loc 2 150 32 view .LVU55
	mov	r2, r9
	mov	r1, #16384
	bl	app_timer_start
.LVL17:
	.loc 2 151 21 is_stmt 1 view .LVU56
	.loc 2 151 24 is_stmt 0 view .LVU57
	cbnz	r0, .L14
	.loc 2 153 25 is_stmt 1 view .LVU58
	.loc 2 153 50 is_stmt 0 view .LVU59
	strb	r8, [r9]
.LVL18:
.L14:
	.loc 2 156 17 is_stmt 1 view .LVU60
	.loc 2 156 70 is_stmt 0 view .LVU61
	add	r7, r7, r4
	add	r6, r6, r7
	.loc 2 156 47 view .LVU62
	ldr	r3, .L24+8
	ldrb	r2, [r6, #2]	@ zero_extendqisi2
	strb	r2, [r3, r4]
	.loc 2 157 17 is_stmt 1 view .LVU63
.LVL19:
.L16:
	.loc 2 170 5 view .LVU64
	.loc 2 170 8 is_stmt 0 view .LVU65
	cmp	r5, #0
	beq	.L7
	.loc 2 170 64 discriminator 1 view .LVU66
	ldr	r3, .L24+12
	ldr	r3, [r3]
	.loc 2 170 38 discriminator 1 view .LVU67
	cmp	r3, #0
	beq	.L7
	.loc 2 172 9 is_stmt 1 view .LVU68
	mov	r0, r5
	.loc 2 174 1 is_stmt 0 view .LVU69
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
.LCFI1:
.LVL20:
	.loc 2 172 9 view .LVU70
	bx	r3	@ indirect register sibling call
.LVL21:
.L11:
.LCFI2:
	.loc 2 166 17 is_stmt 1 view .LVU71
	.loc 2 166 23 is_stmt 0 view .LVU72
	add	r4, r0, r0, lsl #1
	ldr	r0, .L24+4
.LVL22:
	.loc 2 166 23 view .LVU73
	add	r4, r4, r0
	ldrb	r5, [r4, #1]	@ zero_extendqisi2
.LVL23:
	.loc 2 166 23 view .LVU74
	b	.L16
.L25:
	.align	2
.L24:
	.word	.LANCHOR2
	.word	.LANCHOR0
	.word	.LANCHOR3
	.word	.LANCHOR4
	.word	.LANCHOR1
.LFE274:
	.size	bsp_button_event_handler, .-bsp_button_event_handler
	.section	.text.button_timer_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	button_timer_handler, %function
button_timer_handler:
.LVL24:
.LFB275:
	.loc 2 181 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 182 5 view .LVU76
	ldrb	r0, [r0]	@ zero_extendqisi2
.LVL25:
	.loc 2 182 5 is_stmt 0 view .LVU77
	movs	r1, #2
	b	bsp_button_event_handler
.LVL26:
.LFE275:
	.size	button_timer_handler, .-button_timer_handler
	.section	.text.leds_off,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	leds_off, %function
leds_off:
.LFB276:
	.loc 2 191 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 192 5 view .LVU79
	.loc 2 191 1 is_stmt 0 view .LVU80
	push	{r3, lr}
.LCFI3:
	.loc 2 192 9 view .LVU81
	ldr	r3, .L29
	.loc 2 192 8 view .LVU82
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbz	r3, .L28
.LBB12:
.LBI12:
	.loc 2 190 13 is_stmt 1 discriminator 1 view .LVU83
.LVL27:
.LBB13:
	.loc 2 195 21 discriminator 1 view .LVU84
	.loc 2 197 13 discriminator 1 view .LVU85
	.loc 2 199 17 discriminator 1 view .LVU86
	movs	r0, #0
	bl	bsp_board_led_off
.LVL28:
	.loc 2 195 38 discriminator 1 view .LVU87
	.loc 2 195 21 discriminator 1 view .LVU88
	.loc 2 197 13 discriminator 1 view .LVU89
	.loc 2 199 17 discriminator 1 view .LVU90
	movs	r0, #1
	bl	bsp_board_led_off
.LVL29:
	.loc 2 195 38 discriminator 1 view .LVU91
	.loc 2 195 21 discriminator 1 view .LVU92
	.loc 2 197 13 discriminator 1 view .LVU93
	.loc 2 195 38 discriminator 1 view .LVU94
	.loc 2 195 21 discriminator 1 view .LVU95
	.loc 2 197 13 discriminator 1 view .LVU96
	.loc 2 199 17 discriminator 1 view .LVU97
.LBE13:
.LBE12:
	.loc 2 207 1 is_stmt 0 discriminator 1 view .LVU98
	pop	{r3, lr}
.LCFI4:
.LBB15:
.LBB14:
	.loc 2 199 17 discriminator 1 view .LVU99
	movs	r0, #3
	b	bsp_board_led_off
.LVL30:
.L28:
.LCFI5:
	.loc 2 199 17 discriminator 1 view .LVU100
.LBE14:
.LBE15:
	.loc 2 205 9 is_stmt 1 view .LVU101
	.loc 2 207 1 is_stmt 0 view .LVU102
	pop	{r3, lr}
.LCFI6:
	.loc 2 205 9 view .LVU103
	b	bsp_board_leds_off
.LVL31:
.L30:
	.align	2
.L29:
	.word	.LANCHOR5
.LFE276:
	.size	leds_off, .-leds_off
	.global	__aeabi_uldivmod
	.global	__aeabi_ldivmod
	.section	.text.bsp_led_indication,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_led_indication, %function
bsp_led_indication:
.LVL32:
.LFB277:
	.loc 2 214 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 215 5 view .LVU105
	.loc 2 216 5 view .LVU106
	.loc 2 218 5 view .LVU107
	.loc 2 214 1 is_stmt 0 view .LVU108
	push	{r3, r4, r5, r6, r7, lr}
.LCFI7:
	.loc 2 218 9 view .LVU109
	ldr	r4, .L79
	.loc 2 218 8 view .LVU110
	ldrb	r3, [r4]	@ zero_extendqisi2
	.loc 2 214 1 view .LVU111
	mov	r5, r0
	.loc 2 218 8 view .LVU112
	cbz	r3, .L32
	.loc 2 220 9 is_stmt 1 view .LVU113
	.loc 2 220 22 is_stmt 0 view .LVU114
	movs	r3, #0
	strb	r3, [r4]
	.loc 2 221 9 is_stmt 1 view .LVU115
	bl	leds_off
.LVL33:
.L32:
	.loc 2 224 5 view .LVU116
	cmp	r5, #23
	bhi	.L61
	tbb	[pc, r5]
.L35:
	.byte	(.L50-.L35)/2
	.byte	(.L49-.L35)/2
	.byte	(.L49-.L35)/2
	.byte	(.L48-.L35)/2
	.byte	(.L47-.L35)/2
	.byte	(.L46-.L35)/2
	.byte	(.L45-.L35)/2
	.byte	(.L44-.L35)/2
	.byte	(.L43-.L35)/2
	.byte	(.L42-.L35)/2
	.byte	(.L43-.L35)/2
	.byte	(.L42-.L35)/2
	.byte	(.L41-.L35)/2
	.byte	(.L40-.L35)/2
	.byte	(.L40-.L35)/2
	.byte	(.L40-.L35)/2
	.byte	(.L40-.L35)/2
	.byte	(.L40-.L35)/2
	.byte	(.L39-.L35)/2
	.byte	(.L38-.L35)/2
	.byte	(.L37-.L35)/2
	.byte	(.L36-.L35)/2
	.byte	(.L34-.L35)/2
	.byte	(.L34-.L35)/2
	.p2align 1
.L50:
	.loc 2 227 13 view .LVU117
	bl	leds_off
.LVL34:
	.loc 2 228 13 view .LVU118
	.loc 2 228 30 is_stmt 0 view .LVU119
	ldr	r0, .L79+4
	bl	app_timer_stop
.LVL35:
	.loc 2 229 28 view .LVU120
	ldr	r3, .L79+8
	movs	r2, #0
	.loc 2 228 30 view .LVU121
	mov	r4, r0
.LVL36:
	.loc 2 229 13 is_stmt 1 view .LVU122
	.loc 2 229 28 is_stmt 0 view .LVU123
	strb	r2, [r3]
	.loc 2 230 13 is_stmt 1 view .LVU124
.LVL37:
.L31:
	.loc 2 430 1 is_stmt 0 view .LVU125
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.LVL38:
.L49:
	.loc 2 235 13 is_stmt 1 view .LVU126
	.loc 2 235 17 is_stmt 0 view .LVU127
	movs	r0, #0
	bl	bsp_board_led_state_get
.LVL39:
	.loc 2 235 16 view .LVU128
	cbz	r0, .L51
	.loc 2 237 17 is_stmt 1 view .LVU129
	movs	r0, #0
	bl	bsp_board_led_off
.LVL40:
	.loc 2 238 17 view .LVU130
	.loc 2 239 86 is_stmt 0 view .LVU131
	cmp	r5, #2
	ite	eq
	moveq	r4, #1800
	movne	r4, #4000
.L52:
.LVL41:
	.loc 2 250 13 is_stmt 1 view .LVU132
	.loc 2 250 28 is_stmt 0 view .LVU133
	ldr	r3, .L79+8
	strb	r5, [r3]
	.loc 2 251 13 is_stmt 1 view .LVU134
.L75:
	.loc 2 273 13 view .LVU135
	.loc 2 273 62 is_stmt 0 view .LVU136
	movs	r5, #0
	mov	r6, #32768
	mov	r0, #1000
	mov	r1, r5
	mov	r2, #2000
	movs	r3, #0
	umlal	r0, r1, r4, r6
	bl	__aeabi_uldivmod
.LVL42:
	.loc 2 273 30 view .LVU137
	mov	r2, r5
	.loc 2 273 62 view .LVU138
	mov	r1, r0
.LVL43:
.L74:
	.loc 2 430 1 view .LVU139
	pop	{r3, r4, r5, r6, r7, lr}
.LCFI8:
	.loc 2 343 24 view .LVU140
	ldr	r0, .L79+4
	b	app_timer_start
.LVL44:
.L51:
.LCFI9:
	.loc 2 244 17 is_stmt 1 view .LVU141
	bl	bsp_board_led_on
.LVL45:
	.loc 2 245 17 view .LVU142
	.loc 2 246 85 is_stmt 0 view .LVU143
	cmp	r5, #2
	ite	eq
	moveq	r4, #200
	movne	r4, #400
	b	.L52
.L48:
	.loc 2 256 13 is_stmt 1 view .LVU144
	.loc 2 256 17 is_stmt 0 view .LVU145
	movs	r0, #0
	bl	bsp_board_led_state_get
.LVL46:
	.loc 2 256 16 view .LVU146
	cbz	r0, .L53
	.loc 2 258 17 is_stmt 1 view .LVU147
	movs	r0, #0
	bl	bsp_board_led_off
.LVL47:
	.loc 2 259 17 view .LVU148
	.loc 2 261 69 is_stmt 0 view .LVU149
	mov	r4, #800
.L54:
.LVL48:
	.loc 2 272 13 is_stmt 1 view .LVU150
	.loc 2 272 28 is_stmt 0 view .LVU151
	ldr	r3, .L79+8
	movs	r2, #3
.L76:
	.loc 2 272 28 view .LVU152
	strb	r2, [r3]
	b	.L75
.LVL49:
.L53:
	.loc 2 266 17 is_stmt 1 view .LVU153
	bl	bsp_board_led_on
.LVL50:
	.loc 2 267 17 view .LVU154
	.loc 2 269 68 is_stmt 0 view .LVU155
	movs	r4, #200
	b	.L54
.L47:
	.loc 2 278 13 is_stmt 1 view .LVU156
	.loc 2 278 17 is_stmt 0 view .LVU157
	movs	r0, #0
	bl	bsp_board_led_state_get
.LVL51:
	.loc 2 278 16 view .LVU158
	cbz	r0, .L55
	.loc 2 280 17 is_stmt 1 view .LVU159
	movs	r0, #0
	bl	bsp_board_led_off
.LVL52:
	.loc 2 281 17 view .LVU160
	.loc 2 281 28 is_stmt 0 view .LVU161
	mov	r4, #4000
.LVL53:
.L56:
	.loc 2 292 13 is_stmt 1 view .LVU162
	.loc 2 292 28 is_stmt 0 view .LVU163
	ldr	r3, .L79+8
	movs	r2, #4
	b	.L76
.LVL54:
.L55:
	.loc 2 287 17 is_stmt 1 view .LVU164
	bl	bsp_board_led_on
.LVL55:
	.loc 2 288 17 view .LVU165
	.loc 2 288 28 is_stmt 0 view .LVU166
	mov	r4, #400
	b	.L56
.LVL56:
.L46:
	.loc 2 298 13 is_stmt 1 view .LVU167
	.loc 2 298 17 is_stmt 0 view .LVU168
	movs	r0, #0
	bl	bsp_board_led_state_get
.LVL57:
	.loc 2 298 16 view .LVU169
	cbz	r0, .L57
	.loc 2 300 17 is_stmt 1 view .LVU170
	movs	r0, #0
	bl	bsp_board_led_off
.LVL58:
	.loc 2 301 17 view .LVU171
.L58:
	.loc 2 314 13 view .LVU172
	.loc 2 314 28 is_stmt 0 view .LVU173
	ldr	r3, .L79+8
	movs	r2, #5
	strb	r2, [r3]
	.loc 2 315 13 is_stmt 1 view .LVU174
	.loc 2 315 30 is_stmt 0 view .LVU175
	movw	r1, #3277
	movs	r2, #0
	b	.L74
.LVL59:
.L57:
	.loc 2 308 17 is_stmt 1 view .LVU176
	bl	bsp_board_led_on
.LVL60:
	.loc 2 309 17 view .LVU177
	b	.L58
.L45:
	.loc 2 320 13 view .LVU178
	movs	r0, #0
	bl	bsp_board_led_invert
.LVL61:
	.loc 2 322 13 view .LVU179
	.loc 2 322 28 is_stmt 0 view .LVU180
	ldr	r3, .L79+8
	movs	r2, #6
	strb	r2, [r3]
	.loc 2 323 13 is_stmt 1 view .LVU181
.L77:
	.loc 2 336 13 view .LVU182
	.loc 2 336 24 is_stmt 0 view .LVU183
	movs	r2, #0
	movw	r1, #1638
	b	.L74
.L44:
	.loc 2 328 13 is_stmt 1 view .LVU184
	movs	r0, #0
	bl	bsp_board_led_on
.LVL62:
	.loc 2 329 13 view .LVU185
	.loc 2 329 28 is_stmt 0 view .LVU186
	ldr	r3, .L79+8
	movs	r2, #7
.L78:
	.loc 2 415 28 view .LVU187
	strb	r2, [r3]
	.loc 2 416 13 is_stmt 1 view .LVU188
.L61:
	.loc 2 224 5 is_stmt 0 view .LVU189
	movs	r4, #0
	.loc 2 429 5 is_stmt 1 view .LVU190
	.loc 2 429 12 is_stmt 0 view .LVU191
	b	.L31
.L43:
	.loc 2 334 13 is_stmt 1 view .LVU192
	.loc 2 334 26 is_stmt 0 view .LVU193
	movs	r0, #1
	strb	r0, [r4]
	.loc 2 335 13 is_stmt 1 view .LVU194
	bl	bsp_board_led_invert
.LVL63:
	b	.L77
.L42:
	.loc 2 341 13 view .LVU195
	.loc 2 341 26 is_stmt 0 view .LVU196
	movs	r0, #1
	strb	r0, [r4]
	.loc 2 342 13 is_stmt 1 view .LVU197
	bl	bsp_board_led_invert
.LVL64:
	.loc 2 343 13 view .LVU198
	.loc 2 343 24 is_stmt 0 view .LVU199
	movs	r2, #0
	mov	r1, #8192
	b	.L74
.L41:
	.loc 2 362 13 is_stmt 1 view .LVU200
	bl	bsp_board_leds_on
.LVL65:
	.loc 2 363 13 view .LVU201
	.loc 2 363 28 is_stmt 0 view .LVU202
	ldr	r3, .L79+8
	movs	r2, #12
	b	.L78
.L40:
	.loc 2 371 13 is_stmt 1 view .LVU203
	.loc 2 371 26 is_stmt 0 view .LVU204
	ldr	r0, .L79+12
	ldr	r6, .L79+16
	bl	app_timer_stop
.LVL66:
	.loc 2 375 16 view .LVU205
	rsbs	r5, r5, #17
	.loc 2 371 26 view .LVU206
	mov	r4, r0
.LVL67:
	.loc 2 372 13 is_stmt 1 view .LVU207
	.loc 2 375 13 view .LVU208
	.loc 2 375 16 is_stmt 0 view .LVU209
	beq	.L59
	.loc 2 375 28 discriminator 1 view .LVU210
	cbnz	r0, .L59
	.loc 2 377 17 is_stmt 1 view .LVU211
	.loc 2 377 20 is_stmt 0 view .LVU212
	cmp	r5, #1
	beq	.L60
	.loc 2 379 21 is_stmt 1 view .LVU213
	.loc 2 380 48 is_stmt 0 view .LVU214
	movs	r0, #200
.LVL68:
	.loc 2 380 48 view .LVU215
	muls	r5, r0, r5
	mov	r1, r4
	mov	r7, #32768
	mov	r0, #1000
	mov	r2, #2000
	movs	r3, #0
	smlal	r0, r1, r5, r7
	bl	__aeabi_uldivmod
.LVL69:
	.loc 2 379 32 view .LVU216
	mov	r2, r4
	.loc 2 380 48 view .LVU217
	mov	r1, r0
	.loc 2 379 32 view .LVU218
	ldr	r0, .L79+12
	bl	app_timer_start
.LVL70:
	mov	r4, r0
.LVL71:
.L60:
	.loc 2 383 17 is_stmt 1 view .LVU219
	movs	r0, #2
.LVL72:
	.loc 2 383 17 is_stmt 0 view .LVU220
	bl	bsp_board_led_on
.LVL73:
	.loc 2 384 17 is_stmt 1 view .LVU221
	.loc 2 384 28 is_stmt 0 view .LVU222
	movs	r3, #1
.L73:
	.loc 2 389 28 view .LVU223
	strb	r3, [r6]
	b	.L31
.LVL74:
.L59:
	.loc 2 388 17 is_stmt 1 view .LVU224
	movs	r0, #2
.LVL75:
	.loc 2 388 17 is_stmt 0 view .LVU225
	bl	bsp_board_led_off
.LVL76:
	.loc 2 389 17 is_stmt 1 view .LVU226
	.loc 2 389 28 is_stmt 0 view .LVU227
	movs	r3, #0
	b	.L73
.LVL77:
.L39:
	.loc 2 395 13 is_stmt 1 view .LVU228
	bl	leds_off
.LVL78:
	.loc 2 396 13 view .LVU229
	.loc 2 396 28 is_stmt 0 view .LVU230
	ldr	r3, .L79+8
	movs	r2, #18
	b	.L78
.L38:
	.loc 2 400 13 is_stmt 1 view .LVU231
	bl	leds_off
.LVL79:
	.loc 2 401 13 view .LVU232
	movs	r0, #0
	bl	bsp_board_led_on
.LVL80:
	.loc 2 402 13 view .LVU233
	.loc 2 402 28 is_stmt 0 view .LVU234
	ldr	r3, .L79+8
	movs	r2, #19
	b	.L78
.L37:
	.loc 2 406 13 is_stmt 1 view .LVU235
	bl	leds_off
.LVL81:
	.loc 2 407 13 view .LVU236
	movs	r0, #1
	bl	bsp_board_led_on
.LVL82:
	.loc 2 408 13 view .LVU237
	.loc 2 408 28 is_stmt 0 view .LVU238
	ldr	r3, .L79+8
	movs	r2, #20
	b	.L78
.L36:
	.loc 2 412 13 is_stmt 1 view .LVU239
	bl	leds_off
.LVL83:
	.loc 2 413 13 view .LVU240
	movs	r0, #0
	bl	bsp_board_led_on
.LVL84:
	.loc 2 414 13 view .LVU241
	movs	r0, #1
	bl	bsp_board_led_on
.LVL85:
	.loc 2 415 13 view .LVU242
	.loc 2 415 28 is_stmt 0 view .LVU243
	ldr	r3, .L79+8
	movs	r2, #21
	b	.L78
.L34:
	.loc 2 421 13 is_stmt 1 view .LVU244
	bl	bsp_board_leds_on
.LVL86:
	.loc 2 422 13 view .LVU245
	.loc 2 422 28 is_stmt 0 view .LVU246
	ldr	r3, .L79+8
	strb	r5, [r3]
	.loc 2 423 13 is_stmt 1 view .LVU247
	b	.L61
.L80:
	.align	2
.L79:
	.word	.LANCHOR6
	.word	.LANCHOR7
	.word	.LANCHOR8
	.word	.LANCHOR9
	.word	.LANCHOR5
.LFE277:
	.size	bsp_led_indication, .-bsp_led_indication
	.section	.text.leds_timer_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.type	leds_timer_handler, %function
leds_timer_handler:
.LVL87:
.LFB278:
	.loc 2 441 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 442 5 view .LVU249
	.loc 2 444 5 view .LVU250
	.loc 2 444 27 is_stmt 0 view .LVU251
	ldr	r3, .L83
	ldr	r3, [r3]
	.loc 2 444 8 view .LVU252
	lsls	r3, r3, #31
	bpl	.L81
.LBB18:
.LBI18:
	.loc 2 440 13 is_stmt 1 view .LVU253
.LVL88:
.LBB19:
	.loc 2 446 9 view .LVU254
	ldr	r3, .L83+4
	ldrb	r0, [r3]	@ zero_extendqisi2
.LVL89:
	.loc 2 446 9 is_stmt 0 view .LVU255
	b	bsp_led_indication
.LVL90:
.L81:
	.loc 2 446 9 view .LVU256
.LBE19:
.LBE18:
	.loc 2 448 1 view .LVU257
	bx	lr
.L84:
	.align	2
.L83:
	.word	.LANCHOR10
	.word	.LANCHOR8
.LFE278:
	.size	leds_timer_handler, .-leds_timer_handler
	.section	.text.bsp_button_is_pressed,"ax",%progbits
	.align	1
	.global	bsp_button_is_pressed
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_button_is_pressed, %function
bsp_button_is_pressed:
.LVL91:
.LFB273:
	.loc 2 113 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 114 5 view .LVU259
	.loc 2 114 8 is_stmt 0 view .LVU260
	cmp	r0, #3
	bhi	.L86
	.loc 2 116 9 is_stmt 1 view .LVU261
	.loc 2 116 16 is_stmt 0 view .LVU262
	b	bsp_board_button_state_get
.LVL92:
.L86:
	.loc 2 123 1 view .LVU263
	movs	r0, #0
.LVL93:
	.loc 2 123 1 view .LVU264
	bx	lr
.LFE273:
	.size	bsp_button_is_pressed, .-bsp_button_is_pressed
	.section	.text.bsp_indication_set,"ax",%progbits
	.align	1
	.global	bsp_indication_set
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_indication_set, %function
bsp_indication_set:
.LVL94:
.LFB280:
	.loc 2 466 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 467 5 view .LVU266
	.loc 2 471 5 view .LVU267
	.loc 2 471 27 is_stmt 0 view .LVU268
	ldr	r3, .L89
	ldr	r3, [r3]
	.loc 2 471 8 view .LVU269
	ands	r3, r3, #1
	beq	.L87
	.loc 2 473 9 is_stmt 1 view .LVU270
	.loc 2 473 20 is_stmt 0 view .LVU271
	b	bsp_led_indication
.LVL95:
.L87:
	.loc 2 478 1 view .LVU272
	mov	r0, r3
.LVL96:
	.loc 2 478 1 view .LVU273
	bx	lr
.L90:
	.align	2
.L89:
	.word	.LANCHOR10
.LFE280:
	.size	bsp_indication_set, .-bsp_indication_set
	.section	.text.bsp_init,"ax",%progbits
	.align	1
	.global	bsp_init
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_init, %function
bsp_init:
.LVL97:
.LFB281:
	.loc 2 482 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 483 5 view .LVU275
	.loc 2 486 5 view .LVU276
	.loc 2 482 1 is_stmt 0 view .LVU277
	push	{r3, r4, r5, lr}
.LCFI10:
	.loc 2 486 27 view .LVU278
	ldr	r3, .L100
	str	r0, [r3]
	.loc 2 490 5 is_stmt 1 view .LVU279
	.loc 2 490 27 is_stmt 0 view .LVU280
	ldr	r3, .L100+4
	.loc 2 493 8 view .LVU281
	ands	r4, r0, #2
	.loc 2 482 1 view .LVU282
	mov	r5, r0
	.loc 2 490 27 view .LVU283
	str	r1, [r3]
	.loc 2 493 5 is_stmt 1 view .LVU284
	.loc 2 493 8 is_stmt 0 view .LVU285
	beq	.L92
.LVL98:
.LBB25:
	.loc 2 497 23 is_stmt 1 view .LVU286
	.loc 2 499 13 view .LVU287
.LBB26:
.LBI26:
	.loc 2 553 10 view .LVU288
.LBB27:
	.loc 2 555 5 view .LVU289
	.loc 2 558 5 view .LVU290
.LBB28:
.LBI28:
	.loc 2 553 10 view .LVU291
.LBB29:
	.loc 2 560 9 view .LVU292
	.loc 2 563 13 view .LVU293
	.loc 2 565 9 view .LVU294
	.loc 2 568 17 view .LVU295
	.loc 2 568 50 is_stmt 0 view .LVU296
	ldr	r3, .L100+8
.LBE29:
.LBE28:
.LBE27:
.LBE26:
	.loc 2 504 24 view .LVU297
	ldr	r0, .L100+12
.LVL99:
.LBB42:
.LBB38:
.LBB34:
.LBB30:
	.loc 2 568 50 view .LVU298
	movs	r2, #14
	strb	r2, [r3]
	.loc 2 569 17 is_stmt 1 view .LVU299
.LVL100:
	.loc 2 589 5 view .LVU300
	.loc 2 589 5 is_stmt 0 view .LVU301
.LBE30:
.LBE34:
	.loc 2 589 5 is_stmt 1 view .LVU302
	.loc 2 589 5 is_stmt 0 view .LVU303
.LBE38:
.LBE42:
	.loc 2 497 78 is_stmt 1 view .LVU304
	.loc 2 497 23 view .LVU305
	.loc 2 499 13 view .LVU306
.LBB43:
	.loc 2 553 10 view .LVU307
.LBB39:
	.loc 2 555 5 view .LVU308
	.loc 2 558 5 view .LVU309
.LBB35:
	.loc 2 553 10 view .LVU310
.LBB31:
	.loc 2 560 9 view .LVU311
	.loc 2 563 13 view .LVU312
	.loc 2 565 9 view .LVU313
	.loc 2 568 17 view .LVU314
	.loc 2 568 50 is_stmt 0 view .LVU315
	movs	r2, #15
	strb	r2, [r3, #3]
	.loc 2 569 17 is_stmt 1 view .LVU316
.LVL101:
	.loc 2 589 5 view .LVU317
	.loc 2 589 5 is_stmt 0 view .LVU318
.LBE31:
.LBE35:
	.loc 2 589 5 is_stmt 1 view .LVU319
	.loc 2 589 5 is_stmt 0 view .LVU320
.LBE39:
.LBE43:
	.loc 2 497 78 is_stmt 1 view .LVU321
	.loc 2 497 23 view .LVU322
	.loc 2 499 13 view .LVU323
.LBB44:
	.loc 2 553 10 view .LVU324
.LBB40:
	.loc 2 555 5 view .LVU325
	.loc 2 558 5 view .LVU326
.LBB36:
	.loc 2 553 10 view .LVU327
.LBB32:
	.loc 2 560 9 view .LVU328
	.loc 2 563 13 view .LVU329
	.loc 2 565 9 view .LVU330
	.loc 2 568 17 view .LVU331
	.loc 2 568 50 is_stmt 0 view .LVU332
	movs	r2, #16
	strb	r2, [r3, #6]
	.loc 2 569 17 is_stmt 1 view .LVU333
.LVL102:
	.loc 2 589 5 view .LVU334
	.loc 2 589 5 is_stmt 0 view .LVU335
.LBE32:
.LBE36:
	.loc 2 589 5 is_stmt 1 view .LVU336
	.loc 2 589 5 is_stmt 0 view .LVU337
.LBE40:
.LBE44:
	.loc 2 497 78 is_stmt 1 view .LVU338
	.loc 2 497 23 view .LVU339
	.loc 2 499 13 view .LVU340
.LBB45:
	.loc 2 553 10 view .LVU341
.LBB41:
	.loc 2 555 5 view .LVU342
	.loc 2 558 5 view .LVU343
.LBB37:
	.loc 2 553 10 view .LVU344
.LBB33:
	.loc 2 560 9 view .LVU345
	.loc 2 563 13 view .LVU346
	.loc 2 565 9 view .LVU347
	.loc 2 568 17 view .LVU348
	.loc 2 568 50 is_stmt 0 view .LVU349
	movs	r2, #17
	strb	r2, [r3, #9]
	.loc 2 569 17 is_stmt 1 view .LVU350
.LVL103:
	.loc 2 589 5 view .LVU351
	.loc 2 589 5 is_stmt 0 view .LVU352
.LBE33:
.LBE37:
	.loc 2 589 5 is_stmt 1 view .LVU353
	.loc 2 589 5 is_stmt 0 view .LVU354
.LBE41:
.LBE45:
	.loc 2 497 78 is_stmt 1 view .LVU355
	.loc 2 497 23 view .LVU356
	.loc 2 502 9 view .LVU357
	.loc 2 504 13 view .LVU358
	.loc 2 504 24 is_stmt 0 view .LVU359
	movs	r1, #4
.LVL104:
	.loc 2 504 24 view .LVU360
	movw	r2, #819
	bl	app_button_init
.LVL105:
	.loc 2 509 9 is_stmt 1 view .LVU361
	.loc 2 509 12 is_stmt 0 view .LVU362
	mov	r4, r0
	cbnz	r0, .L92
	.loc 2 511 13 is_stmt 1 view .LVU363
	.loc 2 511 24 is_stmt 0 view .LVU364
	bl	app_button_enable
.LVL106:
	.loc 2 514 9 is_stmt 1 view .LVU365
	.loc 2 514 12 is_stmt 0 view .LVU366
	mov	r4, r0
	cbnz	r0, .L92
	.loc 2 516 13 is_stmt 1 view .LVU367
	.loc 2 516 24 is_stmt 0 view .LVU368
	mov	r1, r0
	ldr	r2, .L100+16
	ldr	r0, .L100+20
.LVL107:
	.loc 2 516 24 view .LVU369
	bl	app_timer_create
.LVL108:
	.loc 2 516 24 view .LVU370
	mov	r4, r0
.LVL109:
.L92:
	.loc 2 516 24 view .LVU371
.LBE25:
	.loc 2 526 5 is_stmt 1 view .LVU372
	.loc 2 526 8 is_stmt 0 view .LVU373
	lsls	r3, r5, #31
	bpl	.L91
	.loc 2 529 7 is_stmt 1 view .LVU374
	movs	r0, #1
	bl	bsp_board_init
.LVL110:
	.loc 2 532 7 view .LVU375
	.loc 2 532 10 is_stmt 0 view .LVU376
	cbnz	r4, .L91
	.loc 2 534 11 is_stmt 1 view .LVU377
	.loc 2 535 15 is_stmt 0 view .LVU378
	mov	r1, r4
	ldr	r2, .L100+24
	ldr	r0, .L100+28
	bl	app_timer_create
.LVL111:
	.loc 2 538 7 is_stmt 1 view .LVU379
	.loc 2 538 10 is_stmt 0 view .LVU380
	mov	r4, r0
	cbnz	r0, .L91
	.loc 2 540 11 is_stmt 1 view .LVU381
	.loc 2 547 1 is_stmt 0 view .LVU382
	pop	{r3, r4, r5, lr}
.LCFI11:
.LVL112:
	.loc 2 541 15 view .LVU383
	ldr	r2, .L100+32
	ldr	r0, .L100+36
.LVL113:
	.loc 2 541 15 view .LVU384
	movs	r1, #1
	b	app_timer_create
.LVL114:
.L91:
.LCFI12:
	.loc 2 547 1 view .LVU385
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.LVL115:
.L101:
	.loc 2 547 1 view .LVU386
	.align	2
.L100:
	.word	.LANCHOR10
	.word	.LANCHOR4
	.word	.LANCHOR0
	.word	.LANCHOR11
	.word	button_timer_handler
	.word	.LANCHOR12
	.word	leds_timer_handler
	.word	.LANCHOR13
	.word	alert_timer_handler
	.word	.LANCHOR14
.LFE281:
	.size	bsp_init, .-bsp_init
	.section	.text.bsp_event_to_button_action_assign,"ax",%progbits
	.align	1
	.global	bsp_event_to_button_action_assign
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_event_to_button_action_assign, %function
bsp_event_to_button_action_assign:
.LVL116:
.LFB282:
	.loc 2 554 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 555 5 view .LVU388
	.loc 2 558 5 view .LVU389
	.loc 2 558 8 is_stmt 0 view .LVU390
	cmp	r0, #3
	bhi	.L109
.LVL117:
.LBB48:
.LBI48:
	.loc 2 553 10 is_stmt 1 view .LVU391
.LBB49:
	.loc 2 560 9 view .LVU392
	.loc 2 560 12 is_stmt 0 view .LVU393
	cmp	r2, #1
	bne	.L104
	.loc 2 563 13 is_stmt 1 view .LVU394
	.loc 2 563 98 is_stmt 0 view .LVU395
	cmp	r1, #1
	bne	.L110
	add	r2, r0, #14
.LVL118:
	.loc 2 563 98 view .LVU396
	uxtb	r2, r2
.LVL119:
	.loc 2 565 9 is_stmt 1 view .LVU397
.L106:
	.loc 2 568 17 view .LVU398
	.loc 2 568 50 is_stmt 0 view .LVU399
	ldr	r3, .L115
	add	r0, r0, r0, lsl #1
.LVL120:
	.loc 2 568 50 view .LVU400
	strb	r2, [r3, r0]
.L114:
	.loc 2 569 17 is_stmt 1 view .LVU401
	.loc 2 555 14 is_stmt 0 view .LVU402
	movs	r0, #0
	.loc 2 569 17 view .LVU403
	bx	lr
.LVL121:
.L104:
	.loc 2 565 9 is_stmt 1 view .LVU404
	cmp	r1, #1
	beq	.L106
.LVL122:
.L105:
	.loc 2 565 9 is_stmt 0 view .LVU405
	cmp	r1, #2
	beq	.L107
	cbz	r1, .L108
.LVL123:
.L109:
	.loc 2 565 9 view .LVU406
.LBE49:
.LBE48:
	.loc 2 583 18 view .LVU407
	movs	r0, #7
.LVL124:
	.loc 2 589 5 is_stmt 1 view .LVU408
	.loc 2 590 1 is_stmt 0 view .LVU409
	bx	lr
.LVL125:
.L110:
.LBB51:
.LBB50:
	.loc 2 563 98 view .LVU410
	movs	r2, #0
.LVL126:
	.loc 2 563 98 view .LVU411
	b	.L105
.LVL127:
.L107:
	.loc 2 571 17 is_stmt 1 view .LVU412
	.loc 2 571 55 is_stmt 0 view .LVU413
	ldr	r3, .L115
	add	r0, r0, r0, lsl #1
.LVL128:
	.loc 2 571 55 view .LVU414
	add	r0, r0, r3
	strb	r2, [r0, #1]
	.loc 2 572 17 is_stmt 1 view .LVU415
	b	.L114
.LVL129:
.L108:
	.loc 2 574 17 view .LVU416
	.loc 2 574 53 is_stmt 0 view .LVU417
	ldr	r3, .L115
	add	r0, r0, r0, lsl #1
.LVL130:
	.loc 2 574 53 view .LVU418
	add	r0, r0, r3
	strb	r2, [r0, #2]
	.loc 2 575 17 is_stmt 1 view .LVU419
	b	.L114
.L116:
	.align	2
.L115:
	.word	.LANCHOR0
.LBE50:
.LBE51:
.LFE282:
	.size	bsp_event_to_button_action_assign, .-bsp_event_to_button_action_assign
	.section	.text.bsp_buttons_enable,"ax",%progbits
	.align	1
	.global	bsp_buttons_enable
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_buttons_enable, %function
bsp_buttons_enable:
.LFB283:
	.loc 2 596 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 598 5 view .LVU421
	.loc 2 598 12 is_stmt 0 view .LVU422
	b	app_button_enable
.LVL131:
.LFE283:
	.size	bsp_buttons_enable, .-bsp_buttons_enable
	.section	.text.bsp_buttons_disable,"ax",%progbits
	.align	1
	.global	bsp_buttons_disable
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_buttons_disable, %function
bsp_buttons_disable:
.LFB284:
	.loc 2 605 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 607 5 view .LVU424
	.loc 2 607 12 is_stmt 0 view .LVU425
	b	app_button_disable
.LVL132:
.LFE284:
	.size	bsp_buttons_disable, .-bsp_buttons_disable
	.section	.text.bsp_wakeup_button_enable,"ax",%progbits
	.align	1
	.global	bsp_wakeup_button_enable
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_wakeup_button_enable, %function
bsp_wakeup_button_enable:
.LVL133:
.LFB286:
	.loc 2 631 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 632 5 view .LVU427
.LBB57:
.LBI57:
	.loc 2 612 17 view .LVU428
.LBB58:
	.loc 2 615 5 view .LVU429
	.loc 2 615 8 is_stmt 0 view .LVU430
	cmp	r0, #3
.LBE58:
.LBE57:
	.loc 2 631 1 view .LVU431
	push	{r3, lr}
.LCFI13:
.LBB63:
.LBB61:
	.loc 2 615 8 view .LVU432
	bhi	.L121
.LVL134:
.LBB59:
.LBI59:
	.loc 2 612 17 is_stmt 1 view .LVU433
.LBB60:
	.loc 2 617 9 view .LVU434
	.loc 2 620 9 view .LVU435
	bl	bsp_board_button_idx_to_pin
.LVL135:
	.loc 2 620 9 is_stmt 0 view .LVU436
	movs	r1, #3
	bl	nrf_gpio_cfg_sense_set
.LVL136:
	.loc 2 621 9 is_stmt 1 view .LVU437
	.loc 2 620 9 is_stmt 0 view .LVU438
	movs	r0, #0
.LVL137:
.L119:
	.loc 2 620 9 view .LVU439
.LBE60:
.LBE59:
.LBE61:
.LBE63:
	.loc 2 633 1 view .LVU440
	pop	{r3, pc}
.LVL138:
.L121:
.LBB64:
.LBB62:
	.loc 2 627 12 view .LVU441
	movs	r0, #6
.LVL139:
	.loc 2 627 12 view .LVU442
.LBE62:
.LBE64:
	.loc 2 632 12 view .LVU443
	b	.L119
.LFE286:
	.size	bsp_wakeup_button_enable, .-bsp_wakeup_button_enable
	.section	.text.bsp_wakeup_button_disable,"ax",%progbits
	.align	1
	.global	bsp_wakeup_button_disable
	.syntax unified
	.thumb
	.thumb_func
	.type	bsp_wakeup_button_disable, %function
bsp_wakeup_button_disable:
.LVL140:
.LFB287:
	.loc 2 636 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 2 637 5 view .LVU445
.LBB70:
.LBI70:
	.loc 2 612 17 view .LVU446
.LBB71:
	.loc 2 615 5 view .LVU447
	.loc 2 615 8 is_stmt 0 view .LVU448
	cmp	r0, #3
.LBE71:
.LBE70:
	.loc 2 636 1 view .LVU449
	push	{r3, lr}
.LCFI14:
.LBB76:
.LBB74:
	.loc 2 615 8 view .LVU450
	bhi	.L124
.LVL141:
.LBB72:
.LBI72:
	.loc 2 612 17 is_stmt 1 view .LVU451
.LBB73:
	.loc 2 617 9 view .LVU452
	.loc 2 620 9 view .LVU453
	bl	bsp_board_button_idx_to_pin
.LVL142:
	.loc 2 620 9 is_stmt 0 view .LVU454
	movs	r1, #0
	bl	nrf_gpio_cfg_sense_set
.LVL143:
	.loc 2 621 9 is_stmt 1 view .LVU455
	.loc 2 620 9 is_stmt 0 view .LVU456
	movs	r0, #0
.LVL144:
.L122:
	.loc 2 620 9 view .LVU457
.LBE73:
.LBE72:
.LBE74:
.LBE76:
	.loc 2 638 1 view .LVU458
	pop	{r3, pc}
.LVL145:
.L124:
.LBB77:
.LBB75:
	.loc 2 627 12 view .LVU459
	movs	r0, #6
.LVL146:
	.loc 2 627 12 view .LVU460
.LBE75:
.LBE77:
	.loc 2 637 12 view .LVU461
	b	.L122
.LFE287:
	.size	bsp_wakeup_button_disable, .-bsp_wakeup_button_disable
	.section	.bss.current_long_push_pin_no.1,"aw",%nobits
	.set	.LANCHOR1,. + 0
	.type	current_long_push_pin_no.1, %object
	.size	current_long_push_pin_no.1, 1
current_long_push_pin_no.1:
	.space	1
	.section	.bss.m_alert_on,"aw",%nobits
	.set	.LANCHOR5,. + 0
	.type	m_alert_on, %object
	.size	m_alert_on, 1
m_alert_on:
	.space	1
	.section	.bss.m_bsp_alert_tmr_data,"aw",%nobits
	.align	3
	.set	.LANCHOR9,. + 0
	.type	m_bsp_alert_tmr_data, %object
	.size	m_bsp_alert_tmr_data, 32
m_bsp_alert_tmr_data:
	.space	32
	.section	.bss.m_bsp_button_tmr_data,"aw",%nobits
	.align	3
	.set	.LANCHOR2,. + 0
	.type	m_bsp_button_tmr_data, %object
	.size	m_bsp_button_tmr_data, 32
m_bsp_button_tmr_data:
	.space	32
	.section	.bss.m_bsp_leds_tmr_data,"aw",%nobits
	.align	3
	.set	.LANCHOR7,. + 0
	.type	m_bsp_leds_tmr_data, %object
	.size	m_bsp_leds_tmr_data, 32
m_bsp_leds_tmr_data:
	.space	32
	.section	.bss.m_events_list,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	m_events_list, %object
	.size	m_events_list, 12
m_events_list:
	.space	12
	.section	.bss.m_indication_type,"aw",%nobits
	.align	2
	.set	.LANCHOR10,. + 0
	.type	m_indication_type, %object
	.size	m_indication_type, 4
m_indication_type:
	.space	4
	.section	.bss.m_leds_clear,"aw",%nobits
	.set	.LANCHOR6,. + 0
	.type	m_leds_clear, %object
	.size	m_leds_clear, 1
m_leds_clear:
	.space	1
	.section	.bss.m_registered_callback,"aw",%nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	m_registered_callback, %object
	.size	m_registered_callback, 4
m_registered_callback:
	.space	4
	.section	.bss.m_stable_state,"aw",%nobits
	.set	.LANCHOR8,. + 0
	.type	m_stable_state, %object
	.size	m_stable_state, 1
m_stable_state:
	.space	1
	.section	.bss.release_event_at_push.0,"aw",%nobits
	.set	.LANCHOR3,. + 0
	.type	release_event_at_push.0, %object
	.size	release_event_at_push.0, 4
release_event_at_push.0:
	.space	4
	.section	.rodata.app_buttons,"a"
	.align	2
	.set	.LANCHOR11,. + 0
	.type	app_buttons, %object
	.size	app_buttons, 32
app_buttons:
	.byte	11
	.byte	0
	.byte	3
	.space	1
	.word	bsp_button_event_handler
	.byte	12
	.byte	0
	.byte	3
	.space	1
	.word	bsp_button_event_handler
	.byte	24
	.byte	0
	.byte	3
	.space	1
	.word	bsp_button_event_handler
	.byte	25
	.byte	0
	.byte	3
	.space	1
	.word	bsp_button_event_handler
	.section	.rodata.m_bsp_alert_tmr,"a"
	.align	2
	.set	.LANCHOR14,. + 0
	.type	m_bsp_alert_tmr, %object
	.size	m_bsp_alert_tmr, 4
m_bsp_alert_tmr:
	.word	m_bsp_alert_tmr_data
	.section	.rodata.m_bsp_button_tmr,"a"
	.align	2
	.set	.LANCHOR12,. + 0
	.type	m_bsp_button_tmr, %object
	.size	m_bsp_button_tmr, 4
m_bsp_button_tmr:
	.word	m_bsp_button_tmr_data
	.section	.rodata.m_bsp_leds_tmr,"a"
	.align	2
	.set	.LANCHOR13,. + 0
	.type	m_bsp_leds_tmr, %object
	.size	m_bsp_leds_tmr, 4
m_bsp_leds_tmr:
	.word	m_bsp_leds_tmr_data
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.byte	0x4
	.4byte	.LCFI0-.LFB274
	.byte	0xe
	.uleb128 0x20
	.byte	0x84
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x87
	.uleb128 0x5
	.byte	0x88
	.uleb128 0x4
	.byte	0x89
	.uleb128 0x3
	.byte	0x8a
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xa
	.byte	0xce
	.byte	0xca
	.byte	0xc9
	.byte	0xc8
	.byte	0xc7
	.byte	0xc6
	.byte	0xc5
	.byte	0xc4
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xb
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.byte	0x4
	.4byte	.LCFI3-.LFB276
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xa
	.byte	0xce
	.byte	0xc3
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xb
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xce
	.byte	0xc3
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.byte	0x4
	.4byte	.LCFI7-.LFB277
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x6
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xa
	.byte	0xce
	.byte	0xc7
	.byte	0xc6
	.byte	0xc5
	.byte	0xc4
	.byte	0xc3
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xb
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB273
	.4byte	.LFE273-.LFB273
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.byte	0x4
	.4byte	.LCFI10-.LFB281
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x4
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xa
	.byte	0xce
	.byte	0xc5
	.byte	0xc4
	.byte	0xc3
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xb
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
