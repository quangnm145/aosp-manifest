                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _CLKPrescTable
                                     11 	.globl _HSIDivFactor
                                     12 	.globl _CLK_DeInit
                                     13 	.globl _CLK_FastHaltWakeUpCmd
                                     14 	.globl _CLK_HSECmd
                                     15 	.globl _CLK_HSICmd
                                     16 	.globl _CLK_LSICmd
                                     17 	.globl _CLK_CCOCmd
                                     18 	.globl _CLK_ClockSwitchCmd
                                     19 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     20 	.globl _CLK_PeripheralClockConfig
                                     21 	.globl _CLK_ClockSwitchConfig
                                     22 	.globl _CLK_HSIPrescalerConfig
                                     23 	.globl _CLK_CCOConfig
                                     24 	.globl _CLK_ITConfig
                                     25 	.globl _CLK_SYSCLKConfig
                                     26 	.globl _CLK_SWIMConfig
                                     27 	.globl _CLK_ClockSecuritySystemEnable
                                     28 	.globl _CLK_GetSYSCLKSource
                                     29 	.globl _CLK_GetClockFreq
                                     30 	.globl _CLK_AdjustHSICalibrationValue
                                     31 	.globl _CLK_SYSCLKEmergencyClear
                                     32 	.globl _CLK_GetFlagStatus
                                     33 	.globl _CLK_GetITStatus
                                     34 	.globl _CLK_ClearITPendingBit
                                     35 ;--------------------------------------------------------
                                     36 ; ram data
                                     37 ;--------------------------------------------------------
                                     38 	.area DATA
                                     39 ;--------------------------------------------------------
                                     40 ; ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area INITIALIZED
                                     43 ;--------------------------------------------------------
                                     44 ; absolute external ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area DABS (ABS)
                                     47 
                                     48 ; default segment ordering for linker
                                     49 	.area HOME
                                     50 	.area GSINIT
                                     51 	.area GSFINAL
                                     52 	.area CONST
                                     53 	.area INITIALIZER
                                     54 	.area CODE
                                     55 
                                     56 ;--------------------------------------------------------
                                     57 ; global & static initialisations
                                     58 ;--------------------------------------------------------
                                     59 	.area HOME
                                     60 	.area GSINIT
                                     61 	.area GSFINAL
                                     62 	.area GSINIT
                                     63 ;--------------------------------------------------------
                                     64 ; Home
                                     65 ;--------------------------------------------------------
                                     66 	.area HOME
                                     67 	.area HOME
                                     68 ;--------------------------------------------------------
                                     69 ; code
                                     70 ;--------------------------------------------------------
                                     71 	.area CODE
                           000000    72 	G$CLK_DeInit$0$0 ==.
                           000000    73 	C$stm8s_clk.c$72$0_0$307 ==.
                                     74 ;	d:\sdcc\lib\src\stm8s_clk.c: 72: void CLK_DeInit(void)
                                     75 ;	-----------------------------------------
                                     76 ;	 function CLK_DeInit
                                     77 ;	-----------------------------------------
      00815E                         78 _CLK_DeInit:
                           000000    79 	C$stm8s_clk.c$74$1_0$307 ==.
                                     80 ;	d:\sdcc\lib\src\stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      00815E 35 01 50 C0      [ 1]   81 	mov	0x50c0+0, #0x01
                           000004    82 	C$stm8s_clk.c$75$1_0$307 ==.
                                     83 ;	d:\sdcc\lib\src\stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      008162 35 00 50 C1      [ 1]   84 	mov	0x50c1+0, #0x00
                           000008    85 	C$stm8s_clk.c$76$1_0$307 ==.
                                     86 ;	d:\sdcc\lib\src\stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008166 35 E1 50 C4      [ 1]   87 	mov	0x50c4+0, #0xe1
                           00000C    88 	C$stm8s_clk.c$77$1_0$307 ==.
                                     89 ;	d:\sdcc\lib\src\stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      00816A 35 00 50 C5      [ 1]   90 	mov	0x50c5+0, #0x00
                           000010    91 	C$stm8s_clk.c$78$1_0$307 ==.
                                     92 ;	d:\sdcc\lib\src\stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      00816E 35 18 50 C6      [ 1]   93 	mov	0x50c6+0, #0x18
                           000014    94 	C$stm8s_clk.c$79$1_0$307 ==.
                                     95 ;	d:\sdcc\lib\src\stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      008172 35 FF 50 C7      [ 1]   96 	mov	0x50c7+0, #0xff
                           000018    97 	C$stm8s_clk.c$80$1_0$307 ==.
                                     98 ;	d:\sdcc\lib\src\stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008176 35 FF 50 CA      [ 1]   99 	mov	0x50ca+0, #0xff
                           00001C   100 	C$stm8s_clk.c$81$1_0$307 ==.
                                    101 ;	d:\sdcc\lib\src\stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      00817A 35 00 50 C8      [ 1]  102 	mov	0x50c8+0, #0x00
                           000020   103 	C$stm8s_clk.c$82$1_0$307 ==.
                                    104 ;	d:\sdcc\lib\src\stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00817E 35 00 50 C9      [ 1]  105 	mov	0x50c9+0, #0x00
                           000024   106 	C$stm8s_clk.c$83$1_0$307 ==.
                                    107 ;	d:\sdcc\lib\src\stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      008182                        108 00101$:
      008182 72 00 50 C9 FB   [ 2]  109 	btjt	0x50c9, #0, 00101$
                           000029   110 	C$stm8s_clk.c$85$1_0$307 ==.
                                    111 ;	d:\sdcc\lib\src\stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      008187 35 00 50 C9      [ 1]  112 	mov	0x50c9+0, #0x00
                           00002D   113 	C$stm8s_clk.c$86$1_0$307 ==.
                                    114 ;	d:\sdcc\lib\src\stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      00818B 35 00 50 CC      [ 1]  115 	mov	0x50cc+0, #0x00
                           000031   116 	C$stm8s_clk.c$87$1_0$307 ==.
                                    117 ;	d:\sdcc\lib\src\stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      00818F 35 00 50 CD      [ 1]  118 	mov	0x50cd+0, #0x00
                           000035   119 	C$stm8s_clk.c$88$1_0$307 ==.
                                    120 ;	d:\sdcc\lib\src\stm8s_clk.c: 88: }
                           000035   121 	C$stm8s_clk.c$88$1_0$307 ==.
                           000035   122 	XG$CLK_DeInit$0$0 ==.
      008193 81               [ 4]  123 	ret
                           000036   124 	G$CLK_FastHaltWakeUpCmd$0$0 ==.
                           000036   125 	C$stm8s_clk.c$99$1_0$310 ==.
                                    126 ;	d:\sdcc\lib\src\stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    127 ;	-----------------------------------------
                                    128 ;	 function CLK_FastHaltWakeUpCmd
                                    129 ;	-----------------------------------------
      008194                        130 _CLK_FastHaltWakeUpCmd:
      008194 88               [ 1]  131 	push	a
      008195 6B 01            [ 1]  132 	ld	(0x01, sp), a
                           000039   133 	C$stm8s_clk.c$107$1_0$310 ==.
                                    134 ;	d:\sdcc\lib\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      008197 C6 50 C0         [ 1]  135 	ld	a, 0x50c0
                           00003C   136 	C$stm8s_clk.c$104$1_0$310 ==.
                                    137 ;	d:\sdcc\lib\src\stm8s_clk.c: 104: if (NewState != DISABLE)
      00819A 0D 01            [ 1]  138 	tnz	(0x01, sp)
      00819C 27 07            [ 1]  139 	jreq	00102$
                           000040   140 	C$stm8s_clk.c$107$2_0$311 ==.
                                    141 ;	d:\sdcc\lib\src\stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      00819E AA 04            [ 1]  142 	or	a, #0x04
      0081A0 C7 50 C0         [ 1]  143 	ld	0x50c0, a
      0081A3 20 05            [ 2]  144 	jra	00104$
      0081A5                        145 00102$:
                           000047   146 	C$stm8s_clk.c$112$2_0$312 ==.
                                    147 ;	d:\sdcc\lib\src\stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      0081A5 A4 FB            [ 1]  148 	and	a, #0xfb
      0081A7 C7 50 C0         [ 1]  149 	ld	0x50c0, a
      0081AA                        150 00104$:
                           00004C   151 	C$stm8s_clk.c$114$1_0$310 ==.
                                    152 ;	d:\sdcc\lib\src\stm8s_clk.c: 114: }
      0081AA 84               [ 1]  153 	pop	a
                           00004D   154 	C$stm8s_clk.c$114$1_0$310 ==.
                           00004D   155 	XG$CLK_FastHaltWakeUpCmd$0$0 ==.
      0081AB 81               [ 4]  156 	ret
                           00004E   157 	G$CLK_HSECmd$0$0 ==.
                           00004E   158 	C$stm8s_clk.c$121$1_0$314 ==.
                                    159 ;	d:\sdcc\lib\src\stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    160 ;	-----------------------------------------
                                    161 ;	 function CLK_HSECmd
                                    162 ;	-----------------------------------------
      0081AC                        163 _CLK_HSECmd:
      0081AC 88               [ 1]  164 	push	a
      0081AD 6B 01            [ 1]  165 	ld	(0x01, sp), a
                           000051   166 	C$stm8s_clk.c$129$1_0$314 ==.
                                    167 ;	d:\sdcc\lib\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0081AF C6 50 C1         [ 1]  168 	ld	a, 0x50c1
                           000054   169 	C$stm8s_clk.c$126$1_0$314 ==.
                                    170 ;	d:\sdcc\lib\src\stm8s_clk.c: 126: if (NewState != DISABLE)
      0081B2 0D 01            [ 1]  171 	tnz	(0x01, sp)
      0081B4 27 07            [ 1]  172 	jreq	00102$
                           000058   173 	C$stm8s_clk.c$129$2_0$315 ==.
                                    174 ;	d:\sdcc\lib\src\stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0081B6 AA 01            [ 1]  175 	or	a, #0x01
      0081B8 C7 50 C1         [ 1]  176 	ld	0x50c1, a
      0081BB 20 05            [ 2]  177 	jra	00104$
      0081BD                        178 00102$:
                           00005F   179 	C$stm8s_clk.c$134$2_0$316 ==.
                                    180 ;	d:\sdcc\lib\src\stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0081BD A4 FE            [ 1]  181 	and	a, #0xfe
      0081BF C7 50 C1         [ 1]  182 	ld	0x50c1, a
      0081C2                        183 00104$:
                           000064   184 	C$stm8s_clk.c$136$1_0$314 ==.
                                    185 ;	d:\sdcc\lib\src\stm8s_clk.c: 136: }
      0081C2 84               [ 1]  186 	pop	a
                           000065   187 	C$stm8s_clk.c$136$1_0$314 ==.
                           000065   188 	XG$CLK_HSECmd$0$0 ==.
      0081C3 81               [ 4]  189 	ret
                           000066   190 	G$CLK_HSICmd$0$0 ==.
                           000066   191 	C$stm8s_clk.c$143$1_0$318 ==.
                                    192 ;	d:\sdcc\lib\src\stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    193 ;	-----------------------------------------
                                    194 ;	 function CLK_HSICmd
                                    195 ;	-----------------------------------------
      0081C4                        196 _CLK_HSICmd:
      0081C4 88               [ 1]  197 	push	a
      0081C5 6B 01            [ 1]  198 	ld	(0x01, sp), a
                           000069   199 	C$stm8s_clk.c$151$1_0$318 ==.
                                    200 ;	d:\sdcc\lib\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0081C7 C6 50 C0         [ 1]  201 	ld	a, 0x50c0
                           00006C   202 	C$stm8s_clk.c$148$1_0$318 ==.
                                    203 ;	d:\sdcc\lib\src\stm8s_clk.c: 148: if (NewState != DISABLE)
      0081CA 0D 01            [ 1]  204 	tnz	(0x01, sp)
      0081CC 27 07            [ 1]  205 	jreq	00102$
                           000070   206 	C$stm8s_clk.c$151$2_0$319 ==.
                                    207 ;	d:\sdcc\lib\src\stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      0081CE AA 01            [ 1]  208 	or	a, #0x01
      0081D0 C7 50 C0         [ 1]  209 	ld	0x50c0, a
      0081D3 20 05            [ 2]  210 	jra	00104$
      0081D5                        211 00102$:
                           000077   212 	C$stm8s_clk.c$156$2_0$320 ==.
                                    213 ;	d:\sdcc\lib\src\stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      0081D5 A4 FE            [ 1]  214 	and	a, #0xfe
      0081D7 C7 50 C0         [ 1]  215 	ld	0x50c0, a
      0081DA                        216 00104$:
                           00007C   217 	C$stm8s_clk.c$158$1_0$318 ==.
                                    218 ;	d:\sdcc\lib\src\stm8s_clk.c: 158: }
      0081DA 84               [ 1]  219 	pop	a
                           00007D   220 	C$stm8s_clk.c$158$1_0$318 ==.
                           00007D   221 	XG$CLK_HSICmd$0$0 ==.
      0081DB 81               [ 4]  222 	ret
                           00007E   223 	G$CLK_LSICmd$0$0 ==.
                           00007E   224 	C$stm8s_clk.c$166$1_0$322 ==.
                                    225 ;	d:\sdcc\lib\src\stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    226 ;	-----------------------------------------
                                    227 ;	 function CLK_LSICmd
                                    228 ;	-----------------------------------------
      0081DC                        229 _CLK_LSICmd:
      0081DC 88               [ 1]  230 	push	a
      0081DD 6B 01            [ 1]  231 	ld	(0x01, sp), a
                           000081   232 	C$stm8s_clk.c$174$1_0$322 ==.
                                    233 ;	d:\sdcc\lib\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0081DF C6 50 C0         [ 1]  234 	ld	a, 0x50c0
                           000084   235 	C$stm8s_clk.c$171$1_0$322 ==.
                                    236 ;	d:\sdcc\lib\src\stm8s_clk.c: 171: if (NewState != DISABLE)
      0081E2 0D 01            [ 1]  237 	tnz	(0x01, sp)
      0081E4 27 07            [ 1]  238 	jreq	00102$
                           000088   239 	C$stm8s_clk.c$174$2_0$323 ==.
                                    240 ;	d:\sdcc\lib\src\stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      0081E6 AA 08            [ 1]  241 	or	a, #0x08
      0081E8 C7 50 C0         [ 1]  242 	ld	0x50c0, a
      0081EB 20 05            [ 2]  243 	jra	00104$
      0081ED                        244 00102$:
                           00008F   245 	C$stm8s_clk.c$179$2_0$324 ==.
                                    246 ;	d:\sdcc\lib\src\stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      0081ED A4 F7            [ 1]  247 	and	a, #0xf7
      0081EF C7 50 C0         [ 1]  248 	ld	0x50c0, a
      0081F2                        249 00104$:
                           000094   250 	C$stm8s_clk.c$181$1_0$322 ==.
                                    251 ;	d:\sdcc\lib\src\stm8s_clk.c: 181: }
      0081F2 84               [ 1]  252 	pop	a
                           000095   253 	C$stm8s_clk.c$181$1_0$322 ==.
                           000095   254 	XG$CLK_LSICmd$0$0 ==.
      0081F3 81               [ 4]  255 	ret
                           000096   256 	G$CLK_CCOCmd$0$0 ==.
                           000096   257 	C$stm8s_clk.c$189$1_0$326 ==.
                                    258 ;	d:\sdcc\lib\src\stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    259 ;	-----------------------------------------
                                    260 ;	 function CLK_CCOCmd
                                    261 ;	-----------------------------------------
      0081F4                        262 _CLK_CCOCmd:
      0081F4 88               [ 1]  263 	push	a
      0081F5 6B 01            [ 1]  264 	ld	(0x01, sp), a
                           000099   265 	C$stm8s_clk.c$197$1_0$326 ==.
                                    266 ;	d:\sdcc\lib\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0081F7 C6 50 C9         [ 1]  267 	ld	a, 0x50c9
                           00009C   268 	C$stm8s_clk.c$194$1_0$326 ==.
                                    269 ;	d:\sdcc\lib\src\stm8s_clk.c: 194: if (NewState != DISABLE)
      0081FA 0D 01            [ 1]  270 	tnz	(0x01, sp)
      0081FC 27 07            [ 1]  271 	jreq	00102$
                           0000A0   272 	C$stm8s_clk.c$197$2_0$327 ==.
                                    273 ;	d:\sdcc\lib\src\stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      0081FE AA 01            [ 1]  274 	or	a, #0x01
      008200 C7 50 C9         [ 1]  275 	ld	0x50c9, a
      008203 20 05            [ 2]  276 	jra	00104$
      008205                        277 00102$:
                           0000A7   278 	C$stm8s_clk.c$202$2_0$328 ==.
                                    279 ;	d:\sdcc\lib\src\stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      008205 A4 FE            [ 1]  280 	and	a, #0xfe
      008207 C7 50 C9         [ 1]  281 	ld	0x50c9, a
      00820A                        282 00104$:
                           0000AC   283 	C$stm8s_clk.c$204$1_0$326 ==.
                                    284 ;	d:\sdcc\lib\src\stm8s_clk.c: 204: }
      00820A 84               [ 1]  285 	pop	a
                           0000AD   286 	C$stm8s_clk.c$204$1_0$326 ==.
                           0000AD   287 	XG$CLK_CCOCmd$0$0 ==.
      00820B 81               [ 4]  288 	ret
                           0000AE   289 	G$CLK_ClockSwitchCmd$0$0 ==.
                           0000AE   290 	C$stm8s_clk.c$213$1_0$330 ==.
                                    291 ;	d:\sdcc\lib\src\stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    292 ;	-----------------------------------------
                                    293 ;	 function CLK_ClockSwitchCmd
                                    294 ;	-----------------------------------------
      00820C                        295 _CLK_ClockSwitchCmd:
      00820C 88               [ 1]  296 	push	a
      00820D 6B 01            [ 1]  297 	ld	(0x01, sp), a
                           0000B1   298 	C$stm8s_clk.c$221$1_0$330 ==.
                                    299 ;	d:\sdcc\lib\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      00820F C6 50 C5         [ 1]  300 	ld	a, 0x50c5
                           0000B4   301 	C$stm8s_clk.c$218$1_0$330 ==.
                                    302 ;	d:\sdcc\lib\src\stm8s_clk.c: 218: if (NewState != DISABLE )
      008212 0D 01            [ 1]  303 	tnz	(0x01, sp)
      008214 27 07            [ 1]  304 	jreq	00102$
                           0000B8   305 	C$stm8s_clk.c$221$2_0$331 ==.
                                    306 ;	d:\sdcc\lib\src\stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      008216 AA 02            [ 1]  307 	or	a, #0x02
      008218 C7 50 C5         [ 1]  308 	ld	0x50c5, a
      00821B 20 05            [ 2]  309 	jra	00104$
      00821D                        310 00102$:
                           0000BF   311 	C$stm8s_clk.c$226$2_0$332 ==.
                                    312 ;	d:\sdcc\lib\src\stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      00821D A4 FD            [ 1]  313 	and	a, #0xfd
      00821F C7 50 C5         [ 1]  314 	ld	0x50c5, a
      008222                        315 00104$:
                           0000C4   316 	C$stm8s_clk.c$228$1_0$330 ==.
                                    317 ;	d:\sdcc\lib\src\stm8s_clk.c: 228: }
      008222 84               [ 1]  318 	pop	a
                           0000C5   319 	C$stm8s_clk.c$228$1_0$330 ==.
                           0000C5   320 	XG$CLK_ClockSwitchCmd$0$0 ==.
      008223 81               [ 4]  321 	ret
                           0000C6   322 	G$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
                           0000C6   323 	C$stm8s_clk.c$238$1_0$334 ==.
                                    324 ;	d:\sdcc\lib\src\stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    325 ;	-----------------------------------------
                                    326 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    327 ;	-----------------------------------------
      008224                        328 _CLK_SlowActiveHaltWakeUpCmd:
      008224 88               [ 1]  329 	push	a
      008225 6B 01            [ 1]  330 	ld	(0x01, sp), a
                           0000C9   331 	C$stm8s_clk.c$246$1_0$334 ==.
                                    332 ;	d:\sdcc\lib\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      008227 C6 50 C0         [ 1]  333 	ld	a, 0x50c0
                           0000CC   334 	C$stm8s_clk.c$243$1_0$334 ==.
                                    335 ;	d:\sdcc\lib\src\stm8s_clk.c: 243: if (NewState != DISABLE)
      00822A 0D 01            [ 1]  336 	tnz	(0x01, sp)
      00822C 27 07            [ 1]  337 	jreq	00102$
                           0000D0   338 	C$stm8s_clk.c$246$2_0$335 ==.
                                    339 ;	d:\sdcc\lib\src\stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      00822E AA 20            [ 1]  340 	or	a, #0x20
      008230 C7 50 C0         [ 1]  341 	ld	0x50c0, a
      008233 20 05            [ 2]  342 	jra	00104$
      008235                        343 00102$:
                           0000D7   344 	C$stm8s_clk.c$251$2_0$336 ==.
                                    345 ;	d:\sdcc\lib\src\stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      008235 A4 DF            [ 1]  346 	and	a, #0xdf
      008237 C7 50 C0         [ 1]  347 	ld	0x50c0, a
      00823A                        348 00104$:
                           0000DC   349 	C$stm8s_clk.c$253$1_0$334 ==.
                                    350 ;	d:\sdcc\lib\src\stm8s_clk.c: 253: }
      00823A 84               [ 1]  351 	pop	a
                           0000DD   352 	C$stm8s_clk.c$253$1_0$334 ==.
                           0000DD   353 	XG$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
      00823B 81               [ 4]  354 	ret
                           0000DE   355 	G$CLK_PeripheralClockConfig$0$0 ==.
                           0000DE   356 	C$stm8s_clk.c$263$1_0$338 ==.
                                    357 ;	d:\sdcc\lib\src\stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    358 ;	-----------------------------------------
                                    359 ;	 function CLK_PeripheralClockConfig
                                    360 ;	-----------------------------------------
      00823C                        361 _CLK_PeripheralClockConfig:
      00823C 88               [ 1]  362 	push	a
                           0000DF   363 	C$stm8s_clk.c$274$1_0$338 ==.
                                    364 ;	d:\sdcc\lib\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00823D 97               [ 1]  365 	ld	xl, a
      00823E A4 0F            [ 1]  366 	and	a, #0x0f
      008240 88               [ 1]  367 	push	a
      008241 A6 01            [ 1]  368 	ld	a, #0x01
      008243 6B 02            [ 1]  369 	ld	(0x02, sp), a
      008245 84               [ 1]  370 	pop	a
      008246 4D               [ 1]  371 	tnz	a
      008247 27 05            [ 1]  372 	jreq	00134$
      008249                        373 00133$:
      008249 08 01            [ 1]  374 	sll	(0x01, sp)
      00824B 4A               [ 1]  375 	dec	a
      00824C 26 FB            [ 1]  376 	jrne	00133$
      00824E                        377 00134$:
                           0000F0   378 	C$stm8s_clk.c$269$1_0$338 ==.
                                    379 ;	d:\sdcc\lib\src\stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      00824E 9F               [ 1]  380 	ld	a, xl
      00824F A5 10            [ 1]  381 	bcp	a, #0x10
      008251 26 19            [ 1]  382 	jrne	00108$
                           0000F5   383 	C$stm8s_clk.c$274$1_0$338 ==.
                                    384 ;	d:\sdcc\lib\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008253 C6 50 C7         [ 1]  385 	ld	a, 0x50c7
                           0000F8   386 	C$stm8s_clk.c$271$2_0$339 ==.
                                    387 ;	d:\sdcc\lib\src\stm8s_clk.c: 271: if (NewState != DISABLE)
      008256 0D 04            [ 1]  388 	tnz	(0x04, sp)
      008258 27 07            [ 1]  389 	jreq	00102$
                           0000FC   390 	C$stm8s_clk.c$274$3_0$340 ==.
                                    391 ;	d:\sdcc\lib\src\stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00825A 1A 01            [ 1]  392 	or	a, (0x01, sp)
      00825C C7 50 C7         [ 1]  393 	ld	0x50c7, a
      00825F 20 22            [ 2]  394 	jra	00110$
      008261                        395 00102$:
                           000103   396 	C$stm8s_clk.c$279$3_0$341 ==.
                                    397 ;	d:\sdcc\lib\src\stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008261 88               [ 1]  398 	push	a
      008262 03 02            [ 1]  399 	cpl	(0x02, sp)
      008264 84               [ 1]  400 	pop	a
      008265 14 01            [ 1]  401 	and	a, (0x01, sp)
      008267 C7 50 C7         [ 1]  402 	ld	0x50c7, a
      00826A 20 17            [ 2]  403 	jra	00110$
      00826C                        404 00108$:
                           00010E   405 	C$stm8s_clk.c$287$1_0$338 ==.
                                    406 ;	d:\sdcc\lib\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      00826C C6 50 CA         [ 1]  407 	ld	a, 0x50ca
                           000111   408 	C$stm8s_clk.c$284$2_0$342 ==.
                                    409 ;	d:\sdcc\lib\src\stm8s_clk.c: 284: if (NewState != DISABLE)
      00826F 0D 04            [ 1]  410 	tnz	(0x04, sp)
      008271 27 07            [ 1]  411 	jreq	00105$
                           000115   412 	C$stm8s_clk.c$287$3_0$343 ==.
                                    413 ;	d:\sdcc\lib\src\stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008273 1A 01            [ 1]  414 	or	a, (0x01, sp)
      008275 C7 50 CA         [ 1]  415 	ld	0x50ca, a
      008278 20 09            [ 2]  416 	jra	00110$
      00827A                        417 00105$:
                           00011C   418 	C$stm8s_clk.c$292$3_0$344 ==.
                                    419 ;	d:\sdcc\lib\src\stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      00827A 88               [ 1]  420 	push	a
      00827B 03 02            [ 1]  421 	cpl	(0x02, sp)
      00827D 84               [ 1]  422 	pop	a
      00827E 14 01            [ 1]  423 	and	a, (0x01, sp)
      008280 C7 50 CA         [ 1]  424 	ld	0x50ca, a
      008283                        425 00110$:
                           000125   426 	C$stm8s_clk.c$295$1_0$338 ==.
                                    427 ;	d:\sdcc\lib\src\stm8s_clk.c: 295: }
      008283 84               [ 1]  428 	pop	a
      008284 85               [ 2]  429 	popw	x
      008285 84               [ 1]  430 	pop	a
      008286 FC               [ 2]  431 	jp	(x)
                           000129   432 	G$CLK_ClockSwitchConfig$0$0 ==.
                           000129   433 	C$stm8s_clk.c$309$1_0$346 ==.
                                    434 ;	d:\sdcc\lib\src\stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    435 ;	-----------------------------------------
                                    436 ;	 function CLK_ClockSwitchConfig
                                    437 ;	-----------------------------------------
      008287                        438 _CLK_ClockSwitchConfig:
      008287 88               [ 1]  439 	push	a
      008288 6B 01            [ 1]  440 	ld	(0x01, sp), a
                           00012C   441 	C$stm8s_clk.c$322$1_0$346 ==.
                                    442 ;	d:\sdcc\lib\src\stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      00828A C6 50 C3         [ 1]  443 	ld	a, 0x50c3
      00828D 90 97            [ 1]  444 	ld	yl, a
                           000131   445 	C$stm8s_clk.c$328$1_0$346 ==.
                                    446 ;	d:\sdcc\lib\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      00828F C6 50 C5         [ 1]  447 	ld	a, 0x50c5
                           000134   448 	C$stm8s_clk.c$325$1_0$346 ==.
                                    449 ;	d:\sdcc\lib\src\stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      008292 0D 01            [ 1]  450 	tnz	(0x01, sp)
      008294 27 36            [ 1]  451 	jreq	00122$
                           000138   452 	C$stm8s_clk.c$328$2_0$347 ==.
                                    453 ;	d:\sdcc\lib\src\stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      008296 AA 02            [ 1]  454 	or	a, #0x02
      008298 C7 50 C5         [ 1]  455 	ld	0x50c5, a
      00829B C6 50 C5         [ 1]  456 	ld	a, 0x50c5
                           000140   457 	C$stm8s_clk.c$331$2_0$347 ==.
                                    458 ;	d:\sdcc\lib\src\stm8s_clk.c: 331: if (ITState != DISABLE)
      00829E 0D 05            [ 1]  459 	tnz	(0x05, sp)
      0082A0 27 07            [ 1]  460 	jreq	00102$
                           000144   461 	C$stm8s_clk.c$333$3_0$348 ==.
                                    462 ;	d:\sdcc\lib\src\stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      0082A2 AA 04            [ 1]  463 	or	a, #0x04
      0082A4 C7 50 C5         [ 1]  464 	ld	0x50c5, a
      0082A7 20 05            [ 2]  465 	jra	00103$
      0082A9                        466 00102$:
                           00014B   467 	C$stm8s_clk.c$337$3_0$349 ==.
                                    468 ;	d:\sdcc\lib\src\stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0082A9 A4 FB            [ 1]  469 	and	a, #0xfb
      0082AB C7 50 C5         [ 1]  470 	ld	0x50c5, a
      0082AE                        471 00103$:
                           000150   472 	C$stm8s_clk.c$341$2_0$347 ==.
                                    473 ;	d:\sdcc\lib\src\stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      0082AE AE 50 C4         [ 2]  474 	ldw	x, #0x50c4
      0082B1 7B 04            [ 1]  475 	ld	a, (0x04, sp)
      0082B3 F7               [ 1]  476 	ld	(x), a
                           000156   477 	C$stm8s_clk.c$344$1_0$346 ==.
                                    478 ;	d:\sdcc\lib\src\stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      0082B4 5F               [ 1]  479 	clrw	x
      0082B5 5A               [ 2]  480 	decw	x
      0082B6                        481 00105$:
      0082B6 72 01 50 C5 06   [ 2]  482 	btjf	0x50c5, #0, 00107$
      0082BB 5D               [ 2]  483 	tnzw	x
      0082BC 27 03            [ 1]  484 	jreq	00107$
                           000160   485 	C$stm8s_clk.c$346$3_0$350 ==.
                                    486 ;	d:\sdcc\lib\src\stm8s_clk.c: 346: DownCounter--;
      0082BE 5A               [ 2]  487 	decw	x
      0082BF 20 F5            [ 2]  488 	jra	00105$
      0082C1                        489 00107$:
                           000163   490 	C$stm8s_clk.c$349$2_0$347 ==.
                                    491 ;	d:\sdcc\lib\src\stm8s_clk.c: 349: if(DownCounter != 0)
      0082C1 5D               [ 2]  492 	tnzw	x
      0082C2 27 05            [ 1]  493 	jreq	00109$
                           000166   494 	C$stm8s_clk.c$351$3_0$351 ==.
                                    495 ;	d:\sdcc\lib\src\stm8s_clk.c: 351: Swif = SUCCESS;
      0082C4 A6 01            [ 1]  496 	ld	a, #0x01
      0082C6 97               [ 1]  497 	ld	xl, a
      0082C7 20 32            [ 2]  498 	jra	00123$
      0082C9                        499 00109$:
                           00016B   500 	C$stm8s_clk.c$355$3_0$352 ==.
                                    501 ;	d:\sdcc\lib\src\stm8s_clk.c: 355: Swif = ERROR;
      0082C9 5F               [ 1]  502 	clrw	x
      0082CA 20 2F            [ 2]  503 	jra	00123$
      0082CC                        504 00122$:
                           00016E   505 	C$stm8s_clk.c$361$2_0$353 ==.
                                    506 ;	d:\sdcc\lib\src\stm8s_clk.c: 361: if (ITState != DISABLE)
      0082CC 0D 05            [ 1]  507 	tnz	(0x05, sp)
      0082CE 27 07            [ 1]  508 	jreq	00112$
                           000172   509 	C$stm8s_clk.c$363$3_0$354 ==.
                                    510 ;	d:\sdcc\lib\src\stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      0082D0 AA 04            [ 1]  511 	or	a, #0x04
      0082D2 C7 50 C5         [ 1]  512 	ld	0x50c5, a
      0082D5 20 05            [ 2]  513 	jra	00113$
      0082D7                        514 00112$:
                           000179   515 	C$stm8s_clk.c$367$3_0$355 ==.
                                    516 ;	d:\sdcc\lib\src\stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0082D7 A4 FB            [ 1]  517 	and	a, #0xfb
      0082D9 C7 50 C5         [ 1]  518 	ld	0x50c5, a
      0082DC                        519 00113$:
                           00017E   520 	C$stm8s_clk.c$371$2_0$353 ==.
                                    521 ;	d:\sdcc\lib\src\stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      0082DC AE 50 C4         [ 2]  522 	ldw	x, #0x50c4
      0082DF 7B 04            [ 1]  523 	ld	a, (0x04, sp)
      0082E1 F7               [ 1]  524 	ld	(x), a
                           000184   525 	C$stm8s_clk.c$374$1_0$346 ==.
                                    526 ;	d:\sdcc\lib\src\stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      0082E2 5F               [ 1]  527 	clrw	x
      0082E3 5A               [ 2]  528 	decw	x
      0082E4                        529 00115$:
      0082E4 72 07 50 C5 06   [ 2]  530 	btjf	0x50c5, #3, 00117$
      0082E9 5D               [ 2]  531 	tnzw	x
      0082EA 27 03            [ 1]  532 	jreq	00117$
                           00018E   533 	C$stm8s_clk.c$376$3_0$356 ==.
                                    534 ;	d:\sdcc\lib\src\stm8s_clk.c: 376: DownCounter--;
      0082EC 5A               [ 2]  535 	decw	x
      0082ED 20 F5            [ 2]  536 	jra	00115$
      0082EF                        537 00117$:
                           000191   538 	C$stm8s_clk.c$379$2_0$353 ==.
                                    539 ;	d:\sdcc\lib\src\stm8s_clk.c: 379: if(DownCounter != 0)
      0082EF 5D               [ 2]  540 	tnzw	x
      0082F0 27 08            [ 1]  541 	jreq	00119$
                           000194   542 	C$stm8s_clk.c$382$3_0$357 ==.
                                    543 ;	d:\sdcc\lib\src\stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      0082F2 72 12 50 C5      [ 1]  544 	bset	0x50c5, #1
                           000198   545 	C$stm8s_clk.c$383$3_0$357 ==.
                                    546 ;	d:\sdcc\lib\src\stm8s_clk.c: 383: Swif = SUCCESS;
      0082F6 A6 01            [ 1]  547 	ld	a, #0x01
      0082F8 97               [ 1]  548 	ld	xl, a
                           00019B   549 	C$stm8s_clk.c$387$3_0$358 ==.
                                    550 ;	d:\sdcc\lib\src\stm8s_clk.c: 387: Swif = ERROR;
      0082F9 21                     551 	.byte 0x21
      0082FA                        552 00119$:
      0082FA 5F               [ 1]  553 	clrw	x
      0082FB                        554 00123$:
                           00019D   555 	C$stm8s_clk.c$390$1_0$346 ==.
                                    556 ;	d:\sdcc\lib\src\stm8s_clk.c: 390: if(Swif != ERROR)
      0082FB 9F               [ 1]  557 	ld	a, xl
      0082FC 4D               [ 1]  558 	tnz	a
      0082FD 27 2E            [ 1]  559 	jreq	00136$
                           0001A1   560 	C$stm8s_clk.c$393$2_0$359 ==.
                                    561 ;	d:\sdcc\lib\src\stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0082FF 0D 06            [ 1]  562 	tnz	(0x06, sp)
      008301 26 0C            [ 1]  563 	jrne	00132$
      008303 90 9F            [ 1]  564 	ld	a, yl
      008305 A1 E1            [ 1]  565 	cp	a, #0xe1
      008307 26 06            [ 1]  566 	jrne	00132$
                           0001AB   567 	C$stm8s_clk.c$395$3_0$360 ==.
                                    568 ;	d:\sdcc\lib\src\stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008309 72 11 50 C0      [ 1]  569 	bres	0x50c0, #0
      00830D 20 1E            [ 2]  570 	jra	00136$
      00830F                        571 00132$:
                           0001B1   572 	C$stm8s_clk.c$397$2_0$359 ==.
                                    573 ;	d:\sdcc\lib\src\stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      00830F 0D 06            [ 1]  574 	tnz	(0x06, sp)
      008311 26 0C            [ 1]  575 	jrne	00128$
      008313 90 9F            [ 1]  576 	ld	a, yl
      008315 A1 D2            [ 1]  577 	cp	a, #0xd2
      008317 26 06            [ 1]  578 	jrne	00128$
                           0001BB   579 	C$stm8s_clk.c$399$3_0$361 ==.
                                    580 ;	d:\sdcc\lib\src\stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008319 72 17 50 C0      [ 1]  581 	bres	0x50c0, #3
      00831D 20 0E            [ 2]  582 	jra	00136$
      00831F                        583 00128$:
                           0001C1   584 	C$stm8s_clk.c$401$2_0$359 ==.
                                    585 ;	d:\sdcc\lib\src\stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      00831F 0D 06            [ 1]  586 	tnz	(0x06, sp)
      008321 26 0A            [ 1]  587 	jrne	00136$
      008323 90 9F            [ 1]  588 	ld	a, yl
      008325 A1 B4            [ 1]  589 	cp	a, #0xb4
      008327 26 04            [ 1]  590 	jrne	00136$
                           0001CB   591 	C$stm8s_clk.c$403$3_0$362 ==.
                                    592 ;	d:\sdcc\lib\src\stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      008329 72 11 50 C1      [ 1]  593 	bres	0x50c1, #0
      00832D                        594 00136$:
                           0001CF   595 	C$stm8s_clk.c$406$1_0$346 ==.
                                    596 ;	d:\sdcc\lib\src\stm8s_clk.c: 406: return(Swif);
      00832D 9F               [ 1]  597 	ld	a, xl
                           0001D0   598 	C$stm8s_clk.c$407$1_0$346 ==.
                                    599 ;	d:\sdcc\lib\src\stm8s_clk.c: 407: }
      00832E 1E 02            [ 2]  600 	ldw	x, (2, sp)
      008330 5B 06            [ 2]  601 	addw	sp, #6
      008332 FC               [ 2]  602 	jp	(x)
                           0001D5   603 	G$CLK_HSIPrescalerConfig$0$0 ==.
                           0001D5   604 	C$stm8s_clk.c$415$1_0$364 ==.
                                    605 ;	d:\sdcc\lib\src\stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    606 ;	-----------------------------------------
                                    607 ;	 function CLK_HSIPrescalerConfig
                                    608 ;	-----------------------------------------
      008333                        609 _CLK_HSIPrescalerConfig:
      008333 88               [ 1]  610 	push	a
      008334 6B 01            [ 1]  611 	ld	(0x01, sp), a
                           0001D8   612 	C$stm8s_clk.c$421$1_0$364 ==.
                                    613 ;	d:\sdcc\lib\src\stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008336 C6 50 C6         [ 1]  614 	ld	a, 0x50c6
      008339 A4 E7            [ 1]  615 	and	a, #0xe7
      00833B C7 50 C6         [ 1]  616 	ld	0x50c6, a
                           0001E0   617 	C$stm8s_clk.c$424$1_0$364 ==.
                                    618 ;	d:\sdcc\lib\src\stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      00833E C6 50 C6         [ 1]  619 	ld	a, 0x50c6
      008341 1A 01            [ 1]  620 	or	a, (0x01, sp)
      008343 C7 50 C6         [ 1]  621 	ld	0x50c6, a
                           0001E8   622 	C$stm8s_clk.c$425$1_0$364 ==.
                                    623 ;	d:\sdcc\lib\src\stm8s_clk.c: 425: }
      008346 84               [ 1]  624 	pop	a
                           0001E9   625 	C$stm8s_clk.c$425$1_0$364 ==.
                           0001E9   626 	XG$CLK_HSIPrescalerConfig$0$0 ==.
      008347 81               [ 4]  627 	ret
                           0001EA   628 	G$CLK_CCOConfig$0$0 ==.
                           0001EA   629 	C$stm8s_clk.c$436$1_0$366 ==.
                                    630 ;	d:\sdcc\lib\src\stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    631 ;	-----------------------------------------
                                    632 ;	 function CLK_CCOConfig
                                    633 ;	-----------------------------------------
      008348                        634 _CLK_CCOConfig:
      008348 88               [ 1]  635 	push	a
      008349 6B 01            [ 1]  636 	ld	(0x01, sp), a
                           0001ED   637 	C$stm8s_clk.c$442$1_0$366 ==.
                                    638 ;	d:\sdcc\lib\src\stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      00834B C6 50 C9         [ 1]  639 	ld	a, 0x50c9
      00834E A4 E1            [ 1]  640 	and	a, #0xe1
      008350 C7 50 C9         [ 1]  641 	ld	0x50c9, a
                           0001F5   642 	C$stm8s_clk.c$445$1_0$366 ==.
                                    643 ;	d:\sdcc\lib\src\stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      008353 C6 50 C9         [ 1]  644 	ld	a, 0x50c9
      008356 1A 01            [ 1]  645 	or	a, (0x01, sp)
      008358 C7 50 C9         [ 1]  646 	ld	0x50c9, a
                           0001FD   647 	C$stm8s_clk.c$448$1_0$366 ==.
                                    648 ;	d:\sdcc\lib\src\stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      00835B 72 10 50 C9      [ 1]  649 	bset	0x50c9, #0
                           000201   650 	C$stm8s_clk.c$449$1_0$366 ==.
                                    651 ;	d:\sdcc\lib\src\stm8s_clk.c: 449: }
      00835F 84               [ 1]  652 	pop	a
                           000202   653 	C$stm8s_clk.c$449$1_0$366 ==.
                           000202   654 	XG$CLK_CCOConfig$0$0 ==.
      008360 81               [ 4]  655 	ret
                           000203   656 	G$CLK_ITConfig$0$0 ==.
                           000203   657 	C$stm8s_clk.c$459$1_0$368 ==.
                                    658 ;	d:\sdcc\lib\src\stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    659 ;	-----------------------------------------
                                    660 ;	 function CLK_ITConfig
                                    661 ;	-----------------------------------------
      008361                        662 _CLK_ITConfig:
                           000203   663 	C$stm8s_clk.c$467$1_0$368 ==.
                                    664 ;	d:\sdcc\lib\src\stm8s_clk.c: 467: switch (CLK_IT)
      008361 97               [ 1]  665 	ld	xl, a
      008362 A0 0C            [ 1]  666 	sub	a, #0x0c
      008364 26 02            [ 1]  667 	jrne	00150$
      008366 4C               [ 1]  668 	inc	a
      008367 21                     669 	.byte 0x21
      008368                        670 00150$:
      008368 4F               [ 1]  671 	clr	a
      008369                        672 00151$:
                           00020B   673 	C$stm8s_clk.c$465$1_0$368 ==.
                                    674 ;	d:\sdcc\lib\src\stm8s_clk.c: 465: if (NewState != DISABLE)
      008369 0D 03            [ 1]  675 	tnz	(0x03, sp)
      00836B 27 1C            [ 1]  676 	jreq	00110$
                           00020F   677 	C$stm8s_clk.c$467$2_0$369 ==.
                                    678 ;	d:\sdcc\lib\src\stm8s_clk.c: 467: switch (CLK_IT)
      00836D 4D               [ 1]  679 	tnz	a
      00836E 26 0F            [ 1]  680 	jrne	00102$
      008370 9F               [ 1]  681 	ld	a, xl
      008371 A1 1C            [ 1]  682 	cp	a, #0x1c
      008373 26 2E            [ 1]  683 	jrne	00112$
                           000217   684 	C$stm8s_clk.c$470$3_0$370 ==.
                                    685 ;	d:\sdcc\lib\src\stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      008375 C6 50 C5         [ 1]  686 	ld	a, 0x50c5
      008378 AA 04            [ 1]  687 	or	a, #0x04
      00837A C7 50 C5         [ 1]  688 	ld	0x50c5, a
                           00021F   689 	C$stm8s_clk.c$471$3_0$370 ==.
                                    690 ;	d:\sdcc\lib\src\stm8s_clk.c: 471: break;
      00837D 20 24            [ 2]  691 	jra	00112$
                           000221   692 	C$stm8s_clk.c$472$3_0$370 ==.
                                    693 ;	d:\sdcc\lib\src\stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      00837F                        694 00102$:
                           000221   695 	C$stm8s_clk.c$473$3_0$370 ==.
                                    696 ;	d:\sdcc\lib\src\stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      00837F C6 50 C8         [ 1]  697 	ld	a, 0x50c8
      008382 AA 04            [ 1]  698 	or	a, #0x04
      008384 C7 50 C8         [ 1]  699 	ld	0x50c8, a
                           000229   700 	C$stm8s_clk.c$474$3_0$370 ==.
                                    701 ;	d:\sdcc\lib\src\stm8s_clk.c: 474: break;
      008387 20 1A            [ 2]  702 	jra	00112$
                           00022B   703 	C$stm8s_clk.c$477$1_0$368 ==.
                                    704 ;	d:\sdcc\lib\src\stm8s_clk.c: 477: }
      008389                        705 00110$:
                           00022B   706 	C$stm8s_clk.c$481$2_0$371 ==.
                                    707 ;	d:\sdcc\lib\src\stm8s_clk.c: 481: switch (CLK_IT)
      008389 4D               [ 1]  708 	tnz	a
      00838A 26 0F            [ 1]  709 	jrne	00106$
      00838C 9F               [ 1]  710 	ld	a, xl
      00838D A1 1C            [ 1]  711 	cp	a, #0x1c
      00838F 26 12            [ 1]  712 	jrne	00112$
                           000233   713 	C$stm8s_clk.c$484$3_0$372 ==.
                                    714 ;	d:\sdcc\lib\src\stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      008391 C6 50 C5         [ 1]  715 	ld	a, 0x50c5
      008394 A4 FB            [ 1]  716 	and	a, #0xfb
      008396 C7 50 C5         [ 1]  717 	ld	0x50c5, a
                           00023B   718 	C$stm8s_clk.c$485$3_0$372 ==.
                                    719 ;	d:\sdcc\lib\src\stm8s_clk.c: 485: break;
      008399 20 08            [ 2]  720 	jra	00112$
                           00023D   721 	C$stm8s_clk.c$486$3_0$372 ==.
                                    722 ;	d:\sdcc\lib\src\stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      00839B                        723 00106$:
                           00023D   724 	C$stm8s_clk.c$487$3_0$372 ==.
                                    725 ;	d:\sdcc\lib\src\stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      00839B C6 50 C8         [ 1]  726 	ld	a, 0x50c8
      00839E A4 FB            [ 1]  727 	and	a, #0xfb
      0083A0 C7 50 C8         [ 1]  728 	ld	0x50c8, a
                           000245   729 	C$stm8s_clk.c$491$1_0$368 ==.
                                    730 ;	d:\sdcc\lib\src\stm8s_clk.c: 491: }
      0083A3                        731 00112$:
                           000245   732 	C$stm8s_clk.c$493$1_0$368 ==.
                                    733 ;	d:\sdcc\lib\src\stm8s_clk.c: 493: }
      0083A3 85               [ 2]  734 	popw	x
      0083A4 84               [ 1]  735 	pop	a
      0083A5 FC               [ 2]  736 	jp	(x)
                           000248   737 	G$CLK_SYSCLKConfig$0$0 ==.
                           000248   738 	C$stm8s_clk.c$500$1_0$374 ==.
                                    739 ;	d:\sdcc\lib\src\stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    740 ;	-----------------------------------------
                                    741 ;	 function CLK_SYSCLKConfig
                                    742 ;	-----------------------------------------
      0083A6                        743 _CLK_SYSCLKConfig:
      0083A6 88               [ 1]  744 	push	a
      0083A7 95               [ 1]  745 	ld	xh, a
                           00024A   746 	C$stm8s_clk.c$507$1_0$374 ==.
                                    747 ;	d:\sdcc\lib\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0083A8 C6 50 C6         [ 1]  748 	ld	a, 0x50c6
                           00024D   749 	C$stm8s_clk.c$505$1_0$374 ==.
                                    750 ;	d:\sdcc\lib\src\stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      0083AB 5D               [ 2]  751 	tnzw	x
      0083AC 2B 14            [ 1]  752 	jrmi	00102$
                           000250   753 	C$stm8s_clk.c$507$2_0$375 ==.
                                    754 ;	d:\sdcc\lib\src\stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0083AE A4 E7            [ 1]  755 	and	a, #0xe7
      0083B0 C7 50 C6         [ 1]  756 	ld	0x50c6, a
                           000255   757 	C$stm8s_clk.c$508$2_0$375 ==.
                                    758 ;	d:\sdcc\lib\src\stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      0083B3 C6 50 C6         [ 1]  759 	ld	a, 0x50c6
      0083B6 6B 01            [ 1]  760 	ld	(0x01, sp), a
      0083B8 9E               [ 1]  761 	ld	a, xh
      0083B9 A4 18            [ 1]  762 	and	a, #0x18
      0083BB 1A 01            [ 1]  763 	or	a, (0x01, sp)
      0083BD C7 50 C6         [ 1]  764 	ld	0x50c6, a
      0083C0 20 12            [ 2]  765 	jra	00104$
      0083C2                        766 00102$:
                           000264   767 	C$stm8s_clk.c$512$2_0$376 ==.
                                    768 ;	d:\sdcc\lib\src\stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      0083C2 A4 F8            [ 1]  769 	and	a, #0xf8
      0083C4 C7 50 C6         [ 1]  770 	ld	0x50c6, a
                           000269   771 	C$stm8s_clk.c$513$2_0$376 ==.
                                    772 ;	d:\sdcc\lib\src\stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      0083C7 C6 50 C6         [ 1]  773 	ld	a, 0x50c6
      0083CA 6B 01            [ 1]  774 	ld	(0x01, sp), a
      0083CC 9E               [ 1]  775 	ld	a, xh
      0083CD A4 07            [ 1]  776 	and	a, #0x07
      0083CF 1A 01            [ 1]  777 	or	a, (0x01, sp)
      0083D1 C7 50 C6         [ 1]  778 	ld	0x50c6, a
      0083D4                        779 00104$:
                           000276   780 	C$stm8s_clk.c$515$1_0$374 ==.
                                    781 ;	d:\sdcc\lib\src\stm8s_clk.c: 515: }
      0083D4 84               [ 1]  782 	pop	a
                           000277   783 	C$stm8s_clk.c$515$1_0$374 ==.
                           000277   784 	XG$CLK_SYSCLKConfig$0$0 ==.
      0083D5 81               [ 4]  785 	ret
                           000278   786 	G$CLK_SWIMConfig$0$0 ==.
                           000278   787 	C$stm8s_clk.c$523$1_0$378 ==.
                                    788 ;	d:\sdcc\lib\src\stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    789 ;	-----------------------------------------
                                    790 ;	 function CLK_SWIMConfig
                                    791 ;	-----------------------------------------
      0083D6                        792 _CLK_SWIMConfig:
      0083D6 88               [ 1]  793 	push	a
      0083D7 6B 01            [ 1]  794 	ld	(0x01, sp), a
                           00027B   795 	C$stm8s_clk.c$531$1_0$378 ==.
                                    796 ;	d:\sdcc\lib\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      0083D9 C6 50 CD         [ 1]  797 	ld	a, 0x50cd
                           00027E   798 	C$stm8s_clk.c$528$1_0$378 ==.
                                    799 ;	d:\sdcc\lib\src\stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      0083DC 0D 01            [ 1]  800 	tnz	(0x01, sp)
      0083DE 27 07            [ 1]  801 	jreq	00102$
                           000282   802 	C$stm8s_clk.c$531$2_0$379 ==.
                                    803 ;	d:\sdcc\lib\src\stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      0083E0 AA 01            [ 1]  804 	or	a, #0x01
      0083E2 C7 50 CD         [ 1]  805 	ld	0x50cd, a
      0083E5 20 05            [ 2]  806 	jra	00104$
      0083E7                        807 00102$:
                           000289   808 	C$stm8s_clk.c$536$2_0$380 ==.
                                    809 ;	d:\sdcc\lib\src\stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      0083E7 A4 FE            [ 1]  810 	and	a, #0xfe
      0083E9 C7 50 CD         [ 1]  811 	ld	0x50cd, a
      0083EC                        812 00104$:
                           00028E   813 	C$stm8s_clk.c$538$1_0$378 ==.
                                    814 ;	d:\sdcc\lib\src\stm8s_clk.c: 538: }
      0083EC 84               [ 1]  815 	pop	a
                           00028F   816 	C$stm8s_clk.c$538$1_0$378 ==.
                           00028F   817 	XG$CLK_SWIMConfig$0$0 ==.
      0083ED 81               [ 4]  818 	ret
                           000290   819 	G$CLK_ClockSecuritySystemEnable$0$0 ==.
                           000290   820 	C$stm8s_clk.c$547$1_0$382 ==.
                                    821 ;	d:\sdcc\lib\src\stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                    822 ;	-----------------------------------------
                                    823 ;	 function CLK_ClockSecuritySystemEnable
                                    824 ;	-----------------------------------------
      0083EE                        825 _CLK_ClockSecuritySystemEnable:
                           000290   826 	C$stm8s_clk.c$550$1_0$382 ==.
                                    827 ;	d:\sdcc\lib\src\stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      0083EE 72 10 50 C8      [ 1]  828 	bset	0x50c8, #0
                           000294   829 	C$stm8s_clk.c$551$1_0$382 ==.
                                    830 ;	d:\sdcc\lib\src\stm8s_clk.c: 551: }
                           000294   831 	C$stm8s_clk.c$551$1_0$382 ==.
                           000294   832 	XG$CLK_ClockSecuritySystemEnable$0$0 ==.
      0083F2 81               [ 4]  833 	ret
                           000295   834 	G$CLK_GetSYSCLKSource$0$0 ==.
                           000295   835 	C$stm8s_clk.c$559$1_0$384 ==.
                                    836 ;	d:\sdcc\lib\src\stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                    837 ;	-----------------------------------------
                                    838 ;	 function CLK_GetSYSCLKSource
                                    839 ;	-----------------------------------------
      0083F3                        840 _CLK_GetSYSCLKSource:
                           000295   841 	C$stm8s_clk.c$561$1_0$384 ==.
                                    842 ;	d:\sdcc\lib\src\stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      0083F3 C6 50 C3         [ 1]  843 	ld	a, 0x50c3
                           000298   844 	C$stm8s_clk.c$562$1_0$384 ==.
                                    845 ;	d:\sdcc\lib\src\stm8s_clk.c: 562: }
                           000298   846 	C$stm8s_clk.c$562$1_0$384 ==.
                           000298   847 	XG$CLK_GetSYSCLKSource$0$0 ==.
      0083F6 81               [ 4]  848 	ret
                           000299   849 	G$CLK_GetClockFreq$0$0 ==.
                           000299   850 	C$stm8s_clk.c$569$1_0$386 ==.
                                    851 ;	d:\sdcc\lib\src\stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    852 ;	-----------------------------------------
                                    853 ;	 function CLK_GetClockFreq
                                    854 ;	-----------------------------------------
      0083F7                        855 _CLK_GetClockFreq:
      0083F7 52 04            [ 2]  856 	sub	sp, #4
                           00029B   857 	C$stm8s_clk.c$576$1_0$386 ==.
                                    858 ;	d:\sdcc\lib\src\stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      0083F9 C6 50 C3         [ 1]  859 	ld	a, 0x50c3
                           00029E   860 	C$stm8s_clk.c$578$1_0$386 ==.
                                    861 ;	d:\sdcc\lib\src\stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      0083FC 6B 04            [ 1]  862 	ld	(0x04, sp), a
      0083FE A1 E1            [ 1]  863 	cp	a, #0xe1
      008400 26 23            [ 1]  864 	jrne	00105$
                           0002A4   865 	C$stm8s_clk.c$580$2_0$387 ==.
                                    866 ;	d:\sdcc\lib\src\stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      008402 C6 50 C6         [ 1]  867 	ld	a, 0x50c6
      008405 A4 18            [ 1]  868 	and	a, #0x18
                           0002A9   869 	C$stm8s_clk.c$581$2_0$387 ==.
                                    870 ;	d:\sdcc\lib\src\stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      008407 44               [ 1]  871 	srl	a
      008408 44               [ 1]  872 	srl	a
      008409 44               [ 1]  873 	srl	a
                           0002AC   874 	C$stm8s_clk.c$582$2_0$387 ==.
                                    875 ;	d:\sdcc\lib\src\stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      00840A 5F               [ 1]  876 	clrw	x
      00840B 97               [ 1]  877 	ld	xl, a
      00840C D6 80 2D         [ 1]  878 	ld	a, (_HSIDivFactor+0, x)
                           0002B1   879 	C$stm8s_clk.c$583$2_0$387 ==.
                                    880 ;	d:\sdcc\lib\src\stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      00840F 5F               [ 1]  881 	clrw	x
      008410 0F 01            [ 1]  882 	clr	(0x01, sp)
      008412 88               [ 1]  883 	push	a
      008413 89               [ 2]  884 	pushw	x
      008414 4F               [ 1]  885 	clr	a
      008415 88               [ 1]  886 	push	a
      008416 4B 00            [ 1]  887 	push	#0x00
      008418 4B 24            [ 1]  888 	push	#0x24
      00841A 4B F4            [ 1]  889 	push	#0xf4
      00841C 4B 00            [ 1]  890 	push	#0x00
      00841E CD 85 E4         [ 4]  891 	call	__divulong
      008421 5B 08            [ 2]  892 	addw	sp, #8
      008423 20 16            [ 2]  893 	jra	00106$
      008425                        894 00105$:
                           0002C7   895 	C$stm8s_clk.c$585$1_0$386 ==.
                                    896 ;	d:\sdcc\lib\src\stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      008425 7B 04            [ 1]  897 	ld	a, (0x04, sp)
      008427 A1 D2            [ 1]  898 	cp	a, #0xd2
      008429 26 09            [ 1]  899 	jrne	00102$
                           0002CD   900 	C$stm8s_clk.c$587$2_0$388 ==.
                                    901 ;	d:\sdcc\lib\src\stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      00842B AE F4 00         [ 2]  902 	ldw	x, #0xf400
      00842E 90 AE 00 01      [ 2]  903 	ldw	y, #0x0001
      008432 20 07            [ 2]  904 	jra	00106$
      008434                        905 00102$:
                           0002D6   906 	C$stm8s_clk.c$591$2_0$389 ==.
                                    907 ;	d:\sdcc\lib\src\stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      008434 AE 24 00         [ 2]  908 	ldw	x, #0x2400
      008437 90 AE 00 F4      [ 2]  909 	ldw	y, #0x00f4
      00843B                        910 00106$:
                           0002DD   911 	C$stm8s_clk.c$594$1_0$386 ==.
                                    912 ;	d:\sdcc\lib\src\stm8s_clk.c: 594: return((uint32_t)clockfrequency);
                           0002DD   913 	C$stm8s_clk.c$595$1_0$386 ==.
                                    914 ;	d:\sdcc\lib\src\stm8s_clk.c: 595: }
      00843B 5B 04            [ 2]  915 	addw	sp, #4
                           0002DF   916 	C$stm8s_clk.c$595$1_0$386 ==.
                           0002DF   917 	XG$CLK_GetClockFreq$0$0 ==.
      00843D 81               [ 4]  918 	ret
                           0002E0   919 	G$CLK_AdjustHSICalibrationValue$0$0 ==.
                           0002E0   920 	C$stm8s_clk.c$604$1_0$391 ==.
                                    921 ;	d:\sdcc\lib\src\stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                    922 ;	-----------------------------------------
                                    923 ;	 function CLK_AdjustHSICalibrationValue
                                    924 ;	-----------------------------------------
      00843E                        925 _CLK_AdjustHSICalibrationValue:
      00843E 88               [ 1]  926 	push	a
      00843F 6B 01            [ 1]  927 	ld	(0x01, sp), a
                           0002E3   928 	C$stm8s_clk.c$610$1_0$391 ==.
                                    929 ;	d:\sdcc\lib\src\stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      008441 C6 50 CC         [ 1]  930 	ld	a, 0x50cc
      008444 A4 F8            [ 1]  931 	and	a, #0xf8
      008446 1A 01            [ 1]  932 	or	a, (0x01, sp)
      008448 C7 50 CC         [ 1]  933 	ld	0x50cc, a
                           0002ED   934 	C$stm8s_clk.c$611$1_0$391 ==.
                                    935 ;	d:\sdcc\lib\src\stm8s_clk.c: 611: }
      00844B 84               [ 1]  936 	pop	a
                           0002EE   937 	C$stm8s_clk.c$611$1_0$391 ==.
                           0002EE   938 	XG$CLK_AdjustHSICalibrationValue$0$0 ==.
      00844C 81               [ 4]  939 	ret
                           0002EF   940 	G$CLK_SYSCLKEmergencyClear$0$0 ==.
                           0002EF   941 	C$stm8s_clk.c$622$1_0$393 ==.
                                    942 ;	d:\sdcc\lib\src\stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                    943 ;	-----------------------------------------
                                    944 ;	 function CLK_SYSCLKEmergencyClear
                                    945 ;	-----------------------------------------
      00844D                        946 _CLK_SYSCLKEmergencyClear:
                           0002EF   947 	C$stm8s_clk.c$624$1_0$393 ==.
                                    948 ;	d:\sdcc\lib\src\stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      00844D 72 11 50 C5      [ 1]  949 	bres	0x50c5, #0
                           0002F3   950 	C$stm8s_clk.c$625$1_0$393 ==.
                                    951 ;	d:\sdcc\lib\src\stm8s_clk.c: 625: }
                           0002F3   952 	C$stm8s_clk.c$625$1_0$393 ==.
                           0002F3   953 	XG$CLK_SYSCLKEmergencyClear$0$0 ==.
      008451 81               [ 4]  954 	ret
                           0002F4   955 	G$CLK_GetFlagStatus$0$0 ==.
                           0002F4   956 	C$stm8s_clk.c$634$1_0$395 ==.
                                    957 ;	d:\sdcc\lib\src\stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                    958 ;	-----------------------------------------
                                    959 ;	 function CLK_GetFlagStatus
                                    960 ;	-----------------------------------------
      008452                        961 _CLK_GetFlagStatus:
      008452 52 04            [ 2]  962 	sub	sp, #4
                           0002F6   963 	C$stm8s_clk.c$644$1_0$395 ==.
                                    964 ;	d:\sdcc\lib\src\stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      008454 1F 03            [ 2]  965 	ldw	(0x03, sp), x
      008456 4F               [ 1]  966 	clr	a
      008457 97               [ 1]  967 	ld	xl, a
                           0002FA   968 	C$stm8s_clk.c$647$1_0$395 ==.
                                    969 ;	d:\sdcc\lib\src\stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008458 1F 01            [ 2]  970 	ldw	(0x01, sp), x
      00845A A3 01 00         [ 2]  971 	cpw	x, #0x0100
      00845D 26 05            [ 1]  972 	jrne	00111$
                           000301   973 	C$stm8s_clk.c$649$2_0$396 ==.
                                    974 ;	d:\sdcc\lib\src\stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      00845F C6 50 C0         [ 1]  975 	ld	a, 0x50c0
      008462 20 27            [ 2]  976 	jra	00112$
      008464                        977 00111$:
                           000306   978 	C$stm8s_clk.c$651$1_0$395 ==.
                                    979 ;	d:\sdcc\lib\src\stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      008464 1E 01            [ 2]  980 	ldw	x, (0x01, sp)
      008466 A3 02 00         [ 2]  981 	cpw	x, #0x0200
      008469 26 05            [ 1]  982 	jrne	00108$
                           00030D   983 	C$stm8s_clk.c$653$2_0$397 ==.
                                    984 ;	d:\sdcc\lib\src\stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      00846B C6 50 C1         [ 1]  985 	ld	a, 0x50c1
      00846E 20 1B            [ 2]  986 	jra	00112$
      008470                        987 00108$:
                           000312   988 	C$stm8s_clk.c$655$1_0$395 ==.
                                    989 ;	d:\sdcc\lib\src\stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      008470 1E 01            [ 2]  990 	ldw	x, (0x01, sp)
      008472 A3 03 00         [ 2]  991 	cpw	x, #0x0300
      008475 26 05            [ 1]  992 	jrne	00105$
                           000319   993 	C$stm8s_clk.c$657$2_0$398 ==.
                                    994 ;	d:\sdcc\lib\src\stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      008477 C6 50 C5         [ 1]  995 	ld	a, 0x50c5
      00847A 20 0F            [ 2]  996 	jra	00112$
      00847C                        997 00105$:
                           00031E   998 	C$stm8s_clk.c$659$1_0$395 ==.
                                    999 ;	d:\sdcc\lib\src\stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      00847C 1E 01            [ 2] 1000 	ldw	x, (0x01, sp)
      00847E A3 04 00         [ 2] 1001 	cpw	x, #0x0400
      008481 26 05            [ 1] 1002 	jrne	00102$
                           000325  1003 	C$stm8s_clk.c$661$2_0$399 ==.
                                   1004 ;	d:\sdcc\lib\src\stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      008483 C6 50 C8         [ 1] 1005 	ld	a, 0x50c8
      008486 20 03            [ 2] 1006 	jra	00112$
      008488                       1007 00102$:
                           00032A  1008 	C$stm8s_clk.c$665$2_0$400 ==.
                                   1009 ;	d:\sdcc\lib\src\stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      008488 C6 50 C9         [ 1] 1010 	ld	a, 0x50c9
      00848B                       1011 00112$:
                           00032D  1012 	C$stm8s_clk.c$668$1_0$395 ==.
                                   1013 ;	d:\sdcc\lib\src\stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      00848B 88               [ 1] 1014 	push	a
      00848C 7B 05            [ 1] 1015 	ld	a, (0x05, sp)
      00848E 6B 03            [ 1] 1016 	ld	(0x03, sp), a
      008490 84               [ 1] 1017 	pop	a
      008491 14 02            [ 1] 1018 	and	a, (0x02, sp)
      008493 27 03            [ 1] 1019 	jreq	00114$
                           000337  1020 	C$stm8s_clk.c$670$2_0$401 ==.
                                   1021 ;	d:\sdcc\lib\src\stm8s_clk.c: 670: bitstatus = SET;
      008495 A6 01            [ 1] 1022 	ld	a, #0x01
                           000339  1023 	C$stm8s_clk.c$674$2_0$402 ==.
                                   1024 ;	d:\sdcc\lib\src\stm8s_clk.c: 674: bitstatus = RESET;
      008497 21                    1025 	.byte 0x21
      008498                       1026 00114$:
      008498 4F               [ 1] 1027 	clr	a
      008499                       1028 00115$:
                           00033B  1029 	C$stm8s_clk.c$678$1_0$395 ==.
                                   1030 ;	d:\sdcc\lib\src\stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                           00033B  1031 	C$stm8s_clk.c$679$1_0$395 ==.
                                   1032 ;	d:\sdcc\lib\src\stm8s_clk.c: 679: }
      008499 5B 04            [ 2] 1033 	addw	sp, #4
                           00033D  1034 	C$stm8s_clk.c$679$1_0$395 ==.
                           00033D  1035 	XG$CLK_GetFlagStatus$0$0 ==.
      00849B 81               [ 4] 1036 	ret
                           00033E  1037 	G$CLK_GetITStatus$0$0 ==.
                           00033E  1038 	C$stm8s_clk.c$687$1_0$404 ==.
                                   1039 ;	d:\sdcc\lib\src\stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function CLK_GetITStatus
                                   1042 ;	-----------------------------------------
      00849C                       1043 _CLK_GetITStatus:
      00849C 88               [ 1] 1044 	push	a
                           00033F  1045 	C$stm8s_clk.c$694$1_0$404 ==.
                                   1046 ;	d:\sdcc\lib\src\stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      00849D 6B 01            [ 1] 1047 	ld	(0x01, sp), a
      00849F A1 1C            [ 1] 1048 	cp	a, #0x1c
      0084A1 26 0F            [ 1] 1049 	jrne	00108$
                           000345  1050 	C$stm8s_clk.c$697$2_0$405 ==.
                                   1051 ;	d:\sdcc\lib\src\stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0084A3 C6 50 C5         [ 1] 1052 	ld	a, 0x50c5
      0084A6 14 01            [ 1] 1053 	and	a, (0x01, sp)
                           00034A  1054 	C$stm8s_clk.c$699$3_0$406 ==.
                                   1055 ;	d:\sdcc\lib\src\stm8s_clk.c: 699: bitstatus = SET;
      0084A8 A0 0C            [ 1] 1056 	sub	a, #0x0c
      0084AA 26 03            [ 1] 1057 	jrne	00102$
      0084AC 4C               [ 1] 1058 	inc	a
      0084AD 20 0F            [ 2] 1059 	jra	00109$
      0084AF                       1060 00102$:
                           000351  1061 	C$stm8s_clk.c$703$3_0$407 ==.
                                   1062 ;	d:\sdcc\lib\src\stm8s_clk.c: 703: bitstatus = RESET;
      0084AF 4F               [ 1] 1063 	clr	a
      0084B0 20 0C            [ 2] 1064 	jra	00109$
      0084B2                       1065 00108$:
                           000354  1066 	C$stm8s_clk.c$709$2_0$408 ==.
                                   1067 ;	d:\sdcc\lib\src\stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      0084B2 C6 50 C8         [ 1] 1068 	ld	a, 0x50c8
      0084B5 14 01            [ 1] 1069 	and	a, (0x01, sp)
                           000359  1070 	C$stm8s_clk.c$711$3_0$409 ==.
                                   1071 ;	d:\sdcc\lib\src\stm8s_clk.c: 711: bitstatus = SET;
      0084B7 A0 0C            [ 1] 1072 	sub	a, #0x0c
      0084B9 26 02            [ 1] 1073 	jrne	00105$
      0084BB 4C               [ 1] 1074 	inc	a
                           00035E  1075 	C$stm8s_clk.c$715$3_0$410 ==.
                                   1076 ;	d:\sdcc\lib\src\stm8s_clk.c: 715: bitstatus = RESET;
      0084BC 21                    1077 	.byte 0x21
      0084BD                       1078 00105$:
      0084BD 4F               [ 1] 1079 	clr	a
      0084BE                       1080 00109$:
                           000360  1081 	C$stm8s_clk.c$720$1_0$404 ==.
                                   1082 ;	d:\sdcc\lib\src\stm8s_clk.c: 720: return bitstatus;
                           000360  1083 	C$stm8s_clk.c$721$1_0$404 ==.
                                   1084 ;	d:\sdcc\lib\src\stm8s_clk.c: 721: }
      0084BE 5B 01            [ 2] 1085 	addw	sp, #1
                           000362  1086 	C$stm8s_clk.c$721$1_0$404 ==.
                           000362  1087 	XG$CLK_GetITStatus$0$0 ==.
      0084C0 81               [ 4] 1088 	ret
                           000363  1089 	G$CLK_ClearITPendingBit$0$0 ==.
                           000363  1090 	C$stm8s_clk.c$729$1_0$412 ==.
                                   1091 ;	d:\sdcc\lib\src\stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function CLK_ClearITPendingBit
                                   1094 ;	-----------------------------------------
      0084C1                       1095 _CLK_ClearITPendingBit:
                           000363  1096 	C$stm8s_clk.c$734$1_0$412 ==.
                                   1097 ;	d:\sdcc\lib\src\stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      0084C1 A1 0C            [ 1] 1098 	cp	a, #0x0c
      0084C3 26 05            [ 1] 1099 	jrne	00102$
                           000367  1100 	C$stm8s_clk.c$737$2_0$413 ==.
                                   1101 ;	d:\sdcc\lib\src\stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      0084C5 72 17 50 C8      [ 1] 1102 	bres	0x50c8, #3
      0084C9 81               [ 4] 1103 	ret
      0084CA                       1104 00102$:
                           00036C  1105 	C$stm8s_clk.c$742$2_0$414 ==.
                                   1106 ;	d:\sdcc\lib\src\stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      0084CA 72 17 50 C5      [ 1] 1107 	bres	0x50c5, #3
                           000370  1108 	C$stm8s_clk.c$745$1_0$412 ==.
                                   1109 ;	d:\sdcc\lib\src\stm8s_clk.c: 745: }
                           000370  1110 	C$stm8s_clk.c$745$1_0$412 ==.
                           000370  1111 	XG$CLK_ClearITPendingBit$0$0 ==.
      0084CE 81               [ 4] 1112 	ret
                                   1113 	.area CODE
                                   1114 	.area CONST
                                   1115 	.area CONST
                           000000  1116 G$HSIDivFactor$0_0$0 == .
      00802D                       1117 _HSIDivFactor:
      00802D 01                    1118 	.db #0x01	; 1
      00802E 02                    1119 	.db #0x02	; 2
      00802F 04                    1120 	.db #0x04	; 4
      008030 08                    1121 	.db #0x08	; 8
                                   1122 	.area CODE
                                   1123 	.area CONST
                           000004  1124 G$CLKPrescTable$0_0$0 == .
      008031                       1125 _CLKPrescTable:
      008031 01                    1126 	.db #0x01	; 1
      008032 02                    1127 	.db #0x02	; 2
      008033 04                    1128 	.db #0x04	; 4
      008034 08                    1129 	.db #0x08	; 8
      008035 0A                    1130 	.db #0x0a	; 10
      008036 10                    1131 	.db #0x10	; 16
      008037 14                    1132 	.db #0x14	; 20
      008038 28                    1133 	.db #0x28	; 40
                                   1134 	.area CODE
                                   1135 	.area INITIALIZER
                                   1136 	.area CABS (ABS)
