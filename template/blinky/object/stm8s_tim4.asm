;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module stm8s_tim4
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_DeInit
	.globl _TIM4_TimeBaseInit
	.globl _TIM4_Cmd
	.globl _TIM4_ITConfig
	.globl _TIM4_UpdateDisableConfig
	.globl _TIM4_UpdateRequestConfig
	.globl _TIM4_SelectOnePulseMode
	.globl _TIM4_PrescalerConfig
	.globl _TIM4_ARRPreloadConfig
	.globl _TIM4_GenerateEvent
	.globl _TIM4_SetCounter
	.globl _TIM4_SetAutoreload
	.globl _TIM4_GetCounter
	.globl _TIM4_GetPrescaler
	.globl _TIM4_GetFlagStatus
	.globl _TIM4_ClearFlag
	.globl _TIM4_GetITStatus
	.globl _TIM4_ClearITPendingBit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	G$TIM4_DeInit$0$0 ==.
	C$stm8s_tim4.c$49$0_0$307 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 49: void TIM4_DeInit(void)
;	-----------------------------------------
;	 function TIM4_DeInit
;	-----------------------------------------
_TIM4_DeInit:
	C$stm8s_tim4.c$51$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
	mov	0x5340+0, #0x00
	C$stm8s_tim4.c$52$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
	mov	0x5343+0, #0x00
	C$stm8s_tim4.c$53$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
	mov	0x5346+0, #0x00
	C$stm8s_tim4.c$54$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
	mov	0x5347+0, #0x00
	C$stm8s_tim4.c$55$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
	mov	0x5348+0, #0xff
	C$stm8s_tim4.c$56$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
	mov	0x5344+0, #0x00
	C$stm8s_tim4.c$57$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 57: }
	C$stm8s_tim4.c$57$1_0$307 ==.
	XG$TIM4_DeInit$0$0 ==.
	ret
	G$TIM4_TimeBaseInit$0$0 ==.
	C$stm8s_tim4.c$65$1_0$309 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
;	-----------------------------------------
;	 function TIM4_TimeBaseInit
;	-----------------------------------------
_TIM4_TimeBaseInit:
	C$stm8s_tim4.c$70$1_0$309 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
	ld	0x5347, a
	C$stm8s_tim4.c$72$1_0$309 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
	ldw	x, #0x5348
	ld	a, (0x03, sp)
	ld	(x), a
	C$stm8s_tim4.c$73$1_0$309 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 73: }
	popw	x
	pop	a
	jp	(x)
	G$TIM4_Cmd$0$0 ==.
	C$stm8s_tim4.c$81$1_0$311 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM4_Cmd
;	-----------------------------------------
_TIM4_Cmd:
	push	a
	ld	(0x01, sp), a
	C$stm8s_tim4.c$89$1_0$311 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
	ld	a, 0x5340
	C$stm8s_tim4.c$87$1_0$311 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 87: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_tim4.c$89$2_0$312 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
	or	a, #0x01
	ld	0x5340, a
	jra	00104$
00102$:
	C$stm8s_tim4.c$93$2_0$313 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
	and	a, #0xfe
	ld	0x5340, a
00104$:
	C$stm8s_tim4.c$95$1_0$311 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 95: }
	pop	a
	C$stm8s_tim4.c$95$1_0$311 ==.
	XG$TIM4_Cmd$0$0 ==.
	ret
	G$TIM4_ITConfig$0$0 ==.
	C$stm8s_tim4.c$107$1_0$315 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function TIM4_ITConfig
;	-----------------------------------------
_TIM4_ITConfig:
	push	a
	ld	xl, a
	C$stm8s_tim4.c$116$1_0$315 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
	ld	a, 0x5343
	ld	(0x01, sp), a
	C$stm8s_tim4.c$113$1_0$315 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 113: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_tim4.c$116$2_0$316 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
	ld	a, xl
	or	a, (0x01, sp)
	ld	0x5343, a
	jra	00104$
00102$:
	C$stm8s_tim4.c$121$2_0$317 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
	ld	a, xl
	cpl	a
	and	a, (0x01, sp)
	ld	0x5343, a
00104$:
	C$stm8s_tim4.c$123$1_0$315 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 123: }
	pop	a
	popw	x
	pop	a
	jp	(x)
	G$TIM4_UpdateDisableConfig$0$0 ==.
	C$stm8s_tim4.c$131$1_0$319 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM4_UpdateDisableConfig
;	-----------------------------------------
_TIM4_UpdateDisableConfig:
	push	a
	ld	(0x01, sp), a
	C$stm8s_tim4.c$139$1_0$319 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
	ld	a, 0x5340
	C$stm8s_tim4.c$137$1_0$319 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 137: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_tim4.c$139$2_0$320 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
	or	a, #0x02
	ld	0x5340, a
	jra	00104$
00102$:
	C$stm8s_tim4.c$143$2_0$321 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
	and	a, #0xfd
	ld	0x5340, a
