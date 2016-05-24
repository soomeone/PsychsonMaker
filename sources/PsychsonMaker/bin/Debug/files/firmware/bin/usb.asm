;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Jun 20 2015) (MINGW64)
; This file was generated Tue May 24 21:38:52 2016
;--------------------------------------------------------
	.module usb
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetDMA_PARM_3
	.globl _SetDMA_PARM_2
	.globl _HandleUSBEvents
	.globl _ep_isr
	.globl _usb_isr
	.globl _InitUSB
	.globl _SendData1
	.globl _SendData0
	.globl _SendControlResponse
	.globl _SetDMA
	.globl _HandleVendorRequest
	.globl _HandleClassRequest
	.globl _HandleStandardRequest
	.globl _HandleCDB
	.globl _RI
	.globl _TI
	.globl _RB8
	.globl _TB8
	.globl _REN
	.globl _SM2
	.globl _SM1
	.globl _SM0
	.globl _RXD
	.globl _TXD
	.globl _INT0
	.globl _INT1
	.globl _T0
	.globl _T1
	.globl _WR
	.globl _RD
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES
	.globl _EA
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _P
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _SBUF
	.globl _SCON
	.globl _IP
	.globl _IE
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _usb_have_csw_ready
	.globl _usb_received_data_ready
	.globl _usb_buffer
	.globl _PRAMCTL
	.globl _BANK2PAH
	.globl _BANK2PAL
	.globl _BANK2VA
	.globl _BANK1PAH
	.globl _BANK1PAL
	.globl _BANK1VA
	.globl _BANK0PAH
	.globl _BANK0PAL
	.globl _WARMSTATUS
	.globl _GPIO0OUT
	.globl _GPIO0DIR
	.globl _DMACMD
	.globl _DMAFILL3
	.globl _DMAFILL2
	.globl _DMAFILL1
	.globl _DMAFILL0
	.globl _DMASIZEH
	.globl _DMASIZEM
	.globl _DMASIZEL
	.globl _DMADSTH
	.globl _DMADSTM
	.globl _DMADSTL
	.globl _DMASRCH
	.globl _DMASRCM
	.globl _DMASRCL
	.globl _NANDCSDIR
	.globl _NANDCSOUT
	.globl _EP4
	.globl _EP3
	.globl _EP2
	.globl _EP1
	.globl _EP0
	.globl _SETUPDAT
	.globl _EP0CS
	.globl _EPIE
	.globl _EPIRQ
	.globl _USBIRQ
	.globl _USBSTAT
	.globl _USBCTL
	.globl _REGBANK
	.globl _SendData1_PARM_2
	.globl _SendData0_PARM_2
	.globl _usb_speed
	.globl _wLength
	.globl _wIndex
	.globl _wValue
	.globl _bRequest
	.globl _bmRequestType
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_IE	=	0x00a8
_IP	=	0x00b8
_SCON	=	0x0098
_SBUF	=	0x0099
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_P	=	0x00d0
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_EA	=	0x00af
_ES	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_PS	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_RD	=	0x00b7
_WR	=	0x00b6
_T1	=	0x00b5
_T0	=	0x00b4
_INT1	=	0x00b3
_INT0	=	0x00b2
_TXD	=	0x00b1
_RXD	=	0x00b0
_SM0	=	0x009f
_SM1	=	0x009e
_SM2	=	0x009d
_REN	=	0x009c
_TB8	=	0x009b
_RB8	=	0x009a
_TI	=	0x0099
_RI	=	0x0098
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_bmRequestType::
	.ds 1
_bRequest::
	.ds 1
_wValue::
	.ds 2
_wIndex::
	.ds 2
_wLength::
	.ds 2
_usb_speed::
	.ds 1
_SendData0_PARM_2:
	.ds 1
_SendData1_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_SetDMA_PARM_2:
	.ds 1
_SetDMA_PARM_3:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_REGBANK	=	0xf000
_USBCTL	=	0xf008
_USBSTAT	=	0xf009
_USBIRQ	=	0xf027
_EPIRQ	=	0xf020
_EPIE	=	0xf030
_EP0CS	=	0xf048
_SETUPDAT	=	0xf0b8
_EP0	=	0xf1c0
_EP1	=	0xf200
_EP2	=	0xf240
_EP3	=	0xf280
_EP4	=	0xf2c0
_NANDCSOUT	=	0xf608
_NANDCSDIR	=	0xf618
_DMASRCL	=	0xf900
_DMASRCM	=	0xf901
_DMASRCH	=	0xf902
_DMADSTL	=	0xf904
_DMADSTM	=	0xf905
_DMADSTH	=	0xf906
_DMASIZEL	=	0xf908
_DMASIZEM	=	0xf909
_DMASIZEH	=	0xf90a
_DMAFILL0	=	0xf90c
_DMAFILL1	=	0xf90d
_DMAFILL2	=	0xf90e
_DMAFILL3	=	0xf90f
_DMACMD	=	0xf930
_GPIO0DIR	=	0xfa14
_GPIO0OUT	=	0xfa15
_WARMSTATUS	=	0xfa38
_BANK0PAL	=	0xfa40
_BANK0PAH	=	0xfa41
_BANK1VA	=	0xfa42
_BANK1PAL	=	0xfa43
_BANK1PAH	=	0xfa44
_BANK2VA	=	0xfa45
_BANK2PAL	=	0xfa46
_BANK2PAH	=	0xfa47
_PRAMCTL	=	0xfa48
_usb_buffer	=	0x0000
_usb_irq:
	.ds 1
_UsbIntStsF080:
	.ds 1
_UsbIntStsF082:
	.ds 1
_UsbIntStsF086:
	.ds 1
_UsbIntStsF087:
	.ds 1
_usb_received_data_ready::
	.ds 1
_usb_have_csw_ready::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SetDMA'
;------------------------------------------------------------
;p3                        Allocated with name '_SetDMA_PARM_2'
;px                        Allocated with name '_SetDMA_PARM_3'
;p5                        Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:34: void SetDMA(BYTE p5, BYTE p3, BYTE px)
;	-----------------------------------------
;	 function SetDMA
;	-----------------------------------------
_SetDMA:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	usb.c:36: XVAL(0xF80B) = 0;
	mov	dptr,#0xF80B
	clr	a
	movx	@dptr,a
;	usb.c:37: XVAL(0xF80C) = p5-1;
	dec	r7
	mov	dptr,#0xF80C
	mov	a,r7
	movx	@dptr,a
;	usb.c:39: switch(px)
	clr	a
	cjne	a,_SetDMA_PARM_3,00117$
	sjmp	00101$
00117$:
	mov	a,#0x01
	cjne	a,_SetDMA_PARM_3,00118$
	sjmp	00102$
00118$:
	mov	a,#0x02
