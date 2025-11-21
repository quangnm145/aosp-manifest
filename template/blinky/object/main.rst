                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _main
                                     11 	.globl _TIM4_ClearFlag
                                     12 	.globl _TIM4_GetFlagStatus
                                     13 	.globl _TIM4_SetCounter
                                     14 	.globl _TIM4_Cmd
                                     15 	.globl _TIM4_TimeBaseInit
                                     16 	.globl _GPIO_WriteReverse
                                     17 	.globl _GPIO_Init
                                     18 	.globl _GPIO_DeInit
                                     19 	.globl _CLK_HSIPrescalerConfig
                                     20 	.globl _delay_ms
                                     21 ;--------------------------------------------------------
                                     22 ; ram data
                                     23 ;--------------------------------------------------------
                                     24 	.area DATA
                                     25 ;--------------------------------------------------------
                                     26 ; ram data
                                     27 ;--------------------------------------------------------
                                     28 	.area INITIALIZED
                                     29 ;--------------------------------------------------------
                                     30 ; Stack segment in internal ram
                                     31 ;--------------------------------------------------------
                                     32 	.area SSEG
      000001                         33 __start__stack:
      000001                         34 	.ds	1
                                     35 
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
                                     50 ; interrupt vector
                                     51 ;--------------------------------------------------------
                                     52 	.area HOME
      008000                         53 __interrupt_vect:
      008000 82 00 80 07             54 	int s_GSINIT ; reset
                                     55 ;--------------------------------------------------------
                                     56 ; global & static initialisations
                                     57 ;--------------------------------------------------------
                                     58 	.area HOME
                                     59 	.area GSINIT
                                     60 	.area GSFINAL
                                     61 	.area GSINIT
      008007 CD 86 3F         [ 4]   62 	call	___sdcc_external_startup
      00800A 4D               [ 1]   63 	tnz	a
      00800B 27 03            [ 1]   64 	jreq	__sdcc_init_data
      00800D CC 80 04         [ 2]   65 	jp	__sdcc_program_startup
      008010                         66 __sdcc_init_data:
                                     67 ; stm8_genXINIT() start
      008010 AE 00 00         [ 2]   68 	ldw x, #l_DATA
      008013 27 07            [ 1]   69 	jreq	00002$
      008015                         70 00001$:
      008015 72 4F 00 00      [ 1]   71 	clr (s_DATA - 1, x)
      008019 5A               [ 2]   72 	decw x
      00801A 26 F9            [ 1]   73 	jrne	00001$
      00801C                         74 00002$:
      00801C AE 00 00         [ 2]   75 	ldw	x, #l_INITIALIZER
      00801F 27 09            [ 1]   76 	jreq	00004$
      008021                         77 00003$:
      008021 D6 80 38         [ 1]   78 	ld	a, (s_INITIALIZER - 1, x)
      008024 D7 00 00         [ 1]   79 	ld	(s_INITIALIZED - 1, x), a
      008027 5A               [ 2]   80 	decw	x
      008028 26 F7            [ 1]   81 	jrne	00003$
      00802A                         82 00004$:
                                     83 ; stm8_genXINIT() end
                                     84 	.area GSFINAL
      00802A CC 80 04         [ 2]   85 	jp	__sdcc_program_startup
                                     86 ;--------------------------------------------------------
                                     87 ; Home
                                     88 ;--------------------------------------------------------
                                     89 	.area HOME
                                     90 	.area HOME
      008004                         91 __sdcc_program_startup:
      008004 CC 80 59         [ 2]   92 	jp	_main
                                     93 ;	return from main will return to caller
                                     94 ;--------------------------------------------------------
                                     95 ; code
                                     96 ;--------------------------------------------------------
                                     97 	.area CODE
                           000000    98 	G$delay_ms$0$0 ==.
                           000000    99 	C$main.c$5$0_0$308 ==.
                                    100 ;	main.c: 5: void delay_ms(uint16_t u16Delay)
                                    101 ;	-----------------------------------------
                                    102 ;	 function delay_ms
                                    103 ;	-----------------------------------------
      008039                        104 _delay_ms:
      008039 89               [ 2]  105 	pushw	x
                           000001   106 	C$main.c$8$1_0$308 ==.
                                    107 ;	main.c: 8: while (u16Delay) {
      00803A                        108 00104$:
      00803A 1E 01            [ 2]  109 	ldw	x, (0x01, sp)
      00803C 27 18            [ 1]  110 	jreq	00107$
                           000005   111 	C$main.c$9$2_0$309 ==.
                                    112 ;	main.c: 9: TIM4_SetCounter(0);
      00803E 4F               [ 1]  113 	clr	a
      00803F CD 85 99         [ 4]  114 	call	_TIM4_SetCounter
                           000009   115 	C$main.c$10$2_0$309 ==.
                                    116 ;	main.c: 10: TIM4_ClearFlag(TIM4_FLAG_UPDATE);
      008042 A6 01            [ 1]  117 	ld	a, #0x01
      008044 CD 85 B9         [ 4]  118 	call	_TIM4_ClearFlag
                           00000E   119 	C$main.c$11$2_0$309 ==.
                                    120 ;	main.c: 11: while (TIM4_GetFlagStatus(TIM4_FLAG_UPDATE) == RESET) {
      008047                        121 00101$:
      008047 A6 01            [ 1]  122 	ld	a, #0x01
      008049 CD 85 A9         [ 4]  123 	call	_TIM4_GetFlagStatus
      00804C 4D               [ 1]  124 	tnz	a
      00804D 27 F8            [ 1]  125 	jreq	00101$
                           000016   126 	C$main.c$13$2_0$309 ==.
                                    127 ;	main.c: 13: --u16Delay;
      00804F 1E 01            [ 2]  128 	ldw	x, (0x01, sp)
      008051 5A               [ 2]  129 	decw	x
      008052 1F 01            [ 2]  130 	ldw	(0x01, sp), x
      008054 20 E4            [ 2]  131 	jra	00104$
      008056                        132 00107$:
                           00001D   133 	C$main.c$15$1_0$308 ==.
                                    134 ;	main.c: 15: }
      008056 5B 02            [ 2]  135 	addw	sp, #2
                           00001F   136 	C$main.c$15$1_0$308 ==.
                           00001F   137 	XG$delay_ms$0$0 ==.
      008058 81               [ 4]  138 	ret
                           000020   139 	G$main$0$0 ==.
                           000020   140 	C$main.c$17$1_0$312 ==.
                                    141 ;	main.c: 17: void main(void)
                                    142 ;	-----------------------------------------
                                    143 ;	 function main
                                    144 ;	-----------------------------------------
      008059                        145 _main:
                           000020   146 	C$main.c$20$1_0$312 ==.
                                    147 ;	main.c: 20: CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
      008059 4F               [ 1]  148 	clr	a
      00805A CD 83 33         [ 4]  149 	call	_CLK_HSIPrescalerConfig
                           000024   150 	C$main.c$21$1_0$312 ==.
                                    151 ;	main.c: 21: GPIO_DeInit(GPIOB);
      00805D AE 50 05         [ 2]  152 	ldw	x, #0x5005
      008060 CD 80 8A         [ 4]  153 	call	_GPIO_DeInit
                           00002A   154 	C$main.c$22$1_0$312 ==.
                                    155 ;	main.c: 22: GPIO_Init(GPIOB, GPIO_PIN_5, GPIO_MODE_OUT_PP_LOW_FAST);
      008063 4B E0            [ 1]  156 	push	#0xe0
      008065 A6 20            [ 1]  157 	ld	a, #0x20
      008067 AE 50 05         [ 2]  158 	ldw	x, #0x5005
      00806A CD 80 97         [ 4]  159 	call	_GPIO_Init
                           000034   160 	C$main.c$23$1_0$312 ==.
                                    161 ;	main.c: 23: TIM4_TimeBaseInit(TIM4_PRESCALER_128, 125 - 1);
      00806D 4B 7C            [ 1]  162 	push	#0x7c
      00806F A6 07            [ 1]  163 	ld	a, #0x07
      008071 CD 84 E8         [ 4]  164 	call	_TIM4_TimeBaseInit
                           00003B   165 	C$main.c$24$1_0$312 ==.
                                    166 ;	main.c: 24: TIM4_Cmd(ENABLE);
      008074 A6 01            [ 1]  167 	ld	a, #0x01
      008076 CD 84 F4         [ 4]  168 	call	_TIM4_Cmd
                           000040   169 	C$main.c$26$1_0$312 ==.
                                    170 ;	main.c: 26: while(1) {
      008079                        171 00102$:
                           000040   172 	C$main.c$27$2_0$313 ==.
                                    173 ;	main.c: 27: delay_ms(2000);
      008079 AE 07 D0         [ 2]  174 	ldw	x, #0x07d0
      00807C CD 80 39         [ 4]  175 	call	_delay_ms
                           000046   176 	C$main.c$28$2_0$313 ==.
                                    177 ;	main.c: 28: GPIO_WriteReverse(GPIOB, GPIO_PIN_5);
      00807F A6 20            [ 1]  178 	ld	a, #0x20
      008081 AE 50 05         [ 2]  179 	ldw	x, #0x5005
      008084 CD 81 29         [ 4]  180 	call	_GPIO_WriteReverse
      008087 20 F0            [ 2]  181 	jra	00102$
                           000050   182 	C$main.c$30$1_0$312 ==.
                                    183 ;	main.c: 30: }
                           000050   184 	C$main.c$30$1_0$312 ==.
                           000050   185 	XG$main$0$0 ==.
      008089 81               [ 4]  186 	ret
                                    187 	.area CODE
                                    188 	.area CONST
                                    189 	.area INITIALIZER
                                    190 	.area CABS (ABS)
