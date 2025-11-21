;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.0 #15242 (MINGW64)
;--------------------------------------------------------
	.module stm8s_clk
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLKPrescTable
	.globl _HSIDivFactor
	.globl _CLK_DeInit
	.globl _CLK_FastHaltWakeUpCmd
	.globl _CLK_HSECmd
	.globl _CLK_HSICmd
	.globl _CLK_LSICmd
	.globl _CLK_CCOCmd
	.globl _CLK_ClockSwitchCmd
	.globl _CLK_SlowActiveHaltWakeUpCmd
	.globl _CLK_PeripheralClockConfig
	.globl _CLK_ClockSwitchConfig
	.globl _CLK_HSIPrescalerConfig
	.globl _CLK_CCOConfig
	.globl _CLK_ITConfig
	.globl _CLK_SYSCLKConfig
	.globl _CLK_SWIMConfig
	.globl _CLK_ClockSecuritySystemEnable
	.globl _CLK_GetSYSCLKSource
	.globl _CLK_GetClockFreq
	.globl _CLK_AdjustHSICalibrationValue
	.globl _CLK_SYSCLKEmergencyClear
	.globl _CLK_GetFlagStatus
	.globl _CLK_GetITStatus
	.globl _CLK_ClearITPendingBit
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
	G$CLK_DeInit$0$0 ==.
	C$stm8s_clk.c$72$0_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 72: void CLK_DeInit(void)
;	-----------------------------------------
;	 function CLK_DeInit
;	-----------------------------------------
_CLK_DeInit:
	C$stm8s_clk.c$74$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
	mov	0x50c0+0, #0x01
	C$stm8s_clk.c$75$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
	mov	0x50c1+0, #0x00
	C$stm8s_clk.c$76$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
	mov	0x50c4+0, #0xe1
	C$stm8s_clk.c$77$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
	mov	0x50c5+0, #0x00
	C$stm8s_clk.c$78$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
	mov	0x50c6+0, #0x18
	C$stm8s_clk.c$79$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
	mov	0x50c7+0, #0xff
	C$stm8s_clk.c$80$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
	mov	0x50ca+0, #0xff
	C$stm8s_clk.c$81$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
	mov	0x50c8+0, #0x00
	C$stm8s_clk.c$82$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
	mov	0x50c9+0, #0x00
	C$stm8s_clk.c$83$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
00101$:
	btjt	0x50c9, #0, 00101$
	C$stm8s_clk.c$85$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
	mov	0x50c9+0, #0x00
	C$stm8s_clk.c$86$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
	mov	0x50cc+0, #0x00
	C$stm8s_clk.c$87$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
	mov	0x50cd+0, #0x00
	C$stm8s_clk.c$88$1_0$307 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 88: }
	C$stm8s_clk.c$88$1_0$307 ==.
	XG$CLK_DeInit$0$0 ==.
	ret
	G$CLK_FastHaltWakeUpCmd$0$0 ==.
	C$stm8s_clk.c$99$1_0$310 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_FastHaltWakeUpCmd
;	-----------------------------------------
_CLK_FastHaltWakeUpCmd:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$107$1_0$310 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
	ld	a, 0x50c0
	C$stm8s_clk.c$104$1_0$310 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 104: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_clk.c$107$2_0$311 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
	or	a, #0x04
	ld	0x50c0, a
	jra	00104$
00102$:
	C$stm8s_clk.c$112$2_0$312 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
	and	a, #0xfb
	ld	0x50c0, a
00104$:
	C$stm8s_clk.c$114$1_0$310 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 114: }
	pop	a
	C$stm8s_clk.c$114$1_0$310 ==.
	XG$CLK_FastHaltWakeUpCmd$0$0 ==.
	ret
	G$CLK_HSECmd$0$0 ==.
	C$stm8s_clk.c$121$1_0$314 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HSECmd