;	usb.c:41: case 0:
	cjne	a,_SetDMA_PARM_3,00106$
	sjmp	00103$
00101$:
;	usb.c:43: XVAL(0xF80D) = p3;
	mov	dptr,#0xF80D
	mov	a,_SetDMA_PARM_2
	movx	@dptr,a
;	usb.c:44: XVAL(0xF80E) = p3;
	mov	dptr,#0xF80E
	mov	a,_SetDMA_PARM_2
	movx	@dptr,a
;	usb.c:45: break;
;	usb.c:47: case 1:
	ret
00102$:
;	usb.c:49: XVAL(0xF80D) = p3;
	mov	dptr,#0xF80D
	mov	a,_SetDMA_PARM_2
	movx	@dptr,a
;	usb.c:50: break;
;	usb.c:52: case 2:
	ret
00103$:
;	usb.c:54: XVAL(0xF80E) = p3;
	mov	dptr,#0xF80E
	mov	a,_SetDMA_PARM_2
	movx	@dptr,a
;	usb.c:61: }
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendControlResponse'
;------------------------------------------------------------
;size                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	usb.c:64: void SendControlResponse(int size)
;	-----------------------------------------
;	 function SendControlResponse
;	-----------------------------------------
_SendControlResponse:
	mov	r6,dpl
	mov	r7,dph
;	usb.c:66: EP0.len_l = LSB(size);
	mov	ar4,r6
	mov	r5,#0x00
	mov	dptr,#(_EP0 + 0x000c)
	mov	a,r4
	movx	@dptr,a
;	usb.c:67: EP0.len_m = MSB(size);
	mov	ar6,r7
	mov	dptr,#(_EP0 + 0x000d)
	mov	a,r6
	movx	@dptr,a
;	usb.c:68: EP0.len_h = 0;
	mov	dptr,#(_EP0 + 0x000e)
	clr	a
	movx	@dptr,a
;	usb.c:69: EP0.cs = 0x40;
	mov	dptr,#(_EP0 + 0x0013)
	mov	a,#0x40
	movx	@dptr,a
;	usb.c:70: while (EP0.cs & 0x40);
00101$:
	mov	dptr,#(_EP0 + 0x0013)
	movx	a,@dptr
	mov	r7,a
	jb	acc.6,00101$
;	usb.c:71: EP0CS = 0x05;
	mov	dptr,#_EP0CS
	mov	a,#0x05
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendData0'
;------------------------------------------------------------
;offset                    Allocated with name '_SendData0_PARM_2'
;size                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	usb.c:74: void SendData0(WORD size, BYTE offset)
;	-----------------------------------------
;	 function SendData0
;	-----------------------------------------
_SendData0:
	mov	r6,dpl
	mov	r7,dph
;	usb.c:76: if (size > 0)
	mov	a,r6
	orl	a,r7
	jz	00106$
;	usb.c:78: SetDMA(0x20, 0, 0);
	mov	_SetDMA_PARM_2,#0x00
	mov	_SetDMA_PARM_3,#0x00
	mov	dpl,#0x20
	push	ar7
	push	ar6
	lcall	_SetDMA
;	usb.c:79: SetDMA(0x20, 0x80, 1);
	mov	_SetDMA_PARM_2,#0x80
	mov	_SetDMA_PARM_3,#0x01
	mov	dpl,#0x20
	lcall	_SetDMA
	pop	ar6
	pop	ar7
;	usb.c:80: EP0.ptr_l = usb_buffer_PA>>8;
	mov	dptr,#(_EP0 + 0x0005)
	mov	a,#0x80
	movx	@dptr,a
;	usb.c:81: EP0.ptr_m = usb_buffer_PA>>16;
	mov	dptr,#(_EP0 + 0x0006)
	clr	a
	movx	@dptr,a
;	usb.c:82: EP0.ptr_h = usb_buffer_PA>>24;
	mov	dptr,#(_EP0 + 0x0007)
	movx	@dptr,a
;	usb.c:83: EP0.offset = offset;
	mov	dptr,#(_EP0 + 0x000a)
	mov	a,_SendData0_PARM_2
	movx	@dptr,a
;	usb.c:84: EP0.len_l = LSB(size);
	mov	ar4,r6
	mov	r5,#0x00
	mov	dptr,#(_EP0 + 0x000c)
	mov	a,r4
	movx	@dptr,a
;	usb.c:85: EP0.len_m = MSB(size);
	mov	ar6,r7
	mov	dptr,#(_EP0 + 0x000d)
	mov	a,r6
	movx	@dptr,a
;	usb.c:86: EP0.len_h = 0;
	mov	dptr,#(_EP0 + 0x000e)
	clr	a
	movx	@dptr,a
;	usb.c:87: EP0.cs = 0x88;		
	mov	dptr,#(_EP0 + 0x0013)
	mov	a,#0x88
	movx	@dptr,a
;	usb.c:89: while(EP0.cs & 0x80);	
00101$:
	mov	dptr,#(_EP0 + 0x0013)
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00101$
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendData1'
;------------------------------------------------------------
;offset                    Allocated with name '_SendData1_PARM_2'
;size                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	usb.c:93: void SendData1(WORD size, BYTE offset)
;	-----------------------------------------
;	 function SendData1
;	-----------------------------------------
_SendData1:
	mov	r6,dpl
	mov	r7,dph
;	usb.c:95: if (size > 0)
	mov	a,r6
	orl	a,r7
	jz	00106$
;	usb.c:97: SetDMA(0x20, 0, 0);
	mov	_SetDMA_PARM_2,#0x00
	mov	_SetDMA_PARM_3,#0x00
	mov	dpl,#0x20
	push	ar7
	push	ar6
	lcall	_SetDMA
;	usb.c:98: SetDMA(0x20, 0x80, 1);
	mov	_SetDMA_PARM_2,#0x80
	mov	_SetDMA_PARM_3,#0x01
	mov	dpl,#0x20
	lcall	_SetDMA
	pop	ar6
	pop	ar7
;	usb.c:99: EP1.ptr_l = usb_buffer_PA>>8;
	mov	dptr,#(_EP1 + 0x0005)
	mov	a,#0x80
	movx	@dptr,a
;	usb.c:100: EP1.ptr_m = usb_buffer_PA>>16;
	mov	dptr,#(_EP1 + 0x0006)
	clr	a
	movx	@dptr,a
;	usb.c:101: EP1.ptr_h = usb_buffer_PA>>24;
	mov	dptr,#(_EP1 + 0x0007)
	movx	@dptr,a
;	usb.c:102: EP1.offset = offset;
	mov	dptr,#(_EP1 + 0x000a)
	mov	a,_SendData1_PARM_2
	movx	@dptr,a
