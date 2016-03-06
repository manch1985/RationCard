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
# 12 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect config,class=CONFIG,delta=2 ;#
# 12 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	dw 0x3FFA & 0x3FF7 & 0x3FEF & 0x3CFF & 0x3FFF & 0x2FFF ;#
# 41 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 41 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,50,10,8,0,0,0 ;#
# 42 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 42 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,30,8,6,0,0,0 ;#
# 43 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 43 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,20,4,5,0,0,0 ;#
# 44 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 44 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,255,200,200,0,0,0 ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_paramter
	FNCALL	_main,_SoftWareUart_Init
	FNCALL	_main,_startup
	FNCALL	_main,_ReadStock
	FNCALL	_main,_lcdstring
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_RFID_read
	FNCALL	_main,_strcmp
	FNCALL	_main,_ReadAmnt
	FNCALL	_main,_DisplayAmnt
	FNCALL	_main,_DisplayRise
	FNCALL	_main,_DisplaySugar
	FNCALL	_main,_DisplayKerosene
	FNCALL	_main,___lwdiv
	FNCALL	_main,_eeprom_write
	FNCALL	_main,___lwmod
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_LoadStockToArray
	FNCALL	_main,_DisplayStock
	FNCALL	_main,_memcmp
	FNCALL	_startup,_lcdcmd
	FNCALL	_startup,_lcdstring
	FNCALL	_DisplayStock,_lcdcmd
	FNCALL	_DisplayStock,_lcdstring
	FNCALL	_DisplayStock,_DisplayAmnt
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
	FNCALL	_RFID_read,_softreceive
	FNCALL	_lcddata,_lcdport
	FNCALL	_lcddata,_enable
	FNCALL	_lcdcmd,_lcdport
	FNCALL	_lcdcmd,_enable
	FNCALL	_LoadStockToArray,___lwdiv
	FNCALL	_LoadStockToArray,___lwmod
	FNCALL	_paramter,_eeprom_read
	FNCALL	_paramter,___wmul
	FNCALL	_ReadStock,_eeprom_read
	FNCALL	_ReadStock,___wmul
	FNCALL	_ReadAmnt,_eeprom_read
	FNCALL	_ReadAmnt,___wmul
	FNROOT	_main
	FNCALL	_ISR,_gsm_read_line2
	FNCALL	_gsm_read_line2,_receive
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_User1
	global	_User2
	global	_User3
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	38

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
	line	39

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
	line	40

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
	line	33
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
	global	_KeroseneStock
	global	_RiseStock
	global	_SugarStock
	global	_User
	global	_User1amt
	global	_User2amt
	global	_User3amt
	global	_User1Kerosene
	global	_User1Rise
	global	_User1Sugar
	global	_User2Kerosene
	global	_User2Rise
	global	_User2Sugar
	global	_User3Kerosene
	global	_User3Rise
	global	_User3Sugar
	global	_delayus_variable
	global	_rfid_flag
	global	_sms_indication
	global	_card_store
	global	_RiseArray
	global	_KeroseneArray
	global	_SugarArray
	global	_sms
	global	_INTCON
_INTCON	set	11
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_CARRY
_CARRY	set	24
	global	_CREN
_CREN	set	196
	global	_GIE
_GIE	set	95
	global	_OERR
_OERR	set	193
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RCIF
_RCIF	set	101
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
	global	_PIE1
_PIE1	set	140
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
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	
STR_12:	
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	stringtext
	
STR_27:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	83	;'S'
	retlw	61	;'='
	retlw	34	;'"'
	retlw	43	;'+'
	retlw	57	;'9'
	retlw	49	;'1'
	retlw	57	;'9'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	52	;'4'
	retlw	55	;'7'
	retlw	52	;'4'
	retlw	56	;'8'
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	34	;'"'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	83	;'S'
	retlw	61	;'='
	retlw	34	;'"'
	retlw	43	;'+'
	retlw	57	;'9'
	retlw	49	;'1'
	retlw	57	;'9'
	retlw	55	;'7'
	retlw	57	;'9'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	56	;'8'
	retlw	48	;'0'
	retlw	53	;'5'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	34	;'"'
	retlw	0
psect	stringtext
	
STR_21:	
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	71	;'G'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	58	;':'
	retlw	32	;' '
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
	
STR_22:	
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
	retlw	32	;' '
	retlw	32	;' '
	retlw	76	;'L'
	retlw	116	;'t'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_37:	
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
	
STR_38:	
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
	
STR_36:	
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
	
STR_43:	
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
	
STR_50:	
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
	
STR_20:	
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
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
	retlw	0
psect	stringtext
	
STR_39:	
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
	
STR_19:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	67	;'C'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_16:	
	retlw	67	;'C'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	50	;'2'
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	67	;'C'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	112	;'p'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	51	;'3'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	78	;'N'
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	61	;'='
	retlw	50	;'2'
	retlw	44	;','
	retlw	50	;'2'
	retlw	44	;','
	retlw	48	;'0'
	retlw	44	;','
	retlw	48	;'0'
	retlw	44	;','
	retlw	48	;'0'
	retlw	13
	retlw	0
psect	stringtext
	
STR_26:	
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
	
STR_42:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	86	;'V'
	retlw	79	;'O'
	retlw	76	;'L'
	retlw	85	;'U'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_24:	
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
	
STR_25:	
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
	
STR_41:	
	retlw	32	;' '
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_23:	
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
	
STR_40:	
	retlw	32	;' '
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	75	;'K'
	retlw	69	;'E'
	retlw	69	;'E'
	retlw	80	;'P'
	retlw	32	;' '
	retlw	89	;'Y'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	80	;'P'
	retlw	76	;'L'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	65	;'A'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	71	;'G'
	retlw	83	;'S'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	90	;'Z'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	0
psect	stringtext
	
STR_32:	
	retlw	75	;'K'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_30:	
	retlw	83	;'S'
	retlw	117	;'u'
	retlw	103	;'g'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_28:	
	retlw	82	;'R'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	70	;'F'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	13
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	83	;'S'
	retlw	68	;'D'
	retlw	72	;'H'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	13
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	63	;'?'
	retlw	13
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	71	;'G'
	retlw	83	;'S'
	retlw	77	;'M'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	89	;'Y'
	retlw	0
psect	stringtext
	
STR_57:	
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	67	;'C'
	retlw	75	;'K'
	retlw	0
psect	stringtext
	
STR_29:	
	retlw	32	;' '
	retlw	75	;'K'
	retlw	103	;'g'
	retlw	115	;'s'
	retlw	0
psect	stringtext
	
STR_33:	
	retlw	32	;' '
	retlw	76	;'L'
	retlw	116	;'t'
	retlw	115	;'s'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	13
	retlw	0
psect	stringtext
STR_31	equ	STR_29+0
STR_47	equ	STR_40+0
STR_54	equ	STR_40+0
STR_11	equ	STR_9+0
STR_13	equ	STR_9+0
STR_15	equ	STR_9+0
STR_17	equ	STR_9+0
STR_48	equ	STR_41+0
STR_55	equ	STR_41+0
STR_34	equ	STR_25+0
STR_46	equ	STR_39+0
STR_53	equ	STR_39+0
STR_49	equ	STR_42+0
STR_56	equ	STR_42+0
STR_35	equ	STR_26+0
STR_45	equ	STR_38+0
STR_52	equ	STR_38+0
STR_44	equ	STR_37+0
STR_51	equ	STR_37+0
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

_sms_indication:
       ds      1

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_delayus_variable:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_KeroseneStock:
       ds      2

_RiseStock:
       ds      2

_SugarStock:
       ds      2

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

_User1Rise:
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

_card_store:
       ds      15

_RiseArray:
       ds      5

_KeroseneArray:
       ds      4

_SugarArray:
       ds      4

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_sms:
       ds      20

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	38
_User1:
       ds      13

psect	dataBANK1
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	39
_User2:
       ds      13

psect	dataBANK1
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	40
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
	movlw	low((__pbssBANK0)+033h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+014h)
	fcall	clear_ram
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	movlw low(__pdataBANK1+39)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
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
	global	?_lcd_init
?_lcd_init:	; 0 bytes @ 0x0
	global	?_SoftWareUart_Init
?_SoftWareUart_Init:	; 0 bytes @ 0x0
	global	??_receive
??_receive:	; 0 bytes @ 0x0
	global	?_gsm_read_line2
?_gsm_read_line2:	; 0 bytes @ 0x0
	global	??_gsm_read_line2
??_gsm_read_line2:	; 0 bytes @ 0x0
	global	?_ISR
?_ISR:	; 0 bytes @ 0x0
	global	?_RFID_read
?_RFID_read:	; 0 bytes @ 0x0
	global	?_ReadAmnt
?_ReadAmnt:	; 0 bytes @ 0x0
	global	?_ReadStock
?_ReadStock:	; 0 bytes @ 0x0
	global	?_DisplayStock
?_DisplayStock:	; 0 bytes @ 0x0
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	?_paramter
?_paramter:	; 0 bytes @ 0x0
	global	?_startup
?_startup:	; 0 bytes @ 0x0
	global	?_LoadStockToArray
?_LoadStockToArray:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x0
	global	?_softreceive
?_softreceive:	; 1 bytes @ 0x0
	global	?_receive
?_receive:	; 1 bytes @ 0x0
	global	gsm_read_line2@flag
gsm_read_line2@flag:	; 1 bytes @ 0x0
	ds	1
	global	gsm_read_line2@buffer
gsm_read_line2@buffer:	; 1 bytes @ 0x1
	ds	1
	global	gsm_read_line2@rec_data
gsm_read_line2@rec_data:	; 1 bytes @ 0x2
	ds	1
	global	??_ISR
??_ISR:	; 0 bytes @ 0x3
	ds	3
	global	??_eeprom_write
??_eeprom_write:	; 0 bytes @ 0x6
	global	??_lcdport
??_lcdport:	; 0 bytes @ 0x6
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x6
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x6
	global	??_lcdstring
??_lcdstring:	; 0 bytes @ 0x6
	global	??_RFID_read
??_RFID_read:	; 0 bytes @ 0x6
	global	??_DisplayAmnt
??_DisplayAmnt:	; 0 bytes @ 0x6
	global	??_ReadAmnt
??_ReadAmnt:	; 0 bytes @ 0x6
	global	??_ReadStock
??_ReadStock:	; 0 bytes @ 0x6
	global	??_DisplayStock
??_DisplayStock:	; 0 bytes @ 0x6
	global	??_DisplaySugar
??_DisplaySugar:	; 0 bytes @ 0x6
	global	??_DisplayRise
??_DisplayRise:	; 0 bytes @ 0x6
	global	??_DisplayKerosene
??_DisplayKerosene:	; 0 bytes @ 0x6
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x6
	global	??_paramter
??_paramter:	; 0 bytes @ 0x6
	global	??_LoadStockToArray
??_LoadStockToArray:	; 0 bytes @ 0x6
	global	??___wmul
??___wmul:	; 0 bytes @ 0x6
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x6
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x6
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x6
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x6
	global	??___awmod
??___awmod:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0x0
	global	??_enable
??_enable:	; 0 bytes @ 0x0
	global	??_SoftWareUart_Init
??_SoftWareUart_Init:	; 0 bytes @ 0x0
	global	??_softreceive
??_softreceive:	; 0 bytes @ 0x0
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x0
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	?_memcmp
?_memcmp:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	lcdport@a
lcdport@a:	; 1 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x0
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	memcmp@s1
memcmp@s1:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	softreceive@Data
softreceive@Data:	; 1 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	ds	1
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	lcdcmd@y
lcdcmd@y:	; 1 bytes @ 0x2
	global	lcddata@y
lcddata@y:	; 1 bytes @ 0x2
	global	softreceive@mask
softreceive@mask:	; 1 bytes @ 0x2
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x2
	global	memcmp@s2
memcmp@s2:	; 1 bytes @ 0x2
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	lcdcmd@z
lcdcmd@z:	; 1 bytes @ 0x3
	global	lcddata@z
lcddata@z:	; 1 bytes @ 0x3
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	global	RFID_read@i
RFID_read@i:	; 2 bytes @ 0x3
	global	memcmp@n
memcmp@n:	; 2 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	ds	1
	global	lcdcmd@a
lcdcmd@a:	; 1 bytes @ 0x4
	global	lcddata@a
lcddata@a:	; 1 bytes @ 0x4
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	ds	1
	global	??_memcmp
??_memcmp:	; 0 bytes @ 0x5
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x5
	global	?_lcdstring
?_lcdstring:	; 0 bytes @ 0x5
	global	?_DisplaySugar
?_DisplaySugar:	; 0 bytes @ 0x5
	global	?_DisplayRise
?_DisplayRise:	; 0 bytes @ 0x5
	global	?_DisplayKerosene