;	-----------------------------------------
_CLK_HSECmd:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$129$1_0$314 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
	ld	a, 0x50c1
	C$stm8s_clk.c$126$1_0$314 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 126: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_clk.c$129$2_0$315 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
	or	a, #0x01
	ld	0x50c1, a
	jra	00104$
00102$:
	C$stm8s_clk.c$134$2_0$316 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	and	a, #0xfe
	ld	0x50c1, a
00104$:
	C$stm8s_clk.c$136$1_0$314 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 136: }
	pop	a
	C$stm8s_clk.c$136$1_0$314 ==.
	XG$CLK_HSECmd$0$0 ==.
	ret
	G$CLK_HSICmd$0$0 ==.
	C$stm8s_clk.c$143$1_0$318 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_HSICmd
;	-----------------------------------------
_CLK_HSICmd:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$151$1_0$318 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
	ld	a, 0x50c0
	C$stm8s_clk.c$148$1_0$318 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 148: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_clk.c$151$2_0$319 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
	or	a, #0x01
	ld	0x50c0, a
	jra	00104$
00102$:
	C$stm8s_clk.c$156$2_0$320 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
	and	a, #0xfe
	ld	0x50c0, a
00104$:
	C$stm8s_clk.c$158$1_0$318 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 158: }
	pop	a
	C$stm8s_clk.c$158$1_0$318 ==.
	XG$CLK_HSICmd$0$0 ==.
	ret
	G$CLK_LSICmd$0$0 ==.
	C$stm8s_clk.c$166$1_0$322 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_LSICmd
;	-----------------------------------------
_CLK_LSICmd:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$174$1_0$322 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
	ld	a, 0x50c0
	C$stm8s_clk.c$171$1_0$322 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 171: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_clk.c$174$2_0$323 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
	or	a, #0x08
	ld	0x50c0, a
	jra	00104$
00102$:
	C$stm8s_clk.c$179$2_0$324 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
	and	a, #0xf7
	ld	0x50c0, a
00104$:
	C$stm8s_clk.c$181$1_0$322 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 181: }
	pop	a
	C$stm8s_clk.c$181$1_0$322 ==.
	XG$CLK_LSICmd$0$0 ==.
	ret
	G$CLK_CCOCmd$0$0 ==.
	C$stm8s_clk.c$189$1_0$326 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_CCOCmd
;	-----------------------------------------
_CLK_CCOCmd:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$197$1_0$326 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
	ld	a, 0x50c9
	C$stm8s_clk.c$194$1_0$326 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 194: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_clk.c$197$2_0$327 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
	or	a, #0x01
	ld	0x50c9, a
	jra	00104$
00102$:
	C$stm8s_clk.c$202$2_0$328 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
	and	a, #0xfe
	ld	0x50c9, a
00104$:
	C$stm8s_clk.c$204$1_0$326 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 204: }
	pop	a
	C$stm8s_clk.c$204$1_0$326 ==.
	XG$CLK_CCOCmd$0$0 ==.
	ret
	G$CLK_ClockSwitchCmd$0$0 ==.
	C$stm8s_clk.c$213$1_0$330 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_ClockSwitchCmd
;	-----------------------------------------
_CLK_ClockSwitchCmd:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$221$1_0$330 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
	ld	a, 0x50c5
	C$stm8s_clk.c$218$1_0$330 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 218: if (NewState != DISABLE )
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_clk.c$221$2_0$331 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
	or	a, #0x02
	ld	0x50c5, a
	jra	00104$
00102$:
	C$stm8s_clk.c$226$2_0$332 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
	and	a, #0xfd
	ld	0x50c5, a
00104$:
	C$stm8s_clk.c$228$1_0$330 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 228: }
	pop	a
	C$stm8s_clk.c$228$1_0$330 ==.
	XG$CLK_ClockSwitchCmd$0$0 ==.
	ret
	G$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
	C$stm8s_clk.c$238$1_0$334 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_SlowActiveHaltWakeUpCmd