;	usb.c:103: EP1.len_l = LSB(size);
	mov	ar4,r6
	mov	r5,#0x00
	mov	dptr,#(_EP1 + 0x000c)
	mov	a,r4
	movx	@dptr,a
;	usb.c:104: EP1.len_m = MSB(size);
	mov	ar6,r7
	mov	dptr,#(_EP1 + 0x000d)
	mov	a,r6
	movx	@dptr,a
;	usb.c:105: EP1.len_h = 0;
	mov	dptr,#(_EP1 + 0x000e)
	clr	a
	movx	@dptr,a
;	usb.c:106: EP1.cs = 0x88;		
	mov	dptr,#(_EP1 + 0x0013)
	mov	a,#0x88
	movx	@dptr,a
;	usb.c:108: while(EP1.cs & 0x80);	
00101$:
	mov	dptr,#(_EP1 + 0x0013)
	movx	a,@dptr
	mov	r7,a
	jb	acc.7,00101$
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendCSW'
;------------------------------------------------------------
;	usb.c:112: static void SendCSW()
;	-----------------------------------------
;	 function SendCSW
;	-----------------------------------------
_SendCSW:
;	usb.c:114: usb_buffer[0] = 'U';
	mov	dptr,#_usb_buffer
	mov	a,#0x55
	movx	@dptr,a
;	usb.c:115: usb_buffer[1] = 'S';
	mov	dptr,#(_usb_buffer + 0x0001)
	mov	a,#0x53
	movx	@dptr,a
;	usb.c:116: usb_buffer[2] = 'B';
	mov	dptr,#(_usb_buffer + 0x0002)
	mov	a,#0x42
	movx	@dptr,a
;	usb.c:117: usb_buffer[3] = 'S';
	mov	dptr,#(_usb_buffer + 0x0003)
	mov	a,#0x53
	movx	@dptr,a
;	usb.c:118: usb_buffer[4] = scsi_tag[0];
	mov	dptr,#(_usb_buffer + 0x0004)
	mov	a,_scsi_tag
	movx	@dptr,a
;	usb.c:119: usb_buffer[5] = scsi_tag[1];
	mov	dptr,#(_usb_buffer + 0x0005)
	mov	a,(_scsi_tag + 0x0001)
	movx	@dptr,a
;	usb.c:120: usb_buffer[6] = scsi_tag[2];
	mov	dptr,#(_usb_buffer + 0x0006)
	mov	a,(_scsi_tag + 0x0002)
	movx	@dptr,a
;	usb.c:121: usb_buffer[7] = scsi_tag[3];
	mov	dptr,#(_usb_buffer + 0x0007)
	mov	a,(_scsi_tag + 0x0003)
	movx	@dptr,a
;	usb.c:122: usb_buffer[8] = scsi_data_residue;
	mov	r7,_scsi_data_residue
	mov	dptr,#(_usb_buffer + 0x0008)
	mov	a,r7
	movx	@dptr,a
;	usb.c:123: usb_buffer[9] = scsi_data_residue>>8;
	mov	r7,(_scsi_data_residue + 1)
	mov	dptr,#(_usb_buffer + 0x0009)
	mov	a,r7
	movx	@dptr,a
;	usb.c:124: usb_buffer[10] = scsi_data_residue>>16;
	mov	r7,(_scsi_data_residue + 2)
	mov	dptr,#(_usb_buffer + 0x000a)
	mov	a,r7
	movx	@dptr,a
;	usb.c:125: usb_buffer[11] = scsi_data_residue>>24;
	mov	r7,(_scsi_data_residue + 3)
	mov	dptr,#(_usb_buffer + 0x000b)
	mov	a,r7
	movx	@dptr,a
;	usb.c:126: usb_buffer[12] = scsi_status;
	mov	dptr,#(_usb_buffer + 0x000c)
	mov	a,_scsi_status
	movx	@dptr,a
;	usb.c:128: SendData1(13, 0);
	mov	_SendData1_PARM_2,#0x00
	mov	dptr,#0x000D
	lcall	_SendData1
;	usb.c:129: usb_have_csw_ready = 0;
	mov	dptr,#_usb_have_csw_ready
	clr	a
	movx	@dptr,a
;	usb.c:130: scsi_data_residue = 0;
	mov	_scsi_data_residue,a
	mov	(_scsi_data_residue + 1),a
	mov	(_scsi_data_residue + 2),a
	mov	(_scsi_data_residue + 3),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SendCSW2'
;------------------------------------------------------------
;	usb.c:133: static void SendCSW2()
;	-----------------------------------------
;	 function SendCSW2
;	-----------------------------------------
_SendCSW2:
;	usb.c:135: while(EP1.cs & bmSTALL);
00101$:
	mov	dptr,#(_EP1 + 0x0013)
	movx	a,@dptr
	mov	r7,a
	jb	acc.1,00101$
;	usb.c:136: while((EP1.r17 & 0x80)==0)
	mov	dptr,#0xF010
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x20
00106$:
	mov	dptr,#(_EP1 + 0x0017)
	movx	a,@dptr
	mov	r6,a
	jb	acc.7,00109$
;	usb.c:138: if ((XVAL(0xF010) & 0x20)==0)
	mov	a,r7
	jnz	00106$
;	usb.c:140: usb_have_csw_ready = 0;
	mov	dptr,#_usb_have_csw_ready
	clr	a
	movx	@dptr,a
;	usb.c:141: return;
	ret
;	usb.c:145: while(EP1.cs & 0x40);
00109$:
	mov	dptr,#(_EP1 + 0x0013)
	movx	a,@dptr
	mov	r7,a
	jb	acc.6,00109$
;	usb.c:146: while(EP2.cs & 0x40);
00112$:
	mov	dptr,#(_EP2 + 0x0013)
	movx	a,@dptr
	mov	r7,a
	jb	acc.6,00112$
;	usb.c:147: while(EP3.cs & 0x40);
00115$:
	mov	dptr,#(_EP3 + 0x0013)
	movx	a,@dptr
	mov	r7,a
	jb	acc.6,00115$
;	usb.c:148: while(EP4.cs & 0x40);
00118$:
	mov	dptr,#(_EP4 + 0x0013)
	movx	a,@dptr
	mov	r7,a
	jb	acc.6,00118$
;	usb.c:150: EP1.fifo = 'U';
;	usb.c:151: EP1.fifo = 'S';
;	usb.c:152: EP1.fifo = 'B';
;	usb.c:153: EP1.fifo = 'S';
	mov	dptr,#(_EP1 + 0x001c)
	mov	a,#0x55
	movx	@dptr,a
	mov	a,#0x53
	movx	@dptr,a
	mov	a,#0x42
	movx	@dptr,a
	mov	a,#0x53
	movx	@dptr,a