00104$:
	C$stm8s_tim4.c$145$1_0$319 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 145: }
	pop	a
	C$stm8s_tim4.c$145$1_0$319 ==.
	XG$TIM4_UpdateDisableConfig$0$0 ==.
	ret
	G$TIM4_UpdateRequestConfig$0$0 ==.
	C$stm8s_tim4.c$155$1_0$323 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
;	-----------------------------------------
;	 function TIM4_UpdateRequestConfig
;	-----------------------------------------
_TIM4_UpdateRequestConfig:
	push	a
	ld	(0x01, sp), a
	C$stm8s_tim4.c$163$1_0$323 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
	ld	a, 0x5340
	C$stm8s_tim4.c$161$1_0$323 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_tim4.c$163$2_0$324 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
	or	a, #0x04
	ld	0x5340, a
	jra	00104$
00102$:
	C$stm8s_tim4.c$167$2_0$325 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
	and	a, #0xfb
	ld	0x5340, a
00104$:
	C$stm8s_tim4.c$169$1_0$323 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 169: }
	pop	a
	C$stm8s_tim4.c$169$1_0$323 ==.
	XG$TIM4_UpdateRequestConfig$0$0 ==.
	ret
	G$TIM4_SelectOnePulseMode$0$0 ==.
	C$stm8s_tim4.c$179$1_0$327 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
;	-----------------------------------------
;	 function TIM4_SelectOnePulseMode
;	-----------------------------------------
_TIM4_SelectOnePulseMode:
	push	a
	ld	(0x01, sp), a
	C$stm8s_tim4.c$187$1_0$327 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
	ld	a, 0x5340
	C$stm8s_tim4.c$185$1_0$327 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_tim4.c$187$2_0$328 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
	or	a, #0x08
	ld	0x5340, a
	jra	00104$
00102$:
	C$stm8s_tim4.c$191$2_0$329 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
	and	a, #0xf7
	ld	0x5340, a
00104$:
	C$stm8s_tim4.c$193$1_0$327 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 193: }
	pop	a
	C$stm8s_tim4.c$193$1_0$327 ==.
	XG$TIM4_SelectOnePulseMode$0$0 ==.
	ret
	G$TIM4_PrescalerConfig$0$0 ==.
	C$stm8s_tim4.c$215$1_0$331 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
;	-----------------------------------------
;	 function TIM4_PrescalerConfig
;	-----------------------------------------
_TIM4_PrescalerConfig:
	C$stm8s_tim4.c$222$1_0$331 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
	ld	0x5347, a
	C$stm8s_tim4.c$225$1_0$331 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
	ld	a, (0x03, sp)
	ld	0x5345, a
	C$stm8s_tim4.c$226$1_0$331 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 226: }
	popw	x
	pop	a
	jp	(x)
	G$TIM4_ARRPreloadConfig$0$0 ==.
	C$stm8s_tim4.c$234$1_0$333 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
;	-----------------------------------------
;	 function TIM4_ARRPreloadConfig
;	-----------------------------------------
_TIM4_ARRPreloadConfig:
	push	a
	ld	(0x01, sp), a
	C$stm8s_tim4.c$242$1_0$333 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
	ld	a, 0x5340
	C$stm8s_tim4.c$240$1_0$333 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 240: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_tim4.c$242$2_0$334 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
	or	a, #0x80
	ld	0x5340, a
	jra	00104$
00102$:
	C$stm8s_tim4.c$246$2_0$335 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
	and	a, #0x7f
	ld	0x5340, a
00104$:
	C$stm8s_tim4.c$248$1_0$333 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 248: }
	pop	a
	C$stm8s_tim4.c$248$1_0$333 ==.
	XG$TIM4_ARRPreloadConfig$0$0 ==.
	ret
	G$TIM4_GenerateEvent$0$0 ==.
	C$stm8s_tim4.c$257$1_0$337 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
;	-----------------------------------------
;	 function TIM4_GenerateEvent
;	-----------------------------------------
_TIM4_GenerateEvent:
	C$stm8s_tim4.c$263$1_0$337 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
	ld	0x5345, a
	C$stm8s_tim4.c$264$1_0$337 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 264: }
	C$stm8s_tim4.c$264$1_0$337 ==.
	XG$TIM4_GenerateEvent$0$0 ==.
	ret
	G$TIM4_SetCounter$0$0 ==.
	C$stm8s_tim4.c$272$1_0$339 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
;	-----------------------------------------
;	 function TIM4_SetCounter
;	-----------------------------------------
_TIM4_SetCounter:
	C$stm8s_tim4.c$275$1_0$339 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
	ld	0x5346, a
	C$stm8s_tim4.c$276$1_0$339 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 276: }
	C$stm8s_tim4.c$276$1_0$339 ==.
	XG$TIM4_SetCounter$0$0 ==.
	ret
	G$TIM4_SetAutoreload$0$0 ==.
	C$stm8s_tim4.c$284$1_0$341 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