;	-----------------------------------------
_CLK_SlowActiveHaltWakeUpCmd:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$246$1_0$334 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
	ld	a, 0x50c0
	C$stm8s_clk.c$243$1_0$334 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 243: if (NewState != DISABLE)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_clk.c$246$2_0$335 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
	or	a, #0x20
	ld	0x50c0, a
	jra	00104$
00102$:
	C$stm8s_clk.c$251$2_0$336 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
	and	a, #0xdf
	ld	0x50c0, a
00104$:
	C$stm8s_clk.c$253$1_0$334 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 253: }
	pop	a
	C$stm8s_clk.c$253$1_0$334 ==.
	XG$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
	ret
	G$CLK_PeripheralClockConfig$0$0 ==.
	C$stm8s_clk.c$263$1_0$338 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_PeripheralClockConfig
;	-----------------------------------------
_CLK_PeripheralClockConfig:
	push	a
	C$stm8s_clk.c$274$1_0$338 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	xl, a
	and	a, #0x0f
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00134$
00133$:
	sll	(0x01, sp)
	dec	a
	jrne	00133$
00134$:
	C$stm8s_clk.c$269$1_0$338 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
	ld	a, xl
	bcp	a, #0x10
	jrne	00108$
	C$stm8s_clk.c$274$1_0$338 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	a, 0x50c7
	C$stm8s_clk.c$271$2_0$339 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 271: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00102$
	C$stm8s_clk.c$274$3_0$340 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	or	a, (0x01, sp)
	ld	0x50c7, a
	jra	00110$
00102$:
	C$stm8s_clk.c$279$3_0$341 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	push	a
	cpl	(0x02, sp)
	pop	a
	and	a, (0x01, sp)
	ld	0x50c7, a
	jra	00110$
00108$:
	C$stm8s_clk.c$287$1_0$338 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	ld	a, 0x50ca
	C$stm8s_clk.c$284$2_0$342 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 284: if (NewState != DISABLE)
	tnz	(0x04, sp)
	jreq	00105$
	C$stm8s_clk.c$287$3_0$343 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
	or	a, (0x01, sp)
	ld	0x50ca, a
	jra	00110$
00105$:
	C$stm8s_clk.c$292$3_0$344 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
	push	a
	cpl	(0x02, sp)
	pop	a
	and	a, (0x01, sp)
	ld	0x50ca, a
00110$:
	C$stm8s_clk.c$295$1_0$338 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 295: }
	pop	a
	popw	x
	pop	a
	jp	(x)
	G$CLK_ClockSwitchConfig$0$0 ==.
	C$stm8s_clk.c$309$1_0$346 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
;	-----------------------------------------
;	 function CLK_ClockSwitchConfig
;	-----------------------------------------
_CLK_ClockSwitchConfig:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$322$1_0$346 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
	ld	a, 0x50c3
	ld	yl, a
	C$stm8s_clk.c$328$1_0$346 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
	ld	a, 0x50c5
	C$stm8s_clk.c$325$1_0$346 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
	tnz	(0x01, sp)
	jreq	00122$
	C$stm8s_clk.c$328$2_0$347 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
	or	a, #0x02
	ld	0x50c5, a
	ld	a, 0x50c5
	C$stm8s_clk.c$331$2_0$347 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 331: if (ITState != DISABLE)
	tnz	(0x05, sp)
	jreq	00102$
	C$stm8s_clk.c$333$3_0$348 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
	or	a, #0x04
	ld	0x50c5, a
	jra	00103$
00102$:
	C$stm8s_clk.c$337$3_0$349 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	and	a, #0xfb
	ld	0x50c5, a
00103$:
	C$stm8s_clk.c$341$2_0$347 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
	C$stm8s_clk.c$344$1_0$346 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
	clrw	x
	decw	x