?_DisplayKerosene:	; 0 bytes @ 0x5
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x5
	global	DisplaySugar@Sugar
DisplaySugar@Sugar:	; 1 bytes @ 0x5
	global	DisplayRise@Rise
DisplayRise@Rise:	; 1 bytes @ 0x5
	global	DisplayKerosene@Kerosene
DisplayKerosene@Kerosene:	; 1 bytes @ 0x5
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	lcdstring@a
lcdstring@a:	; 2 bytes @ 0x5
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x5
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	DisplaySugar@Location
DisplaySugar@Location:	; 1 bytes @ 0x6
	global	DisplayRise@Location
DisplayRise@Location:	; 1 bytes @ 0x6
	global	DisplayKerosene@Location
DisplayKerosene@Location:	; 1 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	??_startup
??_startup:	; 0 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x7
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x9
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xB
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xC
	global	_LoadStockToArray$1137
_LoadStockToArray$1137:	; 2 bytes @ 0xC
	ds	2
	global	?_eeprom_write
?_eeprom_write:	; 0 bytes @ 0xE
	global	?_DisplayAmnt
?_DisplayAmnt:	; 0 bytes @ 0xE
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0xE
	global	DisplayAmnt@Amnt
DisplayAmnt@Amnt:	; 2 bytes @ 0xE
	ds	1
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0xF
	ds	1
	global	DisplayAmnt@Location
DisplayAmnt@Location:	; 1 bytes @ 0x10
	ds	1
	global	_DisplayAmnt$1136
_DisplayAmnt$1136:	; 2 bytes @ 0x11
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x13
	ds	3
