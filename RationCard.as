opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 6738"

opt pagewidth 120

	opt pm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 8 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 8 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	dw 0x3FFA & 0x3FF7 & 0x3FEF & 0x3CFF & 0x3FFF & 0x2FFF ;#
# 36 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 36 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,50,10,8,0,0,0 ;#
# 37 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 37 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,30,8,6,0,0,0 ;#
# 38 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 38 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,20,4,5,0,0,0 ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_paramter
	FNCALL	_main,_SoftWareUart_Init
	FNCALL	_main,_startup
	FNCALL	_main,_lcdclear
	FNCALL	_main,_RFID_read
	FNCALL	_main,_strcmp
	FNCALL	_main,_ReadAmnt
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_lcdstring
	FNCALL	_main,_DisplayAmnt
	FNCALL	_main,_DisplayRise
	FNCALL	_main,_DisplaySugar
	FNCALL	_main,_DisplayKerosene
	FNCALL	_startup,_lcdcmd
	FNCALL	_startup,_lcdstring
	FNCALL	_DisplayKerosene,_lcdcmd
	FNCALL	_DisplayKerosene,___lbdiv
	FNCALL	_DisplayKerosene,_lcddata
	FNCALL	_DisplayKerosene,___lbmod
	FNCALL	_DisplayRise,_lcdcmd
	FNCALL	_DisplayRise,___lbdiv
	FNCALL	_DisplayRise,_lcddata
	FNCALL	_DisplayRise,___lbmod
	FNCALL	_DisplaySugar,_lcdcmd
	FNCALL	_DisplaySugar,___lbdiv
	FNCALL	_DisplaySugar,_lcddata
	FNCALL	_DisplaySugar,___lbmod
	FNCALL	_DisplayAmnt,_lcdcmd
	FNCALL	_DisplayAmnt,___awdiv
	FNCALL	_DisplayAmnt,_lcddata
	FNCALL	_DisplayAmnt,___awmod
	FNCALL	_lcdstring,_lcddata
	FNCALL	_lcd_init,_lcdport
	FNCALL	_lcd_init,_lcdcmd
	FNCALL	_lcdclear,_lcdcmd
	FNCALL	_RFID_read,_softreceive
	FNCALL	_lcddata,_lcdport
	FNCALL	_lcddata,_enable
	FNCALL	_lcdcmd,_lcdport
	FNCALL	_lcdcmd,_enable
	FNCALL	_paramter,_eeprom_read
	FNCALL	_paramter,___wmul
	FNCALL	_ReadAmnt,_eeprom_read
	FNCALL	_ReadAmnt,___wmul
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_User1
	global	_User2
	global	_User3
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	33

;initializer for _User1
	retlw	031h
	retlw	043h
	retlw	030h
	retlw	030h
	retlw	038h
	retlw	032h
	retlw	043h
	retlw	045h
	retlw	036h
	retlw	039h
	retlw	033h
	retlw	039h
	retlw	0
	line	34

;initializer for _User2
	retlw	031h
	retlw	042h
	retlw	030h
	retlw	030h
	retlw	033h
	retlw	043h
	retlw	035h
	retlw	042h
	retlw	046h
	retlw	043h
	retlw	038h
	retlw	030h
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	35

;initializer for _User3
	retlw	031h
	retlw	042h
	retlw	030h
	retlw	030h
	retlw	033h
	retlw	043h
	retlw	035h
	retlw	042h
	retlw	046h
	retlw	043h
	retlw	038h
	retlw	031h
	retlw	0
	global	_digit
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	30
_digit:
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	0
	global	_digit
	global	_User
	global	_User1amt
	global	_User2amt
	global	_User3amt
	global	_User1Kerosene
	global	_User1Sugar
	global	_User2Kerosene
	global	_User2Rise
	global	_User2Sugar
	global	_User3Kerosene
	global	_User3Rise
	global	_User3Sugar
	global	_delayus_variable
	global	_User1Rise
	global	_rfid_flag
	global	_card_store
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_RC0
_RC0	set	56
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_SPBRG
_SPBRG	set	153
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_TRISD0
_TRISD0	set	1088
	global	_TRISD1
_TRISD1	set	1089
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_EECON1
_EECON1	set	396
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	
STR_20:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	75	;'K'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_19:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	71	;'G'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	75	;'K'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	50	;'2'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	51	;'3'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	77	;'M'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	76	;'L'
	retlw	116	;'t'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	32	;' '
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	85	;'U'
	retlw	84	;'T'
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	83	;'S'
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	89	;'Y'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	65	;'A'
	retlw	85	;'U'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	stringtext
STR_12	equ	STR_8+0
STR_16	equ	STR_8+0
STR_11	equ	STR_7+0
STR_15	equ	STR_7+0
STR_10	equ	STR_6+0
STR_14	equ	STR_6+0
	file	"RationCard.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bitbssCOMMON,class=COMMON,bit,space=1
global __pbitbssCOMMON
__pbitbssCOMMON:
_rfid_flag:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_User1Rise:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_User:
       ds      2

_User1amt:
       ds      2

_User2amt:
       ds      2

_User3amt:
       ds      2

_User1Kerosene:
       ds      1

_User1Sugar:
       ds      1

_User2Kerosene:
       ds      1

_User2Rise:
       ds      1

_User2Sugar:
       ds      1

_User3Kerosene:
       ds      1

_User3Rise:
       ds      1

_User3Sugar:
       ds      1

_delayus_variable:
       ds      1

_card_store:
       ds      15

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	33
_User1:
       ds      13

psect	dataBANK0
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	34
_User2:
       ds      13

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	35
_User3:
       ds      13

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+020h)
	fcall	clear_ram
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
	fcall	__pidataBANK1+5		;fetch initializer
	movwf	__pdataBANK1+5&07fh		
	fcall	__pidataBANK1+6		;fetch initializer
	movwf	__pdataBANK1+6&07fh		
	fcall	__pidataBANK1+7		;fetch initializer
	movwf	__pdataBANK1+7&07fh		
	fcall	__pidataBANK1+8		;fetch initializer
	movwf	__pdataBANK1+8&07fh		
	fcall	__pidataBANK1+9		;fetch initializer
	movwf	__pdataBANK1+9&07fh		
	fcall	__pidataBANK1+10		;fetch initializer
	movwf	__pdataBANK1+10&07fh		
	fcall	__pidataBANK1+11		;fetch initializer
	movwf	__pdataBANK1+11&07fh		
	fcall	__pidataBANK1+12		;fetch initializer
	movwf	__pdataBANK1+12&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	bcf	status, 5	;RP0=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
	fcall	__pidataBANK0+8		;fetch initializer
	movwf	__pdataBANK0+8&07fh		
	fcall	__pidataBANK0+9		;fetch initializer
	movwf	__pdataBANK0+9&07fh		
	fcall	__pidataBANK0+10		;fetch initializer
	movwf	__pdataBANK0+10&07fh		
	fcall	__pidataBANK0+11		;fetch initializer
	movwf	__pdataBANK0+11&07fh		
	fcall	__pidataBANK0+12		;fetch initializer
	movwf	__pdataBANK0+12&07fh		
	fcall	__pidataBANK0+13		;fetch initializer
	movwf	__pdataBANK0+13&07fh		
	fcall	__pidataBANK0+14		;fetch initializer
	movwf	__pdataBANK0+14&07fh		
	fcall	__pidataBANK0+15		;fetch initializer
	movwf	__pdataBANK0+15&07fh		
	fcall	__pidataBANK0+16		;fetch initializer
	movwf	__pdataBANK0+16&07fh		
	fcall	__pidataBANK0+17		;fetch initializer
	movwf	__pdataBANK0+17&07fh		
	fcall	__pidataBANK0+18		;fetch initializer
	movwf	__pdataBANK0+18&07fh		
	fcall	__pidataBANK0+19		;fetch initializer
	movwf	__pdataBANK0+19&07fh		
	fcall	__pidataBANK0+20		;fetch initializer
	movwf	__pdataBANK0+20&07fh		
	fcall	__pidataBANK0+21		;fetch initializer
	movwf	__pdataBANK0+21&07fh		
	fcall	__pidataBANK0+22		;fetch initializer
	movwf	__pdataBANK0+22&07fh		
	fcall	__pidataBANK0+23		;fetch initializer
	movwf	__pdataBANK0+23&07fh		
	fcall	__pidataBANK0+24		;fetch initializer
	movwf	__pdataBANK0+24&07fh		
	fcall	__pidataBANK0+25		;fetch initializer
	movwf	__pdataBANK0+25&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_enable
?_enable:	; 0 bytes @ 0x0
	global	?_lcdport