00105$:
	btjf	0x50c5, #0, 00107$
	tnzw	x
	jreq	00107$
	C$stm8s_clk.c$346$3_0$350 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 346: DownCounter--;
	decw	x
	jra	00105$
00107$:
	C$stm8s_clk.c$349$2_0$347 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 349: if(DownCounter != 0)
	tnzw	x
	jreq	00109$
	C$stm8s_clk.c$351$3_0$351 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 351: Swif = SUCCESS;
	ld	a, #0x01
	ld	xl, a
	jra	00123$
00109$:
	C$stm8s_clk.c$355$3_0$352 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 355: Swif = ERROR;
	clrw	x
	jra	00123$
00122$:
	C$stm8s_clk.c$361$2_0$353 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 361: if (ITState != DISABLE)
	tnz	(0x05, sp)
	jreq	00112$
	C$stm8s_clk.c$363$3_0$354 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
	or	a, #0x04
	ld	0x50c5, a
	jra	00113$
00112$:
	C$stm8s_clk.c$367$3_0$355 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
	and	a, #0xfb
	ld	0x50c5, a
00113$:
	C$stm8s_clk.c$371$2_0$353 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
	ldw	x, #0x50c4
	ld	a, (0x04, sp)
	ld	(x), a
	C$stm8s_clk.c$374$1_0$346 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
	clrw	x
	decw	x
00115$:
	btjf	0x50c5, #3, 00117$
	tnzw	x
	jreq	00117$
	C$stm8s_clk.c$376$3_0$356 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 376: DownCounter--;
	decw	x
	jra	00115$
00117$:
	C$stm8s_clk.c$379$2_0$353 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 379: if(DownCounter != 0)
	tnzw	x
	jreq	00119$
	C$stm8s_clk.c$382$3_0$357 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
	bset	0x50c5, #1
	C$stm8s_clk.c$383$3_0$357 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 383: Swif = SUCCESS;
	ld	a, #0x01
	ld	xl, a
	C$stm8s_clk.c$387$3_0$358 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 387: Swif = ERROR;
	.byte 0x21
00119$:
	clrw	x
00123$:
	C$stm8s_clk.c$390$1_0$346 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 390: if(Swif != ERROR)
	ld	a, xl
	tnz	a
	jreq	00136$
	C$stm8s_clk.c$393$2_0$359 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
	tnz	(0x06, sp)
	jrne	00132$
	ld	a, yl
	cp	a, #0xe1
	jrne	00132$
	C$stm8s_clk.c$395$3_0$360 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
	bres	0x50c0, #0
	jra	00136$
00132$:
	C$stm8s_clk.c$397$2_0$359 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
	tnz	(0x06, sp)
	jrne	00128$
	ld	a, yl
	cp	a, #0xd2
	jrne	00128$
	C$stm8s_clk.c$399$3_0$361 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
	bres	0x50c0, #3
	jra	00136$
00128$:
	C$stm8s_clk.c$401$2_0$359 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
	tnz	(0x06, sp)
	jrne	00136$
	ld	a, yl
	cp	a, #0xb4
	jrne	00136$
	C$stm8s_clk.c$403$3_0$362 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
	bres	0x50c1, #0
00136$:
	C$stm8s_clk.c$406$1_0$346 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 406: return(Swif);
	ld	a, xl
	C$stm8s_clk.c$407$1_0$346 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 407: }
	ldw	x, (2, sp)
	addw	sp, #6
	jp	(x)
	G$CLK_HSIPrescalerConfig$0$0 ==.
	C$stm8s_clk.c$415$1_0$364 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
;	-----------------------------------------
;	 function CLK_HSIPrescalerConfig
;	-----------------------------------------
_CLK_HSIPrescalerConfig:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$421$1_0$364 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	and	a, #0xe7
	ld	0x50c6, a
	C$stm8s_clk.c$424$1_0$364 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
	ld	a, 0x50c6
	or	a, (0x01, sp)
	ld	0x50c6, a
	C$stm8s_clk.c$425$1_0$364 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 425: }
	pop	a
	C$stm8s_clk.c$425$1_0$364 ==.
	XG$CLK_HSIPrescalerConfig$0$0 ==.
	ret
	G$CLK_CCOConfig$0$0 ==.
	C$stm8s_clk.c$436$1_0$366 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
