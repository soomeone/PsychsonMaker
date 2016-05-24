                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
                                      4 ; This file was generated Tue May 24 21:38:53 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module scsi
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _HandleCDB
                                     13 	.globl _SendData1
                                     14 	.globl _memset
                                     15 	.globl _RI
                                     16 	.globl _TI
                                     17 	.globl _RB8
                                     18 	.globl _TB8
                                     19 	.globl _REN
                                     20 	.globl _SM2
                                     21 	.globl _SM1
                                     22 	.globl _SM0
                                     23 	.globl _RXD
                                     24 	.globl _TXD
                                     25 	.globl _INT0
                                     26 	.globl _INT1
                                     27 	.globl _T0
                                     28 	.globl _T1
                                     29 	.globl _WR
                                     30 	.globl _RD
                                     31 	.globl _PX0
                                     32 	.globl _PT0
                                     33 	.globl _PX1
                                     34 	.globl _PT1
                                     35 	.globl _PS
                                     36 	.globl _EX0
                                     37 	.globl _ET0
                                     38 	.globl _EX1
                                     39 	.globl _ET1
                                     40 	.globl _ES
                                     41 	.globl _EA
                                     42 	.globl _IT0
                                     43 	.globl _IE0
                                     44 	.globl _IT1
                                     45 	.globl _IE1
                                     46 	.globl _TR0
                                     47 	.globl _TF0
                                     48 	.globl _TR1
                                     49 	.globl _TF1
                                     50 	.globl _P
                                     51 	.globl _OV
                                     52 	.globl _RS0
                                     53 	.globl _RS1
                                     54 	.globl _F0
                                     55 	.globl _AC
                                     56 	.globl _CY
                                     57 	.globl _SBUF
                                     58 	.globl _SCON
                                     59 	.globl _IP
                                     60 	.globl _IE
                                     61 	.globl _TH1
                                     62 	.globl _TH0
                                     63 	.globl _TL1
                                     64 	.globl _TL0
                                     65 	.globl _TMOD
                                     66 	.globl _TCON
                                     67 	.globl _PCON
                                     68 	.globl _DPH
                                     69 	.globl _DPL
                                     70 	.globl _SP
                                     71 	.globl _B
                                     72 	.globl _ACC
                                     73 	.globl _PSW
                                     74 	.globl _P3
                                     75 	.globl _P2
                                     76 	.globl _P1
                                     77 	.globl _P0
                                     78 	.globl _PRAMCTL
                                     79 	.globl _BANK2PAH
                                     80 	.globl _BANK2PAL
                                     81 	.globl _BANK2VA
                                     82 	.globl _BANK1PAH
                                     83 	.globl _BANK1PAL
                                     84 	.globl _BANK1VA
                                     85 	.globl _BANK0PAH
                                     86 	.globl _BANK0PAL
                                     87 	.globl _WARMSTATUS
                                     88 	.globl _GPIO0OUT
                                     89 	.globl _GPIO0DIR
                                     90 	.globl _DMACMD
                                     91 	.globl _DMAFILL3
                                     92 	.globl _DMAFILL2
                                     93 	.globl _DMAFILL1
                                     94 	.globl _DMAFILL0
                                     95 	.globl _DMASIZEH
                                     96 	.globl _DMASIZEM
                                     97 	.globl _DMASIZEL
                                     98 	.globl _DMADSTH
                                     99 	.globl _DMADSTM
                                    100 	.globl _DMADSTL
                                    101 	.globl _DMASRCH
                                    102 	.globl _DMASRCM
                                    103 	.globl _DMASRCL
                                    104 	.globl _NANDCSDIR
                                    105 	.globl _NANDCSOUT
                                    106 	.globl _EP4
                                    107 	.globl _EP3
                                    108 	.globl _EP2
                                    109 	.globl _EP1
                                    110 	.globl _EP0
                                    111 	.globl _SETUPDAT
                                    112 	.globl _EP0CS
                                    113 	.globl _EPIE
                                    114 	.globl _EPIRQ
                                    115 	.globl _USBIRQ
                                    116 	.globl _USBSTAT
                                    117 	.globl _USBCTL
                                    118 	.globl _REGBANK
                                    119 	.globl _scsi_cdb_size
                                    120 	.globl _scsi_cdb
                                    121 	.globl _scsi_lun
                                    122 	.globl _scsi_dir_in
                                    123 	.globl _scsi_tag
                                    124 	.globl _scsi_transfer_size
                                    125 	.globl _scsi_data_residue
                                    126 	.globl _scsi_status
                                    127 ;--------------------------------------------------------
                                    128 ; special function registers
                                    129 ;--------------------------------------------------------
                                    130 	.area RSEG    (ABS,DATA)
      000000                        131 	.org 0x0000
                           000080   132 _P0	=	0x0080
                           000090   133 _P1	=	0x0090
                           0000A0   134 _P2	=	0x00a0
                           0000B0   135 _P3	=	0x00b0
                           0000D0   136 _PSW	=	0x00d0
                           0000E0   137 _ACC	=	0x00e0
                           0000F0   138 _B	=	0x00f0
                           000081   139 _SP	=	0x0081
                           000082   140 _DPL	=	0x0082
                           000083   141 _DPH	=	0x0083
                           000087   142 _PCON	=	0x0087
                           000088   143 _TCON	=	0x0088
                           000089   144 _TMOD	=	0x0089
                           00008A   145 _TL0	=	0x008a
                           00008B   146 _TL1	=	0x008b
                           00008C   147 _TH0	=	0x008c
                           00008D   148 _TH1	=	0x008d
                           0000A8   149 _IE	=	0x00a8
                           0000B8   150 _IP	=	0x00b8
                           000098   151 _SCON	=	0x0098
                           000099   152 _SBUF	=	0x0099
                                    153 ;--------------------------------------------------------
                                    154 ; special function bits
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           0000D7   158 _CY	=	0x00d7
                           0000D6   159 _AC	=	0x00d6
                           0000D5   160 _F0	=	0x00d5
                           0000D4   161 _RS1	=	0x00d4
                           0000D3   162 _RS0	=	0x00d3
                           0000D2   163 _OV	=	0x00d2
                           0000D0   164 _P	=	0x00d0
                           00008F   165 _TF1	=	0x008f
                           00008E   166 _TR1	=	0x008e
                           00008D   167 _TF0	=	0x008d
                           00008C   168 _TR0	=	0x008c
                           00008B   169 _IE1	=	0x008b
                           00008A   170 _IT1	=	0x008a
                           000089   171 _IE0	=	0x0089
                           000088   172 _IT0	=	0x0088
                           0000AF   173 _EA	=	0x00af
                           0000AC   174 _ES	=	0x00ac
                           0000AB   175 _ET1	=	0x00ab
                           0000AA   176 _EX1	=	0x00aa
                           0000A9   177 _ET0	=	0x00a9
                           0000A8   178 _EX0	=	0x00a8
                           0000BC   179 _PS	=	0x00bc
                           0000BB   180 _PT1	=	0x00bb
                           0000BA   181 _PX1	=	0x00ba
                           0000B9   182 _PT0	=	0x00b9
                           0000B8   183 _PX0	=	0x00b8
                           0000B7   184 _RD	=	0x00b7
                           0000B6   185 _WR	=	0x00b6
                           0000B5   186 _T1	=	0x00b5
                           0000B4   187 _T0	=	0x00b4
                           0000B3   188 _INT1	=	0x00b3
                           0000B2   189 _INT0	=	0x00b2
                           0000B1   190 _TXD	=	0x00b1
                           0000B0   191 _RXD	=	0x00b0
                           00009F   192 _SM0	=	0x009f
                           00009E   193 _SM1	=	0x009e
                           00009D   194 _SM2	=	0x009d
                           00009C   195 _REN	=	0x009c
                           00009B   196 _TB8	=	0x009b
                           00009A   197 _RB8	=	0x009a
                           000099   198 _TI	=	0x0099
                           000098   199 _RI	=	0x0098
                                    200 ;--------------------------------------------------------
                                    201 ; overlayable register banks
                                    202 ;--------------------------------------------------------
                                    203 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        204 	.ds 8
                                    205 ;--------------------------------------------------------
                                    206 ; internal ram data
                                    207 ;--------------------------------------------------------
                                    208 	.area DSEG    (DATA)
      000025                        209 _scsi_status::
      000025                        210 	.ds 1
      000026                        211 _scsi_data_residue::
      000026                        212 	.ds 4
      00002A                        213 _scsi_transfer_size::
      00002A                        214 	.ds 4
      00002E                        215 _scsi_tag::
      00002E                        216 	.ds 4
      000032                        217 _scsi_dir_in::
      000032                        218 	.ds 1
      000033                        219 _scsi_lun::
      000033                        220 	.ds 1
      000034                        221 _scsi_cdb::
      000034                        222 	.ds 16
      000044                        223 _scsi_cdb_size::
      000044                        224 	.ds 1
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable items in internal ram 
                                    227 ;--------------------------------------------------------
                                    228 ;--------------------------------------------------------
                                    229 ; indirectly addressable internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area ISEG    (DATA)
                                    232 ;--------------------------------------------------------
                                    233 ; absolute internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area IABS    (ABS,DATA)
                                    236 	.area IABS    (ABS,DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; bit data
                                    239 ;--------------------------------------------------------
                                    240 	.area BSEG    (BIT)
                                    241 ;--------------------------------------------------------
                                    242 ; paged external ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area PSEG    (PAG,XDATA)
                                    245 ;--------------------------------------------------------
                                    246 ; external ram data
                                    247 ;--------------------------------------------------------
                                    248 	.area XSEG    (XDATA)
                           00F000   249 _REGBANK	=	0xf000
                           00F008   250 _USBCTL	=	0xf008
                           00F009   251 _USBSTAT	=	0xf009
                           00F027   252 _USBIRQ	=	0xf027
                           00F020   253 _EPIRQ	=	0xf020
                           00F030   254 _EPIE	=	0xf030
                           00F048   255 _EP0CS	=	0xf048
                           00F0B8   256 _SETUPDAT	=	0xf0b8
                           00F1C0   257 _EP0	=	0xf1c0
                           00F200   258 _EP1	=	0xf200
                           00F240   259 _EP2	=	0xf240
                           00F280   260 _EP3	=	0xf280
                           00F2C0   261 _EP4	=	0xf2c0
                           00F608   262 _NANDCSOUT	=	0xf608
                           00F618   263 _NANDCSDIR	=	0xf618
                           00F900   264 _DMASRCL	=	0xf900
                           00F901   265 _DMASRCM	=	0xf901
                           00F902   266 _DMASRCH	=	0xf902
                           00F904   267 _DMADSTL	=	0xf904
                           00F905   268 _DMADSTM	=	0xf905
                           00F906   269 _DMADSTH	=	0xf906
                           00F908   270 _DMASIZEL	=	0xf908
                           00F909   271 _DMASIZEM	=	0xf909
                           00F90A   272 _DMASIZEH	=	0xf90a
                           00F90C   273 _DMAFILL0	=	0xf90c
                           00F90D   274 _DMAFILL1	=	0xf90d
                           00F90E   275 _DMAFILL2	=	0xf90e
                           00F90F   276 _DMAFILL3	=	0xf90f
                           00F930   277 _DMACMD	=	0xf930
                           00FA14   278 _GPIO0DIR	=	0xfa14
                           00FA15   279 _GPIO0OUT	=	0xfa15
                           00FA38   280 _WARMSTATUS	=	0xfa38
                           00FA40   281 _BANK0PAL	=	0xfa40
                           00FA41   282 _BANK0PAH	=	0xfa41
                           00FA42   283 _BANK1VA	=	0xfa42
                           00FA43   284 _BANK1PAL	=	0xfa43
                           00FA44   285 _BANK1PAH	=	0xfa44
                           00FA45   286 _BANK2VA	=	0xfa45
                           00FA46   287 _BANK2PAL	=	0xfa46
                           00FA47   288 _BANK2PAH	=	0xfa47
                           00FA48   289 _PRAMCTL	=	0xfa48
                                    290 ;--------------------------------------------------------
                                    291 ; absolute external ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area XABS    (ABS,XDATA)
                                    294 ;--------------------------------------------------------
                                    295 ; external initialized ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area XISEG   (XDATA)
                                    298 	.area HOME    (CODE)
                                    299 	.area GSINIT0 (CODE)
                                    300 	.area GSINIT1 (CODE)
                                    301 	.area GSINIT2 (CODE)
                                    302 	.area GSINIT3 (CODE)
                                    303 	.area GSINIT4 (CODE)
                                    304 	.area GSINIT5 (CODE)
                                    305 	.area GSINIT  (CODE)
                                    306 	.area GSFINAL (CODE)
                                    307 	.area CSEG    (CODE)
                                    308 ;--------------------------------------------------------
                                    309 ; global & static initialisations
                                    310 ;--------------------------------------------------------
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 ;--------------------------------------------------------
                                    316 ; Home
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area HOME    (CODE)
                                    320 ;--------------------------------------------------------
                                    321 ; code
                                    322 ;--------------------------------------------------------
                                    323 	.area CSEG    (CODE)
                                    324 ;------------------------------------------------------------
                                    325 ;Allocation info for local variables in function 'HandleCDB'
                                    326 ;------------------------------------------------------------
                                    327 ;i                         Allocated to registers r6 r7 
                                    328 ;i                         Allocated with name '_HandleCDB_i_5_43'
                                    329 ;------------------------------------------------------------
                                    330 ;	scsi.c:29: BYTE HandleCDB()
                                    331 ;	-----------------------------------------
                                    332 ;	 function HandleCDB
                                    333 ;	-----------------------------------------
      000CDE                        334 _HandleCDB:
                           000007   335 	ar7 = 0x07
                           000006   336 	ar6 = 0x06
                           000005   337 	ar5 = 0x05
                           000004   338 	ar4 = 0x04
                           000003   339 	ar3 = 0x03
                           000002   340 	ar2 = 0x02
                           000001   341 	ar1 = 0x01
                           000000   342 	ar0 = 0x00
                                    343 ;	scsi.c:32: scsi_status = 1;
      000CDE 75 25 01         [24]  344 	mov	_scsi_status,#0x01
                                    345 ;	scsi.c:34: switch(scsi_cdb[0])
      000CE1 AF 34            [24]  346 	mov	r7,_scsi_cdb
      000CE3 BF 00 02         [24]  347 	cjne	r7,#0x00,00190$
      000CE6 80 37            [24]  348 	sjmp	00102$
      000CE8                        349 00190$:
      000CE8 BF 03 03         [24]  350 	cjne	r7,#0x03,00191$
      000CEB 02 0D BC         [24]  351 	ljmp	00106$
      000CEE                        352 00191$:
      000CEE BF 06 03         [24]  353 	cjne	r7,#0x06,00192$
      000CF1 02 0D F6         [24]  354 	ljmp	00109$
      000CF4                        355 00192$:
      000CF4 BF 12 02         [24]  356 	cjne	r7,#0x12,00193$
      000CF7 80 2A            [24]  357 	sjmp	00103$
      000CF9                        358 00193$:
      000CF9 BF 1A 03         [24]  359 	cjne	r7,#0x1A,00194$
      000CFC 02 0D 8E         [24]  360 	ljmp	00105$
      000CFF                        361 00194$:
      000CFF BF 1E 02         [24]  362 	cjne	r7,#0x1E,00195$
      000D02 80 14            [24]  363 	sjmp	00101$
      000D04                        364 00195$:
      000D04 BF 23 02         [24]  365 	cjne	r7,#0x23,00196$
      000D07 80 4D            [24]  366 	sjmp	00104$
      000D09                        367 00196$:
      000D09 BF C6 03         [24]  368 	cjne	r7,#0xC6,00197$
      000D0C 02 0D F6         [24]  369 	ljmp	00109$
      000D0F                        370 00197$:
      000D0F BF C7 03         [24]  371 	cjne	r7,#0xC7,00198$
      000D12 02 0D F6         [24]  372 	ljmp	00109$
      000D15                        373 00198$:
      000D15 02 0F 89         [24]  374 	ljmp	00123$
                                    375 ;	scsi.c:36: case PREVENT_ALLOW_MEDIUM_REMOVAL:
      000D18                        376 00101$:
                                    377 ;	scsi.c:38: scsi_status = 0;
      000D18 75 25 00         [24]  378 	mov	_scsi_status,#0x00
                                    379 ;	scsi.c:39: return 1;
      000D1B 75 82 01         [24]  380 	mov	dpl,#0x01
      000D1E 22               [24]  381 	ret
                                    382 ;	scsi.c:41: case TEST_UNIT_READY:
      000D1F                        383 00102$:
                                    384 ;	scsi.c:43: return 1;
      000D1F 75 82 01         [24]  385 	mov	dpl,#0x01
      000D22 22               [24]  386 	ret
                                    387 ;	scsi.c:45: case INQUIRY:
      000D23                        388 00103$:
                                    389 ;	scsi.c:47: memset(usb_buffer, 0, 36);
      000D23 75 45 00         [24]  390 	mov	_memset_PARM_2,#0x00
      000D26 75 46 24         [24]  391 	mov	_memset_PARM_3,#0x24
      000D29 75 47 00         [24]  392 	mov	(_memset_PARM_3 + 1),#0x00
      000D2C 90 00 00         [24]  393 	mov	dptr,#_usb_buffer
      000D2F 75 F0 00         [24]  394 	mov	b,#0x00
      000D32 12 0F 8D         [24]  395 	lcall	_memset
                                    396 ;	scsi.c:48: usb_buffer[1] = 0x80; //removable media
      000D35 90 00 01         [24]  397 	mov	dptr,#(_usb_buffer + 0x0001)
      000D38 74 80            [12]  398 	mov	a,#0x80
      000D3A F0               [24]  399 	movx	@dptr,a
                                    400 ;	scsi.c:49: usb_buffer[3] = 0x01; //because the UFI spec says so
      000D3B 90 00 03         [24]  401 	mov	dptr,#(_usb_buffer + 0x0003)
      000D3E 23               [12]  402 	rl	a
      000D3F F0               [24]  403 	movx	@dptr,a
                                    404 ;	scsi.c:50: usb_buffer[4] = 0x1F; //additional length
      000D40 90 00 04         [24]  405 	mov	dptr,#(_usb_buffer + 0x0004)
      000D43 74 1F            [12]  406 	mov	a,#0x1F
      000D45 F0               [24]  407 	movx	@dptr,a
                                    408 ;	scsi.c:51: SendData1(36, 0);
      000D46 75 24 00         [24]  409 	mov	_SendData1_PARM_2,#0x00
      000D49 90 00 24         [24]  410 	mov	dptr,#0x0024
      000D4C 12 04 DF         [24]  411 	lcall	_SendData1
                                    412 ;	scsi.c:52: scsi_status = 0;
      000D4F 75 25 00         [24]  413 	mov	_scsi_status,#0x00
                                    414 ;	scsi.c:53: return 1;
      000D52 75 82 01         [24]  415 	mov	dpl,#0x01
      000D55 22               [24]  416 	ret
                                    417 ;	scsi.c:55: case READ_FORMAT_CAPACITIES:
      000D56                        418 00104$:
                                    419 ;	scsi.c:57: memset(usb_buffer, 0, 12);
      000D56 75 45 00         [24]  420 	mov	_memset_PARM_2,#0x00
      000D59 75 46 0C         [24]  421 	mov	_memset_PARM_3,#0x0C
      000D5C 75 47 00         [24]  422 	mov	(_memset_PARM_3 + 1),#0x00
      000D5F 90 00 00         [24]  423 	mov	dptr,#_usb_buffer
      000D62 75 F0 00         [24]  424 	mov	b,#0x00
      000D65 12 0F 8D         [24]  425 	lcall	_memset
                                    426 ;	scsi.c:58: usb_buffer[3] = 0x08; //capacity list length
      000D68 90 00 03         [24]  427 	mov	dptr,#(_usb_buffer + 0x0003)
      000D6B 74 08            [12]  428 	mov	a,#0x08
      000D6D F0               [24]  429 	movx	@dptr,a
                                    430 ;	scsi.c:59: usb_buffer[6] = 0x10; //number of blocks (sectors) (dummy 2MB)
      000D6E 90 00 06         [24]  431 	mov	dptr,#(_usb_buffer + 0x0006)
      000D71 23               [12]  432 	rl	a
      000D72 F0               [24]  433 	movx	@dptr,a
                                    434 ;	scsi.c:60: usb_buffer[8] = 0x03;
      000D73 90 00 08         [24]  435 	mov	dptr,#(_usb_buffer + 0x0008)
      000D76 74 03            [12]  436 	mov	a,#0x03
      000D78 F0               [24]  437 	movx	@dptr,a
                                    438 ;	scsi.c:61: usb_buffer[10] = 0x02; //block length (512 bytes/sector)
      000D79 90 00 0A         [24]  439 	mov	dptr,#(_usb_buffer + 0x000a)
      000D7C 14               [12]  440 	dec	a
      000D7D F0               [24]  441 	movx	@dptr,a
                                    442 ;	scsi.c:62: SendData1(12, 0);
      000D7E 75 24 00         [24]  443 	mov	_SendData1_PARM_2,#0x00
      000D81 90 00 0C         [24]  444 	mov	dptr,#0x000C
      000D84 12 04 DF         [24]  445 	lcall	_SendData1
                                    446 ;	scsi.c:63: scsi_status = 0;
      000D87 75 25 00         [24]  447 	mov	_scsi_status,#0x00
                                    448 ;	scsi.c:64: return 1;
      000D8A 75 82 01         [24]  449 	mov	dpl,#0x01
      000D8D 22               [24]  450 	ret
                                    451 ;	scsi.c:66: case MODE_SENSE:
      000D8E                        452 00105$:
                                    453 ;	scsi.c:68: memset(usb_buffer, 0, 8);
      000D8E 75 45 00         [24]  454 	mov	_memset_PARM_2,#0x00
      000D91 75 46 08         [24]  455 	mov	_memset_PARM_3,#0x08
      000D94 75 47 00         [24]  456 	mov	(_memset_PARM_3 + 1),#0x00
      000D97 90 00 00         [24]  457 	mov	dptr,#_usb_buffer
      000D9A 75 F0 00         [24]  458 	mov	b,#0x00
      000D9D 12 0F 8D         [24]  459 	lcall	_memset
                                    460 ;	scsi.c:69: usb_buffer[0] = 0x03;
      000DA0 90 00 00         [24]  461 	mov	dptr,#_usb_buffer
      000DA3 74 03            [12]  462 	mov	a,#0x03
      000DA5 F0               [24]  463 	movx	@dptr,a
                                    464 ;	scsi.c:70: usb_buffer[2] = 0x80;
      000DA6 90 00 02         [24]  465 	mov	dptr,#(_usb_buffer + 0x0002)
      000DA9 74 80            [12]  466 	mov	a,#0x80
      000DAB F0               [24]  467 	movx	@dptr,a
                                    468 ;	scsi.c:71: SendData1(4, 0);
      000DAC 75 24 00         [24]  469 	mov	_SendData1_PARM_2,#0x00
      000DAF 90 00 04         [24]  470 	mov	dptr,#0x0004
      000DB2 12 04 DF         [24]  471 	lcall	_SendData1
                                    472 ;	scsi.c:72: scsi_status = 0;
      000DB5 75 25 00         [24]  473 	mov	_scsi_status,#0x00
                                    474 ;	scsi.c:73: return 1;
      000DB8 75 82 01         [24]  475 	mov	dpl,#0x01
      000DBB 22               [24]  476 	ret
                                    477 ;	scsi.c:75: case REQUEST_SENSE:
      000DBC                        478 00106$:
                                    479 ;	scsi.c:77: memset(usb_buffer, 0, 18);
      000DBC 75 45 00         [24]  480 	mov	_memset_PARM_2,#0x00
      000DBF 75 46 12         [24]  481 	mov	_memset_PARM_3,#0x12
      000DC2 75 47 00         [24]  482 	mov	(_memset_PARM_3 + 1),#0x00
      000DC5 90 00 00         [24]  483 	mov	dptr,#_usb_buffer
      000DC8 75 F0 00         [24]  484 	mov	b,#0x00
      000DCB 12 0F 8D         [24]  485 	lcall	_memset
                                    486 ;	scsi.c:78: usb_buffer[0] = 0x70;
      000DCE 90 00 00         [24]  487 	mov	dptr,#_usb_buffer
      000DD1 74 70            [12]  488 	mov	a,#0x70
      000DD3 F0               [24]  489 	movx	@dptr,a
                                    490 ;	scsi.c:79: usb_buffer[2] = 0x02;
      000DD4 90 00 02         [24]  491 	mov	dptr,#(_usb_buffer + 0x0002)
      000DD7 74 02            [12]  492 	mov	a,#0x02
      000DD9 F0               [24]  493 	movx	@dptr,a
                                    494 ;	scsi.c:80: usb_buffer[7] = 10;
      000DDA 90 00 07         [24]  495 	mov	dptr,#(_usb_buffer + 0x0007)
      000DDD 74 0A            [12]  496 	mov	a,#0x0A
      000DDF F0               [24]  497 	movx	@dptr,a
                                    498 ;	scsi.c:81: usb_buffer[12] = 0x3A;
      000DE0 90 00 0C         [24]  499 	mov	dptr,#(_usb_buffer + 0x000c)
      000DE3 74 3A            [12]  500 	mov	a,#0x3A
      000DE5 F0               [24]  501 	movx	@dptr,a
                                    502 ;	scsi.c:82: SendData1(18, 0);
      000DE6 75 24 00         [24]  503 	mov	_SendData1_PARM_2,#0x00
      000DE9 90 00 12         [24]  504 	mov	dptr,#0x0012
      000DEC 12 04 DF         [24]  505 	lcall	_SendData1
                                    506 ;	scsi.c:83: scsi_status = 0;
      000DEF 75 25 00         [24]  507 	mov	_scsi_status,#0x00
                                    508 ;	scsi.c:84: return 1;
      000DF2 75 82 01         [24]  509 	mov	dpl,#0x01
      000DF5 22               [24]  510 	ret
                                    511 ;	scsi.c:89: case 0xC7:
      000DF6                        512 00109$:
                                    513 ;	scsi.c:91: switch(scsi_cdb[1])
      000DF6 AF 35            [24]  514 	mov	r7,(_scsi_cdb + 0x0001)
      000DF8 BF 05 03         [24]  515 	cjne	r7,#0x05,00199$
      000DFB 02 0E F7         [24]  516 	ljmp	00119$
      000DFE                        517 00199$:
      000DFE BF 06 02         [24]  518 	cjne	r7,#0x06,00200$
      000E01 80 1E            [24]  519 	sjmp	00110$
      000E03                        520 00200$:
      000E03 BF 07 02         [24]  521 	cjne	r7,#0x07,00201$
      000E06 80 3C            [24]  522 	sjmp	00111$
      000E08                        523 00201$:
      000E08 BF 08 02         [24]  524 	cjne	r7,#0x08,00202$
      000E0B 80 58            [24]  525 	sjmp	00112$
      000E0D                        526 00202$:
      000E0D BF 09 02         [24]  527 	cjne	r7,#0x09,00203$
      000E10 80 68            [24]  528 	sjmp	00113$
      000E12                        529 00203$:
      000E12 BF 56 03         [24]  530 	cjne	r7,#0x56,00204$
      000E15 02 0E 8A         [24]  531 	ljmp	00114$
      000E18                        532 00204$:
      000E18 BF BF 03         [24]  533 	cjne	r7,#0xBF,00205$
      000E1B 02 0F 4E         [24]  534 	ljmp	00120$
      000E1E                        535 00205$:
      000E1E 02 0F 85         [24]  536 	ljmp	00121$
                                    537 ;	scsi.c:93: case CUSTOM_XPEEK:
      000E21                        538 00110$:
                                    539 ;	scsi.c:95: usb_buffer[0] = XVAL((scsi_cdb[2] << 8) | scsi_cdb[3]);
      000E21 AF 36            [24]  540 	mov	r7,(_scsi_cdb + 0x0002)
      000E23 7E 00            [12]  541 	mov	r6,#0x00
      000E25 AC 37            [24]  542 	mov	r4,(_scsi_cdb + 0x0003)
      000E27 7D 00            [12]  543 	mov	r5,#0x00
      000E29 EC               [12]  544 	mov	a,r4
      000E2A 42 06            [12]  545 	orl	ar6,a
      000E2C ED               [12]  546 	mov	a,r5
      000E2D 42 07            [12]  547 	orl	ar7,a
      000E2F 8E 82            [24]  548 	mov	dpl,r6
      000E31 8F 83            [24]  549 	mov	dph,r7
      000E33 E0               [24]  550 	movx	a,@dptr
      000E34 90 00 00         [24]  551 	mov	dptr,#_usb_buffer
      000E37 F0               [24]  552 	movx	@dptr,a
                                    553 ;	scsi.c:96: SendData1(1, 0);
      000E38 75 24 00         [24]  554 	mov	_SendData1_PARM_2,#0x00
      000E3B 90 00 01         [24]  555 	mov	dptr,#0x0001
      000E3E 12 04 DF         [24]  556 	lcall	_SendData1
                                    557 ;	scsi.c:97: break;
      000E41 02 0F 89         [24]  558 	ljmp	00123$
                                    559 ;	scsi.c:99: case CUSTOM_XPOKE:
      000E44                        560 00111$:
                                    561 ;	scsi.c:101: XVAL((scsi_cdb[2] << 8) | scsi_cdb[3]) = scsi_cdb[4];
      000E44 AF 36            [24]  562 	mov	r7,(_scsi_cdb + 0x0002)
      000E46 7E 00            [12]  563 	mov	r6,#0x00
      000E48 AC 37            [24]  564 	mov	r4,(_scsi_cdb + 0x0003)
      000E4A 7D 00            [12]  565 	mov	r5,#0x00
      000E4C EC               [12]  566 	mov	a,r4
      000E4D 42 06            [12]  567 	orl	ar6,a
      000E4F ED               [12]  568 	mov	a,r5
      000E50 42 07            [12]  569 	orl	ar7,a
      000E52 8E 82            [24]  570 	mov	dpl,r6
      000E54 8F 83            [24]  571 	mov	dph,r7
      000E56 E5 38            [12]  572 	mov	a,(_scsi_cdb + 0x0004)
      000E58 F0               [24]  573 	movx	@dptr,a
                                    574 ;	scsi.c:102: SendData1(1, 0);
      000E59 75 24 00         [24]  575 	mov	_SendData1_PARM_2,#0x00
      000E5C 90 00 01         [24]  576 	mov	dptr,#0x0001
      000E5F 12 04 DF         [24]  577 	lcall	_SendData1
                                    578 ;	scsi.c:103: break;
      000E62 02 0F 89         [24]  579 	ljmp	00123$
                                    580 ;	scsi.c:105: case CUSTOM_IPEEK:
      000E65                        581 00112$:
                                    582 ;	scsi.c:107: usb_buffer[0] = IVAL(scsi_cdb[2]);
      000E65 A9 36            [24]  583 	mov	r1,(_scsi_cdb + 0x0002)
      000E67 87 07            [24]  584 	mov	ar7,@r1
      000E69 90 00 00         [24]  585 	mov	dptr,#_usb_buffer
      000E6C EF               [12]  586 	mov	a,r7
      000E6D F0               [24]  587 	movx	@dptr,a
                                    588 ;	scsi.c:108: SendData1(1, 0);
      000E6E 75 24 00         [24]  589 	mov	_SendData1_PARM_2,#0x00
      000E71 90 00 01         [24]  590 	mov	dptr,#0x0001
      000E74 12 04 DF         [24]  591 	lcall	_SendData1
                                    592 ;	scsi.c:109: break;
      000E77 02 0F 89         [24]  593 	ljmp	00123$
                                    594 ;	scsi.c:111: case CUSTOM_IPOKE:
      000E7A                        595 00113$:
                                    596 ;	scsi.c:113: IVAL(scsi_cdb[2]) = scsi_cdb[3];
      000E7A A9 36            [24]  597 	mov	r1,(_scsi_cdb + 0x0002)
      000E7C A7 37            [24]  598 	mov	@r1,(_scsi_cdb + 0x0003)
                                    599 ;	scsi.c:114: SendData1(1, 0);
      000E7E 75 24 00         [24]  600 	mov	_SendData1_PARM_2,#0x00
      000E81 90 00 01         [24]  601 	mov	dptr,#0x0001
      000E84 12 04 DF         [24]  602 	lcall	_SendData1
                                    603 ;	scsi.c:115: break;
      000E87 02 0F 89         [24]  604 	ljmp	00123$
                                    605 ;	scsi.c:117: case VENDOR_CHIPID:
      000E8A                        606 00114$:
                                    607 ;	scsi.c:120: memset(usb_buffer, 0x00, 0x200);
      000E8A 75 45 00         [24]  608 	mov	_memset_PARM_2,#0x00
      000E8D 75 46 00         [24]  609 	mov	_memset_PARM_3,#0x00
      000E90 75 47 02         [24]  610 	mov	(_memset_PARM_3 + 1),#0x02
      000E93 90 00 00         [24]  611 	mov	dptr,#_usb_buffer
      000E96 75 F0 00         [24]  612 	mov	b,#0x00
      000E99 12 0F 8D         [24]  613 	lcall	_memset
                                    614 ;	scsi.c:123: XVAL(0xF480) = 0x00;
      000E9C 90 F4 80         [24]  615 	mov	dptr,#0xF480
      000E9F E4               [12]  616 	clr	a
      000EA0 F0               [24]  617 	movx	@dptr,a
                                    618 ;	scsi.c:124: XVAL(0xF618) = 0xFF;
      000EA1 90 F6 18         [24]  619 	mov	dptr,#0xF618
      000EA4 14               [12]  620 	dec	a
      000EA5 F0               [24]  621 	movx	@dptr,a
                                    622 ;	scsi.c:127: XVAL(0xF608) = 0xFE;
      000EA6 90 F6 08         [24]  623 	mov	dptr,#0xF608
      000EA9 14               [12]  624 	dec	a
      000EAA F0               [24]  625 	movx	@dptr,a
                                    626 ;	scsi.c:130: XVAL(0xF400) = 0xFF;
      000EAB 90 F4 00         [24]  627 	mov	dptr,#0xF400
      000EAE 04               [12]  628 	inc	a
      000EAF F0               [24]  629 	movx	@dptr,a
                                    630 ;	scsi.c:131: while (!(XVAL(0xF41E) & 0x01));
      000EB0                        631 00115$:
      000EB0 90 F4 1E         [24]  632 	mov	dptr,#0xF41E
      000EB3 E0               [24]  633 	movx	a,@dptr
      000EB4 FF               [12]  634 	mov	r7,a
      000EB5 30 E0 F8         [24]  635 	jnb	acc.0,00115$
                                    636 ;	scsi.c:134: XVAL(0xF400) = 0x90;
      000EB8 90 F4 00         [24]  637 	mov	dptr,#0xF400
      000EBB 74 90            [12]  638 	mov	a,#0x90
      000EBD F0               [24]  639 	movx	@dptr,a
                                    640 ;	scsi.c:135: XVAL(0xF404) = 0x00;
      000EBE 90 F4 04         [24]  641 	mov	dptr,#0xF404
      000EC1 E4               [12]  642 	clr	a
      000EC2 F0               [24]  643 	movx	@dptr,a
                                    644 ;	scsi.c:136: for (i = 0; i < 6; i++)
      000EC3 7E 00            [12]  645 	mov	r6,#0x00
      000EC5 7F 00            [12]  646 	mov	r7,#0x00
      000EC7                        647 00125$:
                                    648 ;	scsi.c:138: usb_buffer[i] = XVAL(0xF408);
      000EC7 8E 04            [24]  649 	mov	ar4,r6
      000EC9 74 00            [12]  650 	mov	a,#(_usb_buffer >> 8)
      000ECB 2F               [12]  651 	add	a,r7
      000ECC FD               [12]  652 	mov	r5,a
      000ECD 90 F4 08         [24]  653 	mov	dptr,#0xF408
      000ED0 E0               [24]  654 	movx	a,@dptr
      000ED1 FB               [12]  655 	mov	r3,a
      000ED2 8C 82            [24]  656 	mov	dpl,r4
      000ED4 8D 83            [24]  657 	mov	dph,r5
      000ED6 F0               [24]  658 	movx	@dptr,a
                                    659 ;	scsi.c:136: for (i = 0; i < 6; i++)
      000ED7 0E               [12]  660 	inc	r6
      000ED8 BE 00 01         [24]  661 	cjne	r6,#0x00,00207$
      000EDB 0F               [12]  662 	inc	r7
      000EDC                        663 00207$:
      000EDC C3               [12]  664 	clr	c
      000EDD EE               [12]  665 	mov	a,r6
      000EDE 94 06            [12]  666 	subb	a,#0x06
      000EE0 EF               [12]  667 	mov	a,r7
      000EE1 64 80            [12]  668 	xrl	a,#0x80
      000EE3 94 80            [12]  669 	subb	a,#0x80
      000EE5 40 E0            [24]  670 	jc	00125$
                                    671 ;	scsi.c:141: SendData1(0x200, 0);
      000EE7 75 24 00         [24]  672 	mov	_SendData1_PARM_2,#0x00
      000EEA 90 02 00         [24]  673 	mov	dptr,#0x0200
      000EED 12 04 DF         [24]  674 	lcall	_SendData1
                                    675 ;	scsi.c:142: scsi_status = 0;
      000EF0 75 25 00         [24]  676 	mov	_scsi_status,#0x00
                                    677 ;	scsi.c:143: return 1;
      000EF3 75 82 01         [24]  678 	mov	dpl,#0x01
      000EF6 22               [24]  679 	ret
                                    680 ;	scsi.c:145: case VENDOR_INFO: //get info
      000EF7                        681 00119$:
                                    682 ;	scsi.c:149: memset(usb_buffer, 0x00, 0x210);
      000EF7 75 45 00         [24]  683 	mov	_memset_PARM_2,#0x00
      000EFA 75 46 10         [24]  684 	mov	_memset_PARM_3,#0x10
      000EFD 75 47 02         [24]  685 	mov	(_memset_PARM_3 + 1),#0x02
      000F00 90 00 00         [24]  686 	mov	dptr,#_usb_buffer
      000F03 75 F0 00         [24]  687 	mov	b,#0x00
      000F06 12 0F 8D         [24]  688 	lcall	_memset
                                    689 ;	scsi.c:150: usb_buffer[0x094] = 0x00;
      000F09 90 00 94         [24]  690 	mov	dptr,#(_usb_buffer + 0x0094)
      000F0C E4               [12]  691 	clr	a
      000F0D F0               [24]  692 	movx	@dptr,a
                                    693 ;	scsi.c:151: usb_buffer[0x095] = 0x99;
      000F0E 90 00 95         [24]  694 	mov	dptr,#(_usb_buffer + 0x0095)
      000F11 74 99            [12]  695 	mov	a,#0x99
      000F13 F0               [24]  696 	movx	@dptr,a
                                    697 ;	scsi.c:152: usb_buffer[0x096] = 0x53;
      000F14 90 00 96         [24]  698 	mov	dptr,#(_usb_buffer + 0x0096)
      000F17 74 53            [12]  699 	mov	a,#0x53
      000F19 F0               [24]  700 	movx	@dptr,a
                                    701 ;	scsi.c:153: usb_buffer[0x17A] = 'V';
      000F1A 90 01 7A         [24]  702 	mov	dptr,#(_usb_buffer + 0x017a)
      000F1D 74 56            [12]  703 	mov	a,#0x56
      000F1F F0               [24]  704 	movx	@dptr,a
                                    705 ;	scsi.c:154: usb_buffer[0x17B] = 'R';
      000F20 90 01 7B         [24]  706 	mov	dptr,#(_usb_buffer + 0x017b)
      000F23 74 52            [12]  707 	mov	a,#0x52
      000F25 F0               [24]  708 	movx	@dptr,a
                                    709 ;	scsi.c:155: usb_buffer[0x17E] = 0x23;
      000F26 90 01 7E         [24]  710 	mov	dptr,#(_usb_buffer + 0x017e)
      000F29 74 23            [12]  711 	mov	a,#0x23
      000F2B F0               [24]  712 	movx	@dptr,a
                                    713 ;	scsi.c:156: usb_buffer[0x17F] = 0x03;
      000F2C 90 01 7F         [24]  714 	mov	dptr,#(_usb_buffer + 0x017f)
      000F2F 74 03            [12]  715 	mov	a,#0x03
      000F31 F0               [24]  716 	movx	@dptr,a
                                    717 ;	scsi.c:157: usb_buffer[0x200] = 'I';
      000F32 90 02 00         [24]  718 	mov	dptr,#(_usb_buffer + 0x0200)
      000F35 74 49            [12]  719 	mov	a,#0x49
      000F37 F0               [24]  720 	movx	@dptr,a
                                    721 ;	scsi.c:158: usb_buffer[0x201] = 'F';
      000F38 90 02 01         [24]  722 	mov	dptr,#(_usb_buffer + 0x0201)
      000F3B 74 46            [12]  723 	mov	a,#0x46
      000F3D F0               [24]  724 	movx	@dptr,a
                                    725 ;	scsi.c:159: SendData1(0x210, 0);
      000F3E 75 24 00         [24]  726 	mov	_SendData1_PARM_2,#0x00
      000F41 90 02 10         [24]  727 	mov	dptr,#0x0210
      000F44 12 04 DF         [24]  728 	lcall	_SendData1
                                    729 ;	scsi.c:160: scsi_status = 0;
      000F47 75 25 00         [24]  730 	mov	_scsi_status,#0x00
                                    731 ;	scsi.c:161: return 1;
      000F4A 75 82 01         [24]  732 	mov	dpl,#0x01
                                    733 ;	scsi.c:163: case VENDOR_BOOT:
      000F4D 22               [24]  734 	ret
      000F4E                        735 00120$:
                                    736 ;	scsi.c:166: XVAL(0xFA14) = 0x07;
      000F4E 90 FA 14         [24]  737 	mov	dptr,#0xFA14
      000F51 74 07            [12]  738 	mov	a,#0x07
      000F53 F0               [24]  739 	movx	@dptr,a
                                    740 ;	scsi.c:167: XVAL(0xF747) &= 0xEF;
      000F54 90 F7 47         [24]  741 	mov	dptr,#0xF747
      000F57 E0               [24]  742 	movx	a,@dptr
      000F58 54 EF            [12]  743 	anl	a,#0xEF
      000F5A F0               [24]  744 	movx	@dptr,a
                                    745 ;	scsi.c:168: XVAL(0xFA15) = 0x06;
      000F5B 90 FA 15         [24]  746 	mov	dptr,#0xFA15
      000F5E 74 06            [12]  747 	mov	a,#0x06
      000F60 F0               [24]  748 	movx	@dptr,a
                                    749 ;	scsi.c:169: XVAL(0xFA38) |= 0x01;
      000F61 90 FA 38         [24]  750 	mov	dptr,#0xFA38
      000F64 E0               [24]  751 	movx	a,@dptr
      000F65 44 01            [12]  752 	orl	a,#0x01
      000F67 F0               [24]  753 	movx	@dptr,a
                                    754 ;	scsi.c:170: XVAL(0xF08F) = 0x00;
      000F68 90 F0 8F         [24]  755 	mov	dptr,#0xF08F
      000F6B E4               [12]  756 	clr	a
      000F6C F0               [24]  757 	movx	@dptr,a
                                    758 ;	scsi.c:171: XVAL(0xFA68) &= 0xF7;
      000F6D 90 FA 68         [24]  759 	mov	dptr,#0xFA68
      000F70 E0               [24]  760 	movx	a,@dptr
      000F71 54 F7            [12]  761 	anl	a,#0xF7
      000F73 F0               [24]  762 	movx	@dptr,a
                                    763 ;	scsi.c:172: XVAL(0xFA6A) &= 0xF7;
      000F74 90 FA 6A         [24]  764 	mov	dptr,#0xFA6A
      000F77 E0               [24]  765 	movx	a,@dptr
      000F78 54 F7            [12]  766 	anl	a,#0xF7
      000F7A F0               [24]  767 	movx	@dptr,a
                                    768 ;	scsi.c:173: XVAL(0xFA48) &= 0xFE;
      000F7B 90 FA 48         [24]  769 	mov	dptr,#0xFA48
      000F7E E0               [24]  770 	movx	a,@dptr
      000F7F 54 FE            [12]  771 	anl	a,#0xFE
      000F81 FF               [12]  772 	mov	r7,a
      000F82 F0               [24]  773 	movx	@dptr,a
                                    774 ;	scsi.c:174: break;
                                    775 ;	scsi.c:176: default:
      000F83 80 04            [24]  776 	sjmp	00123$
      000F85                        777 00121$:
                                    778 ;	scsi.c:179: return 0;
      000F85 75 82 00         [24]  779 	mov	dpl,#0x00
                                    780 ;	scsi.c:183: default:
      000F88 22               [24]  781 	ret
      000F89                        782 00123$:
                                    783 ;	scsi.c:186: return 0;
      000F89 75 82 00         [24]  784 	mov	dpl,#0x00
                                    785 ;	scsi.c:188: }
      000F8C 22               [24]  786 	ret
                                    787 	.area CSEG    (CODE)
                                    788 	.area CONST   (CODE)
                                    789 	.area XINIT   (CODE)
                                    790 	.area CABS    (ABS,CODE)
