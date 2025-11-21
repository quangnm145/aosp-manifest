                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler
                                      3 ; Version 4.5.0 #15242 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_gpio
                                      6 	
                                      7 ;--------------------------------------------------------
                                      8 ; Public variables in this module
                                      9 ;--------------------------------------------------------
                                     10 	.globl _GPIO_DeInit
                                     11 	.globl _GPIO_Init
                                     12 	.globl _GPIO_Write
                                     13 	.globl _GPIO_WriteHigh
                                     14 	.globl _GPIO_WriteLow
                                     15 	.globl _GPIO_WriteReverse
                                     16 	.globl _GPIO_ReadOutputData
                                     17 	.globl _GPIO_ReadInputData
                                     18 	.globl _GPIO_ReadInputPin
                                     19 	.globl _GPIO_ExternalPullUpConfig
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area DATA
                                     24 ;--------------------------------------------------------
                                     25 ; ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area INITIALIZED
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DABS (ABS)
                                     32 
                                     33 ; default segment ordering for linker
                                     34 	.area HOME
                                     35 	.area GSINIT
                                     36 	.area GSFINAL
                                     37 	.area CONST
                                     38 	.area INITIALIZER
                                     39 	.area CODE
                                     40 
                                     41 ;--------------------------------------------------------
                                     42 ; global & static initialisations
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
                                     45 	.area GSINIT
                                     46 	.area GSFINAL
                                     47 	.area GSINIT
                                     48 ;--------------------------------------------------------
                                     49 ; Home
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area HOME
                                     53 ;--------------------------------------------------------
                                     54 ; code
                                     55 ;--------------------------------------------------------
                                     56 	.area CODE
                           000000    57 	G$GPIO_DeInit$0$0 ==.
                           000000    58 	C$stm8s_gpio.c$53$0_0$307 ==.
                                     59 ;	d:\sdcc\lib\src\stm8s_gpio.c: 53: void GPIO_DeInit(GPIO_TypeDef* GPIOx)
                                     60 ;	-----------------------------------------
                                     61 ;	 function GPIO_DeInit
                                     62 ;	-----------------------------------------
      00808A                         63 _GPIO_DeInit:
      00808A 51               [ 1]   64 	exgw	x, y
                           000001    65 	C$stm8s_gpio.c$55$1_0$307 ==.
                                     66 ;	d:\sdcc\lib\src\stm8s_gpio.c: 55: GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
      00808B 90 7F            [ 1]   67 	clr	(y)
                           000003    68 	C$stm8s_gpio.c$56$1_0$307 ==.
                                     69 ;	d:\sdcc\lib\src\stm8s_gpio.c: 56: GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
      00808D 93               [ 1]   70 	ldw	x, y
      00808E 6F 02            [ 1]   71 	clr	(0x02, x)
                           000006    72 	C$stm8s_gpio.c$57$1_0$307 ==.
                                     73 ;	d:\sdcc\lib\src\stm8s_gpio.c: 57: GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
      008090 93               [ 1]   74 	ldw	x, y
      008091 6F 03            [ 1]   75 	clr	(0x0003, x)
                           000009    76 	C$stm8s_gpio.c$58$1_0$307 ==.
                                     77 ;	d:\sdcc\lib\src\stm8s_gpio.c: 58: GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
      008093 93               [ 1]   78 	ldw	x, y
      008094 6F 04            [ 1]   79 	clr	(0x0004, x)
                           00000C    80 	C$stm8s_gpio.c$59$1_0$307 ==.
                                     81 ;	d:\sdcc\lib\src\stm8s_gpio.c: 59: }
                           00000C    82 	C$stm8s_gpio.c$59$1_0$307 ==.
                           00000C    83 	XG$GPIO_DeInit$0$0 ==.
      008096 81               [ 4]   84 	ret
                           00000D    85 	G$GPIO_Init$0$0 ==.
                           00000D    86 	C$stm8s_gpio.c$71$1_0$309 ==.
                                     87 ;	d:\sdcc\lib\src\stm8s_gpio.c: 71: void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
                                     88 ;	-----------------------------------------
                                     89 ;	 function GPIO_Init
                                     90 ;	-----------------------------------------
      008097                         91 _GPIO_Init:
      008097 52 08            [ 2]   92 	sub	sp, #8
      008099 1F 07            [ 2]   93 	ldw	(0x07, sp), x
      00809B 6B 06            [ 1]   94 	ld	(0x06, sp), a
                           000013    95 	C$stm8s_gpio.c$81$1_0$309 ==.
                                     96 ;	d:\sdcc\lib\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      00809D 1E 07            [ 2]   97 	ldw	x, (0x07, sp)
      00809F 1C 00 04         [ 2]   98 	addw	x, #0x0004
      0080A2 1F 01            [ 2]   99 	ldw	(0x01, sp), x
      0080A4 F6               [ 1]  100 	ld	a, (x)
      0080A5 88               [ 1]  101 	push	a
      0080A6 7B 07            [ 1]  102 	ld	a, (0x07, sp)
      0080A8 43               [ 1]  103 	cpl	a
      0080A9 6B 04            [ 1]  104 	ld	(0x04, sp), a
      0080AB 84               [ 1]  105 	pop	a
      0080AC 14 03            [ 1]  106 	and	a, (0x03, sp)
      0080AE 1E 01            [ 2]  107 	ldw	x, (0x01, sp)
      0080B0 F7               [ 1]  108 	ld	(x), a
                           000027   109 	C$stm8s_gpio.c$98$1_0$309 ==.
                                    110 ;	d:\sdcc\lib\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0080B1 1E 07            [ 2]  111 	ldw	x, (0x07, sp)
      0080B3 5C               [ 1]  112 	incw	x
      0080B4 5C               [ 1]  113 	incw	x
      0080B5 1F 04            [ 2]  114 	ldw	(0x04, sp), x
                           00002D   115 	C$stm8s_gpio.c$87$1_0$309 ==.
                                    116 ;	d:\sdcc\lib\src\stm8s_gpio.c: 87: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
      0080B7 0D 0B            [ 1]  117 	tnz	(0x0b, sp)
      0080B9 2A 1D            [ 1]  118 	jrpl	00105$
                           000031   119 	C$stm8s_gpio.c$91$1_0$309 ==.
                                    120 ;	d:\sdcc\lib\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0080BB 1E 07            [ 2]  121 	ldw	x, (0x07, sp)
      0080BD F6               [ 1]  122 	ld	a, (x)
                           000034   123 	C$stm8s_gpio.c$89$2_0$310 ==.
                                    124 ;	d:\sdcc\lib\src\stm8s_gpio.c: 89: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
      0080BE 88               [ 1]  125 	push	a
      0080BF 7B 0C            [ 1]  126 	ld	a, (0x0c, sp)
      0080C1 A5 10            [ 1]  127 	bcp	a, #0x10
      0080C3 84               [ 1]  128 	pop	a
      0080C4 27 05            [ 1]  129 	jreq	00102$
                           00003C   130 	C$stm8s_gpio.c$91$3_0$311 ==.
                                    131 ;	d:\sdcc\lib\src\stm8s_gpio.c: 91: GPIOx->ODR |= (uint8_t)GPIO_Pin;
      0080C6 1A 06            [ 1]  132 	or	a, (0x06, sp)
      0080C8 F7               [ 1]  133 	ld	(x), a
      0080C9 20 03            [ 2]  134 	jra	00103$
      0080CB                        135 00102$:
                           000041   136 	C$stm8s_gpio.c$95$3_0$312 ==.
                                    137 ;	d:\sdcc\lib\src\stm8s_gpio.c: 95: GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
      0080CB 14 03            [ 1]  138 	and	a, (0x03, sp)
      0080CD F7               [ 1]  139 	ld	(x), a
      0080CE                        140 00103$:
                           000044   141 	C$stm8s_gpio.c$98$2_0$310 ==.
                                    142 ;	d:\sdcc\lib\src\stm8s_gpio.c: 98: GPIOx->DDR |= (uint8_t)GPIO_Pin;
      0080CE 1E 04            [ 2]  143 	ldw	x, (0x04, sp)
      0080D0 F6               [ 1]  144 	ld	a, (x)
      0080D1 1A 06            [ 1]  145 	or	a, (0x06, sp)
      0080D3 1E 04            [ 2]  146 	ldw	x, (0x04, sp)
      0080D5 F7               [ 1]  147 	ld	(x), a
      0080D6 20 08            [ 2]  148 	jra	00106$
      0080D8                        149 00105$:
                           00004E   150 	C$stm8s_gpio.c$103$2_0$313 ==.
                                    151 ;	d:\sdcc\lib\src\stm8s_gpio.c: 103: GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
      0080D8 1E 04            [ 2]  152 	ldw	x, (0x04, sp)
      0080DA F6               [ 1]  153 	ld	a, (x)
      0080DB 14 03            [ 1]  154 	and	a, (0x03, sp)
      0080DD 1E 04            [ 2]  155 	ldw	x, (0x04, sp)
      0080DF F7               [ 1]  156 	ld	(x), a
      0080E0                        157 00106$:
                           000056   158 	C$stm8s_gpio.c$112$1_0$309 ==.
                                    159 ;	d:\sdcc\lib\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0080E0 1E 07            [ 2]  160 	ldw	x, (0x07, sp)
      0080E2 1C 00 03         [ 2]  161 	addw	x, #0x0003
      0080E5 F6               [ 1]  162 	ld	a, (x)
                           00005C   163 	C$stm8s_gpio.c$110$1_0$309 ==.
                                    164 ;	d:\sdcc\lib\src\stm8s_gpio.c: 110: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
      0080E6 88               [ 1]  165 	push	a
      0080E7 7B 0C            [ 1]  166 	ld	a, (0x0c, sp)
      0080E9 A5 40            [ 1]  167 	bcp	a, #0x40
      0080EB 84               [ 1]  168 	pop	a
      0080EC 27 05            [ 1]  169 	jreq	00108$
                           000064   170 	C$stm8s_gpio.c$112$2_0$314 ==.
                                    171 ;	d:\sdcc\lib\src\stm8s_gpio.c: 112: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      0080EE 1A 06            [ 1]  172 	or	a, (0x06, sp)
      0080F0 F7               [ 1]  173 	ld	(x), a
      0080F1 20 03            [ 2]  174 	jra	00109$
      0080F3                        175 00108$:
                           000069   176 	C$stm8s_gpio.c$116$2_0$315 ==.
                                    177 ;	d:\sdcc\lib\src\stm8s_gpio.c: 116: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      0080F3 14 03            [ 1]  178 	and	a, (0x03, sp)
      0080F5 F7               [ 1]  179 	ld	(x), a
      0080F6                        180 00109$:
                           00006C   181 	C$stm8s_gpio.c$81$1_0$309 ==.
                                    182 ;	d:\sdcc\lib\src\stm8s_gpio.c: 81: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      0080F6 1E 01            [ 2]  183 	ldw	x, (0x01, sp)
      0080F8 F6               [ 1]  184 	ld	a, (x)
                           00006F   185 	C$stm8s_gpio.c$123$1_0$309 ==.
                                    186 ;	d:\sdcc\lib\src\stm8s_gpio.c: 123: if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
      0080F9 88               [ 1]  187 	push	a
      0080FA 7B 0C            [ 1]  188 	ld	a, (0x0c, sp)
      0080FC A5 20            [ 1]  189 	bcp	a, #0x20
      0080FE 84               [ 1]  190 	pop	a
      0080FF 27 07            [ 1]  191 	jreq	00111$
                           000077   192 	C$stm8s_gpio.c$125$2_0$316 ==.
                                    193 ;	d:\sdcc\lib\src\stm8s_gpio.c: 125: GPIOx->CR2 |= (uint8_t)GPIO_Pin;
      008101 1A 06            [ 1]  194 	or	a, (0x06, sp)
      008103 1E 01            [ 2]  195 	ldw	x, (0x01, sp)
      008105 F7               [ 1]  196 	ld	(x), a
      008106 20 05            [ 2]  197 	jra	00113$
      008108                        198 00111$:
                           00007E   199 	C$stm8s_gpio.c$129$2_0$317 ==.
                                    200 ;	d:\sdcc\lib\src\stm8s_gpio.c: 129: GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
      008108 14 03            [ 1]  201 	and	a, (0x03, sp)
      00810A 1E 01            [ 2]  202 	ldw	x, (0x01, sp)
      00810C F7               [ 1]  203 	ld	(x), a
      00810D                        204 00113$:
                           000083   205 	C$stm8s_gpio.c$131$1_0$309 ==.
                                    206 ;	d:\sdcc\lib\src\stm8s_gpio.c: 131: }
      00810D 5B 08            [ 2]  207 	addw	sp, #8
      00810F 85               [ 2]  208 	popw	x
      008110 84               [ 1]  209 	pop	a
      008111 FC               [ 2]  210 	jp	(x)
                           000088   211 	G$GPIO_Write$0$0 ==.
                           000088   212 	C$stm8s_gpio.c$141$1_0$319 ==.
                                    213 ;	d:\sdcc\lib\src\stm8s_gpio.c: 141: void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
                                    214 ;	-----------------------------------------
                                    215 ;	 function GPIO_Write
                                    216 ;	-----------------------------------------
      008112                        217 _GPIO_Write:
                           000088   218 	C$stm8s_gpio.c$143$1_0$319 ==.
                                    219 ;	d:\sdcc\lib\src\stm8s_gpio.c: 143: GPIOx->ODR = PortVal;
      008112 F7               [ 1]  220 	ld	(x), a
                           000089   221 	C$stm8s_gpio.c$144$1_0$319 ==.
                                    222 ;	d:\sdcc\lib\src\stm8s_gpio.c: 144: }
                           000089   223 	C$stm8s_gpio.c$144$1_0$319 ==.
                           000089   224 	XG$GPIO_Write$0$0 ==.
      008113 81               [ 4]  225 	ret
                           00008A   226 	G$GPIO_WriteHigh$0$0 ==.
                           00008A   227 	C$stm8s_gpio.c$154$1_0$321 ==.
                                    228 ;	d:\sdcc\lib\src\stm8s_gpio.c: 154: void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    229 ;	-----------------------------------------
                                    230 ;	 function GPIO_WriteHigh
                                    231 ;	-----------------------------------------
      008114                        232 _GPIO_WriteHigh:
      008114 88               [ 1]  233 	push	a
      008115 6B 01            [ 1]  234 	ld	(0x01, sp), a
                           00008D   235 	C$stm8s_gpio.c$156$1_0$321 ==.
                                    236 ;	d:\sdcc\lib\src\stm8s_gpio.c: 156: GPIOx->ODR |= (uint8_t)PortPins;
      008117 F6               [ 1]  237 	ld	a, (x)
      008118 1A 01            [ 1]  238 	or	a, (0x01, sp)
      00811A F7               [ 1]  239 	ld	(x), a
                           000091   240 	C$stm8s_gpio.c$157$1_0$321 ==.
                                    241 ;	d:\sdcc\lib\src\stm8s_gpio.c: 157: }
      00811B 84               [ 1]  242 	pop	a
                           000092   243 	C$stm8s_gpio.c$157$1_0$321 ==.
                           000092   244 	XG$GPIO_WriteHigh$0$0 ==.
      00811C 81               [ 4]  245 	ret
                           000093   246 	G$GPIO_WriteLow$0$0 ==.
                           000093   247 	C$stm8s_gpio.c$167$1_0$323 ==.
                                    248 ;	d:\sdcc\lib\src\stm8s_gpio.c: 167: void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    249 ;	-----------------------------------------
                                    250 ;	 function GPIO_WriteLow
                                    251 ;	-----------------------------------------
      00811D                        252 _GPIO_WriteLow:
      00811D 88               [ 1]  253 	push	a
                           000094   254 	C$stm8s_gpio.c$169$1_0$323 ==.
                                    255 ;	d:\sdcc\lib\src\stm8s_gpio.c: 169: GPIOx->ODR &= (uint8_t)(~PortPins);
      00811E 88               [ 1]  256 	push	a
      00811F F6               [ 1]  257 	ld	a, (x)
      008120 6B 02            [ 1]  258 	ld	(0x02, sp), a
      008122 84               [ 1]  259 	pop	a
      008123 43               [ 1]  260 	cpl	a
      008124 14 01            [ 1]  261 	and	a, (0x01, sp)
      008126 F7               [ 1]  262 	ld	(x), a
                           00009D   263 	C$stm8s_gpio.c$170$1_0$323 ==.
                                    264 ;	d:\sdcc\lib\src\stm8s_gpio.c: 170: }
      008127 84               [ 1]  265 	pop	a
                           00009E   266 	C$stm8s_gpio.c$170$1_0$323 ==.
                           00009E   267 	XG$GPIO_WriteLow$0$0 ==.
      008128 81               [ 4]  268 	ret
                           00009F   269 	G$GPIO_WriteReverse$0$0 ==.
                           00009F   270 	C$stm8s_gpio.c$180$1_0$325 ==.
                                    271 ;	d:\sdcc\lib\src\stm8s_gpio.c: 180: void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
                                    272 ;	-----------------------------------------
                                    273 ;	 function GPIO_WriteReverse
                                    274 ;	-----------------------------------------
      008129                        275 _GPIO_WriteReverse:
      008129 88               [ 1]  276 	push	a
      00812A 6B 01            [ 1]  277 	ld	(0x01, sp), a
                           0000A2   278 	C$stm8s_gpio.c$182$1_0$325 ==.
                                    279 ;	d:\sdcc\lib\src\stm8s_gpio.c: 182: GPIOx->ODR ^= (uint8_t)PortPins;
      00812C F6               [ 1]  280 	ld	a, (x)
      00812D 18 01            [ 1]  281 	xor	a, (0x01, sp)
      00812F F7               [ 1]  282 	ld	(x), a
                           0000A6   283 	C$stm8s_gpio.c$183$1_0$325 ==.
                                    284 ;	d:\sdcc\lib\src\stm8s_gpio.c: 183: }
      008130 84               [ 1]  285 	pop	a
                           0000A7   286 	C$stm8s_gpio.c$183$1_0$325 ==.
                           0000A7   287 	XG$GPIO_WriteReverse$0$0 ==.
      008131 81               [ 4]  288 	ret
                           0000A8   289 	G$GPIO_ReadOutputData$0$0 ==.
                           0000A8   290 	C$stm8s_gpio.c$191$1_0$327 ==.
                                    291 ;	d:\sdcc\lib\src\stm8s_gpio.c: 191: uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
                                    292 ;	-----------------------------------------
                                    293 ;	 function GPIO_ReadOutputData
                                    294 ;	-----------------------------------------
      008132                        295 _GPIO_ReadOutputData:
                           0000A8   296 	C$stm8s_gpio.c$193$1_0$327 ==.
                                    297 ;	d:\sdcc\lib\src\stm8s_gpio.c: 193: return ((uint8_t)GPIOx->ODR);
      008132 F6               [ 1]  298 	ld	a, (x)
                           0000A9   299 	C$stm8s_gpio.c$194$1_0$327 ==.
                                    300 ;	d:\sdcc\lib\src\stm8s_gpio.c: 194: }
                           0000A9   301 	C$stm8s_gpio.c$194$1_0$327 ==.
                           0000A9   302 	XG$GPIO_ReadOutputData$0$0 ==.
      008133 81               [ 4]  303 	ret
                           0000AA   304 	G$GPIO_ReadInputData$0$0 ==.
                           0000AA   305 	C$stm8s_gpio.c$202$1_0$329 ==.
                                    306 ;	d:\sdcc\lib\src\stm8s_gpio.c: 202: uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
                                    307 ;	-----------------------------------------
                                    308 ;	 function GPIO_ReadInputData
                                    309 ;	-----------------------------------------
      008134                        310 _GPIO_ReadInputData:
                           0000AA   311 	C$stm8s_gpio.c$204$1_0$329 ==.
                                    312 ;	d:\sdcc\lib\src\stm8s_gpio.c: 204: return ((uint8_t)GPIOx->IDR);
      008134 E6 01            [ 1]  313 	ld	a, (0x1, x)
                           0000AC   314 	C$stm8s_gpio.c$205$1_0$329 ==.
                                    315 ;	d:\sdcc\lib\src\stm8s_gpio.c: 205: }
                           0000AC   316 	C$stm8s_gpio.c$205$1_0$329 ==.
                           0000AC   317 	XG$GPIO_ReadInputData$0$0 ==.
      008136 81               [ 4]  318 	ret
                           0000AD   319 	G$GPIO_ReadInputPin$0$0 ==.
                           0000AD   320 	C$stm8s_gpio.c$213$1_0$331 ==.
                                    321 ;	d:\sdcc\lib\src\stm8s_gpio.c: 213: BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
                                    322 ;	-----------------------------------------
                                    323 ;	 function GPIO_ReadInputPin
                                    324 ;	-----------------------------------------
      008137                        325 _GPIO_ReadInputPin:
      008137 88               [ 1]  326 	push	a
      008138 6B 01            [ 1]  327 	ld	(0x01, sp), a
                           0000B0   328 	C$stm8s_gpio.c$215$1_0$331 ==.
                                    329 ;	d:\sdcc\lib\src\stm8s_gpio.c: 215: return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
      00813A E6 01            [ 1]  330 	ld	a, (0x1, x)
      00813C 14 01            [ 1]  331 	and	a, (0x01, sp)
      00813E 40               [ 1]  332 	neg	a
      00813F 4F               [ 1]  333 	clr	a
      008140 49               [ 1]  334 	rlc	a
                           0000B7   335 	C$stm8s_gpio.c$216$1_0$331 ==.
                                    336 ;	d:\sdcc\lib\src\stm8s_gpio.c: 216: }
      008141 5B 01            [ 2]  337 	addw	sp, #1
                           0000B9   338 	C$stm8s_gpio.c$216$1_0$331 ==.
                           0000B9   339 	XG$GPIO_ReadInputPin$0$0 ==.
      008143 81               [ 4]  340 	ret
                           0000BA   341 	G$GPIO_ExternalPullUpConfig$0$0 ==.
                           0000BA   342 	C$stm8s_gpio.c$225$1_0$333 ==.
                                    343 ;	d:\sdcc\lib\src\stm8s_gpio.c: 225: void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
                                    344 ;	-----------------------------------------
                                    345 ;	 function GPIO_ExternalPullUpConfig
                                    346 ;	-----------------------------------------
      008144                        347 _GPIO_ExternalPullUpConfig:
      008144 88               [ 1]  348 	push	a
                           0000BB   349 	C$stm8s_gpio.c$233$1_0$333 ==.
                                    350 ;	d:\sdcc\lib\src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008145 1C 00 03         [ 2]  351 	addw	x, #0x0003
      008148 88               [ 1]  352 	push	a
      008149 F6               [ 1]  353 	ld	a, (x)
      00814A 6B 02            [ 1]  354 	ld	(0x02, sp), a
      00814C 84               [ 1]  355 	pop	a
                           0000C3   356 	C$stm8s_gpio.c$231$1_0$333 ==.
                                    357 ;	d:\sdcc\lib\src\stm8s_gpio.c: 231: if (NewState != DISABLE) /* External Pull-Up Set*/
      00814D 0D 04            [ 1]  358 	tnz	(0x04, sp)
      00814F 27 05            [ 1]  359 	jreq	00102$
                           0000C7   360 	C$stm8s_gpio.c$233$2_0$334 ==.
                                    361 ;	d:\sdcc\lib\src\stm8s_gpio.c: 233: GPIOx->CR1 |= (uint8_t)GPIO_Pin;
      008151 1A 01            [ 1]  362 	or	a, (0x01, sp)
      008153 F7               [ 1]  363 	ld	(x), a
      008154 20 04            [ 2]  364 	jra	00104$
      008156                        365 00102$:
                           0000CC   366 	C$stm8s_gpio.c$236$2_0$335 ==.
                                    367 ;	d:\sdcc\lib\src\stm8s_gpio.c: 236: GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
      008156 43               [ 1]  368 	cpl	a
      008157 14 01            [ 1]  369 	and	a, (0x01, sp)
      008159 F7               [ 1]  370 	ld	(x), a
      00815A                        371 00104$:
                           0000D0   372 	C$stm8s_gpio.c$238$1_0$333 ==.
                                    373 ;	d:\sdcc\lib\src\stm8s_gpio.c: 238: }
      00815A 84               [ 1]  374 	pop	a
      00815B 85               [ 2]  375 	popw	x
      00815C 84               [ 1]  376 	pop	a
      00815D FC               [ 2]  377 	jp	(x)
                                    378 	.area CODE
                                    379 	.area CONST
                                    380 	.area INITIALIZER
                                    381 	.area CABS (ABS)