;	-----------------------------------------
;	 function CLK_CCOConfig
;	-----------------------------------------
_CLK_CCOConfig:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$442$1_0$366 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
	ld	a, 0x50c9
	and	a, #0xe1
	ld	0x50c9, a
	C$stm8s_clk.c$445$1_0$366 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
	ld	a, 0x50c9
	or	a, (0x01, sp)
	ld	0x50c9, a
	C$stm8s_clk.c$448$1_0$366 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
	bset	0x50c9, #0
	C$stm8s_clk.c$449$1_0$366 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 449: }
	pop	a
	C$stm8s_clk.c$449$1_0$366 ==.
	XG$CLK_CCOConfig$0$0 ==.
	ret
	G$CLK_ITConfig$0$0 ==.
	C$stm8s_clk.c$459$1_0$368 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
;	-----------------------------------------
;	 function CLK_ITConfig
;	-----------------------------------------
_CLK_ITConfig:
	C$stm8s_clk.c$467$1_0$368 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 467: switch (CLK_IT)
	ld	xl, a
	sub	a, #0x0c
	jrne	00150$
	inc	a
	.byte 0x21
00150$:
	clr	a
00151$:
	C$stm8s_clk.c$465$1_0$368 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 465: if (NewState != DISABLE)
	tnz	(0x03, sp)
	jreq	00110$
	C$stm8s_clk.c$467$2_0$369 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 467: switch (CLK_IT)
	tnz	a
	jrne	00102$
	ld	a, xl
	cp	a, #0x1c
	jrne	00112$
	C$stm8s_clk.c$470$3_0$370 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
	ld	a, 0x50c5
	or	a, #0x04
	ld	0x50c5, a
	C$stm8s_clk.c$471$3_0$370 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 471: break;
	jra	00112$
	C$stm8s_clk.c$472$3_0$370 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
00102$:
	C$stm8s_clk.c$473$3_0$370 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
	ld	a, 0x50c8
	or	a, #0x04
	ld	0x50c8, a
	C$stm8s_clk.c$474$3_0$370 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 474: break;
	jra	00112$
	C$stm8s_clk.c$477$1_0$368 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 477: }
00110$:
	C$stm8s_clk.c$481$2_0$371 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 481: switch (CLK_IT)
	tnz	a
	jrne	00106$
	ld	a, xl
	cp	a, #0x1c
	jrne	00112$
	C$stm8s_clk.c$484$3_0$372 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
	ld	a, 0x50c5
	and	a, #0xfb
	ld	0x50c5, a
	C$stm8s_clk.c$485$3_0$372 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 485: break;
	jra	00112$
	C$stm8s_clk.c$486$3_0$372 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
00106$:
	C$stm8s_clk.c$487$3_0$372 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
	ld	a, 0x50c8
	and	a, #0xfb
	ld	0x50c8, a
	C$stm8s_clk.c$491$1_0$368 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 491: }
00112$:
	C$stm8s_clk.c$493$1_0$368 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 493: }
	popw	x
	pop	a
	jp	(x)
	G$CLK_SYSCLKConfig$0$0 ==.
	C$stm8s_clk.c$500$1_0$374 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
;	-----------------------------------------
;	 function CLK_SYSCLKConfig
;	-----------------------------------------
_CLK_SYSCLKConfig:
	push	a
	ld	xh, a
	C$stm8s_clk.c$507$1_0$374 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	C$stm8s_clk.c$505$1_0$374 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
	tnzw	x
	jrmi	00102$
	C$stm8s_clk.c$507$2_0$375 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
	and	a, #0xe7
	ld	0x50c6, a
	C$stm8s_clk.c$508$2_0$375 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	ld	(0x01, sp), a
	ld	a, xh
	and	a, #0x18
	or	a, (0x01, sp)
	ld	0x50c6, a
	jra	00104$
