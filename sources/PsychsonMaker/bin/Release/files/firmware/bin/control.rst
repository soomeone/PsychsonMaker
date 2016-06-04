                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
                                      4 ; This file was generated Sat Jun 04 12:50:10 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module control
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _HandleVendorRequest
                                     13 	.globl _HandleClassRequest
                                     14 	.globl _HandleStandardRequest
                                     15 	.globl _EP0ACK
                                     16 	.globl _SendControlResponse
                                     17 	.globl _RI
                                     18 	.globl _TI
                                     19 	.globl _RB8
                                     20 	.globl _TB8
                                     21 	.globl _REN
                                     22 	.globl _SM2
                                     23 	.globl _SM1
                                     24 	.globl _SM0
                                     25 	.globl _RXD
                                     26 	.globl _TXD
                                     27 	.globl _INT0
                                     28 	.globl _INT1
                                     29 	.globl _T0
                                     30 	.globl _T1
                                     31 	.globl _WR
                                     32 	.globl _RD
                                     33 	.globl _PX0
                                     34 	.globl _PT0
                                     35 	.globl _PX1
                                     36 	.globl _PT1
                                     37 	.globl _PS
                                     38 	.globl _EX0
                                     39 	.globl _ET0
                                     40 	.globl _EX1
                                     41 	.globl _ET1
                                     42 	.globl _ES
                                     43 	.globl _EA
                                     44 	.globl _IT0
                                     45 	.globl _IE0
                                     46 	.globl _IT1
                                     47 	.globl _IE1
                                     48 	.globl _TR0
                                     49 	.globl _TF0
                                     50 	.globl _TR1
                                     51 	.globl _TF1
                                     52 	.globl _P
                                     53 	.globl _OV
                                     54 	.globl _RS0
                                     55 	.globl _RS1
                                     56 	.globl _F0
                                     57 	.globl _AC
                                     58 	.globl _CY
                                     59 	.globl _SBUF
                                     60 	.globl _SCON
                                     61 	.globl _IP
                                     62 	.globl _IE
                                     63 	.globl _TH1
                                     64 	.globl _TH0
                                     65 	.globl _TL1
                                     66 	.globl _TL0
                                     67 	.globl _TMOD
                                     68 	.globl _TCON
                                     69 	.globl _PCON
                                     70 	.globl _DPH
                                     71 	.globl _DPL
                                     72 	.globl _SP
                                     73 	.globl _B
                                     74 	.globl _ACC
                                     75 	.globl _PSW
                                     76 	.globl _P3
                                     77 	.globl _P2
                                     78 	.globl _P1
                                     79 	.globl _P0
                                     80 	.globl _PRAMCTL
                                     81 	.globl _BANK2PAH
                                     82 	.globl _BANK2PAL
                                     83 	.globl _BANK2VA
                                     84 	.globl _BANK1PAH
                                     85 	.globl _BANK1PAL
                                     86 	.globl _BANK1VA
                                     87 	.globl _BANK0PAH
                                     88 	.globl _BANK0PAL
                                     89 	.globl _WARMSTATUS
                                     90 	.globl _GPIO0OUT
                                     91 	.globl _GPIO0DIR
                                     92 	.globl _DMACMD
                                     93 	.globl _DMAFILL3
                                     94 	.globl _DMAFILL2
                                     95 	.globl _DMAFILL1
                                     96 	.globl _DMAFILL0
                                     97 	.globl _DMASIZEH
                                     98 	.globl _DMASIZEM
                                     99 	.globl _DMASIZEL
                                    100 	.globl _DMADSTH
                                    101 	.globl _DMADSTM
                                    102 	.globl _DMADSTL
                                    103 	.globl _DMASRCH
                                    104 	.globl _DMASRCM
                                    105 	.globl _DMASRCL
                                    106 	.globl _NANDCSDIR
                                    107 	.globl _NANDCSOUT
                                    108 	.globl _EP4
                                    109 	.globl _EP3
                                    110 	.globl _EP2
                                    111 	.globl _EP1
                                    112 	.globl _EP0
                                    113 	.globl _SETUPDAT
                                    114 	.globl _EP0CS
                                    115 	.globl _EPIE
                                    116 	.globl _EPIRQ
                                    117 	.globl _USBIRQ
                                    118 	.globl _USBSTAT
                                    119 	.globl _USBCTL
                                    120 	.globl _REGBANK
                                    121 ;--------------------------------------------------------
                                    122 ; special function registers
                                    123 ;--------------------------------------------------------
                                    124 	.area RSEG    (ABS,DATA)
      000000                        125 	.org 0x0000
                           000080   126 _P0	=	0x0080
                           000090   127 _P1	=	0x0090
                           0000A0   128 _P2	=	0x00a0
                           0000B0   129 _P3	=	0x00b0
                           0000D0   130 _PSW	=	0x00d0
                           0000E0   131 _ACC	=	0x00e0
                           0000F0   132 _B	=	0x00f0
                           000081   133 _SP	=	0x0081
                           000082   134 _DPL	=	0x0082
                           000083   135 _DPH	=	0x0083
                           000087   136 _PCON	=	0x0087
                           000088   137 _TCON	=	0x0088
                           000089   138 _TMOD	=	0x0089
                           00008A   139 _TL0	=	0x008a
                           00008B   140 _TL1	=	0x008b
                           00008C   141 _TH0	=	0x008c
                           00008D   142 _TH1	=	0x008d
                           0000A8   143 _IE	=	0x00a8
                           0000B8   144 _IP	=	0x00b8
                           000098   145 _SCON	=	0x0098
                           000099   146 _SBUF	=	0x0099
                                    147 ;--------------------------------------------------------
                                    148 ; special function bits
                                    149 ;--------------------------------------------------------
                                    150 	.area RSEG    (ABS,DATA)
      000000                        151 	.org 0x0000
                           0000D7   152 _CY	=	0x00d7
                           0000D6   153 _AC	=	0x00d6
                           0000D5   154 _F0	=	0x00d5
                           0000D4   155 _RS1	=	0x00d4
                           0000D3   156 _RS0	=	0x00d3
                           0000D2   157 _OV	=	0x00d2
                           0000D0   158 _P	=	0x00d0
                           00008F   159 _TF1	=	0x008f
                           00008E   160 _TR1	=	0x008e
                           00008D   161 _TF0	=	0x008d
                           00008C   162 _TR0	=	0x008c
                           00008B   163 _IE1	=	0x008b
                           00008A   164 _IT1	=	0x008a
                           000089   165 _IE0	=	0x0089
                           000088   166 _IT0	=	0x0088
                           0000AF   167 _EA	=	0x00af
                           0000AC   168 _ES	=	0x00ac
                           0000AB   169 _ET1	=	0x00ab
                           0000AA   170 _EX1	=	0x00aa
                           0000A9   171 _ET0	=	0x00a9
                           0000A8   172 _EX0	=	0x00a8
                           0000BC   173 _PS	=	0x00bc
                           0000BB   174 _PT1	=	0x00bb
                           0000BA   175 _PX1	=	0x00ba
                           0000B9   176 _PT0	=	0x00b9
                           0000B8   177 _PX0	=	0x00b8
                           0000B7   178 _RD	=	0x00b7
                           0000B6   179 _WR	=	0x00b6
                           0000B5   180 _T1	=	0x00b5
                           0000B4   181 _T0	=	0x00b4
                           0000B3   182 _INT1	=	0x00b3
                           0000B2   183 _INT0	=	0x00b2
                           0000B1   184 _TXD	=	0x00b1
                           0000B0   185 _RXD	=	0x00b0
                           00009F   186 _SM0	=	0x009f
                           00009E   187 _SM1	=	0x009e
                           00009D   188 _SM2	=	0x009d
                           00009C   189 _REN	=	0x009c
                           00009B   190 _TB8	=	0x009b
                           00009A   191 _RB8	=	0x009a
                           000099   192 _TI	=	0x0099
                           000098   193 _RI	=	0x0098
                                    194 ;--------------------------------------------------------
                                    195 ; overlayable register banks
                                    196 ;--------------------------------------------------------
                                    197 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        198 	.ds 8
                                    199 ;--------------------------------------------------------
                                    200 ; internal ram data
                                    201 ;--------------------------------------------------------
                                    202 	.area DSEG    (DATA)
                                    203 ;--------------------------------------------------------
                                    204 ; overlayable items in internal ram 
                                    205 ;--------------------------------------------------------
                                    206 ;--------------------------------------------------------
                                    207 ; indirectly addressable internal ram data
                                    208 ;--------------------------------------------------------
                                    209 	.area ISEG    (DATA)
                                    210 ;--------------------------------------------------------
                                    211 ; absolute internal ram data
                                    212 ;--------------------------------------------------------
                                    213 	.area IABS    (ABS,DATA)
                                    214 	.area IABS    (ABS,DATA)
                                    215 ;--------------------------------------------------------
                                    216 ; bit data
                                    217 ;--------------------------------------------------------
                                    218 	.area BSEG    (BIT)
                                    219 ;--------------------------------------------------------
                                    220 ; paged external ram data
                                    221 ;--------------------------------------------------------
                                    222 	.area PSEG    (PAG,XDATA)
                                    223 ;--------------------------------------------------------
                                    224 ; external ram data
                                    225 ;--------------------------------------------------------
                                    226 	.area XSEG    (XDATA)
                           00F000   227 _REGBANK	=	0xf000
                           00F008   228 _USBCTL	=	0xf008
                           00F009   229 _USBSTAT	=	0xf009
                           00F027   230 _USBIRQ	=	0xf027
                           00F020   231 _EPIRQ	=	0xf020
                           00F030   232 _EPIE	=	0xf030
                           00F048   233 _EP0CS	=	0xf048
                           00F0B8   234 _SETUPDAT	=	0xf0b8
                           00F1C0   235 _EP0	=	0xf1c0
                           00F200   236 _EP1	=	0xf200
                           00F240   237 _EP2	=	0xf240
                           00F280   238 _EP3	=	0xf280
                           00F2C0   239 _EP4	=	0xf2c0
                           00F608   240 _NANDCSOUT	=	0xf608
                           00F618   241 _NANDCSDIR	=	0xf618
                           00F900   242 _DMASRCL	=	0xf900
                           00F901   243 _DMASRCM	=	0xf901
                           00F902   244 _DMASRCH	=	0xf902
                           00F904   245 _DMADSTL	=	0xf904
                           00F905   246 _DMADSTM	=	0xf905
                           00F906   247 _DMADSTH	=	0xf906
                           00F908   248 _DMASIZEL	=	0xf908
                           00F909   249 _DMASIZEM	=	0xf909
                           00F90A   250 _DMASIZEH	=	0xf90a
                           00F90C   251 _DMAFILL0	=	0xf90c
                           00F90D   252 _DMAFILL1	=	0xf90d
                           00F90E   253 _DMAFILL2	=	0xf90e
                           00F90F   254 _DMAFILL3	=	0xf90f
                           00F930   255 _DMACMD	=	0xf930
                           00FA14   256 _GPIO0DIR	=	0xfa14
                           00FA15   257 _GPIO0OUT	=	0xfa15
                           00FA38   258 _WARMSTATUS	=	0xfa38
                           00FA40   259 _BANK0PAL	=	0xfa40
                           00FA41   260 _BANK0PAH	=	0xfa41
                           00FA42   261 _BANK1VA	=	0xfa42
                           00FA43   262 _BANK1PAL	=	0xfa43
                           00FA44   263 _BANK1PAH	=	0xfa44
                           00FA45   264 _BANK2VA	=	0xfa45
                           00FA46   265 _BANK2PAL	=	0xfa46
                           00FA47   266 _BANK2PAH	=	0xfa47
                           00FA48   267 _PRAMCTL	=	0xfa48
                                    268 ;--------------------------------------------------------
                                    269 ; absolute external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XABS    (ABS,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external initialized ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XISEG   (XDATA)
                                    276 	.area HOME    (CODE)
                                    277 	.area GSINIT0 (CODE)
                                    278 	.area GSINIT1 (CODE)
                                    279 	.area GSINIT2 (CODE)
                                    280 	.area GSINIT3 (CODE)
                                    281 	.area GSINIT4 (CODE)
                                    282 	.area GSINIT5 (CODE)
                                    283 	.area GSINIT  (CODE)
                                    284 	.area GSFINAL (CODE)
                                    285 	.area CSEG    (CODE)
                                    286 ;--------------------------------------------------------
                                    287 ; global & static initialisations
                                    288 ;--------------------------------------------------------
                                    289 	.area HOME    (CODE)
                                    290 	.area GSINIT  (CODE)
                                    291 	.area GSFINAL (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 ;--------------------------------------------------------
                                    294 ; Home
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area HOME    (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; code
                                    300 ;--------------------------------------------------------
                                    301 	.area CSEG    (CODE)
                                    302 ;------------------------------------------------------------
                                    303 ;Allocation info for local variables in function 'EP0ACK'
                                    304 ;------------------------------------------------------------
                                    305 ;	control.c:28: void EP0ACK()
                                    306 ;	-----------------------------------------
                                    307 ;	 function EP0ACK
                                    308 ;	-----------------------------------------
      000B4E                        309 _EP0ACK:
                           000007   310 	ar7 = 0x07
                           000006   311 	ar6 = 0x06
                           000005   312 	ar5 = 0x05
                           000004   313 	ar4 = 0x04
                           000003   314 	ar3 = 0x03
                           000002   315 	ar2 = 0x02
                           000001   316 	ar1 = 0x01
                           000000   317 	ar0 = 0x00
                                    318 ;	control.c:30: EP0CS = bmEP0ACK;
      000B4E 90 F0 48         [24]  319 	mov	dptr,#_EP0CS
      000B51 74 01            [12]  320 	mov	a,#0x01
      000B53 F0               [24]  321 	movx	@dptr,a
      000B54 22               [24]  322 	ret
                                    323 ;------------------------------------------------------------
                                    324 ;Allocation info for local variables in function 'SetAddress'
                                    325 ;------------------------------------------------------------
                                    326 ;ret                       Allocated to registers r7 
                                    327 ;------------------------------------------------------------
                                    328 ;	control.c:33: static BYTE SetAddress()
                                    329 ;	-----------------------------------------
                                    330 ;	 function SetAddress
                                    331 ;	-----------------------------------------
      000B55                        332 _SetAddress:
                                    333 ;	control.c:35: BYTE ret = FALSE;
      000B55 7F 00            [12]  334 	mov	r7,#0x00
                                    335 ;	control.c:37: if (wValue < 0x7F)
      000B57 C3               [12]  336 	clr	c
      000B58 E5 1C            [12]  337 	mov	a,_wValue
      000B5A 94 7F            [12]  338 	subb	a,#0x7F
      000B5C E5 1D            [12]  339 	mov	a,(_wValue + 1)
      000B5E 94 00            [12]  340 	subb	a,#0x00
      000B60 50 05            [24]  341 	jnc	00102$
                                    342 ;	control.c:39: EP0ACK();
      000B62 12 0B 4E         [24]  343 	lcall	_EP0ACK
                                    344 ;	control.c:40: ret = TRUE;
      000B65 7F 01            [12]  345 	mov	r7,#0x01
      000B67                        346 00102$:
                                    347 ;	control.c:43: return ret;
      000B67 8F 82            [24]  348 	mov	dpl,r7
      000B69 22               [24]  349 	ret
                                    350 ;------------------------------------------------------------
                                    351 ;Allocation info for local variables in function 'GetDescriptor'
                                    352 ;------------------------------------------------------------
                                    353 ;type                      Allocated to registers r7 
                                    354 ;i                         Allocated to registers r7 
                                    355 ;total                     Allocated to registers r5 
                                    356 ;ret                       Allocated to registers r6 
                                    357 ;------------------------------------------------------------
                                    358 ;	control.c:46: static BYTE GetDescriptor()
                                    359 ;	-----------------------------------------
                                    360 ;	 function GetDescriptor
                                    361 ;	-----------------------------------------
      000B6A                        362 _GetDescriptor:
                                    363 ;	control.c:48: BYTE type = (wValue >> 8) & 0xFF;
      000B6A AF 1D            [24]  364 	mov	r7,(_wValue + 1)
                                    365 ;	control.c:50: BYTE ret = FALSE;
      000B6C 7E 00            [12]  366 	mov	r6,#0x00
                                    367 ;	control.c:52: switch (type)
      000B6E BF 01 02         [24]  368 	cjne	r7,#0x01,00182$
      000B71 80 14            [24]  369 	sjmp	00134$
      000B73                        370 00182$:
      000B73 BF 02 02         [24]  371 	cjne	r7,#0x02,00183$
      000B76 80 41            [24]  372 	sjmp	00103$
      000B78                        373 00183$:
      000B78 BF 06 03         [24]  374 	cjne	r7,#0x06,00184$
      000B7B 02 0B EF         [24]  375 	ljmp	00140$
      000B7E                        376 00184$:
      000B7E BF 22 03         [24]  377 	cjne	r7,#0x22,00185$
      000B81 02 0C 20         [24]  378 	ljmp	00143$
      000B84                        379 00185$:
      000B84 02 0C 4F         [24]  380 	ljmp	00110$
                                    381 ;	control.c:56: for (i = 0; i < 0x12; i++)
      000B87                        382 00134$:
      000B87 7F 00            [12]  383 	mov	r7,#0x00
      000B89                        384 00111$:
                                    385 ;	control.c:58: EP0.fifo = deviceDescriptor[i];
      000B89 EF               [12]  386 	mov	a,r7
      000B8A 90 30 2C         [24]  387 	mov	dptr,#_deviceDescriptor
      000B8D 93               [24]  388 	movc	a,@a+dptr
      000B8E FD               [12]  389 	mov	r5,a
      000B8F 90 F1 DC         [24]  390 	mov	dptr,#(_EP0 + 0x001c)
      000B92 F0               [24]  391 	movx	@dptr,a
                                    392 ;	control.c:56: for (i = 0; i < 0x12; i++)
      000B93 0F               [12]  393 	inc	r7
      000B94 BF 12 00         [24]  394 	cjne	r7,#0x12,00186$
      000B97                        395 00186$:
                                    396 ;	control.c:61: SendControlResponse(wLength < 0x12 ? wLength : 0x12);
      000B97 40 F0            [24]  397 	jc	00111$
      000B99 E5 20            [12]  398 	mov	a,_wLength
      000B9B 94 12            [12]  399 	subb	a,#0x12
      000B9D E5 21            [12]  400 	mov	a,(_wLength + 1)
      000B9F 94 00            [12]  401 	subb	a,#0x00
      000BA1 50 06            [24]  402 	jnc	00122$
      000BA3 AD 20            [24]  403 	mov	r5,_wLength
      000BA5 AF 21            [24]  404 	mov	r7,(_wLength + 1)
      000BA7 80 04            [24]  405 	sjmp	00123$
      000BA9                        406 00122$:
      000BA9 7D 12            [12]  407 	mov	r5,#0x12
      000BAB 7F 00            [12]  408 	mov	r7,#0x00
      000BAD                        409 00123$:
      000BAD 8D 82            [24]  410 	mov	dpl,r5
      000BAF 8F 83            [24]  411 	mov	dph,r7
      000BB1 12 04 50         [24]  412 	lcall	_SendControlResponse
                                    413 ;	control.c:62: ret = TRUE;
      000BB4 7E 01            [12]  414 	mov	r6,#0x01
                                    415 ;	control.c:64: break;
      000BB6 02 0C 4F         [24]  416 	ljmp	00110$
                                    417 ;	control.c:66: case 0x02:
      000BB9                        418 00103$:
                                    419 ;	control.c:68: total = wLength < sizeof(configDescriptor) ? wLength : sizeof(configDescriptor);
      000BB9 C3               [12]  420 	clr	c
      000BBA E5 20            [12]  421 	mov	a,_wLength
      000BBC 94 47            [12]  422 	subb	a,#0x47
      000BBE E5 21            [12]  423 	mov	a,(_wLength + 1)
      000BC0 94 00            [12]  424 	subb	a,#0x00
      000BC2 50 06            [24]  425 	jnc	00124$
      000BC4 AD 20            [24]  426 	mov	r5,_wLength
      000BC6 AF 21            [24]  427 	mov	r7,(_wLength + 1)
      000BC8 80 04            [24]  428 	sjmp	00125$
      000BCA                        429 00124$:
      000BCA 7D 47            [12]  430 	mov	r5,#0x47
      000BCC 7F 00            [12]  431 	mov	r7,#0x00
      000BCE                        432 00125$:
                                    433 ;	control.c:69: for (i = 0; i < total; i++)
      000BCE 7F 00            [12]  434 	mov	r7,#0x00
      000BD0                        435 00114$:
      000BD0 C3               [12]  436 	clr	c
      000BD1 EF               [12]  437 	mov	a,r7
      000BD2 9D               [12]  438 	subb	a,r5
      000BD3 50 0D            [24]  439 	jnc	00104$
                                    440 ;	control.c:71: EP0.fifo = configDescriptor[i];
      000BD5 EF               [12]  441 	mov	a,r7
      000BD6 90 30 3E         [24]  442 	mov	dptr,#_configDescriptor
      000BD9 93               [24]  443 	movc	a,@a+dptr
      000BDA FC               [12]  444 	mov	r4,a
      000BDB 90 F1 DC         [24]  445 	mov	dptr,#(_EP0 + 0x001c)
      000BDE F0               [24]  446 	movx	@dptr,a
                                    447 ;	control.c:69: for (i = 0; i < total; i++)
      000BDF 0F               [12]  448 	inc	r7
      000BE0 80 EE            [24]  449 	sjmp	00114$
      000BE2                        450 00104$:
                                    451 ;	control.c:74: SendControlResponse(total);
      000BE2 7F 00            [12]  452 	mov	r7,#0x00
      000BE4 8D 82            [24]  453 	mov	dpl,r5
      000BE6 8F 83            [24]  454 	mov	dph,r7
      000BE8 12 04 50         [24]  455 	lcall	_SendControlResponse
                                    456 ;	control.c:75: ret = TRUE;
      000BEB 7E 01            [12]  457 	mov	r6,#0x01
                                    458 ;	control.c:77: break;
                                    459 ;	control.c:81: for (i = 0; i < sizeof(deviceQualifierDescriptor); i++)
      000BED 80 60            [24]  460 	sjmp	00110$
      000BEF                        461 00140$:
      000BEF 7F 00            [12]  462 	mov	r7,#0x00
      000BF1                        463 00116$:
                                    464 ;	control.c:83: EP0.fifo = deviceQualifierDescriptor[i];
      000BF1 EF               [12]  465 	mov	a,r7
      000BF2 90 30 C4         [24]  466 	mov	dptr,#_deviceQualifierDescriptor
      000BF5 93               [24]  467 	movc	a,@a+dptr
      000BF6 FD               [12]  468 	mov	r5,a
      000BF7 90 F1 DC         [24]  469 	mov	dptr,#(_EP0 + 0x001c)
      000BFA F0               [24]  470 	movx	@dptr,a
                                    471 ;	control.c:81: for (i = 0; i < sizeof(deviceQualifierDescriptor); i++)
      000BFB 0F               [12]  472 	inc	r7
      000BFC BF 0A 00         [24]  473 	cjne	r7,#0x0A,00191$
      000BFF                        474 00191$:
                                    475 ;	control.c:86: SendControlResponse(wLength < sizeof(deviceQualifierDescriptor) ? wLength : sizeof(deviceQualifierDescriptor));
      000BFF 40 F0            [24]  476 	jc	00116$
      000C01 E5 20            [12]  477 	mov	a,_wLength
      000C03 94 0A            [12]  478 	subb	a,#0x0A
      000C05 E5 21            [12]  479 	mov	a,(_wLength + 1)
      000C07 94 00            [12]  480 	subb	a,#0x00
      000C09 50 06            [24]  481 	jnc	00126$
      000C0B AD 20            [24]  482 	mov	r5,_wLength
      000C0D AF 21            [24]  483 	mov	r7,(_wLength + 1)
      000C0F 80 04            [24]  484 	sjmp	00127$
      000C11                        485 00126$:
      000C11 7D 0A            [12]  486 	mov	r5,#0x0A
      000C13 7F 00            [12]  487 	mov	r7,#0x00
      000C15                        488 00127$:
      000C15 8D 82            [24]  489 	mov	dpl,r5
      000C17 8F 83            [24]  490 	mov	dph,r7
      000C19 12 04 50         [24]  491 	lcall	_SendControlResponse
                                    492 ;	control.c:87: ret = TRUE;
      000C1C 7E 01            [12]  493 	mov	r6,#0x01
                                    494 ;	control.c:89: break;
                                    495 ;	control.c:93: for (i = 0; i < sizeof(HIDreportDescriptor); i++)
      000C1E 80 2F            [24]  496 	sjmp	00110$
      000C20                        497 00143$:
      000C20 7F 00            [12]  498 	mov	r7,#0x00
      000C22                        499 00118$:
                                    500 ;	control.c:95: EP0.fifo = HIDreportDescriptor[i];
      000C22 EF               [12]  501 	mov	a,r7
      000C23 90 30 85         [24]  502 	mov	dptr,#_HIDreportDescriptor
      000C26 93               [24]  503 	movc	a,@a+dptr
      000C27 FD               [12]  504 	mov	r5,a
      000C28 90 F1 DC         [24]  505 	mov	dptr,#(_EP0 + 0x001c)
      000C2B F0               [24]  506 	movx	@dptr,a
                                    507 ;	control.c:93: for (i = 0; i < sizeof(HIDreportDescriptor); i++)
      000C2C 0F               [12]  508 	inc	r7
      000C2D BF 3F 00         [24]  509 	cjne	r7,#0x3F,00194$
      000C30                        510 00194$:
                                    511 ;	control.c:98: SendControlResponse(wLength < sizeof(HIDreportDescriptor) ? wLength : sizeof(HIDreportDescriptor));
      000C30 40 F0            [24]  512 	jc	00118$
      000C32 E5 20            [12]  513 	mov	a,_wLength
      000C34 94 3F            [12]  514 	subb	a,#0x3F
      000C36 E5 21            [12]  515 	mov	a,(_wLength + 1)
      000C38 94 00            [12]  516 	subb	a,#0x00
      000C3A 50 06            [24]  517 	jnc	00128$
      000C3C AD 20            [24]  518 	mov	r5,_wLength
      000C3E AF 21            [24]  519 	mov	r7,(_wLength + 1)
      000C40 80 04            [24]  520 	sjmp	00129$
      000C42                        521 00128$:
      000C42 7D 3F            [12]  522 	mov	r5,#0x3F
      000C44 7F 00            [12]  523 	mov	r7,#0x00
      000C46                        524 00129$:
      000C46 8D 82            [24]  525 	mov	dpl,r5
      000C48 8F 83            [24]  526 	mov	dph,r7
      000C4A 12 04 50         [24]  527 	lcall	_SendControlResponse
                                    528 ;	control.c:99: ret = TRUE;
      000C4D 7E 01            [12]  529 	mov	r6,#0x01
                                    530 ;	control.c:107: }
      000C4F                        531 00110$:
                                    532 ;	control.c:109: return ret;
      000C4F 8E 82            [24]  533 	mov	dpl,r6
      000C51 22               [24]  534 	ret
                                    535 ;------------------------------------------------------------
                                    536 ;Allocation info for local variables in function 'SetConfiguration'
                                    537 ;------------------------------------------------------------
                                    538 ;ret                       Allocated to registers r7 
                                    539 ;------------------------------------------------------------
                                    540 ;	control.c:112: static BYTE SetConfiguration()
                                    541 ;	-----------------------------------------
                                    542 ;	 function SetConfiguration
                                    543 ;	-----------------------------------------
      000C52                        544 _SetConfiguration:
                                    545 ;	control.c:114: BYTE ret = FALSE;
      000C52 7F 00            [12]  546 	mov	r7,#0x00
                                    547 ;	control.c:116: if (wValue <= 1)
      000C54 C3               [12]  548 	clr	c
      000C55 74 01            [12]  549 	mov	a,#0x01
      000C57 95 1C            [12]  550 	subb	a,_wValue
      000C59 E4               [12]  551 	clr	a
      000C5A 95 1D            [12]  552 	subb	a,(_wValue + 1)
      000C5C 40 05            [24]  553 	jc	00102$
                                    554 ;	control.c:118: EP0ACK();
      000C5E 12 0B 4E         [24]  555 	lcall	_EP0ACK
                                    556 ;	control.c:119: ret = TRUE;
      000C61 7F 01            [12]  557 	mov	r7,#0x01
      000C63                        558 00102$:
                                    559 ;	control.c:122: return ret;
      000C63 8F 82            [24]  560 	mov	dpl,r7
      000C65 22               [24]  561 	ret
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'HandleStandardRequest'
                                    564 ;------------------------------------------------------------
                                    565 ;	control.c:125: BYTE HandleStandardRequest()
                                    566 ;	-----------------------------------------
                                    567 ;	 function HandleStandardRequest
                                    568 ;	-----------------------------------------
      000C66                        569 _HandleStandardRequest:
                                    570 ;	control.c:127: switch(bRequest)
      000C66 74 05            [12]  571 	mov	a,#0x05
      000C68 B5 1B 02         [24]  572 	cjne	a,_bRequest,00117$
      000C6B 80 0E            [24]  573 	sjmp	00101$
      000C6D                        574 00117$:
      000C6D 74 06            [12]  575 	mov	a,#0x06
      000C6F B5 1B 02         [24]  576 	cjne	a,_bRequest,00118$
      000C72 80 0A            [24]  577 	sjmp	00102$
      000C74                        578 00118$:
      000C74 74 09            [12]  579 	mov	a,#0x09
                                    580 ;	control.c:129: case 0x05:
      000C76 B5 1B 0B         [24]  581 	cjne	a,_bRequest,00104$
      000C79 80 06            [24]  582 	sjmp	00103$
      000C7B                        583 00101$:
                                    584 ;	control.c:131: return SetAddress();
                                    585 ;	control.c:133: case 0x06:
      000C7B 02 0B 55         [24]  586 	ljmp	_SetAddress
      000C7E                        587 00102$:
                                    588 ;	control.c:135: return GetDescriptor();
                                    589 ;	control.c:137: case 0x09:
      000C7E 02 0B 6A         [24]  590 	ljmp	_GetDescriptor
      000C81                        591 00103$:
                                    592 ;	control.c:139: return SetConfiguration();
                                    593 ;	control.c:141: default:
      000C81 02 0C 52         [24]  594 	ljmp	_SetConfiguration
      000C84                        595 00104$:
                                    596 ;	control.c:143: return FALSE;
      000C84 75 82 00         [24]  597 	mov	dpl,#0x00
                                    598 ;	control.c:145: }
      000C87 22               [24]  599 	ret
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'GetMaxLUN'
                                    602 ;------------------------------------------------------------
                                    603 ;	control.c:148: static BYTE GetMaxLUN()
                                    604 ;	-----------------------------------------
                                    605 ;	 function GetMaxLUN
                                    606 ;	-----------------------------------------
      000C88                        607 _GetMaxLUN:
                                    608 ;	control.c:150: EP0.fifo = 0x00;
      000C88 90 F1 DC         [24]  609 	mov	dptr,#(_EP0 + 0x001c)
      000C8B E4               [12]  610 	clr	a
      000C8C F0               [24]  611 	movx	@dptr,a
                                    612 ;	control.c:151: SendControlResponse(wLength < 0x01 ? wLength : 0x01);
      000C8D C3               [12]  613 	clr	c
      000C8E E5 20            [12]  614 	mov	a,_wLength
      000C90 94 01            [12]  615 	subb	a,#0x01
      000C92 E5 21            [12]  616 	mov	a,(_wLength + 1)
      000C94 94 00            [12]  617 	subb	a,#0x00
      000C96 50 06            [24]  618 	jnc	00103$
      000C98 AE 20            [24]  619 	mov	r6,_wLength
      000C9A AF 21            [24]  620 	mov	r7,(_wLength + 1)
      000C9C 80 04            [24]  621 	sjmp	00104$
      000C9E                        622 00103$:
      000C9E 7E 01            [12]  623 	mov	r6,#0x01
      000CA0 7F 00            [12]  624 	mov	r7,#0x00
      000CA2                        625 00104$:
      000CA2 8E 82            [24]  626 	mov	dpl,r6
      000CA4 8F 83            [24]  627 	mov	dph,r7
      000CA6 12 04 50         [24]  628 	lcall	_SendControlResponse
                                    629 ;	control.c:153: return TRUE;
      000CA9 75 82 01         [24]  630 	mov	dpl,#0x01
      000CAC 22               [24]  631 	ret
                                    632 ;------------------------------------------------------------
                                    633 ;Allocation info for local variables in function 'HandleClassRequest'
                                    634 ;------------------------------------------------------------
                                    635 ;	control.c:156: BYTE HandleClassRequest()
                                    636 ;	-----------------------------------------
                                    637 ;	 function HandleClassRequest
                                    638 ;	-----------------------------------------
      000CAD                        639 _HandleClassRequest:
                                    640 ;	control.c:158: switch(bRequest)
      000CAD 74 09            [12]  641 	mov	a,#0x09
      000CAF B5 1B 02         [24]  642 	cjne	a,_bRequest,00117$
      000CB2 80 0E            [24]  643 	sjmp	00101$
      000CB4                        644 00117$:
      000CB4 74 0A            [12]  645 	mov	a,#0x0A
      000CB6 B5 1B 02         [24]  646 	cjne	a,_bRequest,00118$
      000CB9 80 11            [24]  647 	sjmp	00102$
      000CBB                        648 00118$:
      000CBB 74 FE            [12]  649 	mov	a,#0xFE
                                    650 ;	control.c:160: case 0x09:
      000CBD B5 1B 16         [24]  651 	cjne	a,_bRequest,00104$
      000CC0 80 11            [24]  652 	sjmp	00103$
      000CC2                        653 00101$:
                                    654 ;	control.c:162: EP0CS = 0x05;
      000CC2 90 F0 48         [24]  655 	mov	dptr,#_EP0CS
      000CC5 74 05            [12]  656 	mov	a,#0x05
      000CC7 F0               [24]  657 	movx	@dptr,a
                                    658 ;	control.c:163: return TRUE;
      000CC8 75 82 01         [24]  659 	mov	dpl,#0x01
                                    660 ;	control.c:165: case 0x0A:
      000CCB 22               [24]  661 	ret
      000CCC                        662 00102$:
                                    663 ;	control.c:167: EP0ACK();
      000CCC 12 0B 4E         [24]  664 	lcall	_EP0ACK
                                    665 ;	control.c:168: return TRUE;
      000CCF 75 82 01         [24]  666 	mov	dpl,#0x01
                                    667 ;	control.c:170: case 0xFE:
      000CD2 22               [24]  668 	ret
      000CD3                        669 00103$:
                                    670 ;	control.c:172: return GetMaxLUN();
                                    671 ;	control.c:174: default:
      000CD3 02 0C 88         [24]  672 	ljmp	_GetMaxLUN
      000CD6                        673 00104$:
                                    674 ;	control.c:176: return FALSE;
      000CD6 75 82 00         [24]  675 	mov	dpl,#0x00
                                    676 ;	control.c:178: }
      000CD9 22               [24]  677 	ret
                                    678 ;------------------------------------------------------------
                                    679 ;Allocation info for local variables in function 'HandleVendorRequest'
                                    680 ;------------------------------------------------------------
                                    681 ;	control.c:181: BYTE HandleVendorRequest()
                                    682 ;	-----------------------------------------
                                    683 ;	 function HandleVendorRequest
                                    684 ;	-----------------------------------------
      000CDA                        685 _HandleVendorRequest:
                                    686 ;	control.c:183: return FALSE;
      000CDA 75 82 00         [24]  687 	mov	dpl,#0x00
      000CDD 22               [24]  688 	ret
                                    689 	.area CSEG    (CODE)
                                    690 	.area CONST   (CODE)
      00302C                        691 _deviceDescriptor:
      00302C 12                     692 	.db #0x12	; 18
      00302D 01                     693 	.db #0x01	; 1
      00302E 00                     694 	.db #0x00	; 0
      00302F 02                     695 	.db #0x02	; 2
      003030 00                     696 	.db #0x00	; 0
      003031 00                     697 	.db #0x00	; 0
      003032 00                     698 	.db #0x00	; 0
      003033 40                     699 	.db #0x40	; 64
      003034 FE                     700 	.db #0xFE	; 254
      003035 13                     701 	.db #0x13	; 19
      003036 01                     702 	.db #0x01	; 1
      003037 52                     703 	.db #0x52	; 82	'R'
      003038 10                     704 	.db #0x10	; 16
      003039 01                     705 	.db #0x01	; 1
      00303A 00                     706 	.db #0x00	; 0
      00303B 00                     707 	.db #0x00	; 0
      00303C 00                     708 	.db #0x00	; 0
      00303D 01                     709 	.db #0x01	; 1
      00303E                        710 _configDescriptor:
      00303E 09                     711 	.db #0x09	; 9
      00303F 02                     712 	.db #0x02	; 2
      003040 47                     713 	.db #0x47	; 71	'G'
      003041 00                     714 	.db #0x00	; 0
      003042 02                     715 	.db #0x02	; 2
      003043 01                     716 	.db #0x01	; 1
      003044 00                     717 	.db #0x00	; 0
      003045 80                     718 	.db #0x80	; 128
      003046 4B                     719 	.db #0x4B	; 75	'K'
      003047 09                     720 	.db #0x09	; 9
      003048 04                     721 	.db #0x04	; 4
      003049 00                     722 	.db #0x00	; 0
      00304A 00                     723 	.db #0x00	; 0
      00304B 03                     724 	.db #0x03	; 3
      00304C 08                     725 	.db #0x08	; 8
      00304D 06                     726 	.db #0x06	; 6
      00304E 50                     727 	.db #0x50	; 80	'P'
      00304F 00                     728 	.db #0x00	; 0
      003050 07                     729 	.db #0x07	; 7
      003051 05                     730 	.db #0x05	; 5
      003052 81                     731 	.db #0x81	; 129
      003053 02                     732 	.db #0x02	; 2
      003054 40                     733 	.db #0x40	; 64
      003055 00                     734 	.db #0x00	; 0
      003056 00                     735 	.db #0x00	; 0
      003057 07                     736 	.db #0x07	; 7
      003058 05                     737 	.db #0x05	; 5
      003059 02                     738 	.db #0x02	; 2
      00305A 02                     739 	.db #0x02	; 2
      00305B 40                     740 	.db #0x40	; 64
      00305C 00                     741 	.db #0x00	; 0
      00305D 00                     742 	.db #0x00	; 0
      00305E 07                     743 	.db #0x07	; 7
      00305F 05                     744 	.db #0x05	; 5
      003060 83                     745 	.db #0x83	; 131
      003061 03                     746 	.db #0x03	; 3
      003062 08                     747 	.db #0x08	; 8
      003063 00                     748 	.db #0x00	; 0
      003064 00                     749 	.db #0x00	; 0
      003065 09                     750 	.db #0x09	; 9
      003066 04                     751 	.db #0x04	; 4
      003067 01                     752 	.db #0x01	; 1
      003068 00                     753 	.db #0x00	; 0
      003069 02                     754 	.db #0x02	; 2
      00306A 03                     755 	.db #0x03	; 3
      00306B 01                     756 	.db #0x01	; 1
      00306C 01                     757 	.db #0x01	; 1
      00306D 00                     758 	.db #0x00	; 0
      00306E 09                     759 	.db #0x09	; 9
      00306F 21                     760 	.db #0x21	; 33
      003070 01                     761 	.db #0x01	; 1
      003071 01                     762 	.db #0x01	; 1
      003072 00                     763 	.db #0x00	; 0
      003073 01                     764 	.db #0x01	; 1
      003074 22                     765 	.db #0x22	; 34
      003075 3F                     766 	.db #0x3F	; 63
      003076 00                     767 	.db #0x00	; 0
      003077 07                     768 	.db #0x07	; 7
      003078 05                     769 	.db #0x05	; 5
      003079 83                     770 	.db #0x83	; 131
      00307A 03                     771 	.db #0x03	; 3
      00307B 08                     772 	.db #0x08	; 8
      00307C 00                     773 	.db #0x00	; 0
      00307D 01                     774 	.db #0x01	; 1
      00307E 07                     775 	.db #0x07	; 7
      00307F 05                     776 	.db #0x05	; 5
      003080 04                     777 	.db #0x04	; 4
      003081 03                     778 	.db #0x03	; 3
      003082 08                     779 	.db #0x08	; 8
      003083 00                     780 	.db #0x00	; 0
      003084 01                     781 	.db #0x01	; 1
      003085                        782 _HIDreportDescriptor:
      003085 05                     783 	.db #0x05	; 5
      003086 01                     784 	.db #0x01	; 1
      003087 09                     785 	.db #0x09	; 9
      003088 06                     786 	.db #0x06	; 6
      003089 A1                     787 	.db #0xA1	; 161
      00308A 01                     788 	.db #0x01	; 1
      00308B 05                     789 	.db #0x05	; 5
      00308C 07                     790 	.db #0x07	; 7
      00308D 19                     791 	.db #0x19	; 25
      00308E E0                     792 	.db #0xE0	; 224
      00308F 29                     793 	.db #0x29	; 41
      003090 E7                     794 	.db #0xE7	; 231
      003091 15                     795 	.db #0x15	; 21
      003092 00                     796 	.db #0x00	; 0
      003093 25                     797 	.db #0x25	; 37
      003094 01                     798 	.db #0x01	; 1
      003095 75                     799 	.db #0x75	; 117	'u'
      003096 01                     800 	.db #0x01	; 1
      003097 95                     801 	.db #0x95	; 149
      003098 08                     802 	.db #0x08	; 8
      003099 81                     803 	.db #0x81	; 129
      00309A 02                     804 	.db #0x02	; 2
      00309B 95                     805 	.db #0x95	; 149
      00309C 01                     806 	.db #0x01	; 1
      00309D 75                     807 	.db #0x75	; 117	'u'
      00309E 08                     808 	.db #0x08	; 8
      00309F 81                     809 	.db #0x81	; 129
      0030A0 01                     810 	.db #0x01	; 1
      0030A1 95                     811 	.db #0x95	; 149
      0030A2 05                     812 	.db #0x05	; 5
      0030A3 75                     813 	.db #0x75	; 117	'u'
      0030A4 01                     814 	.db #0x01	; 1
      0030A5 05                     815 	.db #0x05	; 5
      0030A6 08                     816 	.db #0x08	; 8
      0030A7 19                     817 	.db #0x19	; 25
      0030A8 01                     818 	.db #0x01	; 1
      0030A9 29                     819 	.db #0x29	; 41
      0030AA 05                     820 	.db #0x05	; 5
      0030AB 91                     821 	.db #0x91	; 145
      0030AC 02                     822 	.db #0x02	; 2
      0030AD 95                     823 	.db #0x95	; 149
      0030AE 01                     824 	.db #0x01	; 1
      0030AF 75                     825 	.db #0x75	; 117	'u'
      0030B0 03                     826 	.db #0x03	; 3
      0030B1 91                     827 	.db #0x91	; 145
      0030B2 01                     828 	.db #0x01	; 1
      0030B3 95                     829 	.db #0x95	; 149
      0030B4 06                     830 	.db #0x06	; 6
      0030B5 75                     831 	.db #0x75	; 117	'u'
      0030B6 08                     832 	.db #0x08	; 8
      0030B7 15                     833 	.db #0x15	; 21
      0030B8 00                     834 	.db #0x00	; 0
      0030B9 25                     835 	.db #0x25	; 37
      0030BA 65                     836 	.db #0x65	; 101	'e'
      0030BB 05                     837 	.db #0x05	; 5
      0030BC 07                     838 	.db #0x07	; 7
      0030BD 19                     839 	.db #0x19	; 25
      0030BE 00                     840 	.db #0x00	; 0
      0030BF 29                     841 	.db #0x29	; 41
      0030C0 65                     842 	.db #0x65	; 101	'e'
      0030C1 81                     843 	.db #0x81	; 129
      0030C2 00                     844 	.db #0x00	; 0
      0030C3 C0                     845 	.db #0xC0	; 192
      0030C4                        846 _deviceQualifierDescriptor:
      0030C4 0A                     847 	.db #0x0A	; 10
      0030C5 06                     848 	.db #0x06	; 6
      0030C6 00                     849 	.db #0x00	; 0
      0030C7 02                     850 	.db #0x02	; 2
      0030C8 00                     851 	.db #0x00	; 0
      0030C9 00                     852 	.db #0x00	; 0
      0030CA 00                     853 	.db #0x00	; 0
      0030CB 40                     854 	.db #0x40	; 64
      0030CC 01                     855 	.db #0x01	; 1
      0030CD 00                     856 	.db #0x00	; 0
                                    857 	.area XINIT   (CODE)
                                    858 	.area CABS    (ABS,CODE)