?_lcdport:	; 0 bytes @ 0x0
	global	?_lcdcmd
?_lcdcmd:	; 0 bytes @ 0x0
	global	?_lcddata
?_lcddata:	; 0 bytes @ 0x0
	global	?_lcdclear
?_lcdclear:	; 0 bytes @ 0x0
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_SoftWareUart_Init
?_SoftWareUart_Init:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	??_ISR
??_ISR:	; 0 bytes @ 0x0
	global	?_RFID_read
?_RFID_read:	; 0 bytes @ 0x0
	global	?_ReadAmnt
?_ReadAmnt:	; 0 bytes @ 0x0
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	?_paramter
?_paramter:	; 0 bytes @ 0x0
	global	?_startup
?_startup:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x0
	global	?_softreceive
?_softreceive:	; 1 bytes @ 0x0
	ds	2
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0x2
	global	??_enable
??_enable:	; 0 bytes @ 0x2
	global	??_lcdport
??_lcdport:	; 0 bytes @ 0x2
	global	??_SoftWareUart_Init
??_SoftWareUart_Init:	; 0 bytes @ 0x2
	global	??_softreceive
??_softreceive:	; 0 bytes @ 0x2
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x2
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x2
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x2
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x2
	global	?___awmod
?___awmod:	; 2 bytes @ 0x2
	global	lcdport@a
lcdport@a:	; 1 bytes @ 0x2
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x2
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x2
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	ds	1
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x3
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x3
	global	softreceive@Data
softreceive@Data:	; 1 bytes @ 0x3
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x3
	ds	1
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x4
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x4
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x4
	global	lcdcmd@y
lcdcmd@y:	; 1 bytes @ 0x4
	global	lcddata@y
lcddata@y:	; 1 bytes @ 0x4
	global	softreceive@mask
softreceive@mask:	; 1 bytes @ 0x4
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x4
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x4
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x4
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x4
	ds	1
	global	??_RFID_read
??_RFID_read:	; 0 bytes @ 0x5
	global	?___wmul
?___wmul:	; 2 bytes @ 0x5
	global	lcdcmd@z
lcdcmd@z:	; 1 bytes @ 0x5
	global	lcddata@z
lcddata@z:	; 1 bytes @ 0x5
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x5
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x5
	global	RFID_read@i
RFID_read@i:	; 2 bytes @ 0x5
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x5
	ds	1
	global	??___awmod
??___awmod:	; 0 bytes @ 0x6
	global	lcdcmd@a
lcdcmd@a:	; 1 bytes @ 0x6
	global	lcddata@a
lcddata@a:	; 1 bytes @ 0x6
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x6
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x6
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_lcdclear
??_lcdclear:	; 0 bytes @ 0x7
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x7
	global	?_lcdstring
?_lcdstring:	; 0 bytes @ 0x7
	global	?_DisplaySugar
?_DisplaySugar:	; 0 bytes @ 0x7
	global	?_DisplayRise
?_DisplayRise:	; 0 bytes @ 0x7
	global	?_DisplayKerosene
?_DisplayKerosene:	; 0 bytes @ 0x7
	global	DisplaySugar@Sugar
DisplaySugar@Sugar:	; 1 bytes @ 0x7
	global	DisplayRise@Rise
DisplayRise@Rise:	; 1 bytes @ 0x7
	global	DisplayKerosene@Kerosene
DisplayKerosene@Kerosene:	; 1 bytes @ 0x7
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x7
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x7
	global	lcdstring@a
lcdstring@a:	; 2 bytes @ 0x7
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x7
	ds	1
	global	??_DisplayAmnt
??_DisplayAmnt:	; 0 bytes @ 0x8
	global	??_DisplaySugar
??_DisplaySugar:	; 0 bytes @ 0x8
	global	??_DisplayRise
??_DisplayRise:	; 0 bytes @ 0x8
	global	??_DisplayKerosene
??_DisplayKerosene:	; 0 bytes @ 0x8
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x8
	global	DisplaySugar@Location
DisplaySugar@Location:	; 1 bytes @ 0x8
	global	DisplayRise@Location
DisplayRise@Location:	; 1 bytes @ 0x8
	global	DisplayKerosene@Location
DisplayKerosene@Location:	; 1 bytes @ 0x8
	ds	1
	global	??_lcdstring
??_lcdstring:	; 0 bytes @ 0x9
	global	??_ReadAmnt
??_ReadAmnt:	; 0 bytes @ 0x9
	global	??_paramter
??_paramter:	; 0 bytes @ 0x9
	global	??___wmul
??___wmul:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_startup
??_startup:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
	global	?_DisplayAmnt
?_DisplayAmnt:	; 0 bytes @ 0x8
	global	DisplayAmnt@Amnt
DisplayAmnt@Amnt:	; 2 bytes @ 0x8
	ds	2
	global	DisplayAmnt@Location
DisplayAmnt@Location:	; 1 bytes @ 0xA
	ds	1
	global	_DisplayAmnt$973
_DisplayAmnt$973:	; 2 bytes @ 0xB
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xD
	ds	3
