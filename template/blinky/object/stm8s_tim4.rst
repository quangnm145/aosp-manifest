                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_tim4
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _TIM4_DeInit
                                     11 	.globl _TIM4_TimeBaseInit
                                     12 	.globl _TIM4_Cmd
                                     13 	.globl _TIM4_ITConfig
                                     14 	.globl _TIM4_UpdateDisableConfig
                                     15 	.globl _TIM4_UpdateRequestConfig
                                     16 	.globl _TIM4_SelectOnePulseMode
                                     17 	.globl _TIM4_PrescalerConfig
                                     18 	.globl _TIM4_ARRPreloadConfig
                                     19 	.globl _TIM4_GenerateEvent
                                     20 	.globl _TIM4_SetCounter
                                     21 	.globl _TIM4_SetAutoreload
                                     22 	.globl _TIM4_GetCounter
                                     23 	.globl _TIM4_GetPrescaler
                                     24 	.globl _TIM4_GetFlagStatus
                                     25 	.globl _TIM4_ClearFlag
                                     26 	.globl _TIM4_GetITStatus
                                     27 	.globl _TIM4_ClearITPendingBit
                                     28 ;--------------------------------------------------------
                                     29 ; ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DATA
                                     32 ;--------------------------------------------------------
                                     33 ; ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area INITIALIZED
                                     36 ;--------------------------------------------------------
                                     37 ; absolute external ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DABS (ABS)
                                     40 
                                     41 ; default segment ordering for linker
                                     42 	.area HOME
                                     43 	.area GSINIT
                                     44 	.area GSFINAL
                                     45 	.area CONST
                                     46 	.area INITIALIZER
                                     47 	.area CODE
                                     48 
                                     49 ;--------------------------------------------------------
                                     50 ; global & static initialisations
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
                                     53 	.area GSINIT
                                     54 	.area GSFINAL
                                     55 	.area GSINIT
                                     56 ;--------------------------------------------------------
                                     57 ; Home
                                     58 ;--------------------------------------------------------
                                     59 	.area HOME
                                     60 	.area HOME
                                     61 ;--------------------------------------------------------
                                     62 ; code
                                     63 ;--------------------------------------------------------
                                     64 	.area CODE
                           000000    65 	G$TIM4_DeInit$0$0 ==.
                           000000    66 	C$stm8s_tim4.c$49$0_0$307 ==.
                                     67 ;	d:\sdcc\lib\src\stm8s_tim4.c: 49: void TIM4_DeInit(void)
                                     68 ;	-----------------------------------------
                                     69 ;	 function TIM4_DeInit
                                     70 ;	-----------------------------------------
      0084CF                         71 _TIM4_DeInit:
                           000000    72 	C$stm8s_tim4.c$51$1_0$307 ==.
                                     73 ;	d:\sdcc\lib\src\stm8s_tim4.c: 51: TIM4->CR1 = TIM4_CR1_RESET_VALUE;
      0084CF 35 00 53 40      [ 1]   74 	mov	0x5340+0, #0x00
                           000004    75 	C$stm8s_tim4.c$52$1_0$307 ==.
                                     76 ;	d:\sdcc\lib\src\stm8s_tim4.c: 52: TIM4->IER = TIM4_IER_RESET_VALUE;
      0084D3 35 00 53 43      [ 1]   77 	mov	0x5343+0, #0x00
                           000008    78 	C$stm8s_tim4.c$53$1_0$307 ==.
                                     79 ;	d:\sdcc\lib\src\stm8s_tim4.c: 53: TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
      0084D7 35 00 53 46      [ 1]   80 	mov	0x5346+0, #0x00
                           00000C    81 	C$stm8s_tim4.c$54$1_0$307 ==.
                                     82 ;	d:\sdcc\lib\src\stm8s_tim4.c: 54: TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
      0084DB 35 00 53 47      [ 1]   83 	mov	0x5347+0, #0x00
                           000010    84 	C$stm8s_tim4.c$55$1_0$307 ==.
                                     85 ;	d:\sdcc\lib\src\stm8s_tim4.c: 55: TIM4->ARR = TIM4_ARR_RESET_VALUE;
      0084DF 35 FF 53 48      [ 1]   86 	mov	0x5348+0, #0xff
                           000014    87 	C$stm8s_tim4.c$56$1_0$307 ==.
                                     88 ;	d:\sdcc\lib\src\stm8s_tim4.c: 56: TIM4->SR1 = TIM4_SR1_RESET_VALUE;
      0084E3 35 00 53 44      [ 1]   89 	mov	0x5344+0, #0x00
                           000018    90 	C$stm8s_tim4.c$57$1_0$307 ==.
                                     91 ;	d:\sdcc\lib\src\stm8s_tim4.c: 57: }
                           000018    92 	C$stm8s_tim4.c$57$1_0$307 ==.
                           000018    93 	XG$TIM4_DeInit$0$0 ==.
      0084E7 81               [ 4]   94 	ret
                           000019    95 	G$TIM4_TimeBaseInit$0$0 ==.
                           000019    96 	C$stm8s_tim4.c$65$1_0$309 ==.
                                     97 ;	d:\sdcc\lib\src\stm8s_tim4.c: 65: void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
                                     98 ;	-----------------------------------------
                                     99 ;	 function TIM4_TimeBaseInit
                                    100 ;	-----------------------------------------
      0084E8                        101 _TIM4_TimeBaseInit:
                           000019   102 	C$stm8s_tim4.c$70$1_0$309 ==.
                                    103 ;	d:\sdcc\lib\src\stm8s_tim4.c: 70: TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
      0084E8 C7 53 47         [ 1]  104 	ld	0x5347, a
                           00001C   105 	C$stm8s_tim4.c$72$1_0$309 ==.
                                    106 ;	d:\sdcc\lib\src\stm8s_tim4.c: 72: TIM4->ARR = (uint8_t)(TIM4_Period);
      0084EB AE 53 48         [ 2]  107 	ldw	x, #0x5348
      0084EE 7B 03            [ 1]  108 	ld	a, (0x03, sp)
      0084F0 F7               [ 1]  109 	ld	(x), a
                           000022   110 	C$stm8s_tim4.c$73$1_0$309 ==.
                                    111 ;	d:\sdcc\lib\src\stm8s_tim4.c: 73: }
      0084F1 85               [ 2]  112 	popw	x
      0084F2 84               [ 1]  113 	pop	a
      0084F3 FC               [ 2]  114 	jp	(x)
                           000025   115 	G$TIM4_Cmd$0$0 ==.
                           000025   116 	C$stm8s_tim4.c$81$1_0$311 ==.
                                    117 ;	d:\sdcc\lib\src\stm8s_tim4.c: 81: void TIM4_Cmd(FunctionalState NewState)
                                    118 ;	-----------------------------------------
                                    119 ;	 function TIM4_Cmd
                                    120 ;	-----------------------------------------
      0084F4                        121 _TIM4_Cmd:
      0084F4 88               [ 1]  122 	push	a
      0084F5 6B 01            [ 1]  123 	ld	(0x01, sp), a
                           000028   124 	C$stm8s_tim4.c$89$1_0$311 ==.
                                    125 ;	d:\sdcc\lib\src\stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
      0084F7 C6 53 40         [ 1]  126 	ld	a, 0x5340
                           00002B   127 	C$stm8s_tim4.c$87$1_0$311 ==.
                                    128 ;	d:\sdcc\lib\src\stm8s_tim4.c: 87: if (NewState != DISABLE)
      0084FA 0D 01            [ 1]  129 	tnz	(0x01, sp)
      0084FC 27 07            [ 1]  130 	jreq	00102$
                           00002F   131 	C$stm8s_tim4.c$89$2_0$312 ==.
                                    132 ;	d:\sdcc\lib\src\stm8s_tim4.c: 89: TIM4->CR1 |= TIM4_CR1_CEN;
      0084FE AA 01            [ 1]  133 	or	a, #0x01
      008500 C7 53 40         [ 1]  134 	ld	0x5340, a
      008503 20 05            [ 2]  135 	jra	00104$
      008505                        136 00102$:
                           000036   137 	C$stm8s_tim4.c$93$2_0$313 ==.
                                    138 ;	d:\sdcc\lib\src\stm8s_tim4.c: 93: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
      008505 A4 FE            [ 1]  139 	and	a, #0xfe
      008507 C7 53 40         [ 1]  140 	ld	0x5340, a
      00850A                        141 00104$:
                           00003B   142 	C$stm8s_tim4.c$95$1_0$311 ==.
                                    143 ;	d:\sdcc\lib\src\stm8s_tim4.c: 95: }
      00850A 84               [ 1]  144 	pop	a
                           00003C   145 	C$stm8s_tim4.c$95$1_0$311 ==.
                           00003C   146 	XG$TIM4_Cmd$0$0 ==.
      00850B 81               [ 4]  147 	ret
                           00003D   148 	G$TIM4_ITConfig$0$0 ==.
                           00003D   149 	C$stm8s_tim4.c$107$1_0$315 ==.
                                    150 ;	d:\sdcc\lib\src\stm8s_tim4.c: 107: void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
                                    151 ;	-----------------------------------------
                                    152 ;	 function TIM4_ITConfig
                                    153 ;	-----------------------------------------
      00850C                        154 _TIM4_ITConfig:
      00850C 88               [ 1]  155 	push	a
      00850D 97               [ 1]  156 	ld	xl, a
                           00003F   157 	C$stm8s_tim4.c$116$1_0$315 ==.
                                    158 ;	d:\sdcc\lib\src\stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
      00850E C6 53 43         [ 1]  159 	ld	a, 0x5343
      008511 6B 01            [ 1]  160 	ld	(0x01, sp), a
                           000044   161 	C$stm8s_tim4.c$113$1_0$315 ==.
                                    162 ;	d:\sdcc\lib\src\stm8s_tim4.c: 113: if (NewState != DISABLE)
      008513 0D 04            [ 1]  163 	tnz	(0x04, sp)
      008515 27 08            [ 1]  164 	jreq	00102$
                           000048   165 	C$stm8s_tim4.c$116$2_0$316 ==.
                                    166 ;	d:\sdcc\lib\src\stm8s_tim4.c: 116: TIM4->IER |= (uint8_t)TIM4_IT;
      008517 9F               [ 1]  167 	ld	a, xl
      008518 1A 01            [ 1]  168 	or	a, (0x01, sp)
      00851A C7 53 43         [ 1]  169 	ld	0x5343, a
      00851D 20 07            [ 2]  170 	jra	00104$
      00851F                        171 00102$:
                           000050   172 	C$stm8s_tim4.c$121$2_0$317 ==.
                                    173 ;	d:\sdcc\lib\src\stm8s_tim4.c: 121: TIM4->IER &= (uint8_t)(~TIM4_IT);
      00851F 9F               [ 1]  174 	ld	a, xl
      008520 43               [ 1]  175 	cpl	a
      008521 14 01            [ 1]  176 	and	a, (0x01, sp)
      008523 C7 53 43         [ 1]  177 	ld	0x5343, a
      008526                        178 00104$:
                           000057   179 	C$stm8s_tim4.c$123$1_0$315 ==.
                                    180 ;	d:\sdcc\lib\src\stm8s_tim4.c: 123: }
      008526 84               [ 1]  181 	pop	a
      008527 85               [ 2]  182 	popw	x
      008528 84               [ 1]  183 	pop	a
      008529 FC               [ 2]  184 	jp	(x)
                           00005B   185 	G$TIM4_UpdateDisableConfig$0$0 ==.
                           00005B   186 	C$stm8s_tim4.c$131$1_0$319 ==.
                                    187 ;	d:\sdcc\lib\src\stm8s_tim4.c: 131: void TIM4_UpdateDisableConfig(FunctionalState NewState)
                                    188 ;	-----------------------------------------
                                    189 ;	 function TIM4_UpdateDisableConfig
                                    190 ;	-----------------------------------------
      00852A                        191 _TIM4_UpdateDisableConfig:
      00852A 88               [ 1]  192 	push	a
      00852B 6B 01            [ 1]  193 	ld	(0x01, sp), a
                           00005E   194 	C$stm8s_tim4.c$139$1_0$319 ==.
                                    195 ;	d:\sdcc\lib\src\stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
      00852D C6 53 40         [ 1]  196 	ld	a, 0x5340
                           000061   197 	C$stm8s_tim4.c$137$1_0$319 ==.
                                    198 ;	d:\sdcc\lib\src\stm8s_tim4.c: 137: if (NewState != DISABLE)
      008530 0D 01            [ 1]  199 	tnz	(0x01, sp)
      008532 27 07            [ 1]  200 	jreq	00102$
                           000065   201 	C$stm8s_tim4.c$139$2_0$320 ==.
                                    202 ;	d:\sdcc\lib\src\stm8s_tim4.c: 139: TIM4->CR1 |= TIM4_CR1_UDIS;
      008534 AA 02            [ 1]  203 	or	a, #0x02
      008536 C7 53 40         [ 1]  204 	ld	0x5340, a
      008539 20 05            [ 2]  205 	jra	00104$
      00853B                        206 00102$:
                           00006C   207 	C$stm8s_tim4.c$143$2_0$321 ==.
                                    208 ;	d:\sdcc\lib\src\stm8s_tim4.c: 143: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
      00853B A4 FD            [ 1]  209 	and	a, #0xfd
      00853D C7 53 40         [ 1]  210 	ld	0x5340, a
      008540                        211 00104$:
                           000071   212 	C$stm8s_tim4.c$145$1_0$319 ==.
                                    213 ;	d:\sdcc\lib\src\stm8s_tim4.c: 145: }
      008540 84               [ 1]  214 	pop	a
                           000072   215 	C$stm8s_tim4.c$145$1_0$319 ==.
                           000072   216 	XG$TIM4_UpdateDisableConfig$0$0 ==.
      008541 81               [ 4]  217 	ret
                           000073   218 	G$TIM4_UpdateRequestConfig$0$0 ==.
                           000073   219 	C$stm8s_tim4.c$155$1_0$323 ==.
                                    220 ;	d:\sdcc\lib\src\stm8s_tim4.c: 155: void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
                                    221 ;	-----------------------------------------
                                    222 ;	 function TIM4_UpdateRequestConfig
                                    223 ;	-----------------------------------------
      008542                        224 _TIM4_UpdateRequestConfig:
      008542 88               [ 1]  225 	push	a
      008543 6B 01            [ 1]  226 	ld	(0x01, sp), a
                           000076   227 	C$stm8s_tim4.c$163$1_0$323 ==.
                                    228 ;	d:\sdcc\lib\src\stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
      008545 C6 53 40         [ 1]  229 	ld	a, 0x5340
                           000079   230 	C$stm8s_tim4.c$161$1_0$323 ==.
                                    231 ;	d:\sdcc\lib\src\stm8s_tim4.c: 161: if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
      008548 0D 01            [ 1]  232 	tnz	(0x01, sp)
      00854A 27 07            [ 1]  233 	jreq	00102$
                           00007D   234 	C$stm8s_tim4.c$163$2_0$324 ==.
                                    235 ;	d:\sdcc\lib\src\stm8s_tim4.c: 163: TIM4->CR1 |= TIM4_CR1_URS;
      00854C AA 04            [ 1]  236 	or	a, #0x04
      00854E C7 53 40         [ 1]  237 	ld	0x5340, a
      008551 20 05            [ 2]  238 	jra	00104$
      008553                        239 00102$:
                           000084   240 	C$stm8s_tim4.c$167$2_0$325 ==.
                                    241 ;	d:\sdcc\lib\src\stm8s_tim4.c: 167: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
      008553 A4 FB            [ 1]  242 	and	a, #0xfb
      008555 C7 53 40         [ 1]  243 	ld	0x5340, a
      008558                        244 00104$:
                           000089   245 	C$stm8s_tim4.c$169$1_0$323 ==.
                                    246 ;	d:\sdcc\lib\src\stm8s_tim4.c: 169: }
      008558 84               [ 1]  247 	pop	a
                           00008A   248 	C$stm8s_tim4.c$169$1_0$323 ==.
                           00008A   249 	XG$TIM4_UpdateRequestConfig$0$0 ==.
      008559 81               [ 4]  250 	ret
                           00008B   251 	G$TIM4_SelectOnePulseMode$0$0 ==.
                           00008B   252 	C$stm8s_tim4.c$179$1_0$327 ==.
                                    253 ;	d:\sdcc\lib\src\stm8s_tim4.c: 179: void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
                                    254 ;	-----------------------------------------
                                    255 ;	 function TIM4_SelectOnePulseMode
                                    256 ;	-----------------------------------------
      00855A                        257 _TIM4_SelectOnePulseMode:
      00855A 88               [ 1]  258 	push	a
      00855B 6B 01            [ 1]  259 	ld	(0x01, sp), a
                           00008E   260 	C$stm8s_tim4.c$187$1_0$327 ==.
                                    261 ;	d:\sdcc\lib\src\stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
      00855D C6 53 40         [ 1]  262 	ld	a, 0x5340
                           000091   263 	C$stm8s_tim4.c$185$1_0$327 ==.
                                    264 ;	d:\sdcc\lib\src\stm8s_tim4.c: 185: if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
      008560 0D 01            [ 1]  265 	tnz	(0x01, sp)
      008562 27 07            [ 1]  266 	jreq	00102$
                           000095   267 	C$stm8s_tim4.c$187$2_0$328 ==.
                                    268 ;	d:\sdcc\lib\src\stm8s_tim4.c: 187: TIM4->CR1 |= TIM4_CR1_OPM;
      008564 AA 08            [ 1]  269 	or	a, #0x08
      008566 C7 53 40         [ 1]  270 	ld	0x5340, a
      008569 20 05            [ 2]  271 	jra	00104$
      00856B                        272 00102$:
                           00009C   273 	C$stm8s_tim4.c$191$2_0$329 ==.
                                    274 ;	d:\sdcc\lib\src\stm8s_tim4.c: 191: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
      00856B A4 F7            [ 1]  275 	and	a, #0xf7
      00856D C7 53 40         [ 1]  276 	ld	0x5340, a
      008570                        277 00104$:
                           0000A1   278 	C$stm8s_tim4.c$193$1_0$327 ==.
                                    279 ;	d:\sdcc\lib\src\stm8s_tim4.c: 193: }
      008570 84               [ 1]  280 	pop	a
                           0000A2   281 	C$stm8s_tim4.c$193$1_0$327 ==.
                           0000A2   282 	XG$TIM4_SelectOnePulseMode$0$0 ==.
      008571 81               [ 4]  283 	ret
                           0000A3   284 	G$TIM4_PrescalerConfig$0$0 ==.
                           0000A3   285 	C$stm8s_tim4.c$215$1_0$331 ==.
                                    286 ;	d:\sdcc\lib\src\stm8s_tim4.c: 215: void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
                                    287 ;	-----------------------------------------
                                    288 ;	 function TIM4_PrescalerConfig
                                    289 ;	-----------------------------------------
      008572                        290 _TIM4_PrescalerConfig:
                           0000A3   291 	C$stm8s_tim4.c$222$1_0$331 ==.
                                    292 ;	d:\sdcc\lib\src\stm8s_tim4.c: 222: TIM4->PSCR = (uint8_t)Prescaler;
      008572 C7 53 47         [ 1]  293 	ld	0x5347, a
                           0000A6   294 	C$stm8s_tim4.c$225$1_0$331 ==.
                                    295 ;	d:\sdcc\lib\src\stm8s_tim4.c: 225: TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
      008575 7B 03            [ 1]  296 	ld	a, (0x03, sp)
      008577 C7 53 45         [ 1]  297 	ld	0x5345, a
                           0000AB   298 	C$stm8s_tim4.c$226$1_0$331 ==.
                                    299 ;	d:\sdcc\lib\src\stm8s_tim4.c: 226: }
      00857A 85               [ 2]  300 	popw	x
      00857B 84               [ 1]  301 	pop	a
      00857C FC               [ 2]  302 	jp	(x)
                           0000AE   303 	G$TIM4_ARRPreloadConfig$0$0 ==.
                           0000AE   304 	C$stm8s_tim4.c$234$1_0$333 ==.
                                    305 ;	d:\sdcc\lib\src\stm8s_tim4.c: 234: void TIM4_ARRPreloadConfig(FunctionalState NewState)
                                    306 ;	-----------------------------------------
                                    307 ;	 function TIM4_ARRPreloadConfig
                                    308 ;	-----------------------------------------
      00857D                        309 _TIM4_ARRPreloadConfig:
      00857D 88               [ 1]  310 	push	a
      00857E 6B 01            [ 1]  311 	ld	(0x01, sp), a
                           0000B1   312 	C$stm8s_tim4.c$242$1_0$333 ==.
                                    313 ;	d:\sdcc\lib\src\stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
      008580 C6 53 40         [ 1]  314 	ld	a, 0x5340
                           0000B4   315 	C$stm8s_tim4.c$240$1_0$333 ==.
                                    316 ;	d:\sdcc\lib\src\stm8s_tim4.c: 240: if (NewState != DISABLE)
      008583 0D 01            [ 1]  317 	tnz	(0x01, sp)
      008585 27 07            [ 1]  318 	jreq	00102$
                           0000B8   319 	C$stm8s_tim4.c$242$2_0$334 ==.
                                    320 ;	d:\sdcc\lib\src\stm8s_tim4.c: 242: TIM4->CR1 |= TIM4_CR1_ARPE;
      008587 AA 80            [ 1]  321 	or	a, #0x80
      008589 C7 53 40         [ 1]  322 	ld	0x5340, a
      00858C 20 05            [ 2]  323 	jra	00104$
      00858E                        324 00102$:
                           0000BF   325 	C$stm8s_tim4.c$246$2_0$335 ==.
                                    326 ;	d:\sdcc\lib\src\stm8s_tim4.c: 246: TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
      00858E A4 7F            [ 1]  327 	and	a, #0x7f
      008590 C7 53 40         [ 1]  328 	ld	0x5340, a
      008593                        329 00104$:
                           0000C4   330 	C$stm8s_tim4.c$248$1_0$333 ==.
                                    331 ;	d:\sdcc\lib\src\stm8s_tim4.c: 248: }
      008593 84               [ 1]  332 	pop	a
                           0000C5   333 	C$stm8s_tim4.c$248$1_0$333 ==.
                           0000C5   334 	XG$TIM4_ARRPreloadConfig$0$0 ==.
      008594 81               [ 4]  335 	ret
                           0000C6   336 	G$TIM4_GenerateEvent$0$0 ==.
                           0000C6   337 	C$stm8s_tim4.c$257$1_0$337 ==.
                                    338 ;	d:\sdcc\lib\src\stm8s_tim4.c: 257: void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
                                    339 ;	-----------------------------------------
                                    340 ;	 function TIM4_GenerateEvent
                                    341 ;	-----------------------------------------
      008595                        342 _TIM4_GenerateEvent:
                           0000C6   343 	C$stm8s_tim4.c$263$1_0$337 ==.
                                    344 ;	d:\sdcc\lib\src\stm8s_tim4.c: 263: TIM4->EGR = (uint8_t)(TIM4_EventSource);
      008595 C7 53 45         [ 1]  345 	ld	0x5345, a
                           0000C9   346 	C$stm8s_tim4.c$264$1_0$337 ==.
                                    347 ;	d:\sdcc\lib\src\stm8s_tim4.c: 264: }
                           0000C9   348 	C$stm8s_tim4.c$264$1_0$337 ==.
                           0000C9   349 	XG$TIM4_GenerateEvent$0$0 ==.
      008598 81               [ 4]  350 	ret
                           0000CA   351 	G$TIM4_SetCounter$0$0 ==.
                           0000CA   352 	C$stm8s_tim4.c$272$1_0$339 ==.
                                    353 ;	d:\sdcc\lib\src\stm8s_tim4.c: 272: void TIM4_SetCounter(uint8_t Counter)
                                    354 ;	-----------------------------------------
                                    355 ;	 function TIM4_SetCounter
                                    356 ;	-----------------------------------------
      008599                        357 _TIM4_SetCounter:
                           0000CA   358 	C$stm8s_tim4.c$275$1_0$339 ==.
                                    359 ;	d:\sdcc\lib\src\stm8s_tim4.c: 275: TIM4->CNTR = (uint8_t)(Counter);
      008599 C7 53 46         [ 1]  360 	ld	0x5346, a
                           0000CD   361 	C$stm8s_tim4.c$276$1_0$339 ==.
                                    362 ;	d:\sdcc\lib\src\stm8s_tim4.c: 276: }
                           0000CD   363 	C$stm8s_tim4.c$276$1_0$339 ==.
                           0000CD   364 	XG$TIM4_SetCounter$0$0 ==.
      00859C 81               [ 4]  365 	ret
                           0000CE   366 	G$TIM4_SetAutoreload$0$0 ==.
                           0000CE   367 	C$stm8s_tim4.c$284$1_0$341 ==.
                                    368 ;	d:\sdcc\lib\src\stm8s_tim4.c: 284: void TIM4_SetAutoreload(uint8_t Autoreload)
                                    369 ;	-----------------------------------------
                                    370 ;	 function TIM4_SetAutoreload
                                    371 ;	-----------------------------------------
      00859D                        372 _TIM4_SetAutoreload:
                           0000CE   373 	C$stm8s_tim4.c$287$1_0$341 ==.
                                    374 ;	d:\sdcc\lib\src\stm8s_tim4.c: 287: TIM4->ARR = (uint8_t)(Autoreload);
      00859D C7 53 48         [ 1]  375 	ld	0x5348, a
                           0000D1   376 	C$stm8s_tim4.c$288$1_0$341 ==.
                                    377 ;	d:\sdcc\lib\src\stm8s_tim4.c: 288: }
                           0000D1   378 	C$stm8s_tim4.c$288$1_0$341 ==.
                           0000D1   379 	XG$TIM4_SetAutoreload$0$0 ==.
      0085A0 81               [ 4]  380 	ret
                           0000D2   381 	G$TIM4_GetCounter$0$0 ==.
                           0000D2   382 	C$stm8s_tim4.c$295$1_0$343 ==.
                                    383 ;	d:\sdcc\lib\src\stm8s_tim4.c: 295: uint8_t TIM4_GetCounter(void)
                                    384 ;	-----------------------------------------
                                    385 ;	 function TIM4_GetCounter
                                    386 ;	-----------------------------------------
      0085A1                        387 _TIM4_GetCounter:
                           0000D2   388 	C$stm8s_tim4.c$298$1_0$343 ==.
                                    389 ;	d:\sdcc\lib\src\stm8s_tim4.c: 298: return (uint8_t)(TIM4->CNTR);
      0085A1 C6 53 46         [ 1]  390 	ld	a, 0x5346
                           0000D5   391 	C$stm8s_tim4.c$299$1_0$343 ==.
                                    392 ;	d:\sdcc\lib\src\stm8s_tim4.c: 299: }
                           0000D5   393 	C$stm8s_tim4.c$299$1_0$343 ==.
                           0000D5   394 	XG$TIM4_GetCounter$0$0 ==.
      0085A4 81               [ 4]  395 	ret
                           0000D6   396 	G$TIM4_GetPrescaler$0$0 ==.
                           0000D6   397 	C$stm8s_tim4.c$306$1_0$345 ==.
                                    398 ;	d:\sdcc\lib\src\stm8s_tim4.c: 306: TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
                                    399 ;	-----------------------------------------
                                    400 ;	 function TIM4_GetPrescaler
                                    401 ;	-----------------------------------------
      0085A5                        402 _TIM4_GetPrescaler:
                           0000D6   403 	C$stm8s_tim4.c$309$1_0$345 ==.
                                    404 ;	d:\sdcc\lib\src\stm8s_tim4.c: 309: return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
      0085A5 C6 53 47         [ 1]  405 	ld	a, 0x5347
                           0000D9   406 	C$stm8s_tim4.c$310$1_0$345 ==.
                                    407 ;	d:\sdcc\lib\src\stm8s_tim4.c: 310: }
                           0000D9   408 	C$stm8s_tim4.c$310$1_0$345 ==.
                           0000D9   409 	XG$TIM4_GetPrescaler$0$0 ==.
      0085A8 81               [ 4]  410 	ret
                           0000DA   411 	G$TIM4_GetFlagStatus$0$0 ==.
                           0000DA   412 	C$stm8s_tim4.c$319$1_0$347 ==.
                                    413 ;	d:\sdcc\lib\src\stm8s_tim4.c: 319: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    414 ;	-----------------------------------------
                                    415 ;	 function TIM4_GetFlagStatus
                                    416 ;	-----------------------------------------
      0085A9                        417 _TIM4_GetFlagStatus:
      0085A9 97               [ 1]  418 	ld	xl, a
                           0000DB   419 	C$stm8s_tim4.c$326$1_0$347 ==.
                                    420 ;	d:\sdcc\lib\src\stm8s_tim4.c: 326: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
      0085AA C6 53 44         [ 1]  421 	ld	a, 0x5344
      0085AD 89               [ 2]  422 	pushw	x
      0085AE 14 02            [ 1]  423 	and	a, (2, sp)
      0085B0 85               [ 2]  424 	popw	x
      0085B1 4D               [ 1]  425 	tnz	a
      0085B2 27 03            [ 1]  426 	jreq	00102$
                           0000E5   427 	C$stm8s_tim4.c$328$2_0$348 ==.
                                    428 ;	d:\sdcc\lib\src\stm8s_tim4.c: 328: bitstatus = SET;
      0085B4 A6 01            [ 1]  429 	ld	a, #0x01
      0085B6 81               [ 4]  430 	ret
      0085B7                        431 00102$:
                           0000E8   432 	C$stm8s_tim4.c$332$2_0$349 ==.
                                    433 ;	d:\sdcc\lib\src\stm8s_tim4.c: 332: bitstatus = RESET;
      0085B7 4F               [ 1]  434 	clr	a
                           0000E9   435 	C$stm8s_tim4.c$334$1_0$347 ==.
                                    436 ;	d:\sdcc\lib\src\stm8s_tim4.c: 334: return ((FlagStatus)bitstatus);
                           0000E9   437 	C$stm8s_tim4.c$335$1_0$347 ==.
                                    438 ;	d:\sdcc\lib\src\stm8s_tim4.c: 335: }
                           0000E9   439 	C$stm8s_tim4.c$335$1_0$347 ==.
                           0000E9   440 	XG$TIM4_GetFlagStatus$0$0 ==.
      0085B8 81               [ 4]  441 	ret
                           0000EA   442 	G$TIM4_ClearFlag$0$0 ==.
                           0000EA   443 	C$stm8s_tim4.c$344$1_0$351 ==.
                                    444 ;	d:\sdcc\lib\src\stm8s_tim4.c: 344: void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
                                    445 ;	-----------------------------------------
                                    446 ;	 function TIM4_ClearFlag
                                    447 ;	-----------------------------------------
      0085B9                        448 _TIM4_ClearFlag:
                           0000EA   449 	C$stm8s_tim4.c$350$1_0$351 ==.
                                    450 ;	d:\sdcc\lib\src\stm8s_tim4.c: 350: TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
      0085B9 43               [ 1]  451 	cpl	a
      0085BA C7 53 44         [ 1]  452 	ld	0x5344, a
                           0000EE   453 	C$stm8s_tim4.c$351$1_0$351 ==.
                                    454 ;	d:\sdcc\lib\src\stm8s_tim4.c: 351: }
                           0000EE   455 	C$stm8s_tim4.c$351$1_0$351 ==.
                           0000EE   456 	XG$TIM4_ClearFlag$0$0 ==.
      0085BD 81               [ 4]  457 	ret
                           0000EF   458 	G$TIM4_GetITStatus$0$0 ==.
                           0000EF   459 	C$stm8s_tim4.c$360$1_0$353 ==.
                                    460 ;	d:\sdcc\lib\src\stm8s_tim4.c: 360: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
                                    461 ;	-----------------------------------------
                                    462 ;	 function TIM4_GetITStatus
                                    463 ;	-----------------------------------------
      0085BE                        464 _TIM4_GetITStatus:
      0085BE 52 02            [ 2]  465 	sub	sp, #2
      0085C0 97               [ 1]  466 	ld	xl, a
                           0000F2   467 	C$stm8s_tim4.c$369$1_0$353 ==.
                                    468 ;	d:\sdcc\lib\src\stm8s_tim4.c: 369: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
      0085C1 C6 53 44         [ 1]  469 	ld	a, 0x5344
      0085C4 41               [ 1]  470 	exg	a, xl
      0085C5 6B 01            [ 1]  471 	ld	(0x01, sp), a
      0085C7 41               [ 1]  472 	exg	a, xl
      0085C8 14 01            [ 1]  473 	and	a, (0x01, sp)
      0085CA 6B 02            [ 1]  474 	ld	(0x02, sp), a
                           0000FD   475 	C$stm8s_tim4.c$371$1_0$353 ==.
                                    476 ;	d:\sdcc\lib\src\stm8s_tim4.c: 371: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
      0085CC C6 53 43         [ 1]  477 	ld	a, 0x5343
      0085CF 14 01            [ 1]  478 	and	a, (0x01, sp)
                           000102   479 	C$stm8s_tim4.c$373$1_0$353 ==.
                                    480 ;	d:\sdcc\lib\src\stm8s_tim4.c: 373: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
      0085D1 0D 02            [ 1]  481 	tnz	(0x02, sp)
      0085D3 27 06            [ 1]  482 	jreq	00102$
      0085D5 4D               [ 1]  483 	tnz	a
      0085D6 27 03            [ 1]  484 	jreq	00102$
                           000109   485 	C$stm8s_tim4.c$375$2_0$354 ==.
                                    486 ;	d:\sdcc\lib\src\stm8s_tim4.c: 375: bitstatus = (ITStatus)SET;
      0085D8 A6 01            [ 1]  487 	ld	a, #0x01
                           00010B   488 	C$stm8s_tim4.c$379$2_0$355 ==.
                                    489 ;	d:\sdcc\lib\src\stm8s_tim4.c: 379: bitstatus = (ITStatus)RESET;
      0085DA 21                     490 	.byte 0x21
      0085DB                        491 00102$:
      0085DB 4F               [ 1]  492 	clr	a
      0085DC                        493 00103$:
                           00010D   494 	C$stm8s_tim4.c$381$1_0$353 ==.
                                    495 ;	d:\sdcc\lib\src\stm8s_tim4.c: 381: return ((ITStatus)bitstatus);
                           00010D   496 	C$stm8s_tim4.c$382$1_0$353 ==.
                                    497 ;	d:\sdcc\lib\src\stm8s_tim4.c: 382: }
      0085DC 5B 02            [ 2]  498 	addw	sp, #2
                           00010F   499 	C$stm8s_tim4.c$382$1_0$353 ==.
                           00010F   500 	XG$TIM4_GetITStatus$0$0 ==.
      0085DE 81               [ 4]  501 	ret
                           000110   502 	G$TIM4_ClearITPendingBit$0$0 ==.
                           000110   503 	C$stm8s_tim4.c$391$1_0$357 ==.
                                    504 ;	d:\sdcc\lib\src\stm8s_tim4.c: 391: void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
                                    505 ;	-----------------------------------------
                                    506 ;	 function TIM4_ClearITPendingBit
                                    507 ;	-----------------------------------------
      0085DF                        508 _TIM4_ClearITPendingBit:
                           000110   509 	C$stm8s_tim4.c$397$1_0$357 ==.
                                    510 ;	d:\sdcc\lib\src\stm8s_tim4.c: 397: TIM4->SR1 = (uint8_t)(~TIM4_IT);
      0085DF 43               [ 1]  511 	cpl	a
      0085E0 C7 53 44         [ 1]  512 	ld	0x5344, a
                           000114   513 	C$stm8s_tim4.c$398$1_0$357 ==.
                                    514 ;	d:\sdcc\lib\src\stm8s_tim4.c: 398: }
                           000114   515 	C$stm8s_tim4.c$398$1_0$357 ==.
                           000114   516 	XG$TIM4_ClearITPendingBit$0$0 ==.
      0085E3 81               [ 4]  517 	ret
                                    518 	.area CODE
                                    519 	.area CONST
                                    520 	.area INITIALIZER
                                    521 	.area CABS (ABS)