;	-----------------------------------------
;	 function TIM4_SetAutoreload
;	-----------------------------------------
_TIM4_SetAutoreload:
	C$stm8s_tim4.c$287$1_0$341 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
	ld	0x5348, a
	C$stm8s_tim4.c$288$1_0$341 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 288: }
	C$stm8s_tim4.c$288$1_0$341 ==.
	XG$TIM4_SetAutoreload$0$0 ==.
	ret
	G$TIM4_GetCounter$0$0 ==.
	C$stm8s_tim4.c$295$1_0$343 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
;	-----------------------------------------
;	 function TIM4_GetCounter
;	-----------------------------------------
_TIM4_GetCounter:
	C$stm8s_tim4.c$298$1_0$343 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
	ld	a, 0x5346
	C$stm8s_tim4.c$299$1_0$343 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 299: }
	C$stm8s_tim4.c$299$1_0$343 ==.
	XG$TIM4_GetCounter$0$0 ==.
	ret
	G$TIM4_GetPrescaler$0$0 ==.
	C$stm8s_tim4.c$306$1_0$345 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
;	-----------------------------------------
;	 function TIM4_GetPrescaler
;	-----------------------------------------
_TIM4_GetPrescaler:
	C$stm8s_tim4.c$309$1_0$345 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
	ld	a, 0x5347
	C$stm8s_tim4.c$310$1_0$345 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 310: }
	C$stm8s_tim4.c$310$1_0$345 ==.
	XG$TIM4_GetPrescaler$0$0 ==.
	ret
	G$TIM4_GetFlagStatus$0$0 ==.
	C$stm8s_tim4.c$319$1_0$347 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
;	-----------------------------------------
;	 function TIM4_GetFlagStatus
;	-----------------------------------------
_TIM4_GetFlagStatus:
	ld	xl, a
	C$stm8s_tim4.c$326$1_0$347 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
	ld	a, 0x5344
	pushw	x
	and	a, (2, sp)
	popw	x
	tnz	a
	jreq	00102$
	C$stm8s_tim4.c$328$2_0$348 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 328: bitstatus = SET;
	ld	a, #0x01
	ret
00102$:
	C$stm8s_tim4.c$332$2_0$349 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 332: bitstatus = RESET;
	clr	a
	C$stm8s_tim4.c$334$1_0$347 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
	C$stm8s_tim4.c$335$1_0$347 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 335: }
	C$stm8s_tim4.c$335$1_0$347 ==.
	XG$TIM4_GetFlagStatus$0$0 ==.
	ret
	G$TIM4_ClearFlag$0$0 ==.
	C$stm8s_tim4.c$344$1_0$351 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
;	-----------------------------------------
;	 function TIM4_ClearFlag
;	-----------------------------------------
_TIM4_ClearFlag:
	C$stm8s_tim4.c$350$1_0$351 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
	cpl	a
	ld	0x5344, a
	C$stm8s_tim4.c$351$1_0$351 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 351: }
	C$stm8s_tim4.c$351$1_0$351 ==.
	XG$TIM4_ClearFlag$0$0 ==.
	ret
	G$TIM4_GetITStatus$0$0 ==.
	C$stm8s_tim4.c$360$1_0$353 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
;	-----------------------------------------
;	 function TIM4_GetITStatus
;	-----------------------------------------
_TIM4_GetITStatus:
	sub	sp, #2
	ld	xl, a
	C$stm8s_tim4.c$369$1_0$353 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
	ld	a, 0x5344
	exg	a, xl
	ld	(0x01, sp), a
	exg	a, xl
	and	a, (0x01, sp)
	ld	(0x02, sp), a
	C$stm8s_tim4.c$371$1_0$353 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
	ld	a, 0x5343
	and	a, (0x01, sp)
	C$stm8s_tim4.c$373$1_0$353 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
	tnz	(0x02, sp)
	jreq	00102$
	tnz	a
	jreq	00102$
	C$stm8s_tim4.c$375$2_0$354 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
	ld	a, #0x01
	C$stm8s_tim4.c$379$2_0$355 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
	.byte 0x21
00102$:
	clr	a
00103$:
	C$stm8s_tim4.c$381$1_0$353 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
	C$stm8s_tim4.c$382$1_0$353 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 382: }
	addw	sp, #2
	C$stm8s_tim4.c$382$1_0$353 ==.
	XG$TIM4_GetITStatus$0$0 ==.
	ret
	G$TIM4_ClearITPendingBit$0$0 ==.
	C$stm8s_tim4.c$391$1_0$357 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
;	-----------------------------------------
;	 function TIM4_ClearITPendingBit
;	-----------------------------------------
_TIM4_ClearITPendingBit:
	C$stm8s_tim4.c$397$1_0$357 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
	cpl	a
	ld	0x5344, a
	C$stm8s_tim4.c$398$1_0$357 ==.
;	d:\sdcc\lib\src\stm8s_tim4.c: 398: }
	C$stm8s_tim4.c$398$1_0$357 ==.
	XG$TIM4_ClearITPendingBit$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