;;Data sizes: Strings 282, constant 11, data 39, bss 33, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      11
;; BANK0           80     16      74
;; BANK1           80      0      13
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strcmp	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; strcmp@s2	PTR const unsigned char  size(1) Largest target is 13
;;		 -> User3(BANK1[13]), User2(BANK0[13]), User1(BANK0[13]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 15
;;		 -> card_store(BANK0[15]), 
;;
;; lcdstring@a	PTR const unsigned char  size(2) Largest target is 21
;;		 -> STR_20(CODE[21]), STR_19(CODE[21]), STR_18(CODE[21]), STR_17(CODE[21]), 
;;		 -> STR_16(CODE[21]), STR_15(CODE[21]), STR_14(CODE[21]), STR_13(CODE[21]), 
;;		 -> STR_12(CODE[21]), STR_11(CODE[21]), STR_10(CODE[21]), STR_9(CODE[21]), 
;;		 -> STR_8(CODE[21]), STR_7(CODE[21]), STR_6(CODE[21]), STR_5(CODE[21]), 
;;		 -> STR_4(CODE[18]), STR_3(CODE[18]), STR_2(CODE[18]), STR_1(CODE[18]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_init
;;   _main->_lcdstring
;;   _main->_DisplayRise
;;   _main->_DisplaySugar
;;   _main->_DisplayKerosene
;;   _startup->_lcdstring
;;   _DisplayKerosene->_lcdcmd
;;   _DisplayKerosene->_lcddata
;;   _DisplayKerosene->___lbmod
;;   _DisplayRise->_lcdcmd
;;   _DisplayRise->_lcddata
;;   _DisplayRise->___lbmod
;;   _DisplaySugar->_lcdcmd
;;   _DisplaySugar->_lcddata
;;   _DisplaySugar->___lbmod
;;   _DisplayAmnt->___awmod
;;   _lcdstring->_lcddata
;;   _lcd_init->_lcdcmd
;;   _lcdclear->_lcdcmd
;;   _RFID_read->_softreceive
;;   _lcddata->_enable
;;   _lcdcmd->_enable
;;   _paramter->___wmul
;;   _ReadAmnt->___wmul
;;   ___awdiv->___awmod
;;   ___wmul->_eeprom_read
;;
;; Critical Paths under _ISR in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_DisplayAmnt
;;   _DisplayAmnt->___awdiv
;;   _paramter->___wmul
;;   _ReadAmnt->___wmul
;;
;; Critical Paths under _ISR in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ISR in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0    5354
;;                                             13 BANK0      3     3      0
;;                          _uart_init
;;                           _lcd_init
;;                           _paramter
;;                  _SoftWareUart_Init
;;                            _startup
;;                           _lcdclear
;;                          _RFID_read
;;                             _strcmp
;;                           _ReadAmnt
;;                             _lcdcmd
;;                          _lcdstring
;;                        _DisplayAmnt
;;                        _DisplayRise
;;                       _DisplaySugar
;;                    _DisplayKerosene
;; ---------------------------------------------------------------------------------
;; (1) _startup                                              3     3      0     405
;;                                              0 BANK0      3     3      0
;;                             _lcdcmd
;;                          _lcdstring
;; ---------------------------------------------------------------------------------
;; (1) _DisplayKerosene                                      2     1      1     747
;;                                              7 COMMON     2     1      1
;;                             _lcdcmd
;;                            ___lbdiv
;;                            _lcddata
;;                            ___lbmod
;; ---------------------------------------------------------------------------------
;; (1) _DisplayRise                                          2     1      1     747
;;                                              7 COMMON     2     1      1
;;                             _lcdcmd
;;                            ___lbdiv
;;                            _lcddata
;;                            ___lbmod
;; ---------------------------------------------------------------------------------
;; (1) _DisplaySugar                                         2     1      1     747
;;                                              7 COMMON     2     1      1
;;                             _lcdcmd
;;                            ___lbdiv
;;                            _lcddata
;;                            ___lbmod
;; ---------------------------------------------------------------------------------
;; (1) _DisplayAmnt                                          5     3      2    1290
;;                                              8 BANK0      5     3      2
;;                             _lcdcmd
;;                            ___awdiv
;;                            _lcddata
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _lcdstring                                            2     0      2     225
;;                                              7 COMMON     2     0      2
;;                            _lcddata
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0     268
;;                                              7 COMMON     2     2      0
;;                            _lcdport
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (1) _lcdclear                                             0     0      0     180
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (1) _RFID_read                                            2     2      0     160
;;                                              5 COMMON     2     2      0
;;                        _softreceive
;; ---------------------------------------------------------------------------------
;; (2) _lcddata                                              3     3      0     180
;;                                              4 COMMON     3     3      0
;;                            _lcdport
;;                             _enable
;; ---------------------------------------------------------------------------------
;; (2) _lcdcmd                                               3     3      0     180
;;                                              4 COMMON     3     3      0
;;                            _lcdport
;;                             _enable
;; ---------------------------------------------------------------------------------
;; (1) _paramter                                             0     0      0     158
;;                        _eeprom_read
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (1) _ReadAmnt                                             0     0      0     158
;;                        _eeprom_read
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (2) _softreceive                                          3     3      0      92
;;                                              2 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _SoftWareUart_Init                                    1     1      0       0
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _enable                                               2     2      0       0
;;                                              2 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              6     2      4     296
;;                                              2 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              8     4      4     445
;;                                              0 BANK0      8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lbmod                                              5     4      1     159
;;                                              2 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (2) ___lbdiv                                              4     3      1     162
;;                                              2 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4     136
;;                                              5 COMMON     4     0      4
;;                                              0 BANK0      2     2      0
;;                        _eeprom_read (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _strcmp                                               6     4      2      89
;;                                              2 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _eeprom_read                                          3     3      0      22
;;                                              2 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (3) _lcdport                                              1     1      0      88
;;                                              2 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _uart_init
;;   _lcd_init
;;     _lcdport
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;   _paramter
;;     _eeprom_read
;;     ___wmul
;;       _eeprom_read (ARG)
;;   _SoftWareUart_Init
;;   _startup
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;     _lcdstring
;;       _lcddata
;;         _lcdport
;;         _enable
;;   _lcdclear
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;   _RFID_read
;;     _softreceive
;;   _strcmp
;;   _ReadAmnt
;;     _eeprom_read
;;     ___wmul
;;       _eeprom_read (ARG)
;;   _lcdcmd
;;     _lcdport
;;     _enable
;;   _lcdstring
;;     _lcddata
;;       _lcdport
;;       _enable
;;   _DisplayAmnt
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;     ___awdiv
;;       ___awmod (ARG)
;;     _lcddata
;;       _lcdport
;;       _enable
;;     ___awmod
;;   _DisplayRise
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;     ___lbdiv
;;     _lcddata
;;       _lcdport
;;       _enable
;;     ___lbmod
;;   _DisplaySugar
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;     ___lbdiv
;;     _lcddata
;;       _lcdport
;;       _enable
;;     ___lbmod
;;   _DisplayKerosene
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;     ___lbdiv
;;     _lcddata
;;       _lcdport
;;       _enable
;;     ___lbmod
;;
;; _ISR (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       D       7       16.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      66      12        0.0%
;;ABS                  0      0      62       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50     10      4A       5       92.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       B       1       78.6%
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 143 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 160/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_uart_init
;;		_lcd_init
;;		_paramter
;;		_SoftWareUart_Init
;;		_startup
;;		_lcdclear
;;		_RFID_read
;;		_strcmp
;;		_ReadAmnt
;;		_lcdcmd
;;		_lcdstring
;;		_DisplayAmnt
;;		_DisplayRise
;;		_DisplaySugar
;;		_DisplayKerosene
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	143
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	144
	
l2799:	
;Main.c: 144: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	145
;Main.c: 145: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	line	146
	
l2801:	
;Main.c: 146: TRISD=0X01;
	movlw	(01h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	147
	
l2803:	
;Main.c: 147: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	line	148
;Main.c: 148: TRISC=0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	149
	
l2805:	
;Main.c: 149: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	150
	
l2807:	
;Main.c: 150: uart_init();
	fcall	_uart_init
	line	151
	
l2809:	
;Main.c: 151: lcd_init();
	fcall	_lcd_init
	line	152
	
l2811:	
;Main.c: 152: paramter();
	fcall	_paramter
	line	153
	
l2813:	
;Main.c: 153: SoftWareUart_Init();
	fcall	_SoftWareUart_Init
	line	154
	
l2815:	
;Main.c: 154: startup();
	fcall	_startup
	line	155
	
l2817:	
;Main.c: 155: lcdclear();
	fcall	_lcdclear
	line	158
	
l2819:	
;Main.c: 157: {
;Main.c: 158: if(!RC0)
	btfsc	(56/8),(56)&7
	goto	u901
	goto	u900
u901:
	goto	l2825
u900:
	line	160
	
l2821:	
;Main.c: 159: {
;Main.c: 160: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u947:
	decfsz	((??_main+0)+0),f
	goto	u947
	decfsz	((??_main+0)+0+1),f
	goto	u947
	decfsz	((??_main+0)+0+2),f
	goto	u947
opt asmopt_on

	line	161
	
l2823:	
;Main.c: 161: rfid_flag=0;
	bcf	(_rfid_flag/8),(_rfid_flag)&7
	line	163
	
l2825:	
;Main.c: 162: }
;Main.c: 163: RFID_read();
	fcall	_RFID_read
	line	166
	
l2827:	
;Main.c: 166: if(strcmp(card_store,User1)==0)
	movlw	(_User1)&0ffh
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u911
	goto	u910
u911:
	goto	l2831
u910:
	line	167
	
l2829:	
;Main.c: 167: {User=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_User)
	incf	(_User),f
	clrf	(_User+1)
	goto	l2907
	line	168
	
l2831:	
;Main.c: 168: else if(strcmp(card_store,User2)==0)
	movlw	(_User2)&0ffh
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u921
	goto	u920
u921:
	goto	l2835
u920:
	line	169
	
l2833:	
;Main.c: 169: {User=2;}
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User)
	clrf	(_User+1)
	goto	l2907
	line	170
	
l2835:	
;Main.c: 170: else if(strcmp(card_store,User3)==0)
	movlw	(_User3)&0ffh
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u931
	goto	u930
u931:
	goto	l2839
u930:
	line	171
	
l2837:	
;Main.c: 171: {User=3;}
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User)
	clrf	(_User+1)
	goto	l2907
	line	173
	
l2839:	
;Main.c: 172: else
;Main.c: 173: {User=8;}
	movlw	08h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User)
	clrf	(_User+1)
	goto	l2907
	line	178
	
l2841:	
;Main.c: 177: {
;Main.c: 178: ReadAmnt();
	fcall	_ReadAmnt
	line	179
;Main.c: 179: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	180
	
l2843:	
;Main.c: 180: lcdstring("USER1 AMOUNT:       ");
	movlw	low(STR_5|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_5|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	181
	
l2845:	
;Main.c: 181: DisplayAmnt(0X8D,User1amt);
	movf	(_User1amt+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_User1amt),w
	movwf	(?_DisplayAmnt)
	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	182
;Main.c: 182: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	183
	
l2847:	
;Main.c: 183: lcdstring("RISE:   Kg          ");
	movlw	low(STR_6|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_6|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	184
	
l2849:	
;Main.c: 184: DisplayRise(0XC5,User1Rise);
	movf	(_User1Rise),w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	185
;Main.c: 185: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	186
	
l2851:	
;Main.c: 186: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_7|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_7|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	187
	
l2853:	
;Main.c: 187: DisplaySugar(0x9A,User1Sugar);
	movf	(_User1Sugar),w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	188
;Main.c: 188: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	189
	
l2855:	
;Main.c: 189: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_8|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_8|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	190
	
l2857:	
;Main.c: 190: DisplayKerosene(0XDD,User1Kerosene);
	movf	(_User1Kerosene),w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	191
;Main.c: 191: break;
	goto	l2819
	line	195
	
l2859:	
;Main.c: 194: {
;Main.c: 195: ReadAmnt();
	fcall	_ReadAmnt
	line	196
;Main.c: 196: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	197
	
l2861:	
;Main.c: 197: lcdstring("USER2 AMOUNT:       ");
	movlw	low(STR_9|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_9|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	198
	
l2863:	
;Main.c: 198: DisplayAmnt(0X8D,User2amt);
	movf	(_User2amt+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_User2amt),w
	movwf	(?_DisplayAmnt)
	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	199
;Main.c: 199: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	200
	
l2865:	
;Main.c: 200: lcdstring("RISE:   Kg          ");
	movlw	low(STR_10|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_10|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	201
	
l2867:	
;Main.c: 201: DisplayRise(0XC5,User2Rise);
	movf	(_User2Rise),w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	202
;Main.c: 202: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	203
	
l2869:	
;Main.c: 203: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_11|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_11|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	204
	
l2871:	
;Main.c: 204: DisplaySugar(0x9A,User2Sugar);
	movf	(_User2Sugar),w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	205
;Main.c: 205: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	206
	
l2873:	
;Main.c: 206: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_12|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_12|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	207
	
l2875:	
;Main.c: 207: DisplayKerosene(0XDD,User2Kerosene);
	movf	(_User2Kerosene),w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	208
;Main.c: 208: break;
	goto	l2819
	line	212
	
l2877:	
;Main.c: 211: {
;Main.c: 212: ReadAmnt();
	fcall	_ReadAmnt
	line	213
;Main.c: 213: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	214
	
l2879:	
;Main.c: 214: lcdstring("USER3 AMOUNT:       ");
	movlw	low(STR_13|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_13|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	215
	
l2881:	
;Main.c: 215: DisplayAmnt(0X8D,User3amt);
	movf	(_User3amt+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_User3amt),w
	movwf	(?_DisplayAmnt)
	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	216
;Main.c: 216: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	217
	
l2883:	
;Main.c: 217: lcdstring("RISE:   Kg          ");
	movlw	low(STR_14|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_14|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	218
	
l2885:	
;Main.c: 218: DisplayRise(0XC5,User3Rise);
	movf	(_User3Rise),w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	219
;Main.c: 219: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	220
	
l2887:	
;Main.c: 220: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_15|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_15|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	221
	
l2889:	
;Main.c: 221: DisplaySugar(0x9A,User3Sugar);
	movf	(_User3Sugar),w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	222
;Main.c: 222: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	223
	
l2891:	
;Main.c: 223: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_16|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_16|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	224
	
l2893:	
;Main.c: 224: DisplayKerosene(0XDD,User3Kerosene);
	movf	(_User3Kerosene),w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	225
;Main.c: 225: break;
	goto	l2819
	line	230
	
l2895:	
;Main.c: 228: {
;Main.c: 230: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	231
	
l2897:	
;Main.c: 231: lcdstring("USER NOT AUTHENTICAT");
	movlw	low(STR_17|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_17|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	232
	
l2899:	
;Main.c: 232: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	233
;Main.c: 233: lcdstring(" PLEASE CHECK YOUR  ");
	movlw	low(STR_18|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_18|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	234
	
l2901:	
;Main.c: 234: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	235
	
l2903:	
;Main.c: 235: lcdstring("       CARD         ");
	movlw	low(STR_19|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_19|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	236
;Main.c: 236: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	237
	
l2905:	
;Main.c: 237: lcdstring("                    ");
	movlw	low(STR_20|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_20|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	240
;Main.c: 239: }
;Main.c: 240: }
	goto	l2819
	line	174
	
l2907:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     4     3 (average)
; direct_byte    22    19 (fixed)
;	Chosen strategy is simple_byte

	movf (_User+1),w
	xorlw	0^0	; case 0
	skipnz
	goto	l2933
	goto	l2895
	
l2933:	
; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    10     6 (average)
; direct_byte    31    22 (fixed)
;	Chosen strategy is simple_byte

	movf (_User),w
	xorlw	1^0	; case 1
	skipnz
	goto	l2841
	xorlw	2^1	; case 2
	skipnz
	goto	l2859
	xorlw	3^2	; case 3
	skipnz
	goto	l2877
	goto	l2895

	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	242
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_startup
psect	text721,local,class=CODE,delta=2
global __ptext721
__ptext721:

;; *************** function _startup *****************
;; Defined at:
;;		line 128 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/40
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcdcmd
;;		_lcdstring
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text721
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	128
	global	__size_of_startup
	__size_of_startup	equ	__end_of_startup-_startup
	
_startup:	
	opt	stack 3
; Regs used in _startup: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	129
	
l2781:	
;Main.c: 129: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	130
	
l2783:	
;Main.c: 130: lcdstring("AUTOMATIC RATION ");
	movlw	low(STR_1|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_1|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	131
	
l2785:	
;Main.c: 131: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	132
;Main.c: 132: lcdstring("   CARD SYSTEM   ");
	movlw	low(STR_2|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_2|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	133
	
l2787:	
;Main.c: 133: _delay((unsigned long)((5000)*(20000000/4000.0)));
	opt asmopt_off
movlw  127
movwf	((??_startup+0)+0+2),f
movlw	86
movwf	((??_startup+0)+0+1),f
	movlw	132
movwf	((??_startup+0)+0),f
u957:
	decfsz	((??_startup+0)+0),f
	goto	u957
	decfsz	((??_startup+0)+0+1),f
	goto	u957
	decfsz	((??_startup+0)+0+2),f
	goto	u957
	nop2
opt asmopt_on

	line	134
	
l2789:	
;Main.c: 134: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	135
	
l2791:	
;Main.c: 135: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_startup+0)+0+2),f
movlw	163
movwf	((??_startup+0)+0+1),f
	movlw	189
movwf	((??_startup+0)+0),f
u967:
	decfsz	((??_startup+0)+0),f
	goto	u967
	decfsz	((??_startup+0)+0+1),f
	goto	u967
	decfsz	((??_startup+0)+0+2),f
	goto	u967
	clrwdt
opt asmopt_on

	line	136
	
l2793:	
;Main.c: 136: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	137
;Main.c: 137: lcdstring("PLEASE TAP YOUR  ");
	movlw	low(STR_3|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_3|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	138
	
l2795:	
;Main.c: 138: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	139
	
l2797:	
;Main.c: 139: lcdstring("SMART CARD       ");
	movlw	low(STR_4|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_4|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	140
	
l1042:	
	return
	opt stack 0
GLOBAL	__end_of_startup
	__end_of_startup:
;; =============== function _startup ends ============

	signat	_startup,88
	global	_DisplayKerosene
psect	text722,local,class=CODE,delta=2
global __ptext722
__ptext722:

;; *************** function _DisplayKerosene *****************
;; Defined at:
;;		line 90 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Kerosene        1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Location        1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcdcmd
;;		___lbdiv
;;		_lcddata
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text722
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	90
	global	__size_of_DisplayKerosene
	__size_of_DisplayKerosene	equ	__end_of_DisplayKerosene-_DisplayKerosene
	
_DisplayKerosene:	
	opt	stack 4
; Regs used in _DisplayKerosene: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayKerosene@Location stored from wreg
	movwf	(DisplayKerosene@Location)
	line	91
	
l2521:	
;Main.c: 91: lcdcmd(Location);
	movf	(DisplayKerosene@Location),w
	fcall	_lcdcmd
	line	92
	
l2523:	
;Main.c: 92: lcddata(digit[Kerosene/10]);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(DisplayKerosene@Kerosene),w
	fcall	___lbdiv
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	93
	
l2525:	
;Main.c: 93: lcddata(digit[Kerosene%10]);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(DisplayKerosene@Kerosene),w
	fcall	___lbmod
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	94
	
l1015:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayKerosene
	__end_of_DisplayKerosene:
;; =============== function _DisplayKerosene ends ============

	signat	_DisplayKerosene,8312
	global	_DisplayRise
psect	text723,local,class=CODE,delta=2
global __ptext723
__ptext723:

;; *************** function _DisplayRise *****************
;; Defined at:
;;		line 84 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Rise            1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Location        1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcdcmd
;;		___lbdiv
;;		_lcddata
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text723
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	84
	global	__size_of_DisplayRise
	__size_of_DisplayRise	equ	__end_of_DisplayRise-_DisplayRise
	
_DisplayRise:	
	opt	stack 4
; Regs used in _DisplayRise: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayRise@Location stored from wreg
	movwf	(DisplayRise@Location)
	line	85
	
l2515:	
;Main.c: 85: lcdcmd(Location);
	movf	(DisplayRise@Location),w
	fcall	_lcdcmd
	line	86
	
l2517:	
;Main.c: 86: lcddata(digit[Rise/10]);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(DisplayRise@Rise),w
	fcall	___lbdiv
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	87
	
l2519:	
;Main.c: 87: lcddata(digit[Rise%10]);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(DisplayRise@Rise),w
	fcall	___lbmod
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	88
	
l1012:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayRise
	__end_of_DisplayRise:
;; =============== function _DisplayRise ends ============

	signat	_DisplayRise,8312
	global	_DisplaySugar
psect	text724,local,class=CODE,delta=2
global __ptext724
__ptext724:

;; *************** function _DisplaySugar *****************
;; Defined at:
;;		line 78 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Sugar           1    7[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Location        1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcdcmd
;;		___lbdiv
;;		_lcddata
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text724
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	78
	global	__size_of_DisplaySugar
	__size_of_DisplaySugar	equ	__end_of_DisplaySugar-_DisplaySugar
	
_DisplaySugar:	
	opt	stack 4
; Regs used in _DisplaySugar: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplaySugar@Location stored from wreg
	movwf	(DisplaySugar@Location)
	line	79
	
l2509:	
;Main.c: 79: lcdcmd(Location);
	movf	(DisplaySugar@Location),w
	fcall	_lcdcmd
	line	80
	
l2511:	
;Main.c: 80: lcddata(digit[Sugar/10]);
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(DisplaySugar@Sugar),w
	fcall	___lbdiv
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	81
	
l2513:	
;Main.c: 81: lcddata(digit[Sugar%10]);
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(DisplaySugar@Sugar),w
	fcall	___lbmod
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	82
	
l1009:	
	return
	opt stack 0
GLOBAL	__end_of_DisplaySugar
	__end_of_DisplaySugar:
;; =============== function _DisplaySugar ends ============

	signat	_DisplaySugar,8312
	global	_DisplayAmnt
psect	text725,local,class=CODE,delta=2
global __ptext725
__ptext725:

;; *************** function _DisplayAmnt *****************
;; Defined at:
;;		line 70 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Amnt            2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  Location        1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcdcmd
;;		___awdiv
;;		_lcddata
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text725
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	70
	global	__size_of_DisplayAmnt
	__size_of_DisplayAmnt	equ	__end_of_DisplayAmnt-_DisplayAmnt
	
_DisplayAmnt:	
	opt	stack 4
; Regs used in _DisplayAmnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayAmnt@Location stored from wreg
	movwf	(DisplayAmnt@Location)
	line	71
	
l2771:	
;Main.c: 71: lcdcmd(Location);
	movf	(DisplayAmnt@Location),w
	fcall	_lcdcmd
	line	72
	
l2773:	
;Main.c: 72: lcddata(digit[Amnt/1000]);
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(DisplayAmnt@Amnt+1),w
	movwf	1+(?___awdiv)+02h
	movf	(DisplayAmnt@Amnt),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	73
	
l2775:	
;Main.c: 73: lcddata(digit[Amnt%1000/100]);
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(DisplayAmnt@Amnt+1),w
	movwf	1+(?___awmod)+02h
	movf	(DisplayAmnt@Amnt),w
	movwf	0+(?___awmod)+02h
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	74
	
l2777:	
;Main.c: 74: lcddata(digit[Amnt%1000%100/10]);
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(DisplayAmnt@Amnt+1),w
	movwf	1+(?___awmod)+02h
	movf	(DisplayAmnt@Amnt),w
	movwf	0+(?___awmod)+02h
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awmod)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awmod)+02h
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	75
	
l2779:	
;Main.c: 75: lcddata(digit[Amnt%1000%100%10]);
	movf	(DisplayAmnt@Amnt+1),w
	movwf	1+(?___awmod)+02h
	movf	(DisplayAmnt@Amnt),w
	movwf	0+(?___awmod)+02h
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awmod)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awmod)+02h
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	(_DisplayAmnt$973+1)
	movf	(0+(?___awmod)),w
	movwf	(_DisplayAmnt$973)
;Main.c: 75: lcddata(digit[Amnt%1000%100%10]);
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(_DisplayAmnt$973+1),w
	movwf	1+(?___awmod)+02h
	movf	(_DisplayAmnt$973),w
	movwf	0+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	76
	
l1006:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayAmnt
	__end_of_DisplayAmnt:
;; =============== function _DisplayAmnt ends ============

	signat	_DisplayAmnt,8312
	global	_lcdstring
psect	text726,local,class=CODE,delta=2
global __ptext726
__ptext726:

;; *************** function _lcdstring *****************
;; Defined at:
;;		line 90 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               2    7[COMMON] PTR const unsigned char 
;;		 -> STR_20(21), STR_19(21), STR_18(21), STR_17(21), 
;;		 -> STR_16(21), STR_15(21), STR_14(21), STR_13(21), 
;;		 -> STR_12(21), STR_11(21), STR_10(21), STR_9(21), 
;;		 -> STR_8(21), STR_7(21), STR_6(21), STR_5(21), 
;;		 -> STR_4(18), STR_3(18), STR_2(18), STR_1(18), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcddata
;; This function is called by:
;;		_startup
;;		_main
;; This function uses a non-reentrant model
;;
psect	text726
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	90
	global	__size_of_lcdstring
	__size_of_lcdstring	equ	__end_of_lcdstring-_lcdstring
	
_lcdstring:	
	opt	stack 4
; Regs used in _lcdstring: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	91
	
l2491:	
;lcd.c: 91: while(*a)
	goto	l2497
	line	93
	
l2493:	
;lcd.c: 92: {
;lcd.c: 93: lcddata(*a++);
	movf	(lcdstring@a+1),w
	movwf	btemp+1
	movf	(lcdstring@a),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcddata
	
l2495:	
	incf	(lcdstring@a),f
	skipnz
	incf	(lcdstring@a+1),f
	line	91
	
l2497:	
	movf	(lcdstring@a+1),w
	movwf	btemp+1
	movf	(lcdstring@a),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u761
	goto	u760
u761:
	goto	l2493
u760:
	line	95
	
l960:	
	return
	opt stack 0
GLOBAL	__end_of_lcdstring
	__end_of_lcdstring:
;; =============== function _lcdstring ends ============

	signat	_lcdstring,4216
	global	_lcd_init
psect	text727,local,class=CODE,delta=2
global __ptext727
__ptext727:

;; *************** function _lcd_init *****************
;; Defined at:
;;		line 71 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcdport
;;		_lcdcmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text727
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	71
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 4
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	72
	
l2481:	
;lcd.c: 72: lcdport(0x00);
	movlw	(0)
	fcall	_lcdport
	line	73
	
l2483:	
;lcd.c: 73: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u977:
	decfsz	((??_lcd_init+0)+0),f
	goto	u977
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u977
	nop2
opt asmopt_on

	line	74
	
l2485:	
;lcd.c: 74: lcdcmd(0x03);
	movlw	(03h)
	fcall	_lcdcmd
	line	75
;lcd.c: 75: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_lcd_init+0)+0+1),f
	movlw	118
movwf	((??_lcd_init+0)+0),f
u987:
	decfsz	((??_lcd_init+0)+0),f
	goto	u987
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u987
	clrwdt
opt asmopt_on

	line	76
	
l2487:	
;lcd.c: 76: lcdcmd(0x03);
	movlw	(03h)
	fcall	_lcdcmd
	line	77
	
l2489:	
;lcd.c: 77: _delay((unsigned long)((11)*(20000000/4000.0)));
	opt asmopt_off
movlw	72
movwf	((??_lcd_init+0)+0+1),f
	movlw	108
movwf	((??_lcd_init+0)+0),f
u997:
	decfsz	((??_lcd_init+0)+0),f
	goto	u997
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u997
	clrwdt
opt asmopt_on

	line	78
;lcd.c: 78: lcdcmd(0x03);
	movlw	(03h)
	fcall	_lcdcmd
	line	80
;lcd.c: 80: lcdcmd(0x02);
	movlw	(02h)
	fcall	_lcdcmd
	line	81
;lcd.c: 81: lcdcmd(0x02);
	movlw	(02h)
	fcall	_lcdcmd
	line	82
;lcd.c: 82: lcdcmd(0x28);
	movlw	(028h)
	fcall	_lcdcmd
	line	83
;lcd.c: 83: lcdcmd(0x00);
	movlw	(0)
	fcall	_lcdcmd
	line	84
;lcd.c: 84: lcdcmd(0x0C);
	movlw	(0Ch)
	fcall	_lcdcmd
	line	85
;lcd.c: 85: lcdcmd(0x00);
	movlw	(0)
	fcall	_lcdcmd
	line	86
;lcd.c: 86: lcdcmd(0x06);
	movlw	(06h)
	fcall	_lcdcmd
	line	87
	
l954:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_lcdclear
psect	text728,local,class=CODE,delta=2
global __ptext728
__ptext728:

;; *************** function _lcdclear *****************
;; Defined at:
;;		line 64 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcdcmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text728
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	64
	global	__size_of_lcdclear
	__size_of_lcdclear	equ	__end_of_lcdclear-_lcdclear
	
_lcdclear:	
	opt	stack 4
; Regs used in _lcdclear: [wreg+status,2+status,0+pclath+cstack]
	line	65
	
l2479:	
;lcd.c: 65: lcdcmd(0);
	movlw	(0)
	fcall	_lcdcmd
	line	66
;lcd.c: 66: lcdcmd(1);
	movlw	(01h)
	fcall	_lcdcmd
	line	67
	
l951:	
	return
	opt stack 0
GLOBAL	__end_of_lcdclear
	__end_of_lcdclear:
;; =============== function _lcdclear ends ============

	signat	_lcdclear,88
	global	_RFID_read
psect	text729,local,class=CODE,delta=2
global __ptext729
__ptext729:

;; *************** function _RFID_read *****************
;; Defined at:
;;		line 45 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_softreceive
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text729
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	45
	global	__size_of_RFID_read
	__size_of_RFID_read	equ	__end_of_RFID_read-_RFID_read
	
_RFID_read:	
	opt	stack 5
; Regs used in _RFID_read: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l2465:	
;Main.c: 46: if(!rfid_flag)
	btfsc	(_rfid_flag/8),(_rfid_flag)&7
	goto	u741
	goto	u740
u741:
	goto	l1000
u740:
	line	48
	
l2467:	
;Main.c: 47: {
;Main.c: 48: for(int i=0;i<12;i++)
	clrf	(RFID_read@i)
	clrf	(RFID_read@i+1)
	line	49
	
l2473:	
;Main.c: 49: {card_store[i]=softreceive();}
	movf	(RFID_read@i),w
	addlw	_card_store&0ffh
	movwf	fsr0
	fcall	_softreceive
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	48
	
l2475:	
	incf	(RFID_read@i),f
	skipnz
	incf	(RFID_read@i+1),f
	
l2477:	
	movf	(RFID_read@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u755
	movlw	low(0Ch)
	subwf	(RFID_read@i),w
u755:

	skipc
	goto	u751
	goto	u750
u751:
	goto	l2473
u750:
	
l999:	
	line	50
;Main.c: 50: rfid_flag=1;
	bsf	(_rfid_flag/8),(_rfid_flag)&7
	line	52
	
l1000:	
	return
	opt stack 0
GLOBAL	__end_of_RFID_read
	__end_of_RFID_read:
;; =============== function _RFID_read ends ============

	signat	_RFID_read,88
	global	_lcddata
psect	text730,local,class=CODE,delta=2
global __ptext730
__ptext730:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 51 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    6[COMMON] unsigned char 
;;  z               1    5[COMMON] unsigned char 
;;  y               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcdport
;;		_enable
;; This function is called by:
;;		_lcdstring
;;		_DisplayAmnt
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;; This function uses a non-reentrant model
;;
psect	text730
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	51
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 4
; Regs used in _lcddata: [wreg+status,2+status,0+pclath+cstack]
;lcddata@a stored from wreg
	line	53
	movwf	(lcddata@a)
	
l2447:	
;lcd.c: 52: unsigned char y,z;
;lcd.c: 53: z=a>>4&0x0F;
	swapf	(lcddata@a),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(lcddata@z)
	movlw	(0Fh)
	andwf	(lcddata@z),f
	line	54
	
l2449:	
;lcd.c: 54: y=a&0x0F;
	movf	(lcddata@a),w
	movwf	(lcddata@y)
	
l2451:	
	movlw	(0Fh)
	andwf	(lcddata@y),f
	line	55
	
l2453:	
;lcd.c: 55: RD2=1;
	bsf	(66/8),(66)&7
	line	56
	
l2455:	
;lcd.c: 56: lcdport(z);
	movf	(lcddata@z),w
	fcall	_lcdport
	line	57
	
l2457:	
;lcd.c: 57: enable();
	fcall	_enable
	line	58
	
l2459:	
;lcd.c: 58: lcdport(y);
	movf	(lcddata@y),w
	fcall	_lcdport
	line	59
	
l2461:	
;lcd.c: 59: enable();
	fcall	_enable
	line	60
	
l2463:	
;lcd.c: 60: RD2 = 0;
	bcf	(66/8),(66)&7
	line	61
	
l948:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_lcdcmd
psect	text731,local,class=CODE,delta=2
global __ptext731
__ptext731:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 39 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    6[COMMON] unsigned char 
;;  z               1    5[COMMON] unsigned char 
;;  y               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcdport
;;		_enable
;; This function is called by:
;;		_lcdclear
;;		_lcd_init
;;		_DisplayAmnt
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;;		_startup
;;		_main
;; This function uses a non-reentrant model
;;
psect	text731
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	39
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 4
; Regs used in _lcdcmd: [wreg+status,2+status,0+pclath+cstack]
;lcdcmd@a stored from wreg
	line	41
	movwf	(lcdcmd@a)
	
l2433:	
;lcd.c: 40: unsigned char y,z;
;lcd.c: 41: z=a>>4&0x0F;
	swapf	(lcdcmd@a),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(lcdcmd@z)
	movlw	(0Fh)
	andwf	(lcdcmd@z),f
	line	42
	
l2435:	
;lcd.c: 42: y=a&0x0F;
	movf	(lcdcmd@a),w
	movwf	(lcdcmd@y)
	
l2437:	
	movlw	(0Fh)
	andwf	(lcdcmd@y),f
	line	44
	
l2439:	
;lcd.c: 44: lcdport(z);
	movf	(lcdcmd@z),w
	fcall	_lcdport
	line	45
	
l2441:	
;lcd.c: 45: enable();
	fcall	_enable
	line	46
	
l2443:	
;lcd.c: 46: lcdport(y);
	movf	(lcdcmd@y),w
	fcall	_lcdport
	line	47
	
l2445:	
;lcd.c: 47: enable();
	fcall	_enable
	line	48
	
l945:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_paramter
psect	text732,local,class=CODE,delta=2
global __ptext732
__ptext732:

;; *************** function _paramter *****************
;; Defined at:
;;		line 123 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/40
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eeprom_read
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text732
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	123
	global	__size_of_paramter
	__size_of_paramter	equ	__end_of_paramter-_paramter
	
_paramter:	
	opt	stack 5
; Regs used in _paramter: [wreg+status,2+status,0+pclath+cstack]
	line	124
	
l2769:	
;Main.c: 124: c1=(eeprom_read(0)*100)+eeprom_read(1);
	movlw	(0)
	fcall	_eeprom_read
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	(01h)
	fcall	_eeprom_read
	line	125
;Main.c: 125: c2=(eeprom_read(2)*100)+eeprom_read(3);
	movlw	(02h)
	fcall	_eeprom_read
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	(03h)
	fcall	_eeprom_read
	line	126
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_paramter
	__end_of_paramter:
;; =============== function _paramter ends ============

	signat	_paramter,88
	global	_ReadAmnt
psect	text733,local,class=CODE,delta=2
global __ptext733
__ptext733:

;; *************** function _ReadAmnt *****************
;; Defined at:
;;		line 55 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_eeprom_read
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text733
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	55
	global	__size_of_ReadAmnt
	__size_of_ReadAmnt	equ	__end_of_ReadAmnt-_ReadAmnt
	
_ReadAmnt:	
	opt	stack 5
; Regs used in _ReadAmnt: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l2767:	
;Main.c: 56: User1amt=(eeprom_read(0)*100)+eeprom_read(1);
	movlw	(0)
	fcall	_eeprom_read
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(_User1amt+1)
	movf	(0+(?___wmul)),w
	movwf	(_User1amt)
	movlw	(01h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User1amt),f
	skipnc
	incf	(_User1amt+1),f
	line	57
;Main.c: 57: User2amt=(eeprom_read(8)*100)+eeprom_read(15);
	movlw	(08h)
	fcall	_eeprom_read
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(_User2amt+1)
	movf	(0+(?___wmul)),w
	movwf	(_User2amt)
	movlw	(0Fh)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User2amt),f
	skipnc
	incf	(_User2amt+1),f
	line	58
;Main.c: 58: User3amt=(eeprom_read(16)*100)+eeprom_read(23);
	movlw	(010h)
	fcall	_eeprom_read
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(_User3amt+1)
	movf	(0+(?___wmul)),w
	movwf	(_User3amt)
	movlw	(017h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User3amt),f
	skipnc
	incf	(_User3amt+1),f
	line	59
;Main.c: 59: User1Rise = eeprom_read(2);
	movlw	(02h)
	fcall	_eeprom_read
	movwf	(_User1Rise)
	line	60
;Main.c: 60: User2Rise = eeprom_read(10);
	movlw	(0Ah)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User2Rise)
	line	61
;Main.c: 61: User3Rise = eeprom_read(18);
	movlw	(012h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User3Rise)
	line	62
;Main.c: 62: User1Kerosene = eeprom_read(4);
	movlw	(04h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User1Kerosene)
	line	63
;Main.c: 63: User2Kerosene = eeprom_read(12);
	movlw	(0Ch)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User2Kerosene)
	line	64
;Main.c: 64: User3Kerosene = eeprom_read(20);
	movlw	(014h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User3Kerosene)
	line	65
;Main.c: 65: User1Sugar = eeprom_read(3);
	movlw	(03h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User1Sugar)
	line	66
;Main.c: 66: User2Sugar = eeprom_read(11);
	movlw	(0Bh)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User2Sugar)
	line	67
;Main.c: 67: User3Sugar = eeprom_read(19);
	movlw	(013h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User3Sugar)
	line	68
	
l1003:	
	return
	opt stack 0
GLOBAL	__end_of_ReadAmnt
	__end_of_ReadAmnt:
;; =============== function _ReadAmnt ends ============

	signat	_ReadAmnt,88
	global	_softreceive
psect	text734,local,class=CODE,delta=2
global __ptext734
__ptext734:

;; *************** function _softreceive *****************
;; Defined at:
;;		line 21 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mask            1    4[COMMON] unsigned char 
;;  Data            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RFID_read
;; This function uses a non-reentrant model
;;
psect	text734
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
	line	21
	global	__size_of_softreceive
	__size_of_softreceive	equ	__end_of_softreceive-_softreceive
	
_softreceive:	
	opt	stack 5
; Regs used in _softreceive: [wreg+status,2+status,0]
	line	24
	
l2405:	
;softuart.c: 22: char mask;
;softuart.c: 23: char Data;
;softuart.c: 24: Data=0;
	clrf	(softreceive@Data)
	line	25
;softuart.c: 25: while(RD0);
	
l972:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(64/8),(64)&7
	goto	u711
	goto	u710
u711:
	goto	l972
u710:
	line	26
	
l2407:	
;softuart.c: 26: _delay((unsigned long)(((((1000000/9600)-2)/2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	84
movwf	(??_softreceive+0)+0,f
u1007:
decfsz	(??_softreceive+0)+0,f
	goto	u1007
	nop2	;nop
opt asmopt_on

	line	27
	
l2409:	
;softuart.c: 27: for(mask=0x01;mask!=0;mask=mask<<1)
	clrf	(softreceive@mask)
	incf	(softreceive@mask),f
	line	29
	
l2415:	
;softuart.c: 28: {
;softuart.c: 29: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_softreceive+0)+0,f
u1017:
decfsz	(??_softreceive+0)+0,f
	goto	u1017
	nop2	;nop
opt asmopt_on

	line	30
	
l2417:	
;softuart.c: 30: if(RD0)Data=Data|mask;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u721
	goto	u720
u721:
	goto	l2421
u720:
	
l2419:	
	movf	(softreceive@mask),w
	iorwf	(softreceive@Data),f
	line	27
	
l2421:	
	clrc
	rlf	(softreceive@mask),f
	
l2423:	
	movf	(softreceive@mask),f
	skipz
	goto	u731
	goto	u730
u731:
	goto	l2415
u730:
	line	32
	
l2425:	
;softuart.c: 31: }
;softuart.c: 32: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_softreceive+0)+0,f
u1027:
decfsz	(??_softreceive+0)+0,f
	goto	u1027
	nop2	;nop
opt asmopt_on

	line	33
;softuart.c: 33: return Data;
	movf	(softreceive@Data),w
	line	34
	
l978:	
	return
	opt stack 0
GLOBAL	__end_of_softreceive
	__end_of_softreceive:
;; =============== function _softreceive ends ============

	signat	_softreceive,89
	global	_SoftWareUart_Init
psect	text735,local,class=CODE,delta=2
global __ptext735
__ptext735:

;; *************** function _SoftWareUart_Init *****************
;; Defined at:
;;		line 10 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text735
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
	line	10
	global	__size_of_SoftWareUart_Init
	__size_of_SoftWareUart_Init	equ	__end_of_SoftWareUart_Init-_SoftWareUart_Init
	
_SoftWareUart_Init:	
	opt	stack 6
; Regs used in _SoftWareUart_Init: [wreg]
	line	11
	
l2401:	
;softuart.c: 11: RD1=1;
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	12
;softuart.c: 12: RD0=1;
	bsf	(64/8),(64)&7
	line	13
;softuart.c: 13: TRISD1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1089/8)^080h,(1089)&7
	line	14
;softuart.c: 14: TRISD0=1;
	bsf	(1088/8)^080h,(1088)&7
	line	15
;softuart.c: 15: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(65/8),(65)&7
	line	16
	
l2403:	
;softuart.c: 16: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_SoftWareUart_Init+0)+0,f
u1037:
decfsz	(??_SoftWareUart_Init+0)+0,f
	goto	u1037
	nop2	;nop
opt asmopt_on

	line	17
	
l969:	
	return
	opt stack 0
GLOBAL	__end_of_SoftWareUart_Init
	__end_of_SoftWareUart_Init:
;; =============== function _SoftWareUart_Init ends ============

	signat	_SoftWareUart_Init,88
	global	_enable
psect	text736,local,class=CODE,delta=2
global __ptext736
__ptext736:

;; *************** function _enable *****************
;; Defined at:
;;		line 9 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcdcmd
;;		_lcddata
;; This function uses a non-reentrant model
;;
psect	text736
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	9
	global	__size_of_enable
	__size_of_enable	equ	__end_of_enable-_enable
	
_enable:	
	opt	stack 4
; Regs used in _enable: [wreg]
	line	10
	
l2395:	
;lcd.c: 10: RD3 = 1;
	bsf	(67/8),(67)&7
	line	11
	
l2397:	
;lcd.c: 11: _delay((unsigned long)((4)*(20000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_enable+0)+0+1),f
	movlw	248
movwf	((??_enable+0)+0),f
u1047:
	decfsz	((??_enable+0)+0),f
	goto	u1047
	decfsz	((??_enable+0)+0+1),f
	goto	u1047
	clrwdt
opt asmopt_on

	line	12
	
l2399:	
;lcd.c: 12: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	13
	
l931:	
	return
	opt stack 0
GLOBAL	__end_of_enable
	__end_of_enable:
;; =============== function _enable ends ============

	signat	_enable,88
	global	___awmod
psect	text737,local,class=CODE,delta=2
global __ptext737
__ptext737:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[COMMON] int 
;;  dividend        2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    7[COMMON] unsigned char 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayAmnt
;; This function uses a non-reentrant model
;;
psect	text737
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2359:	
	clrf	(___awmod@sign)
	line	9
	
l2361:	
	btfss	(___awmod@dividend+1),7
	goto	u641
	goto	u640
u641:
	goto	l2367
u640:
	line	10
	
l2363:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l2365:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l2367:	
	btfss	(___awmod@divisor+1),7
	goto	u651
	goto	u650
u651:
	goto	l2371
u650:
	line	14
	
l2369:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l2371:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u661
	goto	u660
u661:
	goto	l2387
u660:
	line	16
	
l2373:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l2377
	line	18
	
l2375:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l2377:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u671
	goto	u670
u671:
	goto	l2375
u670:
	line	22
	
l2379:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u685
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u685:
	skipc
	goto	u681
	goto	u680
u681:
	goto	l2383
u680:
	line	23
	
l2381:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l2383:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l2385:	
	decfsz	(___awmod@counter),f
	goto	u691
	goto	u690
u691:
	goto	l2379
u690:
	line	27
	
l2387:	
	movf	(___awmod@sign),w
	skipz
	goto	u700
	goto	l2391
u700:
	line	28
	
l2389:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l2391:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l1311:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text738,local,class=CODE,delta=2
global __ptext738
__ptext738:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayAmnt
;; This function uses a non-reentrant model
;;
psect	text738
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2723:	
	clrf	(___awdiv@sign)
	line	10
	
l2725:	
	btfss	(___awdiv@divisor+1),7
	goto	u831
	goto	u830
u831:
	goto	l2731
u830:
	line	11
	
l2727:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l2729:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l2731:	
	btfss	(___awdiv@dividend+1),7
	goto	u841
	goto	u840
u841:
	goto	l2737
u840:
	line	15
	
l2733:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2735:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l2737:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2739:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u851
	goto	u850
u851:
	goto	l2759
u850:
	line	20
	
l2741:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l2745
	line	22
	
l2743:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l2745:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u861
	goto	u860
u861:
	goto	l2743
u860:
	line	26
	
l2747:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l2749:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u875
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u875:
	skipc
	goto	u871
	goto	u870
u871:
	goto	l2755
u870:
	line	28
	
l2751:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2753:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l2755:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l2757:	
	decfsz	(___awdiv@counter),f
	goto	u881
	goto	u880
u881:
	goto	l2747
u880:
	line	34
	
l2759:	
	movf	(___awdiv@sign),w
	skipz
	goto	u890
	goto	l2763
u890:
	line	35
	
l2761:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l2763:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l1243:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lbmod
psect	text739,local,class=CODE,delta=2
global __ptext739
__ptext739:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    4[COMMON] unsigned char 
;;  rem             1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;; This function uses a non-reentrant model
;;
psect	text739
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 5
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l2297:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l2299:	
	clrf	(___lbmod@rem)
	line	12
	
l2301:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u545:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u545
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l2303:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l2305:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l2309
u550:
	line	15
	
l2307:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l2309:	
	decfsz	(___lbmod@counter),f
	goto	u561
	goto	u560
u561:
	goto	l2301
u560:
	line	17
	
l2311:	
	movf	(___lbmod@rem),w
	line	18
	
l1132:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text740,local,class=CODE,delta=2
global __ptext740
__ptext740:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    3[COMMON] unsigned char 
;;  quotient        1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;; This function uses a non-reentrant model
;;
psect	text740
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 5
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l2273:	
	clrf	(___lbdiv@quotient)
	line	10
	
l2275:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u500
	goto	l2293
u500:
	line	11
	
l2277:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l2281
	
l1121:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l2279:	
	incf	(___lbdiv@counter),f
	line	12
	
l2281:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u511
	goto	u510
u511:
	goto	l1121
u510:
	line	16
	
l1123:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l2283:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u521
	goto	u520
u521:
	goto	l2289
u520:
	line	19
	
l2285:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l2287:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l2289:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l2291:	
	decfsz	(___lbdiv@counter),f
	goto	u531
	goto	u530
u531:
	goto	l1123
u530:
	line	25
	
l2293:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1126:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text741,local,class=CODE,delta=2
global __ptext741
__ptext741:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    5[COMMON] unsigned int 
;;  multiplicand    2    7[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    5[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/40
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadAmnt
;;		_paramter
;; This function uses a non-reentrant model
;;
psect	text741
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2707:	
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l2709:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u811
	goto	u810
u811:
	goto	l2713
u810:
	line	8
	
l2711:	
	movf	(___wmul@multiplicand),w
	bcf	status, 6	;RP1=0, select bank0
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l2713:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l2715:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l2717:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u821
	goto	u820
u821:
	goto	l2709
u820:
	line	12
	
l2719:	
	bcf	status, 6	;RP1=0, select bank0
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l1096:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_strcmp
psect	text742,local,class=CODE,delta=2
global __ptext742
__ptext742:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> card_store(15), 
;;  s2              1    2[COMMON] PTR const unsigned char 
;;		 -> User3(13), User2(13), User1(13), 
;; Auto vars:     Size  Location     Type
;;  s1              1    7[COMMON] PTR const unsigned char 
;;		 -> card_store(15), 
;;  r               1    6[COMMON] char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 100/0
;;		Unchanged: FFEFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text742
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
	opt	stack 6
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
;strcmp@s1 stored from wreg
	movwf	(strcmp@s1)
	line	37
	
l2247:	
	
l2249:	
	movf	(strcmp@s2),w
	incf	(strcmp@s2),f
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s1),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+0)+0,w
	subwf	(??_strcmp+1)+0,w
	movwf	(strcmp@r)
	movf	((strcmp@r)),f
	skipz
	goto	u461
	goto	u460
u461:
	goto	l2253
u460:
	
l2251:	
	movf	(strcmp@s1),w
	incf	(strcmp@s1),f
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u471
	goto	u470
u471:
	goto	l2249
u470:
	line	39
	
l2253:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	line	40
	
l1084:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_uart_init
psect	text743,local,class=CODE,delta=2
global __ptext743
__ptext743:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 114 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text743
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	114
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 6
; Regs used in _uart_init: [wreg+status,2]
	line	115
	
l2243:	
;Main.c: 115: PORTC=0xFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	116
;Main.c: 116: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	117
;Main.c: 117: TXSTA=0X24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	118
;Main.c: 118: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	119
;Main.c: 119: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	120
	
l2245:	
;Main.c: 120: RCREG=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(26)	;volatile
	line	121
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_eeprom_read
psect	text744,local,class=CODE,delta=2
global __ptext744
__ptext744:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 8 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 20/0
;;		On exit  : 60/40
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadAmnt
;;		_paramter
;; This function uses a non-reentrant model
;;
psect	text744
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eeread.c"
	line	8
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 5
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	line	10
	movwf	(eeprom_read@addr)
	line	9
	
l1074:	
	line	10
# 10 "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eeread.c"
clrwdt ;#
psect	text744
	line	11
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u451
	goto	u450
u451:
	goto	l1074
u450:
	line	12
	
l2239:	
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	movwf	(269)^0100h	;volatile
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank3
	andwf	(396)^0180h,f	;volatile
	bsf	(3168/8)^0180h,(3168)&7
	clrc
	btfsc	(3168/8)^0180h,(3168)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_eeprom_read+0)+0
	clrf	(??_eeprom_read+0)+0+1
	bcf	status, 5	;RP0=0, select bank2
	movf	(268)^0100h,w	;volatile
	line	13
	
l1076:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_lcdport
psect	text745,local,class=CODE,delta=2
global __ptext745
__ptext745:

;; *************** function _lcdport *****************
;; Defined at:
;;		line 16 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcdcmd
;;		_lcddata
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text745
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	16
	global	__size_of_lcdport
	__size_of_lcdport	equ	__end_of_lcdport-_lcdport
	
_lcdport:	
	opt	stack 4
; Regs used in _lcdport: [wreg]
;lcdport@a stored from wreg
	movwf	(lcdport@a)
	line	17
	
l2229:	
;lcd.c: 17: if(a & 1)
	btfss	(lcdport@a),(0)&7
	goto	u411
	goto	u410
u411:
	goto	l934
u410:
	line	18
	
l2231:	
;lcd.c: 18: RD4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	l935
	line	19
	
l934:	
	line	20
;lcd.c: 19: else
;lcd.c: 20: RD4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	
l935:	
	line	22
;lcd.c: 22: if(a & 2)
	btfss	(lcdport@a),(1)&7
	goto	u421
	goto	u420
u421:
	goto	l936
u420:
	line	23
	
l2233:	
;lcd.c: 23: RD5 = 1;
	bsf	(69/8),(69)&7
	goto	l937
	line	24
	
l936:	
	line	25
;lcd.c: 24: else
;lcd.c: 25: RD5 = 0;
	bcf	(69/8),(69)&7
	
l937:	
	line	27
;lcd.c: 27: if(a & 4)
	btfss	(lcdport@a),(2)&7
	goto	u431
	goto	u430
u431:
	goto	l938
u430:
	line	28
	
l2235:	
;lcd.c: 28: RD6 = 1;
	bsf	(70/8),(70)&7
	goto	l939
	line	29
	
l938:	
	line	30
;lcd.c: 29: else
;lcd.c: 30: RD6 = 0;
	bcf	(70/8),(70)&7
	
l939:	
	line	32
;lcd.c: 32: if(a & 8)
	btfss	(lcdport@a),(3)&7
	goto	u441
	goto	u440
u441:
	goto	l940
u440:
	line	33
	
l2237:	
;lcd.c: 33: RD7 = 1;
	bsf	(71/8),(71)&7
	goto	l942
	line	34
	
l940:	
	line	35
;lcd.c: 34: else
;lcd.c: 35: RD7 = 0;
	bcf	(71/8),(71)&7
	line	36
	
l942:	
	return
	opt stack 0
GLOBAL	__end_of_lcdport
	__end_of_lcdport:
;; =============== function _lcdport ends ============

	signat	_lcdport,4216
	global	_ISR
psect	text746,local,class=CODE,delta=2
global __ptext746
__ptext746:

;; *************** function _ISR *****************
;; Defined at:
;;		line 41 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text746
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	41
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 3
; Regs used in _ISR: []
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_ISR+0)
	movf	pclath,w
	movwf	(??_ISR+1)
	ljmp	_ISR
psect	text746
	line	42
	
i1l994:	
	movf	(??_ISR+1),w
	movwf	pclath
	movf	(??_ISR+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
;; =============== function _ISR ends ============

	signat	_ISR,88
psect	text747,local,class=CODE,delta=2
global __ptext747
__ptext747:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