;;Data sizes: Strings 658, constant 11, data 39, bss 72, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       8
;; BANK0           80     22      73
;; BANK1           80      0      59
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_memcmp	int  size(1) Largest target is 0
;;
;; ?_strcmp	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; strcmp@s2	PTR const unsigned char  size(1) Largest target is 13
;;		 -> User3(BANK1[13]), User2(BANK1[13]), User1(BANK1[13]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 15
;;		 -> card_store(BANK0[15]), 
;;
;; memcmp@s2	PTR const void  size(1) Largest target is 20
;;		 -> sms(BANK1[20]), 
;;
;; memcmp@s1	PTR const void  size(2) Largest target is 6
;;		 -> STR_57(CODE[6]), 
;;
;; gsm_read_line2@buffer	PTR unsigned char  size(1) Largest target is 20
;;		 -> sms(BANK1[20]), 
;;
;; lcdstring@a	PTR const unsigned char  size(2) Largest target is 22
;;		 -> STR_56(CODE[18]), STR_55(CODE[18]), STR_54(CODE[18]), STR_53(CODE[21]), 
;;		 -> STR_52(CODE[21]), STR_51(CODE[21]), STR_50(CODE[21]), STR_49(CODE[18]), 
;;		 -> STR_48(CODE[18]), STR_47(CODE[18]), STR_46(CODE[21]), STR_45(CODE[21]), 
;;		 -> STR_44(CODE[21]), STR_43(CODE[21]), STR_42(CODE[18]), STR_41(CODE[18]), 
;;		 -> STR_40(CODE[18]), STR_39(CODE[21]), STR_38(CODE[21]), STR_37(CODE[21]), 
;;		 -> STR_36(CODE[21]), STR_35(CODE[18]), STR_34(CODE[18]), STR_26(CODE[18]), 
;;		 -> STR_25(CODE[18]), STR_24(CODE[18]), STR_23(CODE[18]), STR_22(CODE[22]), 
;;		 -> STR_21(CODE[22]), STR_20(CODE[21]), STR_19(CODE[21]), sms(BANK1[20]), 
;;		 -> STR_8(CODE[10]), STR_2(CODE[17]), STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ISR in COMMON
;;
;;   _ISR->_gsm_read_line2
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_DisplayAmnt
;;   _startup->_lcdstring
;;   _DisplayStock->_DisplayAmnt
;;   _DisplayKerosene->_lcdcmd
;;   _DisplayKerosene->_lcddata
;;   _DisplayKerosene->___lbmod
;;   _DisplayRise->_lcdcmd
;;   _DisplayRise->_lcddata
;;   _DisplayRise->___lbmod
;;   _DisplaySugar->_lcdcmd
;;   _DisplaySugar->_lcddata
;;   _DisplaySugar->___lbmod
;;   _DisplayAmnt->___awdiv
;;   _lcdstring->_lcddata
;;   _lcd_init->_lcdcmd
;;   _RFID_read->_softreceive
;;   _lcddata->_enable
;;   _lcdcmd->_enable
;;   _LoadStockToArray->___lwdiv
;;   _paramter->___wmul
;;   _ReadStock->___wmul
;;   _ReadAmnt->___wmul
;;   ___awdiv->___awmod
;;   ___lwdiv->___lwmod
;;   ___wmul->_eeprom_read
;;   _eeprom_write->___awdiv
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
;; (0) _main                                                 3     3      0   11051
;;                                             19 BANK0      3     3      0
;;                          _uart_init
;;                           _lcd_init
;;                           _paramter
;;                  _SoftWareUart_Init
;;                            _startup
;;                          _ReadStock
;;                          _lcdstring
;;                             _lcdcmd
;;                          _RFID_read
;;                             _strcmp
;;                           _ReadAmnt
;;                        _DisplayAmnt
;;                        _DisplayRise
;;                       _DisplaySugar
;;                    _DisplayKerosene
;;                            ___lwdiv
;;                       _eeprom_write
;;                            ___lwmod
;;                            ___awdiv
;;                            ___awmod
;;                   _LoadStockToArray
;;                       _DisplayStock
;;                             _memcmp
;; ---------------------------------------------------------------------------------
;; (1) _startup                                              3     3      0     585
;;                                              7 BANK0      3     3      0
;;                             _lcdcmd
;;                          _lcdstring
;; ---------------------------------------------------------------------------------
;; (1) _DisplayStock                                         0     0      0    2027
;;                             _lcdcmd
;;                          _lcdstring
;;                        _DisplayAmnt
;; ---------------------------------------------------------------------------------
;; (1) _DisplayKerosene                                      2     1      1    1086
;;                                              5 BANK0      2     1      1
;;                             _lcdcmd
;;                            ___lbdiv
;;                            _lcddata
;;                            ___lbmod
;; ---------------------------------------------------------------------------------
;; (1) _DisplayRise                                          2     1      1    1086
;;                                              5 BANK0      2     1      1
;;                             _lcdcmd
;;                            ___lbdiv
;;                            _lcddata
;;                            ___lbmod
;; ---------------------------------------------------------------------------------
;; (1) _DisplaySugar                                         2     1      1    1086
;;                                              5 BANK0      2     1      1
;;                             _lcdcmd
;;                            ___lbdiv
;;                            _lcddata
;;                            ___lbmod
;; ---------------------------------------------------------------------------------
;; (2) _DisplayAmnt                                          5     3      2    1442
;;                                             14 BANK0      5     3      2
;;                             _lcdcmd
;;                            ___awdiv
;;                            _lcddata
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (2) _lcdstring                                            2     0      2     325
;;                                              5 BANK0      2     0      2
;;                            _lcddata
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0     384
;;                                              5 BANK0      2     2      0
;;                            _lcdport
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (1) _RFID_read                                            2     2      0     235
;;                                              3 BANK0      2     2      0
;;                        _softreceive
;; ---------------------------------------------------------------------------------
;; (3) _lcddata                                              3     3      0     260
;;                                              2 BANK0      3     3      0
;;                            _lcdport
;;                             _enable
;; ---------------------------------------------------------------------------------
;; (3) _lcdcmd                                               3     3      0     260
;;                                              2 BANK0      3     3      0
;;                            _lcdport
;;                             _enable
;; ---------------------------------------------------------------------------------
;; (1) _LoadStockToArray                                     6     6      0     700
;;                                             12 BANK0      2     2      0
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _paramter                                             0     0      0     123
;;                        _eeprom_read
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (1) _ReadStock                                            0     0      0     123
;;                        _eeprom_read
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (1) _ReadAmnt                                             0     0      0     123
;;                        _eeprom_read
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (2) _softreceive                                          3     3      0     136
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (1) _SoftWareUart_Init                                    1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _enable                                               2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              6     2      4     433
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                              6 BANK0      8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lbmod                                              5     4      1     232
;;                                              0 BANK0      5     4      1
;; ---------------------------------------------------------------------------------
;; (2) ___lbdiv                                              4     3      1     241
;;                                              0 BANK0      4     3      1
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     232
;;                                              0 BANK0      5     1      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              5 BANK0      7     3      4
;;                            ___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              3 BANK0      6     2      4
;;                        _eeprom_read (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _memcmp                                               6     1      5     168
;;                                              0 BANK0      6     1      5
;; ---------------------------------------------------------------------------------
;; (1) _eeprom_write                                         2     1      1      44
;;                                             14 BANK0      2     1      1
;;                            ___lwdiv (ARG)
;;                            ___lwmod (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _strcmp                                               6     4      2     127
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _eeprom_read                                          3     3      0      31
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (4) _lcdport                                              1     1      0     124
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  3     3      0     138
;;                                              3 COMMON     3     3      0
;;                     _gsm_read_line2
;; ---------------------------------------------------------------------------------
;; (6) _gsm_read_line2                                       3     3      0     138
;;                                              0 COMMON     3     3      0
;;                            _receive
;; ---------------------------------------------------------------------------------
;; (7) _receive                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
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
;;   _ReadStock
;;     _eeprom_read
;;     ___wmul
;;       _eeprom_read (ARG)
;;   _lcdstring
;;     _lcddata
;;       _lcdport
;;       _enable
;;   _lcdcmd
;;     _lcdport
;;     _enable
;;   _RFID_read
;;     _softreceive
;;   _strcmp
;;   _ReadAmnt
;;     _eeprom_read
;;     ___wmul
;;       _eeprom_read (ARG)
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
;;   ___lwdiv
;;     ___lwmod (ARG)
;;   _eeprom_write
;;     ___lwdiv (ARG)
;;       ___lwmod (ARG)
;;     ___lwmod (ARG)
;;     ___awdiv (ARG)
;;       ___awmod (ARG)
;;     ___awmod (ARG)
;;   ___lwmod
;;   ___awdiv
;;     ___awmod (ARG)
;;   ___awmod
;;   _LoadStockToArray
;;     ___lwdiv
;;       ___lwmod (ARG)
;;     ___lwmod
;;   _DisplayStock
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;     _lcdstring
;;       _lcddata
;;         _lcdport
;;         _enable
;;     _DisplayAmnt
;;       _lcdcmd
;;         _lcdport
;;         _enable
;;       ___awdiv
;;         ___awmod (ARG)
;;       _lcddata
;;         _lcdport
;;         _enable
;;       ___awmod
;;   _memcmp
;;
;; _ISR (ROOT)
;;   _gsm_read_line2
;;     _receive
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
;;BANK1               50      0      3B       7       73.8%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      96      12        0.0%
;;ABS                  0      0      8C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       A       2        0.0%
;;BANK0               50     16      49       5       91.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       8       1       57.1%
;;BITCOMMON            E      0       1       0        7.1%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 214 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_uart_init
;;		_lcd_init
;;		_paramter
;;		_SoftWareUart_Init
;;		_startup
;;		_ReadStock
;;		_lcdstring
;;		_lcdcmd
;;		_RFID_read
;;		_strcmp
;;		_ReadAmnt
;;		_DisplayAmnt
;;		_DisplayRise
;;		_DisplaySugar
;;		_DisplayKerosene
;;		___lwdiv
;;		_eeprom_write
;;		___lwmod
;;		___awdiv
;;		___awmod
;;		_LoadStockToArray
;;		_DisplayStock
;;		_memcmp
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	214
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	215
	
l4380:	
;Main.c: 215: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	216
;Main.c: 216: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	line	217
	
l4382:	
;Main.c: 217: TRISD=0X01;
	movlw	(01h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	218
	
l4384:	
;Main.c: 218: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	line	219
;Main.c: 219: TRISC=0X8F;
	movlw	(08Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	220
	
l4386:	
;Main.c: 220: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	221
	
l4388:	
;Main.c: 221: INTCON=0xC0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	222
	
l4390:	
;Main.c: 222: uart_init();
	fcall	_uart_init
	line	223
	
l4392:	
;Main.c: 223: lcd_init();
	fcall	_lcd_init
	line	224
	
l4394:	
;Main.c: 224: paramter();
	fcall	_paramter
	line	225
	
l4396:	
;Main.c: 225: SoftWareUart_Init();
	fcall	_SoftWareUart_Init
	line	226
	
l4398:	
;Main.c: 226: startup();
	fcall	_startup
	line	228
	
l4400:	
;Main.c: 228: PIE1=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(140)^080h	;volatile
	line	232
	
l4402:	
;Main.c: 231: {
;Main.c: 232: ReadStock();
	fcall	_ReadStock
	line	233
	
l4404:	
;Main.c: 233: if(!RC0)
	btfsc	(56/8),(56)&7
	goto	u1621
	goto	u1620
u1621:
	goto	l4416
u1620:
	line	235
	
l4406:	
;Main.c: 234: {
;Main.c: 235: lcdstring("PLEASE TAP YOUR  ");
	movlw	low(STR_34|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_34|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	236
	
l4408:	
;Main.c: 236: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	237
	
l4410:	
;Main.c: 237: lcdstring("SMART CARD       ");
	movlw	low(STR_35|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_35|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	238
	
l4412:	
;Main.c: 238: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u1717:
	decfsz	((??_main+0)+0),f
	goto	u1717
	decfsz	((??_main+0)+0+1),f
	goto	u1717
	decfsz	((??_main+0)+0+2),f
	goto	u1717
opt asmopt_on

	line	239
	
l4414:	
;Main.c: 239: rfid_flag=0;
	bcf	(_rfid_flag/8),(_rfid_flag)&7
	line	241
	
l4416:	
;Main.c: 240: }
;Main.c: 241: RFID_read();
	fcall	_RFID_read
	line	242
	
l4418:	
;Main.c: 242: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	243
	
l4420:	
;Main.c: 243: lcdstring(sms);
	movlw	(_sms&0ffh)
	movwf	(?_lcdstring)
	movlw	(0x1/2)
	movwf	(?_lcdstring+1)
	fcall	_lcdstring
	line	246
	
l4422:	
;Main.c: 246: if(strcmp(card_store,User1)==0)
	movlw	(_User1)&0ffh
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u1631
	goto	u1630
u1631:
	goto	l4428
u1630:
	line	248
	
l4424:	
;Main.c: 247: {
;Main.c: 248: User=1;
	clrf	(_User)
	incf	(_User),f
	clrf	(_User+1)
	line	249
	
l4426:	
;Main.c: 249: card_store[0]=0;
	clrf	(_card_store)
	line	250
;Main.c: 250: }
	goto	l4624
	line	251
	
l4428:	
;Main.c: 251: else if(strcmp(card_store,User2)==0)
	movlw	(_User2)&0ffh
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u1641
	goto	u1640
u1641:
	goto	l4434
u1640:
	line	253
	
l4430:	
;Main.c: 252: {
;Main.c: 253: User=2;
	movlw	02h
	movwf	(_User)
	clrf	(_User+1)
	goto	l4426
	line	256
	
l4434:	
;Main.c: 256: else if(strcmp(card_store,User3)==0)
	movlw	(_User3)&0ffh
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u1651
	goto	u1650
u1651:
	goto	l1161
u1650:
	line	258
	
l4436:	
;Main.c: 257: {
;Main.c: 258: User=3;
	movlw	03h
	movwf	(_User)
	clrf	(_User+1)
	goto	l4426
	line	262
	
l1161:	
;Main.c: 260: }
;Main.c: 262: switch(User)
	goto	l4624
	line	266
	
l4440:	
;Main.c: 265: {
;Main.c: 266: ReadAmnt();
	fcall	_ReadAmnt
	line	267
;Main.c: 267: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	268
	
l4442:	
;Main.c: 268: lcdstring("USER1 AMOUNT:       ");
	movlw	low(STR_36|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_36|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	269
	
l4444:	
;Main.c: 269: DisplayAmnt(0X8D,User1amt);
	movf	(_User1amt+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_User1amt),w
	movwf	(?_DisplayAmnt)
	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	270
;Main.c: 270: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	271
	
l4446:	
;Main.c: 271: lcdstring("RISE:   Kg          ");
	movlw	low(STR_37|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_37|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	272
	
l4448:	
;Main.c: 272: DisplayRise(0XC5,User1Rise);
	movf	(_User1Rise),w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	273
;Main.c: 273: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	274
	
l4450:	
;Main.c: 274: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_38|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_38|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	275
	
l4452:	
;Main.c: 275: DisplaySugar(0x9A,User1Sugar);
	movf	(_User1Sugar),w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	276
;Main.c: 276: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	277
	
l4454:	
;Main.c: 277: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_39|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_39|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	278
	
l4456:	
;Main.c: 278: DisplayKerosene(0XDD,User1Kerosene);
	movf	(_User1Kerosene),w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	279
	
l4458:	
;Main.c: 279: _delay((unsigned long)((2000)*(20000000/4000.0)));
	opt asmopt_off
movlw  51
movwf	((??_main+0)+0+2),f
movlw	137
movwf	((??_main+0)+0+1),f
	movlw	256
movwf	((??_main+0)+0),f
u1727:
	decfsz	((??_main+0)+0),f
	goto	u1727
	decfsz	((??_main+0)+0+1),f
	goto	u1727
	decfsz	((??_main+0)+0+2),f
	goto	u1727
opt asmopt_on

	line	280
	
l4460:	
;Main.c: 280: RiseStock=RiseStock-User1Rise;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Rise),w
	subwf	(_RiseStock),f
	skipc
	decf	(_RiseStock+1),f
	line	281
	
l4462:	
;Main.c: 281: SugarStock=SugarStock-User1Sugar;
	movf	(_User1Sugar),w
	subwf	(_SugarStock),f
	skipc
	decf	(_SugarStock+1),f
	line	282
	
l4464:	
;Main.c: 282: KeroseneStock=KeroseneStock-User1Kerosene;
	movf	(_User1Kerosene),w
	subwf	(_KeroseneStock),f
	skipc
	decf	(_KeroseneStock+1),f
	line	283
;Main.c: 283: eeprom_write(24,RiseStock/100);
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_RiseStock+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(?_eeprom_write)
	movlw	(018h)
	fcall	_eeprom_write
	line	284
;Main.c: 284: eeprom_write(25,RiseStock%100);
	movlw	064h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(_RiseStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(?_eeprom_write)
	movlw	(019h)
	fcall	_eeprom_write
	line	285
;Main.c: 285: eeprom_write(26,SugarStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_SugarStock),w
	movwf	(?_eeprom_write)
	movlw	(01Ah)
	fcall	_eeprom_write
	line	286
;Main.c: 286: eeprom_write(27,KeroseneStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeroseneStock),w
	movwf	(?_eeprom_write)
	movlw	(01Bh)
	fcall	_eeprom_write
	line	287
	
l4466:	
;Main.c: 287: User1amt = User1amt-50;
	movlw	-50
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User1amt),f
	skipc
	decf	(_User1amt+1),f
	line	291
	
l4468:	
;Main.c: 291: eeprom_write(0,User1amt/100);
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(_User1amt+1),w
	movwf	1+(?___awdiv)+02h
	movf	(_User1amt),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(?_eeprom_write)
	movlw	(0)
	fcall	_eeprom_write
	line	292
	
l4470:	
;Main.c: 292: eeprom_write(1,User1amt%100);
	movlw	064h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(_User1amt+1),w
	movwf	1+(?___awmod)+02h
	movf	(_User1amt),w
	movwf	0+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(?_eeprom_write)
	movlw	(01h)
	fcall	_eeprom_write
	line	293
	
l4472:	
;Main.c: 293: eeprom_write(2,User1Rise);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Rise),w
	movwf	(?_eeprom_write)
	movlw	(02h)
	fcall	_eeprom_write
	line	294
	
l4474:	
;Main.c: 294: eeprom_write(3,User1Sugar);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Sugar),w
	movwf	(?_eeprom_write)
	movlw	(03h)
	fcall	_eeprom_write
	line	295
	
l4476:	
;Main.c: 295: eeprom_write(4,User1Kerosene);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Kerosene),w
	movwf	(?_eeprom_write)
	movlw	(04h)
	fcall	_eeprom_write
	line	297
	
l4478:	
;Main.c: 297: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	298
	
l4480:	
;Main.c: 298: lcdstring(" PLEASE KEEP YOUR");
	movlw	low(STR_40|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_40|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	299
	
l4482:	
;Main.c: 299: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	300
	
l4484:	
;Main.c: 300: lcdstring(" CAN ON KEROSENE ");
	movlw	low(STR_41|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_41|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	301
	
l4486:	
;Main.c: 301: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	302
	
l4488:	
;Main.c: 302: lcdstring("      VOLUE      ");
	movlw	low(STR_42|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_42|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	303
	
l4490:	
;Main.c: 303: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u1737:
	decfsz	((??_main+0)+0),f
	goto	u1737
	decfsz	((??_main+0)+0+1),f
	goto	u1737
	decfsz	((??_main+0)+0+2),f
	goto	u1737
opt asmopt_on

	line	304
	
l4492:	
;Main.c: 304: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	305
	
l4494:	
;Main.c: 305: _delay((unsigned long)((5000)*(20000000/4000.0)));
	opt asmopt_off
movlw  127
movwf	((??_main+0)+0+2),f
movlw	86
movwf	((??_main+0)+0+1),f
	movlw	132
movwf	((??_main+0)+0),f
u1747:
	decfsz	((??_main+0)+0),f
	goto	u1747
	decfsz	((??_main+0)+0+1),f
	goto	u1747
	decfsz	((??_main+0)+0+2),f
	goto	u1747
	nop2
opt asmopt_on

	line	306
	
l4496:	
;Main.c: 306: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	307
	
l4498:	
;Main.c: 307: User=0;
	clrf	(_User)
	clrf	(_User+1)
	line	308
;Main.c: 308: break;
	goto	l4626
	line	312
	
l4500:	
;Main.c: 311: {
;Main.c: 312: ReadAmnt();
	fcall	_ReadAmnt
	line	313
;Main.c: 313: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	314
	
l4502:	
;Main.c: 314: lcdstring("USER2 AMOUNT:       ");
	movlw	low(STR_43|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_43|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	315
	
l4504:	
;Main.c: 315: DisplayAmnt(0X8D,User2amt);
	movf	(_User2amt+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_User2amt),w
	movwf	(?_DisplayAmnt)
	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	316
;Main.c: 316: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	317
	
l4506:	
;Main.c: 317: lcdstring("RISE:   Kg          ");
	movlw	low(STR_44|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_44|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	318
	
l4508:	
;Main.c: 318: DisplayRise(0XC5,User2Rise);
	movf	(_User2Rise),w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	319
;Main.c: 319: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	320
	
l4510:	
;Main.c: 320: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_45|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_45|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	321
	
l4512:	
;Main.c: 321: DisplaySugar(0x9A,User2Sugar);
	movf	(_User2Sugar),w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	322
;Main.c: 322: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	323
	
l4514:	
;Main.c: 323: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_46|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_46|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	324
	
l4516:	
;Main.c: 324: DisplayKerosene(0XDD,User2Kerosene);
	movf	(_User2Kerosene),w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	325
	
l4518:	
;Main.c: 325: _delay((unsigned long)((2000)*(20000000/4000.0)));
	opt asmopt_off
movlw  51
movwf	((??_main+0)+0+2),f
movlw	137
movwf	((??_main+0)+0+1),f
	movlw	256
movwf	((??_main+0)+0),f
u1757:
	decfsz	((??_main+0)+0),f
	goto	u1757
	decfsz	((??_main+0)+0+1),f
	goto	u1757
	decfsz	((??_main+0)+0+2),f
	goto	u1757
opt asmopt_on

	line	326
	
l4520:	
;Main.c: 326: RiseStock=RiseStock-User2Rise;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Rise),w
	subwf	(_RiseStock),f
	skipc
	decf	(_RiseStock+1),f
	line	327
	
l4522:	
;Main.c: 327: SugarStock=SugarStock-User2Sugar;
	movf	(_User2Sugar),w
	subwf	(_SugarStock),f
	skipc
	decf	(_SugarStock+1),f
	line	328
	
l4524:	
;Main.c: 328: KeroseneStock=KeroseneStock-User2Kerosene;
	movf	(_User2Kerosene),w
	subwf	(_KeroseneStock),f
	skipc
	decf	(_KeroseneStock+1),f
	line	329
;Main.c: 329: eeprom_write(24,RiseStock/100);
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_RiseStock+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(?_eeprom_write)
	movlw	(018h)
	fcall	_eeprom_write
	line	330
;Main.c: 330: eeprom_write(25,RiseStock%100);
	movlw	064h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(_RiseStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(?_eeprom_write)
	movlw	(019h)
	fcall	_eeprom_write
	line	331
;Main.c: 331: eeprom_write(26,SugarStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_SugarStock),w
	movwf	(?_eeprom_write)
	movlw	(01Ah)
	fcall	_eeprom_write
	line	332
;Main.c: 332: eeprom_write(27,KeroseneStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeroseneStock),w
	movwf	(?_eeprom_write)
	movlw	(01Bh)
	fcall	_eeprom_write
	line	333
	
l4526:	
;Main.c: 333: User2amt = User2amt-30;
	movlw	-30
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User2amt),f
	skipc
	decf	(_User2amt+1),f
	line	337
	
l4528:	
;Main.c: 337: eeprom_write(8,User2amt/100);
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(_User2amt+1),w
	movwf	1+(?___awdiv)+02h
	movf	(_User2amt),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(?_eeprom_write)
	movlw	(08h)
	fcall	_eeprom_write
	line	338
	
l4530:	
;Main.c: 338: eeprom_write(9,User2amt%100);
	movlw	064h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(_User2amt+1),w
	movwf	1+(?___awmod)+02h
	movf	(_User2amt),w
	movwf	0+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(?_eeprom_write)
	movlw	(09h)
	fcall	_eeprom_write
	line	339
	
l4532:	
;Main.c: 339: eeprom_write(10,User2Rise);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Rise),w
	movwf	(?_eeprom_write)
	movlw	(0Ah)
	fcall	_eeprom_write
	line	340
	
l4534:	
;Main.c: 340: eeprom_write(11,User2Sugar);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Sugar),w
	movwf	(?_eeprom_write)
	movlw	(0Bh)
	fcall	_eeprom_write
	line	341
	
l4536:	
;Main.c: 341: eeprom_write(12,User2Kerosene);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Kerosene),w
	movwf	(?_eeprom_write)
	movlw	(0Ch)
	fcall	_eeprom_write
	line	343
	
l4538:	
;Main.c: 343: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	344
	
l4540:	
;Main.c: 344: lcdstring(" PLEASE KEEP YOUR");
	movlw	low(STR_47|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_47|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	345
	
l4542:	
;Main.c: 345: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	346
	
l4544:	
;Main.c: 346: lcdstring(" CAN ON KEROSENE ");
	movlw	low(STR_48|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_48|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	347
	
l4546:	
;Main.c: 347: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	348
	
l4548:	
;Main.c: 348: lcdstring("      VOLUE      ");
	movlw	low(STR_49|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_49|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	349
	
l4550:	
;Main.c: 349: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u1767:
	decfsz	((??_main+0)+0),f
	goto	u1767
	decfsz	((??_main+0)+0+1),f
	goto	u1767
	decfsz	((??_main+0)+0+2),f
	goto	u1767
opt asmopt_on

	line	350
	
l4552:	
;Main.c: 350: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	351
	
l4554:	
;Main.c: 351: _delay((unsigned long)((8000)*(20000000/4000.0)));
	opt asmopt_off
movlw  203
movwf	((??_main+0)+0+2),f
movlw	35
movwf	((??_main+0)+0+1),f
	movlw	9
movwf	((??_main+0)+0),f
u1777:
	decfsz	((??_main+0)+0),f
	goto	u1777
	decfsz	((??_main+0)+0+1),f
	goto	u1777
	decfsz	((??_main+0)+0+2),f
	goto	u1777
	clrwdt
opt asmopt_on

	goto	l4496
	line	358
	
l4560:	
;Main.c: 357: {
;Main.c: 358: ReadAmnt();
	fcall	_ReadAmnt
	line	359
;Main.c: 359: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	360
	
l4562:	
;Main.c: 360: lcdstring("USER3 AMOUNT:       ");
	movlw	low(STR_50|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_50|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	361
	
l4564:	
;Main.c: 361: DisplayAmnt(0X8D,User3amt);
	movf	(_User3amt+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_User3amt),w
	movwf	(?_DisplayAmnt)
	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	362
;Main.c: 362: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	363
	
l4566:	
;Main.c: 363: lcdstring("RISE:   Kg          ");
	movlw	low(STR_51|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_51|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	364
	
l4568:	
;Main.c: 364: DisplayRise(0XC5,User3Rise);
	movf	(_User3Rise),w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	365
;Main.c: 365: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	366
	
l4570:	
;Main.c: 366: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_52|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_52|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	367
	
l4572:	
;Main.c: 367: DisplaySugar(0x9A,User3Sugar);
	movf	(_User3Sugar),w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	368
;Main.c: 368: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	369
	
l4574:	
;Main.c: 369: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_53|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_53|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	370
	
l4576:	
;Main.c: 370: DisplayKerosene(0XDD,User3Kerosene);
	movf	(_User3Kerosene),w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	371
	
l4578:	
;Main.c: 371: _delay((unsigned long)((2000)*(20000000/4000.0)));
	opt asmopt_off
movlw  51
movwf	((??_main+0)+0+2),f
movlw	137
movwf	((??_main+0)+0+1),f
	movlw	256
movwf	((??_main+0)+0),f
u1787:
	decfsz	((??_main+0)+0),f
	goto	u1787
	decfsz	((??_main+0)+0+1),f
	goto	u1787
	decfsz	((??_main+0)+0+2),f
	goto	u1787
opt asmopt_on

	line	372
	
l4580:	
;Main.c: 372: RiseStock=RiseStock-User3Rise;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Rise),w
	subwf	(_RiseStock),f
	skipc
	decf	(_RiseStock+1),f
	line	373
	
l4582:	
;Main.c: 373: SugarStock=SugarStock-User3Sugar;
	movf	(_User3Sugar),w
	subwf	(_SugarStock),f
	skipc
	decf	(_SugarStock+1),f
	line	374
	
l4584:	
;Main.c: 374: KeroseneStock=KeroseneStock-User3Kerosene;
	movf	(_User3Kerosene),w
	subwf	(_KeroseneStock),f
	skipc
	decf	(_KeroseneStock+1),f
	line	375
;Main.c: 375: eeprom_write(24,RiseStock/100);
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_RiseStock+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(?_eeprom_write)
	movlw	(018h)
	fcall	_eeprom_write
	line	376
;Main.c: 376: eeprom_write(25,RiseStock%100);
	movlw	064h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(_RiseStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	movwf	(?_eeprom_write)
	movlw	(019h)
	fcall	_eeprom_write
	line	377
;Main.c: 377: eeprom_write(26,SugarStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_SugarStock),w
	movwf	(?_eeprom_write)
	movlw	(01Ah)
	fcall	_eeprom_write
	line	378
;Main.c: 378: eeprom_write(27,KeroseneStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeroseneStock),w
	movwf	(?_eeprom_write)
	movlw	(01Bh)
	fcall	_eeprom_write
	line	379
	
l4586:	
;Main.c: 379: User3amt = User3amt-20;
	movlw	-20
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User3amt),f
	skipc
	decf	(_User3amt+1),f
	line	383
	
l4588:	
;Main.c: 383: eeprom_write(16,User3amt/100);
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(_User3amt+1),w
	movwf	1+(?___awdiv)+02h
	movf	(_User3amt),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	movwf	(?_eeprom_write)
	movlw	(010h)
	fcall	_eeprom_write
	line	384
	
l4590:	
;Main.c: 384: eeprom_write(17,User3amt%100);
	movlw	064h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(_User3amt+1),w
	movwf	1+(?___awmod)+02h
	movf	(_User3amt),w
	movwf	0+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	movwf	(?_eeprom_write)
	movlw	(011h)
	fcall	_eeprom_write
	line	385
	
l4592:	
;Main.c: 385: eeprom_write(18,User3Rise);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Rise),w
	movwf	(?_eeprom_write)
	movlw	(012h)
	fcall	_eeprom_write
	line	386
	
l4594:	
;Main.c: 386: eeprom_write(19,User3Sugar);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Sugar),w
	movwf	(?_eeprom_write)
	movlw	(013h)
	fcall	_eeprom_write
	line	387
	
l4596:	
;Main.c: 387: eeprom_write(20,User3Kerosene);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Kerosene),w
	movwf	(?_eeprom_write)
	movlw	(014h)
	fcall	_eeprom_write
	line	389
	
l4598:	
;Main.c: 389: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	390
	
l4600:	
;Main.c: 390: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	391
	
l4602:	
;Main.c: 391: lcdstring(" PLEASE KEEP YOUR");
	movlw	low(STR_54|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_54|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	392
	
l4604:	
;Main.c: 392: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	393
	
l4606:	
;Main.c: 393: lcdstring(" CAN ON KEROSENE ");
	movlw	low(STR_55|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_55|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	394
	
l4608:	
;Main.c: 394: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	395
	
l4610:	
;Main.c: 395: lcdstring("      VOLUE      ");
	movlw	low(STR_56|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_56|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	goto	l4490
	line	262
	
l4624:	
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
	goto	l4670
	goto	l4626
	
l4670:	
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
	goto	l4440
	xorlw	2^1	; case 2
	skipnz
	goto	l4500
	xorlw	3^2	; case 3
	skipnz
	goto	l4560
	goto	l4626

	line	404
	
l4626:	
;Main.c: 404: ReadStock();
	fcall	_ReadStock
	line	405
	
l4628:	
;Main.c: 405: LoadStockToArray();
	fcall	_LoadStockToArray
	line	406
	
l4630:	
;Main.c: 406: if(RC1)
	btfss	(57/8),(57)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l4634
u1660:
	line	407
	
l4632:	
;Main.c: 407: DisplayStock();
	fcall	_DisplayStock
	line	408
	
l4634:	
;Main.c: 408: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	163
movwf	((??_main+0)+0+1),f
	movlw	189
movwf	((??_main+0)+0),f
u1797:
	decfsz	((??_main+0)+0),f
	goto	u1797
	decfsz	((??_main+0)+0+1),f
	goto	u1797
	decfsz	((??_main+0)+0+2),f
	goto	u1797
	clrwdt
opt asmopt_on

	line	410
	
l4636:	
;Main.c: 410: if((memcmp("STOCK",&sms,5)==0))
	movlw	low(STR_57|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_memcmp)
	movlw	high(STR_57|8000h)
	movwf	((?_memcmp))+1
	movlw	(_sms)&0ffh
	movwf	(0+?_memcmp+02h)
	movlw	05h
	movwf	0+(?_memcmp)+03h
	clrf	1+(?_memcmp)+03h
	fcall	_memcmp
	movf	((1+(?_memcmp))),w
	iorwf	((0+(?_memcmp))),w
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l1171
u1670:
	line	412
	
l4638:	
;Main.c: 411: {
;Main.c: 412: if(!sms_indication)
	btfsc	(_sms_indication/8),(_sms_indication)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l1171
u1680:
	line	415
	
l4640:	
;Main.c: 413: {
;Main.c: 415: sms_indication=1;
	bsf	(_sms_indication/8),(_sms_indication)&7
	line	417
	
l1171:	
	line	418
;Main.c: 416: }
;Main.c: 417: }
;Main.c: 418: if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u1691
	goto	u1690
u1691:
	goto	l1174
u1690:
	line	420
	
l4642:	
;Main.c: 419: {
;Main.c: 420: eeprom_write(24,10);
	movlw	(0Ah)
	movwf	(?_eeprom_write)
	movlw	(018h)
	fcall	_eeprom_write
	line	421
;Main.c: 421: eeprom_write(25,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_eeprom_write)
	movlw	(019h)
	fcall	_eeprom_write
	line	422
;Main.c: 422: eeprom_write(26,255);
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(01Ah)
	fcall	_eeprom_write
	line	423
;Main.c: 423: eeprom_write(27,200);
	movlw	(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(01Bh)
	fcall	_eeprom_write
	line	424
;Main.c: 424: ReadStock();
	fcall	_ReadStock
	line	426
	
l4644:	
;Main.c: 426: DisplayStock();
	fcall	_DisplayStock
	line	427
	
l1174:	
	btfsc	(59/8),(59)&7
	goto	u1701
	goto	u1700
u1701:
	goto	l1174
u1700:
	goto	l4402
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	431
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_startup
psect	text966,local,class=CODE,delta=2
global __ptext966
__ptext966:

;; *************** function _startup *****************
;; Defined at:
;;		line 161 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcdcmd
;;		_lcdstring
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text966
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	161
	global	__size_of_startup
	__size_of_startup	equ	__end_of_startup-_startup
	
_startup:	
	opt	stack 1
; Regs used in _startup: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	162
	
l4360:	
;Main.c: 162: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	163
	
l4362:	
;Main.c: 163: lcdstring("AUTOMATIC RATION ");
	movlw	low(STR_23|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_23|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	164
	
l4364:	
;Main.c: 164: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	165
;Main.c: 165: lcdstring("   CARD SYSTEM   ");
	movlw	low(STR_24|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_24|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	166
	
l4366:	
;Main.c: 166: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_startup+0)+0+2),f
movlw	69
movwf	((??_startup+0)+0+1),f
	movlw	126
movwf	((??_startup+0)+0),f
u1807:
	decfsz	((??_startup+0)+0),f
	goto	u1807
	decfsz	((??_startup+0)+0+1),f
	goto	u1807
	decfsz	((??_startup+0)+0+2),f
	goto	u1807
opt asmopt_on

	line	167
	
l4368:	
;Main.c: 167: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	168
	
l4370:	
;Main.c: 168: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_startup+0)+0+2),f
movlw	163
movwf	((??_startup+0)+0+1),f
	movlw	189
movwf	((??_startup+0)+0),f
u1817:
	decfsz	((??_startup+0)+0),f
	goto	u1817
	decfsz	((??_startup+0)+0+1),f
	goto	u1817
	decfsz	((??_startup+0)+0+2),f
	goto	u1817
	clrwdt
opt asmopt_on

	line	169
	
l4372:	
;Main.c: 169: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	170
;Main.c: 170: lcdstring("PLEASE TAP YOUR  ");
	movlw	low(STR_25|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_25|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	171
	
l4374:	
;Main.c: 171: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	172
	
l4376:	
;Main.c: 172: lcdstring("SMART CARD       ");
	movlw	low(STR_26|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_26|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	173
	
l4378:	
;Main.c: 173: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_startup+0)+0+2),f
movlw	69
movwf	((??_startup+0)+0+1),f
	movlw	126
movwf	((??_startup+0)+0),f
u1827:
	decfsz	((??_startup+0)+0),f
	goto	u1827
	decfsz	((??_startup+0)+0+1),f
	goto	u1827
	decfsz	((??_startup+0)+0+2),f
	goto	u1827
opt asmopt_on

	line	174
	
l1143:	
	return
	opt stack 0
GLOBAL	__end_of_startup
	__end_of_startup:
;; =============== function _startup ends ============

	signat	_startup,88
	global	_DisplayStock
psect	text967,local,class=CODE,delta=2
global __ptext967
__ptext967:

;; *************** function _DisplayStock *****************
;; Defined at:
;;		line 114 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcdcmd
;;		_lcdstring
;;		_DisplayAmnt
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text967
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	114
	global	__size_of_DisplayStock
	__size_of_DisplayStock	equ	__end_of_DisplayStock-_DisplayStock
	
_DisplayStock:	
	opt	stack 1
; Regs used in _DisplayStock: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	115
	
l4346:	
;Main.c: 115: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	116
	
l4348:	
;Main.c: 116: lcdstring("    STOCK DETAILS   ");
	movlw	low(STR_19|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_19|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	117
	
l4350:	
;Main.c: 117: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	118
;Main.c: 118: lcdstring("RISE:      Kg       ");
	movlw	low(STR_20|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_20|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	119
;Main.c: 119: DisplayAmnt(0XC5,RiseStock);
	movf	(_RiseStock+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_RiseStock),w
	movwf	(?_DisplayAmnt)
	movlw	(0C5h)
	fcall	_DisplayAmnt
	line	120
	
l4352:	
;Main.c: 120: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	121
	
l4354:	
;Main.c: 121: lcdstring("SUGAR:    Kg         ");
	movlw	low(STR_21|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_21|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	122
	
l4356:	
;Main.c: 122: DisplayAmnt(0x9A,SugarStock);
	movf	(_SugarStock+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_SugarStock),w
	movwf	(?_DisplayAmnt)
	movlw	(09Ah)
	fcall	_DisplayAmnt
	line	123
	
l4358:	
;Main.c: 123: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	124
;Main.c: 124: lcdstring("KEROSENE:     Lts    ");
	movlw	low(STR_22|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_22|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	125
;Main.c: 125: DisplayAmnt(0XDD,KeroseneStock);
	movf	(_KeroseneStock+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_KeroseneStock),w
	movwf	(?_DisplayAmnt)
	movlw	(0DDh)
	fcall	_DisplayAmnt
	line	126
	
l1125:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayStock
	__end_of_DisplayStock:
;; =============== function _DisplayStock ends ============

	signat	_DisplayStock,88
	global	_DisplayKerosene
psect	text968,local,class=CODE,delta=2
global __ptext968
__ptext968:

;; *************** function _DisplayKerosene *****************
;; Defined at:
;;		line 140 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Kerosene        1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Location        1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcdcmd
;;		___lbdiv
;;		_lcddata
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text968
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	140
	global	__size_of_DisplayKerosene
	__size_of_DisplayKerosene	equ	__end_of_DisplayKerosene-_DisplayKerosene
	
_DisplayKerosene:	
	opt	stack 2
; Regs used in _DisplayKerosene: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayKerosene@Location stored from wreg
	movwf	(DisplayKerosene@Location)
	line	141
	
l4340:	
;Main.c: 141: lcdcmd(Location);
	movf	(DisplayKerosene@Location),w
	fcall	_lcdcmd
	line	142
	
l4342:	
;Main.c: 142: lcddata(digit[Kerosene/10]);
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
	line	143
	
l4344:	
;Main.c: 143: lcddata(digit[Kerosene%10]);
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
	line	144
	
l1134:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayKerosene
	__end_of_DisplayKerosene:
;; =============== function _DisplayKerosene ends ============

	signat	_DisplayKerosene,8312
	global	_DisplayRise
psect	text969,local,class=CODE,delta=2
global __ptext969
__ptext969:

;; *************** function _DisplayRise *****************
;; Defined at:
;;		line 134 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Rise            1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Location        1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcdcmd
;;		___lbdiv
;;		_lcddata
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text969
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	134
	global	__size_of_DisplayRise
	__size_of_DisplayRise	equ	__end_of_DisplayRise-_DisplayRise
	
_DisplayRise:	
	opt	stack 2
; Regs used in _DisplayRise: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayRise@Location stored from wreg
	movwf	(DisplayRise@Location)
	line	135
	
l4334:	
;Main.c: 135: lcdcmd(Location);
	movf	(DisplayRise@Location),w
	fcall	_lcdcmd
	line	136
	
l4336:	
;Main.c: 136: lcddata(digit[Rise/10]);
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
	line	137
	
l4338:	
;Main.c: 137: lcddata(digit[Rise%10]);
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
	line	138
	
l1131:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayRise
	__end_of_DisplayRise:
;; =============== function _DisplayRise ends ============

	signat	_DisplayRise,8312
	global	_DisplaySugar
psect	text970,local,class=CODE,delta=2
global __ptext970
__ptext970:

;; *************** function _DisplaySugar *****************
;; Defined at:
;;		line 128 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Sugar           1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Location        1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcdcmd
;;		___lbdiv
;;		_lcddata
;;		___lbmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text970
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	128
	global	__size_of_DisplaySugar
	__size_of_DisplaySugar	equ	__end_of_DisplaySugar-_DisplaySugar
	
_DisplaySugar:	
	opt	stack 2
; Regs used in _DisplaySugar: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplaySugar@Location stored from wreg
	movwf	(DisplaySugar@Location)
	line	129
	
l4328:	
;Main.c: 129: lcdcmd(Location);
	movf	(DisplaySugar@Location),w
	fcall	_lcdcmd
	line	130
	
l4330:	
;Main.c: 130: lcddata(digit[Sugar/10]);
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
	line	131
	
l4332:	
;Main.c: 131: lcddata(digit[Sugar%10]);
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
	line	132
	
l1128:	
	return
	opt stack 0
GLOBAL	__end_of_DisplaySugar
	__end_of_DisplaySugar:
;; =============== function _DisplaySugar ends ============

	signat	_DisplaySugar,8312
	global	_DisplayAmnt
psect	text971,local,class=CODE,delta=2
global __ptext971
__ptext971:

;; *************** function _DisplayAmnt *****************
;; Defined at:
;;		line 82 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Amnt            2   14[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  Location        1   16[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcdcmd
;;		___awdiv
;;		_lcddata
;;		___awmod
;; This function is called by:
;;		_DisplayStock
;;		_main
;; This function uses a non-reentrant model
;;
psect	text971
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	82
	global	__size_of_DisplayAmnt
	__size_of_DisplayAmnt	equ	__end_of_DisplayAmnt-_DisplayAmnt
	
_DisplayAmnt:	
	opt	stack 1
; Regs used in _DisplayAmnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayAmnt@Location stored from wreg
	movwf	(DisplayAmnt@Location)
	line	83
	
l4318:	
;Main.c: 83: lcdcmd(Location);
	movf	(DisplayAmnt@Location),w
	fcall	_lcdcmd
	line	84
	
l4320:	
;Main.c: 84: lcddata(digit[Amnt/1000]);
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
	line	85
	
l4322:	
;Main.c: 85: lcddata(digit[Amnt%1000/100]);
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
	line	86
	
l4324:	
;Main.c: 86: lcddata(digit[Amnt%1000%100/10]);
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
	line	87
	
l4326:	
;Main.c: 87: lcddata(digit[Amnt%1000%100%10]);
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
	movwf	(_DisplayAmnt$1136+1)
	movf	(0+(?___awmod)),w
	movwf	(_DisplayAmnt$1136)
;Main.c: 87: lcddata(digit[Amnt%1000%100%10]);
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(_DisplayAmnt$1136+1),w
	movwf	1+(?___awmod)+02h
	movf	(_DisplayAmnt$1136),w
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
	line	88
	
l1116:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayAmnt
	__end_of_DisplayAmnt:
;; =============== function _DisplayAmnt ends ============

	signat	_DisplayAmnt,8312
	global	_lcdstring
psect	text972,local,class=CODE,delta=2
global __ptext972
__ptext972:

;; *************** function _lcdstring *****************
;; Defined at:
;;		line 90 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               2    5[BANK0 ] PTR const unsigned char 
;;		 -> STR_56(18), STR_55(18), STR_54(18), STR_53(21), 
;;		 -> STR_52(21), STR_51(21), STR_50(21), STR_49(18), 
;;		 -> STR_48(18), STR_47(18), STR_46(21), STR_45(21), 
;;		 -> STR_44(21), STR_43(21), STR_42(18), STR_41(18), 
;;		 -> STR_40(18), STR_39(21), STR_38(21), STR_37(21), 
;;		 -> STR_36(21), STR_35(18), STR_34(18), STR_26(18), 
;;		 -> STR_25(18), STR_24(18), STR_23(18), STR_22(22), 
;;		 -> STR_21(22), STR_20(21), STR_19(21), sms(20), 
;;		 -> STR_8(10), STR_2(17), STR_1(17), 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcddata
;; This function is called by:
;;		_DisplayStock
;;		_startup
;;		_main
;; This function uses a non-reentrant model
;;
psect	text972
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	90
	global	__size_of_lcdstring
	__size_of_lcdstring	equ	__end_of_lcdstring-_lcdstring
	
_lcdstring:	
	opt	stack 1
; Regs used in _lcdstring: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	91
	
l4310:	
;lcd.c: 91: while(*a)
	goto	l4316
	line	93
	
l4312:	
;lcd.c: 92: {
;lcd.c: 93: lcddata(*a++);
	movf	(lcdstring@a+1),w
	movwf	btemp+1
	movf	(lcdstring@a),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcddata
	
l4314:	
	incf	(lcdstring@a),f
	skipnz
	incf	(lcdstring@a+1),f
	line	91
	
l4316:	
	movf	(lcdstring@a+1),w
	movwf	btemp+1
	movf	(lcdstring@a),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u1611
	goto	u1610
u1611:
	goto	l4312
u1610:
	line	95
	
l980:	
	return
	opt stack 0
GLOBAL	__end_of_lcdstring
	__end_of_lcdstring:
;; =============== function _lcdstring ends ============

	signat	_lcdstring,4216
	global	_lcd_init
psect	text973,local,class=CODE,delta=2
global __ptext973
__ptext973:

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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcdport
;;		_lcdcmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text973
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	71
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 2
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	72
	
l4300:	
;lcd.c: 72: lcdport(0x00);
	movlw	(0)
	fcall	_lcdport
	line	73
	
l4302:	
;lcd.c: 73: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u1837:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1837
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1837
	nop2
opt asmopt_on

	line	74
	
l4304:	
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
u1847:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1847
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1847
	clrwdt
opt asmopt_on

	line	76
	
l4306:	
;lcd.c: 76: lcdcmd(0x03);
	movlw	(03h)
	fcall	_lcdcmd
	line	77
	
l4308:	
;lcd.c: 77: _delay((unsigned long)((11)*(20000000/4000.0)));
	opt asmopt_off
movlw	72
movwf	((??_lcd_init+0)+0+1),f
	movlw	108
movwf	((??_lcd_init+0)+0),f
u1857:
	decfsz	((??_lcd_init+0)+0),f
	goto	u1857
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u1857
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
	
l974:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_RFID_read
psect	text974,local,class=CODE,delta=2
global __ptext974
__ptext974:

;; *************** function _RFID_read *****************
;; Defined at:
;;		line 73 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    3[BANK0 ] int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_softreceive
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text974
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	73
	global	__size_of_RFID_read
	__size_of_RFID_read	equ	__end_of_RFID_read-_RFID_read
	
_RFID_read:	
	opt	stack 3
; Regs used in _RFID_read: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	74
	
l4286:	
;Main.c: 74: if(!rfid_flag)
	btfsc	(_rfid_flag/8),(_rfid_flag)&7
	goto	u1591
	goto	u1590
u1591:
	goto	l1113
u1590:
	line	76
	
l4288:	
;Main.c: 75: {
;Main.c: 76: for(int i=0;i<12;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(RFID_read@i)
	clrf	(RFID_read@i+1)
	line	77
	
l4294:	
;Main.c: 77: {card_store[i]=softreceive();}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(RFID_read@i),w
	addlw	_card_store&0ffh
	movwf	fsr0
	fcall	_softreceive
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	76
	
l4296:	
	incf	(RFID_read@i),f
	skipnz
	incf	(RFID_read@i+1),f
	
l4298:	
	movf	(RFID_read@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u1605
	movlw	low(0Ch)
	subwf	(RFID_read@i),w
u1605:

	skipc
	goto	u1601
	goto	u1600
u1601:
	goto	l4294
u1600:
	
l1112:	
	line	78
;Main.c: 78: rfid_flag=1;
	bsf	(_rfid_flag/8),(_rfid_flag)&7
	line	80
	
l1113:	
	return
	opt stack 0
GLOBAL	__end_of_RFID_read
	__end_of_RFID_read:
;; =============== function _RFID_read ends ============

	signat	_RFID_read,88
	global	_lcddata
psect	text975,local,class=CODE,delta=2
global __ptext975
__ptext975:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 51 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    4[BANK0 ] unsigned char 
;;  z               1    3[BANK0 ] unsigned char 
;;  y               1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
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
psect	text975
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	51
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 1
; Regs used in _lcddata: [wreg+status,2+status,0+pclath+cstack]
;lcddata@a stored from wreg
	line	53
	movwf	(lcddata@a)
	
l4268:	
;lcd.c: 52: unsigned char y,z;
;lcd.c: 53: z=a>>4&0x0F;
	swapf	(lcddata@a),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(lcddata@z)
	movlw	(0Fh)
	andwf	(lcddata@z),f
	line	54
	
l4270:	
;lcd.c: 54: y=a&0x0F;
	movf	(lcddata@a),w
	movwf	(lcddata@y)
	
l4272:	
	movlw	(0Fh)
	andwf	(lcddata@y),f
	line	55
	
l4274:	
;lcd.c: 55: RD2=1;
	bsf	(66/8),(66)&7
	line	56
	
l4276:	
;lcd.c: 56: lcdport(z);
	movf	(lcddata@z),w
	fcall	_lcdport
	line	57
	
l4278:	
;lcd.c: 57: enable();
	fcall	_enable
	line	58
	
l4280:	
;lcd.c: 58: lcdport(y);
	movf	(lcddata@y),w
	fcall	_lcdport
	line	59
	
l4282:	
;lcd.c: 59: enable();
	fcall	_enable
	line	60
	
l4284:	
;lcd.c: 60: RD2 = 0;
	bcf	(66/8),(66)&7
	line	61
	
l968:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_lcdcmd
psect	text976,local,class=CODE,delta=2
global __ptext976
__ptext976:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 39 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    4[BANK0 ] unsigned char 
;;  z               1    3[BANK0 ] unsigned char 
;;  y               1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcdport
;;		_enable
;; This function is called by:
;;		_lcd_init
;;		_DisplayAmnt
;;		_DisplayStock
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;;		_startup
;;		_main
;; This function uses a non-reentrant model
;;
psect	text976
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	39
	global	__size_of_lcdcmd
	__size_of_lcdcmd	equ	__end_of_lcdcmd-_lcdcmd
	
_lcdcmd:	
	opt	stack 1
; Regs used in _lcdcmd: [wreg+status,2+status,0+pclath+cstack]
;lcdcmd@a stored from wreg
	line	41
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcdcmd@a)
	
l4254:	
;lcd.c: 40: unsigned char y,z;
;lcd.c: 41: z=a>>4&0x0F;
	swapf	(lcdcmd@a),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(lcdcmd@z)
	movlw	(0Fh)
	andwf	(lcdcmd@z),f
	line	42
	
l4256:	
;lcd.c: 42: y=a&0x0F;
	movf	(lcdcmd@a),w
	movwf	(lcdcmd@y)
	
l4258:	
	movlw	(0Fh)
	andwf	(lcdcmd@y),f
	line	44
	
l4260:	
;lcd.c: 44: lcdport(z);
	movf	(lcdcmd@z),w
	fcall	_lcdport
	line	45
	
l4262:	
;lcd.c: 45: enable();
	fcall	_enable
	line	46
	
l4264:	
;lcd.c: 46: lcdport(y);
	movf	(lcdcmd@y),w
	fcall	_lcdport
	line	47
	
l4266:	
;lcd.c: 47: enable();
	fcall	_enable
	line	48
	
l965:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_LoadStockToArray
psect	text977,local,class=CODE,delta=2
global __ptext977
__ptext977:

;; *************** function _LoadStockToArray *****************
;; Defined at:
;;		line 177 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text977
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	177
	global	__size_of_LoadStockToArray
	__size_of_LoadStockToArray	equ	__end_of_LoadStockToArray-_LoadStockToArray
	
_LoadStockToArray:	
	opt	stack 3
; Regs used in _LoadStockToArray: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	178
	
l4236:	
;Main.c: 178: RiseArray[0] = digit[RiseStock/1000];
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(_RiseStock+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(_RiseArray)
	line	179
;Main.c: 179: RiseArray[1] = digit[RiseStock%1000/100];
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_RiseStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwmod)+02h
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_RiseArray)+01h
	line	180
;Main.c: 180: RiseArray[2] = digit[RiseStock%1000%100/10];
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_RiseStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwmod)+02h
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwmod)),w
	movwf	0+(?___lwmod)+02h
	movlw	064h
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_RiseArray)+02h
	line	181
	
l4238:	
;Main.c: 181: RiseArray[3] = digit[RiseStock%1000%100%10];
	movf	(_RiseStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	movwf	0+(?___lwmod)+02h
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwmod)),w
	movwf	0+(?___lwmod)+02h
	movlw	064h
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	(_LoadStockToArray$1137+1)
	movf	(0+(?___lwmod)),w
	movwf	(_LoadStockToArray$1137)
	
l4240:	
;Main.c: 181: RiseArray[3] = digit[RiseStock%1000%100%10];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(_LoadStockToArray$1137+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_LoadStockToArray$1137),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_RiseArray)+03h
	line	182
	
l4242:	
;Main.c: 182: SugarArray[0] = digit[SugarStock/100];
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_SugarStock+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_SugarStock),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(_SugarArray)
	line	183
	
l4244:	
;Main.c: 183: SugarArray[1] = digit[SugarStock%100/10];
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_SugarStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_SugarStock),w
	movwf	0+(?___lwmod)+02h
	movlw	064h
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_SugarArray)+01h
	line	184
;Main.c: 184: SugarArray[2] = digit[SugarStock%100%10];
	movf	(_SugarStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_SugarStock),w
	movwf	0+(?___lwmod)+02h
	movlw	064h
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	(_LoadStockToArray$1137+1)
	movf	(0+(?___lwmod)),w
	movwf	(_LoadStockToArray$1137)
	
l4246:	
;Main.c: 184: SugarArray[2] = digit[SugarStock%100%10];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(_LoadStockToArray$1137+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_LoadStockToArray$1137),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_SugarArray)+02h
	line	185
	
l4248:	
;Main.c: 185: KeroseneArray[0] = digit[KeroseneStock/100];
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_KeroseneStock+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(_KeroseneStock),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(_KeroseneArray)
	line	186
	
l4250:	
;Main.c: 186: KeroseneArray[1] = digit[KeroseneStock%100/10];
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(_KeroseneStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_KeroseneStock),w
	movwf	0+(?___lwmod)+02h
	movlw	064h
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_KeroseneArray)+01h
	line	187
	
l4252:	
;Main.c: 187: KeroseneArray[2] = digit[KeroseneStock%100%10];
	movf	(_KeroseneStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_KeroseneStock),w
	movwf	0+(?___lwmod)+02h
	movlw	064h
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	movwf	(_LoadStockToArray$1137+1)
	movf	(0+(?___lwmod)),w
	movwf	(_LoadStockToArray$1137)
;Main.c: 187: KeroseneArray[2] = digit[KeroseneStock%100%10];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(_LoadStockToArray$1137+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_LoadStockToArray$1137),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	0+(_KeroseneArray)+02h
	line	188
	
l1146:	
	return
	opt stack 0
GLOBAL	__end_of_LoadStockToArray
	__end_of_LoadStockToArray:
;; =============== function _LoadStockToArray ends ============

	signat	_LoadStockToArray,88
	global	_paramter
psect	text978,local,class=CODE,delta=2
global __ptext978
__ptext978:

;; *************** function _paramter *****************
;; Defined at:
;;		line 156 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_eeprom_read
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text978
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	156
	global	__size_of_paramter
	__size_of_paramter	equ	__end_of_paramter-_paramter
	
_paramter:	
	opt	stack 3
; Regs used in _paramter: [wreg+status,2+status,0+pclath+cstack]
	line	157
	
l4234:	
;Main.c: 157: c1=(eeprom_read(0)*100)+eeprom_read(1);
	movlw	(0)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	(01h)
	fcall	_eeprom_read
	line	158
;Main.c: 158: c2=(eeprom_read(2)*100)+eeprom_read(3);
	movlw	(02h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movlw	(03h)
	fcall	_eeprom_read
	line	159
	
l1140:	
	return
	opt stack 0
GLOBAL	__end_of_paramter
	__end_of_paramter:
;; =============== function _paramter ends ============

	signat	_paramter,88
	global	_ReadStock
psect	text979,local,class=CODE,delta=2
global __ptext979
__ptext979:

;; *************** function _ReadStock *****************
;; Defined at:
;;		line 107 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/20
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_eeprom_read
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text979
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	107
	global	__size_of_ReadStock
	__size_of_ReadStock	equ	__end_of_ReadStock-_ReadStock
	
_ReadStock:	
	opt	stack 3
; Regs used in _ReadStock: [wreg+status,2+status,0+pclath+cstack]
	line	108
	
l4232:	
;Main.c: 108: RiseStock=(eeprom_read(24)*100)+eeprom_read(25);
	movlw	(018h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movlw	064h
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(_RiseStock+1)
	movf	(0+(?___wmul)),w
	movwf	(_RiseStock)
	movlw	(019h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_RiseStock),f
	skipnc
	incf	(_RiseStock+1),f
	line	109
;Main.c: 109: SugarStock=eeprom_read(26);
	movlw	(01Ah)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_SugarStock)
	clrf	(_SugarStock+1)
	line	110
;Main.c: 110: KeroseneStock=eeprom_read(27);
	movlw	(01Bh)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeroseneStock)
	clrf	(_KeroseneStock+1)
	line	111
	
l1122:	
	return
	opt stack 0
GLOBAL	__end_of_ReadStock
	__end_of_ReadStock:
;; =============== function _ReadStock ends ============

	signat	_ReadStock,88
	global	_ReadAmnt
psect	text980,local,class=CODE,delta=2
global __ptext980
__ptext980:

;; *************** function _ReadAmnt *****************
;; Defined at:
;;		line 91 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_eeprom_read
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text980
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	91
	global	__size_of_ReadAmnt
	__size_of_ReadAmnt	equ	__end_of_ReadAmnt-_ReadAmnt
	
_ReadAmnt:	
	opt	stack 3
; Regs used in _ReadAmnt: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l4230:	
;Main.c: 92: User1amt=(eeprom_read(0)*100)+eeprom_read(1);
	movlw	(0)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
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
	line	93
;Main.c: 93: User2amt=(eeprom_read(8)*100)+eeprom_read(9);
	movlw	(08h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
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
	movlw	(09h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User2amt),f
	skipnc
	incf	(_User2amt+1),f
	line	94
;Main.c: 94: User3amt=(eeprom_read(16)*100)+eeprom_read(17);
	movlw	(010h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
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
	movlw	(011h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User3amt),f
	skipnc
	incf	(_User3amt+1),f
	line	95
;Main.c: 95: User1Rise = eeprom_read(2);
	movlw	(02h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User1Rise)
	line	96
;Main.c: 96: User2Rise = eeprom_read(10);
	movlw	(0Ah)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User2Rise)
	line	97
;Main.c: 97: User3Rise = eeprom_read(18);
	movlw	(012h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User3Rise)
	line	98
;Main.c: 98: User1Kerosene = eeprom_read(4);
	movlw	(04h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User1Kerosene)
	line	99
;Main.c: 99: User2Kerosene = eeprom_read(12);
	movlw	(0Ch)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User2Kerosene)
	line	100
;Main.c: 100: User3Kerosene = eeprom_read(20);
	movlw	(014h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User3Kerosene)
	line	101
;Main.c: 101: User1Sugar = eeprom_read(3);
	movlw	(03h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User1Sugar)
	line	102
;Main.c: 102: User2Sugar = eeprom_read(11);
	movlw	(0Bh)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User2Sugar)
	line	103
;Main.c: 103: User3Sugar = eeprom_read(19);
	movlw	(013h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User3Sugar)
	line	104
	
l1119:	
	return
	opt stack 0
GLOBAL	__end_of_ReadAmnt
	__end_of_ReadAmnt:
;; =============== function _ReadAmnt ends ============

	signat	_ReadAmnt,88
	global	_softreceive
psect	text981,local,class=CODE,delta=2
global __ptext981
__ptext981:

;; *************** function _softreceive *****************
;; Defined at:
;;		line 21 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mask            1    2[BANK0 ] unsigned char 
;;  Data            1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RFID_read
;; This function uses a non-reentrant model
;;
psect	text981
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
	line	21
	global	__size_of_softreceive
	__size_of_softreceive	equ	__end_of_softreceive-_softreceive
	
_softreceive:	
	opt	stack 3
; Regs used in _softreceive: [wreg+status,2+status,0]
	line	24
	
l4206:	
;softuart.c: 22: char mask;
;softuart.c: 23: char Data;
;softuart.c: 24: Data=0;
	clrf	(softreceive@Data)
	line	25
;softuart.c: 25: while(RD0);
	
l992:	
	btfsc	(64/8),(64)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l992
u1560:
	line	26
	
l4208:	
;softuart.c: 26: _delay((unsigned long)(((((1000000/9600)-2)/2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	84
movwf	(??_softreceive+0)+0,f
u1867:
decfsz	(??_softreceive+0)+0,f
	goto	u1867
	nop2	;nop
opt asmopt_on

	line	27
	
l4210:	
;softuart.c: 27: for(mask=0x01;mask!=0;mask=mask<<1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(softreceive@mask)
	incf	(softreceive@mask),f
	line	29
	
l4216:	
;softuart.c: 28: {
;softuart.c: 29: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_softreceive+0)+0,f
u1877:
decfsz	(??_softreceive+0)+0,f
	goto	u1877
	nop2	;nop
opt asmopt_on

	line	30
	
l4218:	
;softuart.c: 30: if(RD0)Data=Data|mask;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u1571
	goto	u1570
u1571:
	goto	l4222
u1570:
	
l4220:	
	movf	(softreceive@mask),w
	iorwf	(softreceive@Data),f
	line	27
	
l4222:	
	clrc
	rlf	(softreceive@mask),f
	
l4224:	
	movf	(softreceive@mask),f
	skipz
	goto	u1581
	goto	u1580
u1581:
	goto	l4216
u1580:
	line	32
	
l4226:	
;softuart.c: 31: }
;softuart.c: 32: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_softreceive+0)+0,f
u1887:
decfsz	(??_softreceive+0)+0,f
	goto	u1887
	nop2	;nop
opt asmopt_on

	line	33
;softuart.c: 33: return Data;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(softreceive@Data),w
	line	34
	
l998:	
	return
	opt stack 0
GLOBAL	__end_of_softreceive
	__end_of_softreceive:
;; =============== function _softreceive ends ============

	signat	_softreceive,89
	global	_SoftWareUart_Init
psect	text982,local,class=CODE,delta=2
global __ptext982
__ptext982:

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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text982
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
	line	10
	global	__size_of_SoftWareUart_Init
	__size_of_SoftWareUart_Init	equ	__end_of_SoftWareUart_Init-_SoftWareUart_Init
	
_SoftWareUart_Init:	
	opt	stack 4
; Regs used in _SoftWareUart_Init: [wreg]
	line	11
	
l4202:	
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
	
l4204:	
;softuart.c: 16: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_SoftWareUart_Init+0)+0,f
u1897:
decfsz	(??_SoftWareUart_Init+0)+0,f
	goto	u1897
	nop2	;nop
opt asmopt_on

	line	17
	
l989:	
	return
	opt stack 0
GLOBAL	__end_of_SoftWareUart_Init
	__end_of_SoftWareUart_Init:
;; =============== function _SoftWareUart_Init ends ============

	signat	_SoftWareUart_Init,88
	global	_enable
psect	text983,local,class=CODE,delta=2
global __ptext983
__ptext983:

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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcdcmd
;;		_lcddata
;; This function uses a non-reentrant model
;;
psect	text983
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	9
	global	__size_of_enable
	__size_of_enable	equ	__end_of_enable-_enable
	
_enable:	
	opt	stack 1
; Regs used in _enable: [wreg]
	line	10
	
l4196:	
;lcd.c: 10: RD3 = 1;
	bsf	(67/8),(67)&7
	line	11
	
l4198:	
;lcd.c: 11: _delay((unsigned long)((4)*(20000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_enable+0)+0+1),f
	movlw	248
movwf	((??_enable+0)+0),f
u1907:
	decfsz	((??_enable+0)+0),f
	goto	u1907
	decfsz	((??_enable+0)+0+1),f
	goto	u1907
	clrwdt
opt asmopt_on

	line	12
	
l4200:	
;lcd.c: 12: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	13
	
l951:	
	return
	opt stack 0
GLOBAL	__end_of_enable
	__end_of_enable:
;; =============== function _enable ends ============

	signat	_enable,88
	global	___awmod
psect	text984,local,class=CODE,delta=2
global __ptext984
__ptext984:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayAmnt
;;		_main
;; This function uses a non-reentrant model
;;
psect	text984
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 2
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l4160:	
	clrf	(___awmod@sign)
	line	9
	
l4162:	
	btfss	(___awmod@dividend+1),7
	goto	u1491
	goto	u1490
u1491:
	goto	l4168
u1490:
	line	10
	
l4164:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l4166:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l4168:	
	btfss	(___awmod@divisor+1),7
	goto	u1501
	goto	u1500
u1501:
	goto	l4172
u1500:
	line	14
	
l4170:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l4172:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1511
	goto	u1510
u1511:
	goto	l4188
u1510:
	line	16
	
l4174:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l4178
	line	18
	
l4176:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l4178:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l4176
u1520:
	line	22
	
l4180:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1535
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1535:
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l4184
u1530:
	line	23
	
l4182:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l4184:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l4186:	
	decfsz	(___awmod@counter),f
	goto	u1541
	goto	u1540
u1541:
	goto	l4180
u1540:
	line	27
	
l4188:	
	movf	(___awmod@sign),w
	skipz
	goto	u1550
	goto	l4192
u1550:
	line	28
	
l4190:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l4192:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l1462:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text985,local,class=CODE,delta=2
global __ptext985
__ptext985:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] int 
;;  dividend        2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[BANK0 ] int 
;;  sign            1   11[BANK0 ] unsigned char 
;;  counter         1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayAmnt
;;		_main
;; This function uses a non-reentrant model
;;
psect	text985
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3400:	
	clrf	(___awdiv@sign)
	line	10
	
l3402:	
	btfss	(___awdiv@divisor+1),7
	goto	u1001
	goto	u1000
u1001:
	goto	l3408
u1000:
	line	11
	
l3404:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l3406:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l3408:	
	btfss	(___awdiv@dividend+1),7
	goto	u1011
	goto	u1010
u1011:
	goto	l3414
u1010:
	line	15
	
l3410:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3412:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l3414:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3416:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1021
	goto	u1020
u1021:
	goto	l3436
u1020:
	line	20
	
l3418:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l3422
	line	22
	
l3420:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l3422:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1031
	goto	u1030
u1031:
	goto	l3420
u1030:
	line	26
	
l3424:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l3426:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1045
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1045:
	skipc
	goto	u1041
	goto	u1040
u1041:
	goto	l3432
u1040:
	line	28
	
l3428:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3430:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l3432:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l3434:	
	decfsz	(___awdiv@counter),f
	goto	u1051
	goto	u1050
u1051:
	goto	l3424
u1050:
	line	34
	
l3436:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1060
	goto	l3440
u1060:
	line	35
	
l3438:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l3440:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l1394:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lbmod
psect	text986,local,class=CODE,delta=2
global __ptext986
__ptext986:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[BANK0 ] unsigned char 
;;  rem             1    4[BANK0 ] unsigned char 
;;  counter         1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;; This function uses a non-reentrant model
;;
psect	text986
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 3
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l4142:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l4144:	
	clrf	(___lbmod@rem)
	line	12
	
l4146:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1465:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1465
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l4148:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l4150:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1471
	goto	u1470
u1471:
	goto	l4154
u1470:
	line	15
	
l4152:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l4154:	
	decfsz	(___lbmod@counter),f
	goto	u1481
	goto	u1480
u1481:
	goto	l4146
u1480:
	line	17
	
l4156:	
	movf	(___lbmod@rem),w
	line	18
	
l1283:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text987,local,class=CODE,delta=2
global __ptext987
__ptext987:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[BANK0 ] unsigned char 
;;  quotient        1    3[BANK0 ] unsigned char 
;;  counter         1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;; This function uses a non-reentrant model
;;
psect	text987
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 3
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l4118:	
	clrf	(___lbdiv@quotient)
	line	10
	
l4120:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u1420
	goto	l4138
u1420:
	line	11
	
l4122:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l4126
	
l1272:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l4124:	
	incf	(___lbdiv@counter),f
	line	12
	
l4126:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1431
	goto	u1430
u1431:
	goto	l1272
u1430:
	line	16
	
l1274:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l4128:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1441
	goto	u1440
u1441:
	goto	l4134
u1440:
	line	19
	
l4130:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l4132:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l4134:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l4136:	
	decfsz	(___lbdiv@counter),f
	goto	u1451
	goto	u1450
u1451:
	goto	l1274
u1450:
	line	25
	
l4138:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1277:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___lwmod
psect	text988,local,class=CODE,delta=2
global __ptext988
__ptext988:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LoadStockToArray
;;		_main
;; This function uses a non-reentrant model
;;
psect	text988
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4098:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1381
	goto	u1380
u1381:
	goto	l4114
u1380:
	line	9
	
l4100:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l4104
	line	11
	
l4102:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l4104:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1391
	goto	u1390
u1391:
	goto	l4102
u1390:
	line	15
	
l4106:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1405
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1405:
	skipc
	goto	u1401
	goto	u1400
u1401:
	goto	l4110
u1400:
	line	16
	
l4108:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l4110:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l4112:	
	decfsz	(___lwmod@counter),f
	goto	u1411
	goto	u1410
u1411:
	goto	l4106
u1410:
	line	20
	
l4114:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l1267:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text989,local,class=CODE,delta=2
global __ptext989
__ptext989:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[BANK0 ] unsigned int 
;;  dividend        2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    9[BANK0 ] unsigned int 
;;  counter         1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LoadStockToArray
;;		_main
;; This function uses a non-reentrant model
;;
psect	text989
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3312:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3314:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u851
	goto	u850
u851:
	goto	l3334
u850:
	line	11
	
l3316:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3320
	line	13
	
l3318:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3320:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u861
	goto	u860
u861:
	goto	l3318
u860:
	line	17
	
l3322:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3324:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u875
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u875:
	skipc
	goto	u871
	goto	u870
u871:
	goto	l3330
u870:
	line	19
	
l3326:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3328:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3330:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3332:	
	decfsz	(___lwdiv@counter),f
	goto	u881
	goto	u880
u881:
	goto	l3322
u880:
	line	25
	
l3334:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l1257:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text990,local,class=CODE,delta=2
global __ptext990
__ptext990:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    3[BANK0 ] unsigned int 
;;  multiplicand    2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadAmnt
;;		_ReadStock
;;		_paramter
;; This function uses a non-reentrant model
;;
psect	text990
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3296:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l3298:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u831
	goto	u830
u831:
	goto	l3302
u830:
	line	8
	
l3300:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l3302:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l3304:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l3306:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u841
	goto	u840
u841:
	goto	l3298
u840:
	line	12
	
l3308:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l1247:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_memcmp
psect	text991,local,class=CODE,delta=2
global __ptext991
__ptext991:

;; *************** function _memcmp *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\memcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              2    0[BANK0 ] PTR const void 
;;		 -> STR_57(6), 
;;  s2              1    2[BANK0 ] PTR const void 
;;		 -> sms(20), 
;;  n               2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text991
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\memcmp.c"
	line	4
	global	__size_of_memcmp
	__size_of_memcmp	equ	__end_of_memcmp-_memcmp
	
_memcmp:	
	opt	stack 4
; Regs used in _memcmp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	5
	
l4082:	
	goto	l4092
	line	6
	
l4084:	
	movf	(memcmp@s2),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_memcmp+0)+0
	movf	(memcmp@s1+1),w
	movwf	btemp+1
	movf	(memcmp@s1),w
	movwf	fsr0
	fcall	stringtab
	xorwf	(??_memcmp+0)+0,w
	skipnz
	goto	u1361
	goto	u1360
u1361:
	goto	l4090
u1360:
	line	7
	
l4086:	
	movf	(memcmp@s1+1),w
	movwf	btemp+1
	movf	(memcmp@s1),w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_memcmp+0)+0
	movf	(memcmp@s2),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	subwf	(??_memcmp+0)+0,w
	movwf	(?_memcmp)
	clrf	(?_memcmp)+1
	skipc
	decf	1+(?_memcmp),f
	
	goto	l1226
	line	8
	
l4090:	
	incf	(memcmp@s1),f
	skipnz
	incf	(memcmp@s1+1),f
	line	9
	incf	(memcmp@s2),f
	line	5
	
l4092:	
	movlw	low(01h)
	subwf	(memcmp@n),f
	movlw	high(01h)
	skipc
	decf	(memcmp@n+1),f
	subwf	(memcmp@n+1),f
	incf	((memcmp@n)),w
	skipnz
	incf	((memcmp@n+1)),w

	skipz
	goto	u1371
	goto	u1370
u1371:
	goto	l4084
u1370:
	line	11
	
l4094:	
	clrf	(?_memcmp)
	clrf	(?_memcmp+1)
	line	12
	
l1226:	
	return
	opt stack 0
GLOBAL	__end_of_memcmp
	__end_of_memcmp:
;; =============== function _memcmp ends ============

	signat	_memcmp,12410
	global	_eeprom_write
psect	text992,local,class=CODE,delta=2
global __ptext992
__ptext992:

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1   14[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/60
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text992
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eewrite.c"
	line	8
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
	opt	stack 4
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	movwf	(eeprom_write@addr)
	line	9
	
l1213:	
	
l1214:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u781
	goto	u780
u781:
	goto	l1214
u780:
	
l3260:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_write@addr),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_write@value),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(268)^0100h	;volatile
	
l3262:	
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank3
	andwf	(396)^0180h,f	;volatile
	
l3264:	
	bcf	(24/8),(24)&7
	
l3266:	
	btfss	(95/8),(95)&7
	goto	u791
	goto	u790
u791:
	goto	l1217
u790:
	
l3268:	
	bsf	(24/8),(24)&7
	
l1217:	
	bcf	(95/8),(95)&7
	bsf	(3170/8)^0180h,(3170)&7
	
l3270:	
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l3272:	
	bsf	(3169/8)^0180h,(3169)&7
	
l3274:	
	bcf	(3170/8)^0180h,(3170)&7
	
l3276:	
	btfss	(24/8),(24)&7
	goto	u801
	goto	u800
u801:
	goto	l1220
u800:
	
l3278:	
	bsf	(95/8),(95)&7
	line	10
	
l1220:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
;; =============== function _eeprom_write ends ============

	signat	_eeprom_write,8312
	global	_strcmp
psect	text993,local,class=CODE,delta=2
global __ptext993
__ptext993:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> card_store(15), 
;;  s2              1    0[BANK0 ] PTR const unsigned char 
;;		 -> User3(13), User2(13), User1(13), 
;; Auto vars:     Size  Location     Type
;;  s1              1    5[BANK0 ] PTR const unsigned char 
;;		 -> card_store(15), 
;;  r               1    4[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text993
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
	opt	stack 4
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
;strcmp@s1 stored from wreg
	movwf	(strcmp@s1)
	line	37
	
l4072:	
	
l4074:	
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
	goto	u1341
	goto	u1340
u1341:
	goto	l4078
u1340:
	
l4076:	
	movf	(strcmp@s1),w
	incf	(strcmp@s1),f
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u1351
	goto	u1350
u1351:
	goto	l4074
u1350:
	line	39
	
l4078:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	line	40
	
l1235:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_uart_init
psect	text994,local,class=CODE,delta=2
global __ptext994
__ptext994:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 147 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text994
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	147
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 4
; Regs used in _uart_init: [wreg+status,2]
	line	148
	
l3246:	
;Main.c: 148: PORTC=0xFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	149
;Main.c: 149: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	150
;Main.c: 150: TXSTA=0X24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	151
;Main.c: 151: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	152
;Main.c: 152: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	153
	
l3248:	
;Main.c: 153: RCREG=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(26)	;volatile
	line	154
	
l1137:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_eeprom_read
psect	text995,local,class=CODE,delta=2
global __ptext995
__ptext995:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 8 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/40
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ReadAmnt
;;		_ReadStock
;;		_paramter
;; This function uses a non-reentrant model
;;
psect	text995
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eeread.c"
	line	8
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 3
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	line	10
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eeprom_read@addr)
	line	9
	
l1192:	
	line	10
# 10 "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eeread.c"
clrwdt ;#
psect	text995
	line	11
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u1331
	goto	u1330
u1331:
	goto	l1192
u1330:
	line	12
	
l4068:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_read@addr),w
	bsf	status, 6	;RP1=1, select bank2
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

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eeprom_read+0)+0
	clrf	(??_eeprom_read+0)+0+1
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	line	13
	
l1194:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_lcdport
psect	text996,local,class=CODE,delta=2
global __ptext996
__ptext996:

;; *************** function _lcdport *****************
;; Defined at:
;;		line 16 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcdcmd
;;		_lcddata
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text996
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	16
	global	__size_of_lcdport
	__size_of_lcdport	equ	__end_of_lcdport-_lcdport
	
_lcdport:	
	opt	stack 1
; Regs used in _lcdport: [wreg]
;lcdport@a stored from wreg
	movwf	(lcdport@a)
	line	17
	
l4058:	
;lcd.c: 17: if(a & 1)
	btfss	(lcdport@a),(0)&7
	goto	u1291
	goto	u1290
u1291:
	goto	l954
u1290:
	line	18
	
l4060:	
;lcd.c: 18: RD4 = 1;
	bsf	(68/8),(68)&7
	goto	l955
	line	19
	
l954:	
	line	20
;lcd.c: 19: else
;lcd.c: 20: RD4 = 0;
	bcf	(68/8),(68)&7
	
l955:	
	line	22
;lcd.c: 22: if(a & 2)
	btfss	(lcdport@a),(1)&7
	goto	u1301
	goto	u1300
u1301:
	goto	l956
u1300:
	line	23
	
l4062:	
;lcd.c: 23: RD5 = 1;
	bsf	(69/8),(69)&7
	goto	l957
	line	24
	
l956:	
	line	25
;lcd.c: 24: else
;lcd.c: 25: RD5 = 0;
	bcf	(69/8),(69)&7
	
l957:	
	line	27
;lcd.c: 27: if(a & 4)
	btfss	(lcdport@a),(2)&7
	goto	u1311
	goto	u1310
u1311:
	goto	l958
u1310:
	line	28
	
l4064:	
;lcd.c: 28: RD6 = 1;
	bsf	(70/8),(70)&7
	goto	l959
	line	29
	
l958:	
	line	30
;lcd.c: 29: else
;lcd.c: 30: RD6 = 0;
	bcf	(70/8),(70)&7
	
l959:	
	line	32
;lcd.c: 32: if(a & 8)
	btfss	(lcdport@a),(3)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l960
u1320:
	line	33
	
l4066:	
;lcd.c: 33: RD7 = 1;
	bsf	(71/8),(71)&7
	goto	l962
	line	34
	
l960:	
	line	35
;lcd.c: 34: else
;lcd.c: 35: RD7 = 0;
	bcf	(71/8),(71)&7
	line	36
	
l962:	
	return
	opt stack 0
GLOBAL	__end_of_lcdport
	__end_of_lcdport:
;; =============== function _lcdport ends ============

	signat	_lcdport,4216
	global	_ISR
psect	text997,local,class=CODE,delta=2
global __ptext997
__ptext997:

;; *************** function _ISR *****************
;; Defined at:
;;		line 65 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_gsm_read_line2
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text997
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	65
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
	opt	stack 1
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+pclath+cstack]
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
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	ljmp	_ISR
psect	text997
	line	66
	
i1l3236:	
;Main.c: 66: if (RCIF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l1107
u74_20:
	line	67
	
i1l3238:	
;Main.c: 67: { sms_indication=0;
	bcf	(_sms_indication/8),(_sms_indication)&7
	line	68
	
i1l3240:	
;Main.c: 68: gsm_read_line2(sms);
	movlw	(_sms)&0ffh
	fcall	_gsm_read_line2
	line	70
	
i1l1107:	
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
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
	global	_gsm_read_line2
psect	text998,local,class=CODE,delta=2
global __ptext998
__ptext998:

;; *************** function _gsm_read_line2 *****************
;; Defined at:
;;		line 48 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    wreg     PTR unsigned char 
;;		 -> sms(20), 
;; Auto vars:     Size  Location     Type
;;  buffer          1    1[COMMON] PTR unsigned char 
;;		 -> sms(20), 
;;  rec_data        1    2[COMMON] unsigned char 
;;  flag            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_receive
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text998
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	48
	global	__size_of_gsm_read_line2
	__size_of_gsm_read_line2	equ	__end_of_gsm_read_line2-_gsm_read_line2
	
_gsm_read_line2:	
	opt	stack 1
; Regs used in _gsm_read_line2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;gsm_read_line2@buffer stored from wreg
	movwf	(gsm_read_line2@buffer)
	line	49
	
i1l3216:	
	clrf	(gsm_read_line2@flag)
	line	53
	
i1l3218:	
;Main.c: 52: {
;Main.c: 53: rec_data = receive();
	fcall	_receive
	movwf	(gsm_read_line2@rec_data)
	line	54
	
i1l3220:	
;Main.c: 54: if(rec_data=='#'){flag=1;rec_data = receive(); }
	movf	(gsm_read_line2@rec_data),w
	xorlw	023h
	skipz
	goto	u71_21
	goto	u71_20
u71_21:
	goto	i1l3226
u71_20:
	
i1l3222:	
	clrf	(gsm_read_line2@flag)
	incf	(gsm_read_line2@flag),f
	
i1l3224:	
	fcall	_receive
	movwf	(gsm_read_line2@rec_data)
	line	55
	
i1l3226:	
;Main.c: 55: if(flag)
	movf	(gsm_read_line2@flag),w
	skipz
	goto	u72_20
	goto	i1l3232
u72_20:
	line	57
	
i1l3228:	
;Main.c: 56: {
;Main.c: 57: *buffer++ = rec_data;
	movf	(gsm_read_line2@buffer),w
	movwf	fsr0
	movf	(gsm_read_line2@rec_data),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l3230:	
	incf	(gsm_read_line2@buffer),f
	line	59
	
i1l3232:	
;Main.c: 58: }
;Main.c: 59: }while (rec_data != '\n');
	movf	(gsm_read_line2@rec_data),w
	xorlw	0Ah
	skipz
	goto	u73_21
	goto	u73_20
u73_21:
	goto	i1l3218
u73_20:
	line	60
	
i1l3234:	
;Main.c: 60: *buffer='\0';
	movf	(gsm_read_line2@buffer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	61
	
i1l1103:	
	return
	opt stack 0
GLOBAL	__end_of_gsm_read_line2
	__end_of_gsm_read_line2:
;; =============== function _gsm_read_line2 ends ============

	signat	_gsm_read_line2,4216
	global	_receive
psect	text999,local,class=CODE,delta=2
global __ptext999
__ptext999:

;; *************** function _receive *****************
;; Defined at:
;;		line 2 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_gsm_read_line2
;; This function uses a non-reentrant model
;;
psect	text999
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	2
	global	__size_of_receive
	__size_of_receive	equ	__end_of_receive-_receive
	
_receive:	
	opt	stack 1
; Regs used in _receive: [wreg]
	line	3
	
i1l3208:	
;UART.C: 3: if(OERR){CREN=0;CREN=1;}
	btfss	(193/8),(193)&7
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l1015
u69_20:
	
i1l3210:	
	bcf	(196/8),(196)&7
	bsf	(196/8),(196)&7
	line	4
	
i1l1015:	
	btfss	(101/8),(101)&7
	goto	u70_21
	goto	u70_20
u70_21:
	goto	i1l1015
u70_20:
	line	5
	
i1l3212:	
;UART.C: 5: return(RCREG);
	movf	(26),w	;volatile
	line	6
	
i1l1018:	
	return
	opt stack 0
GLOBAL	__end_of_receive
	__end_of_receive:
;; =============== function _receive ends ============

	signat	_receive,89
psect	text1000,local,class=CODE,delta=2
global __ptext1000
__ptext1000:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