;	usb.c:154: EP1.fifo = scsi_tag[0];
;	usb.c:155: EP1.fifo = scsi_tag[1];
;	usb.c:156: EP1.fifo = scsi_tag[2];
;	usb.c:157: EP1.fifo = scsi_tag[3];
	mov	dptr,#(_EP1 + 0x001c)
	mov	a,_scsi_tag
	movx	@dptr,a
	mov	a,(_scsi_tag + 0x0001)
	movx	@dptr,a
	mov	a,(_scsi_tag + 0x0002)
	movx	@dptr,a
	mov	a,(_scsi_tag + 0x0003)
	movx	@dptr,a
;	usb.c:158: EP1.fifo = scsi_data_residue;
	mov	r7,_scsi_data_residue
	mov	dptr,#(_EP1 + 0x001c)
	mov	a,r7
	movx	@dptr,a
;	usb.c:159: EP1.fifo = scsi_data_residue>>8;
	mov	r7,(_scsi_data_residue + 1)
	mov	dptr,#(_EP1 + 0x001c)
	mov	a,r7
	movx	@dptr,a
;	usb.c:160: EP1.fifo = scsi_data_residue>>16;
	mov	r7,(_scsi_data_residue + 2)
	mov	dptr,#(_EP1 + 0x001c)
	mov	a,r7
	movx	@dptr,a
;	usb.c:161: EP1.fifo = scsi_data_residue>>24;
	mov	r7,(_scsi_data_residue + 3)
;	usb.c:162: EP1.fifo = scsi_status;
	mov	dptr,#(_EP1 + 0x001c)
	mov	a,r7
	movx	@dptr,a
	mov	a,_scsi_status
	movx	@dptr,a
;	usb.c:163: EP1.len_l = 13;
	mov	dptr,#(_EP1 + 0x000c)
	mov	a,#0x0D
	movx	@dptr,a
;	usb.c:164: EP1.len_m = 0;
	mov	dptr,#(_EP1 + 0x000d)
	clr	a
	movx	@dptr,a
;	usb.c:165: EP1.len_h = 0;
	mov	dptr,#(_EP1 + 0x000e)
	movx	@dptr,a
;	usb.c:166: EP1.cs = 0x40;		
	mov	dptr,#(_EP1 + 0x0013)
	mov	a,#0x40
	movx	@dptr,a
;	usb.c:167: usb_have_csw_ready = 0;
	mov	dptr,#_usb_have_csw_ready
	clr	a
	movx	@dptr,a
;	usb.c:168: scsi_data_residue = 0;
	mov	_scsi_data_residue,a
	mov	(_scsi_data_residue + 1),a
	mov	(_scsi_data_residue + 2),a
	mov	(_scsi_data_residue + 3),a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitUSB'
;------------------------------------------------------------
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:171: void InitUSB(void)
;	-----------------------------------------
;	 function InitUSB
;	-----------------------------------------
_InitUSB:
;	usb.c:175: usb_irq = 0;
	mov	dptr,#_usb_irq
	clr	a
	movx	@dptr,a
;	usb.c:176: usb_received_data_ready = 0;
	mov	dptr,#_usb_received_data_ready
	movx	@dptr,a
;	usb.c:177: usb_have_csw_ready = 0;
	mov	dptr,#_usb_have_csw_ready
	movx	@dptr,a
;	usb.c:178: usb_speed = 0;
;	1-genFromRTrack replaced	mov	_usb_speed,#0x00
	mov	_usb_speed,a
;	usb.c:179: EP1.ptr_l = usb_buffer_PA>>8;
	mov	dptr,#(_EP1 + 0x0005)
	mov	a,#0x80
	movx	@dptr,a
;	usb.c:180: EP1.ptr_m = usb_buffer_PA>>16;
	mov	dptr,#(_EP1 + 0x0006)
	clr	a
	movx	@dptr,a
;	usb.c:181: EP1.ptr_h = usb_buffer_PA>>24;
	mov	dptr,#(_EP1 + 0x0007)
	movx	@dptr,a
;	usb.c:182: EP1.r8 = 0x10;
	mov	dptr,#(_EP1 + 0x0008)
	mov	a,#0x10
	movx	@dptr,a
;	usb.c:183: EP1.offset = 0;
	mov	dptr,#(_EP1 + 0x000a)
	clr	a
	movx	@dptr,a
;	usb.c:184: EP2.ptr_l = usb_buffer_PA>>8;
	mov	dptr,#(_EP2 + 0x0005)
	mov	a,#0x80
	movx	@dptr,a
;	usb.c:185: EP2.ptr_m = usb_buffer_PA>>16;
	mov	dptr,#(_EP2 + 0x0006)
	clr	a
	movx	@dptr,a
;	usb.c:186: EP2.ptr_h = usb_buffer_PA>>24;
	mov	dptr,#(_EP2 + 0x0007)
	movx	@dptr,a
;	usb.c:187: EP2.r8 = 0x10;
	mov	dptr,#(_EP2 + 0x0008)
	mov	a,#0x10
	movx	@dptr,a
;	usb.c:188: EP2.offset = 0;
	mov	dptr,#(_EP2 + 0x000a)
	clr	a
	movx	@dptr,a
;	usb.c:190: if (WARMSTATUS & 2) //USB warm start
	mov	dptr,#_WARMSTATUS
	movx	a,@dptr
	mov	r7,a
	jnb	acc.1,00112$
;	usb.c:192: if ((USBSTAT & bmSpeed) == bmSuperSpeed)
	mov	dptr,#_USBSTAT
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x07
	cjne	r7,#0x04,00108$
;	usb.c:194: usb_speed = bmSuperSpeed;
	mov	_usb_speed,#0x04
	sjmp	00109$
00108$:
;	usb.c:196: else if ((USBSTAT & bmSpeed) == bmHighSpeed)
	mov	dptr,#_USBSTAT
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x07
	jz	00139$
	sjmp	00105$
00139$:
;	usb.c:198: usb_speed = bmHighSpeed;
	mov	_usb_speed,#0x00
	sjmp	00109$
00105$:
;	usb.c:200: else if ((USBSTAT & bmSpeed) == bmFullSpeed)
	mov	dptr,#_USBSTAT
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x07
	cjne	r7,#0x01,00102$
;	usb.c:202: usb_speed = bmFullSpeed;
	mov	_usb_speed,#0x01
	sjmp	00109$
00102$:
;	usb.c:206: usb_speed = 0;
	mov	_usb_speed,#0x00
00109$:
;	usb.c:209: EX1 = 1;
	setb	_EX1
;	usb.c:210: EX0 = 1;
	setb	_EX0
;	usb.c:211: EPIE = bmEP2IRQ | bmEP4IRQ;
	mov	dptr,#_EPIE
	mov	a,#0x0A
	movx	@dptr,a