00102$:
	C$stm8s_clk.c$512$2_0$376 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
	and	a, #0xf8
	ld	0x50c6, a
	C$stm8s_clk.c$513$2_0$376 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
	ld	a, 0x50c6
	ld	(0x01, sp), a
	ld	a, xh
	and	a, #0x07
	or	a, (0x01, sp)
	ld	0x50c6, a
00104$:
	C$stm8s_clk.c$515$1_0$374 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 515: }
	pop	a
	C$stm8s_clk.c$515$1_0$374 ==.
	XG$CLK_SYSCLKConfig$0$0 ==.
	ret
	G$CLK_SWIMConfig$0$0 ==.
	C$stm8s_clk.c$523$1_0$378 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
;	-----------------------------------------
;	 function CLK_SWIMConfig
;	-----------------------------------------
_CLK_SWIMConfig:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$531$1_0$378 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
	ld	a, 0x50cd
	C$stm8s_clk.c$528$1_0$378 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
	tnz	(0x01, sp)
	jreq	00102$
	C$stm8s_clk.c$531$2_0$379 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
	or	a, #0x01
	ld	0x50cd, a
	jra	00104$
00102$:
	C$stm8s_clk.c$536$2_0$380 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
	and	a, #0xfe
	ld	0x50cd, a
00104$:
	C$stm8s_clk.c$538$1_0$378 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 538: }
	pop	a
	C$stm8s_clk.c$538$1_0$378 ==.
	XG$CLK_SWIMConfig$0$0 ==.
	ret
	G$CLK_ClockSecuritySystemEnable$0$0 ==.
	C$stm8s_clk.c$547$1_0$382 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
;	-----------------------------------------
;	 function CLK_ClockSecuritySystemEnable
;	-----------------------------------------
_CLK_ClockSecuritySystemEnable:
	C$stm8s_clk.c$550$1_0$382 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
	bset	0x50c8, #0
	C$stm8s_clk.c$551$1_0$382 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 551: }
	C$stm8s_clk.c$551$1_0$382 ==.
	XG$CLK_ClockSecuritySystemEnable$0$0 ==.
	ret
	G$CLK_GetSYSCLKSource$0$0 ==.
	C$stm8s_clk.c$559$1_0$384 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
;	-----------------------------------------
;	 function CLK_GetSYSCLKSource
;	-----------------------------------------
_CLK_GetSYSCLKSource:
	C$stm8s_clk.c$561$1_0$384 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
	ld	a, 0x50c3
	C$stm8s_clk.c$562$1_0$384 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 562: }
	C$stm8s_clk.c$562$1_0$384 ==.
	XG$CLK_GetSYSCLKSource$0$0 ==.
	ret
	G$CLK_GetClockFreq$0$0 ==.
	C$stm8s_clk.c$569$1_0$386 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
;	-----------------------------------------
;	 function CLK_GetClockFreq
;	-----------------------------------------
_CLK_GetClockFreq:
	sub	sp, #4
	C$stm8s_clk.c$576$1_0$386 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
	ld	a, 0x50c3
	C$stm8s_clk.c$578$1_0$386 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
	ld	(0x04, sp), a
	cp	a, #0xe1
	jrne	00105$
	C$stm8s_clk.c$580$2_0$387 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
	ld	a, 0x50c6
	and	a, #0x18
	C$stm8s_clk.c$581$2_0$387 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
	srl	a
	srl	a
	srl	a
	C$stm8s_clk.c$582$2_0$387 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
	clrw	x
	ld	xl, a
	ld	a, (_HSIDivFactor+0, x)
	C$stm8s_clk.c$583$2_0$387 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
	clrw	x
	clr	(0x01, sp)
	push	a
	pushw	x
	clr	a
	push	a
	push	#0x00
	push	#0x24
	push	#0xf4
	push	#0x00
	call	__divulong
	addw	sp, #8
	jra	00106$
