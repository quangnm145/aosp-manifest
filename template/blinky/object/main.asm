;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module main
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _TIM4_ClearFlag
	.globl _TIM4_GetFlagStatus
	.globl _TIM4_SetCounter
	.globl _TIM4_Cmd
	.globl _TIM4_TimeBaseInit
	.globl _GPIO_WriteReverse
	.globl _GPIO_Init
	.globl _GPIO_DeInit
	.globl _CLK_HSIPrescalerConfig
	.globl _delay_ms
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
	call	___sdcc_external_startup
	tnz	a
	jreq	__sdcc_init_data
	jp	__sdcc_program_startup
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	G$delay_ms$0$0 ==.
	C$main.c$5$0_0$308 ==.
;	main.c: 5: void delay_ms(uint16_t u16Delay)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	pushw	x
	C$main.c$8$1_0$308 ==.
;	main.c: 8: while (u16Delay) {
00104$:
	ldw	x, (0x01, sp)
	jreq	00107$
	C$main.c$9$2_0$309 ==.
;	main.c: 9: TIM4_SetCounter(0);
	clr	a
	call	_TIM4_SetCounter
	C$main.c$10$2_0$309 ==.
;	main.c: 10: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
	ld	a, #0x01
	call	_TIM4_ClearFlag
	C$main.c$11$2_0$309 ==.
;	main.c: 11: while (TIM4_GetFlagStatus(TIM4_FLAG_UPDATE) == RESET) {
00101$:
	ld	a, #0x01
	call	_TIM4_GetFlagStatus
	tnz	a
	jreq	00101$
	C$main.c$13$2_0$309 ==.
;	main.c: 13: --u16Delay;
	ldw	x, (0x01, sp)
	decw	x
	ldw	(0x01, sp), x
	jra	00104$
00107$:
	C$main.c$15$1_0$308 ==.
;	main.c: 15: }
	addw	sp, #2
	C$main.c$15$1_0$308 ==.
	XG$delay_ms$0$0 ==.
	ret
	G$main$0$0 ==.
	C$main.c$17$1_0$312 ==.
;	main.c: 17: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$main.c$20$1_0$312 ==.
;	main.c: 20: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
	clr	a
	call	_CLK_HSIPrescalerConfig
	C$main.c$21$1_0$312 ==.
;	main.c: 21: GPIO_DeInit(GPIOB);
	ldw	x, #0x5005
	call	_GPIO_DeInit
	C$main.c$22$1_0$312 ==.
;	main.c: 22: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);
	push	#0xe0
	ld	a, #0x20
	ldw	x, #0x5005
	call	_GPIO_Init
	C$main.c$23$1_0$312 ==.
;	main.c: 23: TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125 - 1);
	push	#0x7c
	ld	a, #0x07
	call	_TIM4_TimeBaseInit
	C$main.c$24$1_0$312 ==.
;	main.c: 24: TIM4_Cmd(ENABLE);
	ld	a, #0x01
	call	_TIM4_Cmd
	C$main.c$26$1_0$312 ==.
;	main.c: 26: while(1) {
00102$:
	C$main.c$27$2_0$313 ==.
;	main.c: 27: delay_ms(2000);
	ldw	x, #0x07d0
	call	_delay_ms
	C$main.c$28$2_0$313 ==.
;	main.c: 28: GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
	ld	a, #0x20
	ldw	x, #0x5005
	call	_GPIO_WriteReverse
	jra	00102$
	C$main.c$30$1_0$312 ==.
;	main.c: 30: }
	C$main.c$30$1_0$312 ==.
	XG$main$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