;	usb.c:212: scsi_data_residue = 0;
	clr	a
	mov	_scsi_data_residue,a
	mov	(_scsi_data_residue + 1),a
	mov	(_scsi_data_residue + 2),a
	mov	(_scsi_data_residue + 3),a
;	usb.c:213: scsi_status = 0;
;	1-genFromRTrack replaced	mov	_scsi_status,#0x00
	mov	_scsi_status,a
;	usb.c:214: SendCSW();
	ljmp	_SendCSW
00112$:
;	usb.c:219: REGBANK = 6;
	mov	dptr,#_REGBANK
	mov	a,#0x06
	movx	@dptr,a
;	usb.c:220: XVAL(0xF240) = 2;
	mov	dptr,#0xF240
	mov	a,#0x02
	movx	@dptr,a
;	usb.c:221: XVAL(0xF28C) = 0x36;
	mov	dptr,#0xF28C
	mov	a,#0x36
	movx	@dptr,a
;	usb.c:222: XVAL(0xF28D) = 0xD0;
	mov	dptr,#0xF28D
	mov	a,#0xD0
	movx	@dptr,a
;	usb.c:223: XVAL(0xF28E) = 0x98;
	mov	dptr,#0xF28E
	mov	a,#0x98
	movx	@dptr,a
;	usb.c:224: REGBANK = 0;
	mov	dptr,#_REGBANK
	clr	a
	movx	@dptr,a
;	usb.c:225: EPIE = bmEP2IRQ | bmEP4IRQ;
	mov	dptr,#_EPIE
	mov	a,#0x0A
	movx	@dptr,a
;	usb.c:226: USBCTL = bmAttach | bmSuperSpeed;
	mov	dptr,#_USBCTL
	mov	a,#0x84
	movx	@dptr,a
;	usb.c:228: XVAL(0xFA38) |= 2;
	mov	dptr,#0xFA38
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	usb.c:230: EX1 = 1;
	setb	_EX1
;	usb.c:231: EX0 = 1;
	setb	_EX0
;	usb.c:232: for (b = 0; b < 250; b++);			
	mov	r7,#0xFA
00116$:
	mov	ar6,r7
	dec	r6
	mov	a,r6
	mov	r7,a
	jnz	00116$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_isr'
;------------------------------------------------------------
;	usb.c:236: void usb_isr(void) __interrupt USB_VECT
;	-----------------------------------------
;	 function usb_isr
;	-----------------------------------------
_usb_isr:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	psw
	mov	psw,#0x00
;	usb.c:238: usb_irq = USBIRQ;
	mov	dptr,#_USBIRQ
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_usb_irq
	movx	@dptr,a
;	usb.c:240: if (usb_irq & 0x20)
	mov	a,r7
	jnb	acc.5,00102$
;	usb.c:242: USBIRQ = 0x20;
	mov	dptr,#_USBIRQ
	mov	a,#0x20
	movx	@dptr,a
00102$:
;	usb.c:245: if (usb_irq & 0x10)
	mov	a,r7
	jnb	acc.4,00104$
;	usb.c:247: USBIRQ = 0x10;
	mov	dptr,#_USBIRQ
	mov	a,#0x10
	movx	@dptr,a
00104$:
;	usb.c:250: if (usb_irq & bmSpeedChange)
	mov	a,r7
	jnb	acc.7,00115$
;	usb.c:252: USBIRQ = bmSpeedChange;
	mov	dptr,#_USBIRQ
	mov	a,#0x80
	movx	@dptr,a
;	usb.c:253: if ((USBSTAT & bmSpeed) == bmSuperSpeed)
	mov	dptr,#_USBSTAT
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x07
	cjne	r6,#0x04,00112$
;	usb.c:255: usb_speed = bmSuperSpeed;
	mov	_usb_speed,#0x04
	sjmp	00115$
00112$:
;	usb.c:257: else if ((USBSTAT & bmSpeed) == bmHighSpeed)
	mov	dptr,#_USBSTAT
	movx	a,@dptr
	mov	r6,a
	anl	a,#0x07
;	usb.c:259: usb_speed = bmHighSpeed;
	jnz	00109$
	mov	_usb_speed,a
	sjmp	00115$
00109$:
;	usb.c:261: else if ((USBSTAT & bmSpeed) == bmFullSpeed)
	mov	dptr,#_USBSTAT
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x07
	cjne	r6,#0x01,00106$
;	usb.c:263: usb_speed = bmFullSpeed;
	mov	_usb_speed,#0x01
	sjmp	00115$
00106$:
;	usb.c:267: usb_speed = 0;
	mov	_usb_speed,#0x00
00115$:
;	usb.c:271: if (usb_irq & 0x40)
	mov	a,r7
	jnb	acc.6,00117$
;	usb.c:273: USBIRQ = 0x40;
	mov	dptr,#_USBIRQ
	mov	a,#0x40
	movx	@dptr,a
00117$:
;	usb.c:276: UsbIntStsF087 = XVAL(0xF087);
	mov	dptr,#0xF087
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_UsbIntStsF087
	movx	@dptr,a
;	usb.c:277: UsbIntStsF086 = XVAL(0xF086);
	mov	dptr,#0xF086
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_UsbIntStsF086
	movx	@dptr,a
;	usb.c:278: UsbIntStsF082 = XVAL(0xF082);
	mov	dptr,#0xF082
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_UsbIntStsF082
	movx	@dptr,a
;	usb.c:279: UsbIntStsF080 = XVAL(0xF080);
	mov	dptr,#0xF080
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_UsbIntStsF080
	movx	@dptr,a
;	usb.c:281: if (UsbIntStsF082 & 0x80)
	mov	a,r4
	jnb	acc.7,00119$
;	usb.c:283: XVAL(0xF082) = 0x80;
	mov	dptr,#0xF082
	mov	a,#0x80
	movx	@dptr,a
00119$:
;	usb.c:286: if (UsbIntStsF082 & 0x40)
	mov	a,r4
	jnb	acc.6,00121$
;	usb.c:288: XVAL(0xF082) = 0x40;
	mov	dptr,#0xF082
	mov	a,#0x40
	movx	@dptr,a
00121$:
;	usb.c:291: if (UsbIntStsF080 & 1)
	mov	a,r3
	jnb	acc.0,00125$
;	usb.c:293: XVAL(0xF080) = 1;
	mov	dptr,#0xF080
	mov	a,#0x01
	movx	@dptr,a
;	usb.c:294: if (EP0CS & bmSUDAV)
	mov	dptr,#_EP0CS
	movx	a,@dptr
	mov	r2,a
	jnb	acc.7,00125$
;	usb.c:296: bmRequestType = SETUPDAT[0];
	push	ar5
	mov	dptr,#_SETUPDAT
	movx	a,@dptr
	mov	_bmRequestType,a
;	usb.c:297: bRequest = SETUPDAT[1];
	mov	dptr,#(_SETUPDAT + 0x0001)
	movx	a,@dptr
	mov	_bRequest,a