00105$:
	C$stm8s_clk.c$585$1_0$386 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
	ld	a, (0x04, sp)
	cp	a, #0xd2
	jrne	00102$
	C$stm8s_clk.c$587$2_0$388 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
	ldw	x, #0xf400
	ldw	y, #0x0001
	jra	00106$
00102$:
	C$stm8s_clk.c$591$2_0$389 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
	ldw	x, #0x2400
	ldw	y, #0x00f4
00106$:
	C$stm8s_clk.c$594$1_0$386 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 594: return((uint32_t)clockfrequency);
	C$stm8s_clk.c$595$1_0$386 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 595: }
	addw	sp, #4
	C$stm8s_clk.c$595$1_0$386 ==.
	XG$CLK_GetClockFreq$0$0 ==.
	ret
	G$CLK_AdjustHSICalibrationValue$0$0 ==.
	C$stm8s_clk.c$604$1_0$391 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
;	-----------------------------------------
;	 function CLK_AdjustHSICalibrationValue
;	-----------------------------------------
_CLK_AdjustHSICalibrationValue:
	push	a
	ld	(0x01, sp), a
	C$stm8s_clk.c$610$1_0$391 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
	ld	a, 0x50cc
	and	a, #0xf8
	or	a, (0x01, sp)
	ld	0x50cc, a
	C$stm8s_clk.c$611$1_0$391 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 611: }
	pop	a
	C$stm8s_clk.c$611$1_0$391 ==.
	XG$CLK_AdjustHSICalibrationValue$0$0 ==.
	ret
	G$CLK_SYSCLKEmergencyClear$0$0 ==.
	C$stm8s_clk.c$622$1_0$393 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
;	-----------------------------------------
;	 function CLK_SYSCLKEmergencyClear
;	-----------------------------------------
_CLK_SYSCLKEmergencyClear:
	C$stm8s_clk.c$624$1_0$393 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
	bres	0x50c5, #0
	C$stm8s_clk.c$625$1_0$393 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 625: }
	C$stm8s_clk.c$625$1_0$393 ==.
	XG$CLK_SYSCLKEmergencyClear$0$0 ==.
	ret
	G$CLK_GetFlagStatus$0$0 ==.
	C$stm8s_clk.c$634$1_0$395 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
;	-----------------------------------------
;	 function CLK_GetFlagStatus
;	-----------------------------------------
_CLK_GetFlagStatus:
	sub	sp, #4
	C$stm8s_clk.c$644$1_0$395 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
	ldw	(0x03, sp), x
	clr	a
	ld	xl, a
	C$stm8s_clk.c$647$1_0$395 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
	ldw	(0x01, sp), x
	cpw	x, #0x0100
	jrne	00111$
	C$stm8s_clk.c$649$2_0$396 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 649: tmpreg = CLK->ICKR;
	ld	a, 0x50c0
	jra	00112$
00111$:
	C$stm8s_clk.c$651$1_0$395 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
	ldw	x, (0x01, sp)
	cpw	x, #0x0200
	jrne	00108$
	C$stm8s_clk.c$653$2_0$397 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 653: tmpreg = CLK->ECKR;
	ld	a, 0x50c1
	jra	00112$
00108$:
	C$stm8s_clk.c$655$1_0$395 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
	ldw	x, (0x01, sp)
	cpw	x, #0x0300
	jrne	00105$
	C$stm8s_clk.c$657$2_0$398 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 657: tmpreg = CLK->SWCR;
	ld	a, 0x50c5
	jra	00112$
00105$:
	C$stm8s_clk.c$659$1_0$395 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
	ldw	x, (0x01, sp)
	cpw	x, #0x0400
	jrne	00102$
	C$stm8s_clk.c$661$2_0$399 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 661: tmpreg = CLK->CSSR;
	ld	a, 0x50c8
	jra	00112$
00102$:
	C$stm8s_clk.c$665$2_0$400 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 665: tmpreg = CLK->CCOR;
	ld	a, 0x50c9
00112$:
	C$stm8s_clk.c$668$1_0$395 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
	push	a
	ld	a, (0x05, sp)
	ld	(0x03, sp), a
	pop	a
	and	a, (0x02, sp)
	jreq	00114$
	C$stm8s_clk.c$670$2_0$401 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 670: bitstatus = SET;
	ld	a, #0x01
	C$stm8s_clk.c$674$2_0$402 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 674: bitstatus = RESET;
	.byte 0x21
00114$:
	clr	a
00115$:
	C$stm8s_clk.c$678$1_0$395 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 678: return((FlagStatus)bitstatus);
	C$stm8s_clk.c$679$1_0$395 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 679: }
	addw	sp, #4
	C$stm8s_clk.c$679$1_0$395 ==.
	XG$CLK_GetFlagStatus$0$0 ==.
	ret
	G$CLK_GetITStatus$0$0 ==.
	C$stm8s_clk.c$687$1_0$404 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_GetITStatus
;	-----------------------------------------
_CLK_GetITStatus:
	push	a
	C$stm8s_clk.c$694$1_0$404 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
	ld	(0x01, sp), a
	cp	a, #0x1c
	jrne	00108$
	C$stm8s_clk.c$697$2_0$405 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ld	a, 0x50c5
	and	a, (0x01, sp)
	C$stm8s_clk.c$699$3_0$406 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 699: bitstatus = SET;
	sub	a, #0x0c
	jrne	00102$
	inc	a
	jra	00109$
00102$:
	C$stm8s_clk.c$703$3_0$407 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 703: bitstatus = RESET;
	clr	a
	jra	00109$
00108$:
	C$stm8s_clk.c$709$2_0$408 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
	ld	a, 0x50c8
	and	a, (0x01, sp)
	C$stm8s_clk.c$711$3_0$409 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 711: bitstatus = SET;
	sub	a, #0x0c
	jrne	00105$
	inc	a
	C$stm8s_clk.c$715$3_0$410 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 715: bitstatus = RESET;
	.byte 0x21
00105$:
	clr	a
00109$:
	C$stm8s_clk.c$720$1_0$404 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 720: return bitstatus;
	C$stm8s_clk.c$721$1_0$404 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 721: }
	addw	sp, #1
	C$stm8s_clk.c$721$1_0$404 ==.
	XG$CLK_GetITStatus$0$0 ==.
	ret
	G$CLK_ClearITPendingBit$0$0 ==.
	C$stm8s_clk.c$729$1_0$412 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
;	-----------------------------------------
;	 function CLK_ClearITPendingBit
;	-----------------------------------------
_CLK_ClearITPendingBit:
	C$stm8s_clk.c$734$1_0$412 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
	cp	a, #0x0c
	jrne	00102$
	C$stm8s_clk.c$737$2_0$413 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
	bres	0x50c8, #3
	ret
00102$:
	C$stm8s_clk.c$742$2_0$414 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
	bres	0x50c5, #3
	C$stm8s_clk.c$745$1_0$412 ==.
;	d:\sdcc\lib\src\stm8s_clk.c: 745: }
	C$stm8s_clk.c$745$1_0$412 ==.
	XG$CLK_ClearITPendingBit$0$0 ==.
	ret
	.area CODE
	.area CONST
	.area CONST
G$HSIDivFactor$0_0$0 == .
_HSIDivFactor:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.area CODE
	.area CONST
G$CLKPrescTable$0_0$0 == .
_CLKPrescTable:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x10	; 16
	.db #0x14	; 20
	.db #0x28	; 40
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