;	usb.c:298: wValue = SETUPDAT[2] | (SETUPDAT[3] << 8);
	mov	dptr,#(_SETUPDAT + 0x0002)
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#(_SETUPDAT + 0x0003)
	movx	a,@dptr
	mov	r1,a
	clr	a
	mov	r5,a
	orl	a,r2
	mov	_wValue,a
	mov	a,r1
	orl	a,r5
	mov	(_wValue + 1),a
;	usb.c:299: wIndex = SETUPDAT[4] | (SETUPDAT[5] << 8);
	mov	dptr,#(_SETUPDAT + 0x0004)
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_SETUPDAT + 0x0005)
	movx	a,@dptr
	mov	r2,a
	mov	r1,#0x00
	mov	ar0,r5
	mov	r5,#0x00
	mov	a,r1
	orl	a,r0
	mov	_wIndex,a
	mov	a,r2
	orl	a,r5
	mov	(_wIndex + 1),a
;	usb.c:300: wLength = SETUPDAT[6] | (SETUPDAT[7] << 8);
	mov	dptr,#(_SETUPDAT + 0x0006)
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_SETUPDAT + 0x0007)
	movx	a,@dptr
	mov	r2,a
	mov	r1,#0x00
	mov	ar0,r5
	mov	r5,#0x00
	mov	a,r1
	orl	a,r0
	mov	_wLength,a
	mov	a,r2
	orl	a,r5
	mov	(_wLength + 1),a
;	usb.c:321: EX0 = 0;
	pop	ar5
;	usb.c:300: wLength = SETUPDAT[6] | (SETUPDAT[7] << 8);
00125$:
;	usb.c:304: if (XVAL(0xF082) & 0x20)
	mov	dptr,#0xF082
	movx	a,@dptr
	mov	r2,a
	jnb	acc.5,00127$
;	usb.c:306: XVAL(0xF082) = 0x20;
	mov	dptr,#0xF082
	mov	a,#0x20
	movx	@dptr,a
00127$:
;	usb.c:309: if (XVAL(0xF081) & 0x10)
	mov	dptr,#0xF081
	movx	a,@dptr
	mov	r2,a
	jnb	acc.4,00129$
;	usb.c:311: XVAL(0xF081) = 0x10;
	mov	dptr,#0xF081
	mov	a,#0x10
	movx	@dptr,a
00129$:
;	usb.c:314: if (XVAL(0xF081) & 0x20)
	mov	dptr,#0xF081
	movx	a,@dptr
	mov	r2,a
	jnb	acc.5,00131$
;	usb.c:316: XVAL(0xF081) = 0x20;
	mov	dptr,#0xF081
	mov	a,#0x20
	movx	@dptr,a
00131$:
;	usb.c:319: if (UsbIntStsF080 | UsbIntStsF082 | UsbIntStsF086 | UsbIntStsF087 | usb_irq)
	mov	a,r4
	orl	a,r3
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00134$
;	usb.c:321: EX0 = 0;
	clr	_EX0
00134$:
	pop	psw
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ep_isr'
;------------------------------------------------------------
;interrupts                Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:325: void ep_isr(void) __interrupt EP_VECT
;	-----------------------------------------
;	 function ep_isr
;	-----------------------------------------
_ep_isr:
	push	acc
	push	dpl
	push	dph
	push	ar7
	push	ar6
	push	psw
	mov	psw,#0x00
;	usb.c:327: BYTE interrupts = (EPIRQ & (bmEP2IRQ | bmEP4IRQ));
	mov	dptr,#_EPIRQ
	movx	a,@dptr
;	usb.c:328: if (interrupts & bmEP2IRQ)
	anl	a,#0x0A
	mov	r7,a
	jnb	acc.1,00102$
;	usb.c:330: EPIE &= ~bmEP2IRQ; //disable this 
	mov	dptr,#_EPIE
	movx	a,@dptr
	mov	r6,a
	mov	a,#0xFD
	anl	a,r6
	movx	@dptr,a
;	usb.c:331: EPIRQ = bmEP2IRQ; //acknowledge it
	mov	dptr,#_EPIRQ
	mov	a,#0x02
	movx	@dptr,a
;	usb.c:332: usb_received_data_ready |= bmEP2IRQ;
	mov	dptr,#_usb_received_data_ready
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x02
	orl	a,r6
	movx	@dptr,a
00102$:
;	usb.c:335: if (interrupts & bmEP4IRQ)
	mov	a,r7
	jnb	acc.3,00105$
;	usb.c:337: EPIE &= ~bmEP4IRQ; //disable this 
	mov	dptr,#_EPIE
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xF7
	anl	a,r7
	movx	@dptr,a
;	usb.c:338: EPIRQ = bmEP4IRQ; //acknowledge it
	mov	dptr,#_EPIRQ
	mov	a,#0x08
	movx	@dptr,a
;	usb.c:339: usb_received_data_ready |= bmEP4IRQ;
	mov	dptr,#_usb_received_data_ready
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	orl	a,r7
	movx	@dptr,a
00105$:
	pop	psw
	pop	ar6
	pop	ar7
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'ResetEPs'
;------------------------------------------------------------
;	usb.c:343: static void ResetEPs()
;	-----------------------------------------
;	 function ResetEPs
;	-----------------------------------------
_ResetEPs:
;	usb.c:345: EPIE = bmEP2IRQ | bmEP4IRQ;
	mov	dptr,#_EPIE
	mov	a,#0x0A
	movx	@dptr,a
;	usb.c:346: EP1.cs = 0;
	mov	dptr,#(_EP1 + 0x0013)
	clr	a
	movx	@dptr,a
;	usb.c:347: EP2.cs = 0;
	mov	dptr,#(_EP2 + 0x0013)
	movx	@dptr,a
;	usb.c:348: EP3.cs = 0;
	mov	dptr,#(_EP3 + 0x0013)
	movx	@dptr,a
;	usb.c:349: EP4.cs = 0;
	mov	dptr,#(_EP4 + 0x0013)
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HandleControlRequest'
;------------------------------------------------------------
;res                       Allocated to registers r7 
;------------------------------------------------------------
;	usb.c:352: static void HandleControlRequest(void)
;	-----------------------------------------
;	 function HandleControlRequest
;	-----------------------------------------
_HandleControlRequest:
;	usb.c:355: switch(bmRequestType & 0x60)
	mov	a,#0x60
	anl	a,_bmRequestType
	mov	r7,a
	jz	00101$
	cjne	r7,#0x20,00128$
	sjmp	00102$
00128$:
;	usb.c:357: case 0:
	cjne	r7,#0x40,00104$
	sjmp	00103$
00101$:
;	usb.c:358: res = HandleStandardRequest();
	lcall	_HandleStandardRequest
	mov	r7,dpl
;	usb.c:359: break;
;	usb.c:360: case 0x20:
	sjmp	00105$
00102$:
;	usb.c:361: res = HandleClassRequest();
	lcall	_HandleClassRequest
	mov	r7,dpl
;	usb.c:362: break;
;	usb.c:363: case 0x40:
	sjmp	00105$
00103$:
;	usb.c:364: res = HandleVendorRequest();
	lcall	_HandleVendorRequest
	mov	r7,dpl
;	usb.c:365: break;
;	usb.c:366: default:
	sjmp	00105$
00104$:
;	usb.c:367: res = FALSE;
	mov	r7,#0x00
;	usb.c:368: }
00105$:
;	usb.c:370: if (!res)
	mov	a,r7
	jnz	00108$
;	usb.c:372: EP0CS = wLength ? bmEP0STALL : bmEP0NAK;
	mov	a,_wLength
	orl	a,(_wLength + 1)
	jz	00110$
	mov	r7,#0x08
	sjmp	00111$
00110$:
	mov	r7,#0x02
00111$:
	mov	dptr,#_EP0CS
	mov	a,r7
	movx	@dptr,a
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HandleUSBEvents'
;------------------------------------------------------------
;a                         Allocated to registers r7 
;b                         Allocated to registers r6 
;c                         Allocated to registers r5 
;d                         Allocated to registers r4 
;------------------------------------------------------------
;	usb.c:376: void HandleUSBEvents(void)
;	-----------------------------------------
;	 function HandleUSBEvents
;	-----------------------------------------
_HandleUSBEvents:
;	usb.c:378: if (UsbIntStsF080 | UsbIntStsF082 | UsbIntStsF086 | UsbIntStsF087 | usb_irq)
	mov	dptr,#_UsbIntStsF082
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_UsbIntStsF080
	movx	a,@dptr
	mov	r6,a
	orl	a,r7
	mov	r5,a
	mov	dptr,#_UsbIntStsF086
	movx	a,@dptr
	orl	ar5,a
	mov	dptr,#_UsbIntStsF087
	movx	a,@dptr
	orl	ar5,a
	mov	dptr,#_usb_irq
	movx	a,@dptr
	mov	r4,a
	orl	a,r5
	jz	00144$
;	usb.c:380: if (usb_irq)
	mov	a,r4
	jz	00116$
;	usb.c:382: if (usb_irq & 0x40)
	mov	a,r4
	jnb	acc.6,00105$
;	usb.c:384: USBCTL &= ~bmAttach;
	mov	dptr,#_USBCTL
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x7F
	anl	a,r5
	movx	@dptr,a
;	usb.c:385: ResetEPs();
	lcall	_ResetEPs
;	usb.c:386: XVAL(0xFE88) = 0;
	mov	dptr,#0xFE88
	clr	a
	movx	@dptr,a
;	usb.c:387: XVAL(0xFE82) = 0x10;
	mov	dptr,#0xFE82
	mov	a,#0x10
	movx	@dptr,a
;	usb.c:388: while(XVAL(0xFE88)!=2);
00101$:
	mov	dptr,#0xFE88
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x02,00101$
;	usb.c:389: USBCTL = bmAttach;
	mov	dptr,#_USBCTL
	mov	a,#0x80
	movx	@dptr,a
00105$:
;	usb.c:392: if (usb_irq & bmSpeedChange)
	mov	dptr,#_usb_irq
	movx	a,@dptr
	mov	r5,a
	jnb	acc.7,00107$
;	usb.c:394: ResetEPs();
	lcall	_ResetEPs
00107$:
;	usb.c:397: usb_irq = 0;
	mov	dptr,#_usb_irq
	clr	a
	movx	@dptr,a
	sjmp	00117$
00116$:
;	usb.c:401: if (UsbIntStsF082 & 0xC0)
	mov	a,r7
	anl	a,#0xC0
	jz	00113$
;	usb.c:403: ResetEPs();
	lcall	_ResetEPs
;	usb.c:404: XVAL(0xF092) = 0;
	mov	dptr,#0xF092
	clr	a
	movx	@dptr,a
;	usb.c:405: XVAL(0xF096) = 0;
	mov	dptr,#0xF096
	movx	@dptr,a
;	usb.c:406: if (UsbIntStsF082 & 0x40)
	mov	dptr,#_UsbIntStsF082
	movx	a,@dptr
	mov	r7,a
	jnb	acc.6,00114$
;	usb.c:408: XVAL(0xF07A) = 1;
	mov	dptr,#0xF07A
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00114$
00113$:
;	usb.c:413: if (UsbIntStsF080 & 1)
	mov	a,r6
	jnb	acc.0,00114$
;	usb.c:415: HandleControlRequest();
	lcall	_HandleControlRequest
00114$:
;	usb.c:419: UsbIntStsF080 = 0;
	mov	dptr,#_UsbIntStsF080
	clr	a
	movx	@dptr,a
;	usb.c:420: UsbIntStsF082 = 0; 
	mov	dptr,#_UsbIntStsF082
	movx	@dptr,a
;	usb.c:421: UsbIntStsF086 = 0; 
	mov	dptr,#_UsbIntStsF086
	movx	@dptr,a
;	usb.c:422: UsbIntStsF087 = 0;
	mov	dptr,#_UsbIntStsF087
	movx	@dptr,a
00117$:
;	usb.c:425: EX0 = 1;	
	setb	_EX0
;	usb.c:429: if (1)//usb_received_data_ready)
00144$:
;	usb.c:433: if (EP4.fifo_count > 0)
	mov	dptr,#(_EP4 + 0x001a)
	movx	a,@dptr
	jz	00123$
;	usb.c:435: EP4.cs = 0x40;
	mov	dptr,#(_EP4 + 0x0013)
	mov	a,#0x40
	movx	@dptr,a
;	usb.c:437: send_keys_enabled = 1;
	mov	_send_keys_enabled,#0x01
;	usb.c:438: usb_received_data_ready &= ~bmEP4IRQ;
	mov	dptr,#_usb_received_data_ready
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xF7
	anl	a,r7
	movx	@dptr,a
;	usb.c:439: EPIE |= bmEP4IRQ;
	mov	dptr,#_EPIE
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x08
	orl	a,r7
	movx	@dptr,a
00123$:
;	usb.c:443: if (usb_received_data_ready & bmEP2IRQ)
	mov	dptr,#_usb_received_data_ready
	movx	a,@dptr
	mov	r7,a
	jb	acc.1,00229$
	ljmp	00145$
00229$:
;	usb.c:445: if (EP2.fifo_count == 31) //CBW size
	mov	dptr,#(_EP2 + 0x001a)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x1F,00230$
	sjmp	00231$
00230$:
	ljmp	00140$
00231$:
;	usb.c:449: scsi_data_residue = 0;
	clr	a
	mov	_scsi_data_residue,a
	mov	(_scsi_data_residue + 1),a
	mov	(_scsi_data_residue + 2),a
	mov	(_scsi_data_residue + 3),a
;	usb.c:455: a = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r7,a
;	usb.c:456: b = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r6,a
;	usb.c:457: c = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r5,a
;	usb.c:458: d = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r4,a
;	usb.c:459: if ((a=='U') && (b=='S') && (c=='B') && (d=='C'))
	cjne	r7,#0x55,00232$
	sjmp	00233$
00232$:
	ljmp	00134$
00233$:
	cjne	r6,#0x53,00234$
	sjmp	00235$
00234$:
	ljmp	00134$
00235$:
	cjne	r5,#0x42,00236$
	sjmp	00237$
00236$:
	ljmp	00134$
00237$:
	cjne	r4,#0x43,00238$
	sjmp	00239$
00238$:
	ljmp	00134$
00239$:
;	usb.c:461: scsi_tag[0] = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r7,a
	mov	_scsi_tag,r7
;	usb.c:462: scsi_tag[1] = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r7,a
	mov	(_scsi_tag + 0x0001),r7
;	usb.c:463: scsi_tag[2] = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r7,a
	mov	(_scsi_tag + 0x0002),r7
;	usb.c:464: scsi_tag[3] = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r7,a
	mov	(_scsi_tag + 0x0003),r7
;	usb.c:465: scsi_transfer_size = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r7,a
	mov	_scsi_transfer_size,r7
	mov	(_scsi_transfer_size + 1),#0x00
	mov	(_scsi_transfer_size + 2),#0x00
	mov	(_scsi_transfer_size + 3),#0x00
;	usb.c:466: scsi_transfer_size |= ((DWORD)EP2.fifo)<<8;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	r5,#0x00
	mov	ar4,r5
	mov	ar5,r6
	mov	ar6,r7
	clr	a
	orl	_scsi_transfer_size,a
	mov	a,r6
	orl	(_scsi_transfer_size + 1),a
	mov	a,r5
	orl	(_scsi_transfer_size + 2),a
	mov	a,r4
	orl	(_scsi_transfer_size + 3),a
;	usb.c:467: scsi_transfer_size |= ((DWORD)EP2.fifo)<<16;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	ar4,r6
	mov	ar5,r7
	clr	a
	mov	r6,a
	orl	_scsi_transfer_size,a
	mov	a,r6
	orl	(_scsi_transfer_size + 1),a
	mov	a,r5
	orl	(_scsi_transfer_size + 2),a
	mov	a,r4
	orl	(_scsi_transfer_size + 3),a
;	usb.c:468: scsi_transfer_size |= ((DWORD)EP2.fifo)<<24;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r4,a
	clr	a
	mov	r7,a
	mov	r6,a
	mov	r5,a
	mov	a,r7
	orl	_scsi_transfer_size,a
	mov	a,r6
	orl	(_scsi_transfer_size + 1),a
	mov	a,r5
	orl	(_scsi_transfer_size + 2),a
	mov	a,r4
	orl	(_scsi_transfer_size + 3),a
;	usb.c:469: scsi_dir_in = EP2.fifo & 0x80;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x80
	anl	a,r7
	mov	_scsi_dir_in,a
;	usb.c:470: scsi_lun = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	_scsi_lun,a
;	usb.c:471: scsi_cdb_size = EP2.fifo;
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	_scsi_cdb_size,a
;	usb.c:472: for(a = 0; a < 16; a++)
	mov	r7,#0x00
00148$:
;	usb.c:474: scsi_cdb[a] = EP2.fifo;
	mov	a,r7
	add	a,#_scsi_cdb
	mov	r1,a
	mov	dptr,#(_EP2 + 0x001c)
	movx	a,@dptr
	mov	r6,a
	mov	@r1,a
;	usb.c:472: for(a = 0; a < 16; a++)
	inc	r7
	cjne	r7,#0x10,00240$
00240$:
	jc	00148$
;	usb.c:477: EP2.cs = 0x40;
	mov	dptr,#(_EP2 + 0x0013)
	mov	a,#0x40
	movx	@dptr,a
;	usb.c:478: if (!HandleCDB())
	lcall	_HandleCDB
	mov	a,dpl
	jnz	00132$
;	usb.c:480: scsi_status = 1;
	mov	_scsi_status,#0x01
;	usb.c:481: if (scsi_transfer_size == 0)
	mov	a,_scsi_transfer_size
	orl	a,(_scsi_transfer_size + 1)
	orl	a,(_scsi_transfer_size + 2)
	orl	a,(_scsi_transfer_size + 3)
	jnz	00129$
;	usb.c:483: EP1.cs = bmSTALL; 
	mov	dptr,#(_EP1 + 0x0013)
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00132$
00129$:
;	usb.c:485: else if (scsi_dir_in)
	mov	a,_scsi_dir_in
	jz	00126$
;	usb.c:487: EP1.cs = bmSTALL;
	mov	dptr,#(_EP1 + 0x0013)
	mov	a,#0x02
	movx	@dptr,a
	sjmp	00132$
00126$:
;	usb.c:491: EP2.cs = bmSTALL;
	mov	dptr,#(_EP2 + 0x0013)
	mov	a,#0x02
	movx	@dptr,a
00132$:
;	usb.c:495: usb_have_csw_ready = 1;
	mov	dptr,#_usb_have_csw_ready
	mov	a,#0x01
	movx	@dptr,a
	sjmp	00141$
00134$:
;	usb.c:499: EP2.cs = 0x40;
;	usb.c:500: EP2.cs = 4;
	mov	dptr,#(_EP2 + 0x0013)
	mov	a,#0x40
	movx	@dptr,a
	swap	a
	movx	@dptr,a
	sjmp	00141$
00140$:
;	usb.c:505: EP2.cs = 0x40;
;	usb.c:506: EP2.cs = 4;
	mov	dptr,#(_EP2 + 0x0013)
	mov	a,#0x40
	movx	@dptr,a
	swap	a
	movx	@dptr,a
00141$:
;	usb.c:509: usb_received_data_ready &= ~bmEP2IRQ;
	mov	dptr,#_usb_received_data_ready
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xFD
	anl	a,r7
	movx	@dptr,a
;	usb.c:510: EPIE |= bmEP2IRQ;
	mov	dptr,#_EPIE
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x02
	orl	a,r7
	movx	@dptr,a
00145$:
;	usb.c:514: if (usb_have_csw_ready)
	mov	dptr,#_usb_have_csw_ready
	movx	a,@dptr
	movx	a,@dptr
	jz	00150$
;	usb.c:516: SendCSW2();
	ljmp	_SendCSW2
00150$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
