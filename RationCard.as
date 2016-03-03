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
# 39 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 39 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,50,10,8,0,0,0 ;#
# 40 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 40 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,30,8,6,0,0,0 ;#
# 41 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 41 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,20,4,5,0,0,0 ;#
# 42 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	psect eeprom_data,class=EEDATA,delta=2,space=2 ;#
# 42 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	db	10,0,255,200,200,0,0,0 ;#
	FNCALL	_main,_uart_init
	FNCALL	_main,_lcd_init
	FNCALL	_main,_paramter
	FNCALL	_main,_SoftWareUart_Init
	FNCALL	_main,_startup
	FNCALL	_main,_gsm_init
	FNCALL	_main,_lcdstring
	FNCALL	_main,_lcdcmd
	FNCALL	_main,_RFID_read
	FNCALL	_main,_strcmp
	FNCALL	_main,_ReadAmnt
	FNCALL	_main,_DisplayAmnt
	FNCALL	_main,_DisplayRise
	FNCALL	_main,_DisplaySugar
	FNCALL	_main,_DisplayKerosene
	FNCALL	_main,_ReadStock
	FNCALL	_main,_LoadStockToArray
	FNCALL	_main,_DisplayStock
	FNCALL	_main,_memcmp
	FNCALL	_main,_SendRiseStock
	FNCALL	_startup,_lcdcmd
	FNCALL	_startup,_lcdstring
	FNCALL	_DisplayStock,_lcdcmd
	FNCALL	_DisplayStock,_lcdstring
	FNCALL	_DisplayStock,_DisplayAmnt
	FNCALL	_gsm_init,_lcdcmd
	FNCALL	_gsm_init,_lcdstring
	FNCALL	_gsm_init,_DelayS
	FNCALL	_gsm_init,_usartstring
	FNCALL	_gsm_init,_transmit
	FNCALL	_gsm_init,_receive
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
	FNCALL	_SendRiseStock,_usartstring
	FNCALL	_SendRiseStock,_transmit
	FNCALL	_SendRiseStock,_receive
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
	FNCALL	_usartstring,_transmit
	FNCALL	_DelayS,_DelayMs
	FNROOT	_main
	FNCALL	_ISR,_gsm_read_line2
	FNCALL	_gsm_read_line2,i1_receive
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
	line	36

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
	line	37

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
	line	38

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
	global	_KeroseneArray
	global	_SugarArray
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
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_OERR
_OERR	set	193
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
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
	global	_TXIF
_TXIF	set	100
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
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	
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
	
STR_33:	
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
	
STR_34:	
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
	
STR_32:	
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
	
STR_36:	
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
	
STR_40:	
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
	
STR_35:	
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
	
STR_44:	
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
	
STR_3:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	13
	retlw	0
psect	stringtext
STR_11	equ	STR_9+0
STR_13	equ	STR_9+0
STR_15	equ	STR_9+0
STR_17	equ	STR_9+0
STR_27	equ	STR_9+0
STR_30	equ	STR_25+0
STR_39	equ	STR_35+0
STR_43	equ	STR_35+0
STR_31	equ	STR_26+0
STR_38	equ	STR_34+0
STR_42	equ	STR_34+0
STR_37	equ	STR_33+0
STR_41	equ	STR_33+0
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
_KeroseneArray:
       ds      4

_SugarArray:
       ds      4

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

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_sms:
       ds      20

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	36
_User1:
       ds      13

psect	dataBANK1
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	37
_User2:
       ds      13

psect	dataBANK1
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	38
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
	global	?_DelayMs
?_DelayMs:	; 0 bytes @ 0x0
	global	?_DelayS
?_DelayS:	; 0 bytes @ 0x0
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
	global	?_transmit
?_transmit:	; 0 bytes @ 0x0
	global	?_gsm_init
?_gsm_init:	; 0 bytes @ 0x0
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
	global	?_SendRiseStock
?_SendRiseStock:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??i1_receive
??i1_receive:	; 0 bytes @ 0x0
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x0
	global	?_softreceive
?_softreceive:	; 1 bytes @ 0x0
	global	?_receive
?_receive:	; 1 bytes @ 0x0
	global	?i1_receive
?i1_receive:	; 1 bytes @ 0x0
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
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x6
	global	??_DelayS
??_DelayS:	; 0 bytes @ 0x6
	global	??_lcdport
??_lcdport:	; 0 bytes @ 0x6
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x6
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x6
	global	??_lcdstring
??_lcdstring:	; 0 bytes @ 0x6
	global	??_receive
??_receive:	; 0 bytes @ 0x6
	global	??_transmit
??_transmit:	; 0 bytes @ 0x6
	global	??_usartstring
??_usartstring:	; 0 bytes @ 0x6
	global	??_gsm_init
??_gsm_init:	; 0 bytes @ 0x6
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
	global	??_SendRiseStock
??_SendRiseStock:	; 0 bytes @ 0x6
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
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x0
	global	lcdport@a
lcdport@a:	; 1 bytes @ 0x0
	global	transmit@data
transmit@data:	; 1 bytes @ 0x0
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
	global	?_usartstring
?_usartstring:	; 0 bytes @ 0x1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x1
	global	softreceive@Data
softreceive@Data:	; 1 bytes @ 0x1
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x1
	global	usartstring@st
usartstring@st:	; 2 bytes @ 0x1
	ds	1
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	DelayS@cnt
DelayS@cnt:	; 1 bytes @ 0x2
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
	global	DelayS@i
DelayS@i:	; 1 bytes @ 0x3
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
	global	_LoadStockToArray$1091
_LoadStockToArray$1091:	; 2 bytes @ 0xC
	ds	2
	global	?_DisplayAmnt
?_DisplayAmnt:	; 0 bytes @ 0xE
	global	DisplayAmnt@Amnt
DisplayAmnt@Amnt:	; 2 bytes @ 0xE
	ds	2
	global	DisplayAmnt@Location
DisplayAmnt@Location:	; 1 bytes @ 0x10
	ds	1
	global	_DisplayAmnt$1090
_DisplayAmnt$1090:	; 2 bytes @ 0x11
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x13
	ds	3
;;Data sizes: Strings 546, constant 11, data 39, bss 72, persistent 0 stack 0
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
;;		 -> STR_44(CODE[6]), 
;;
;; gsm_read_line2@buffer	PTR unsigned char  size(1) Largest target is 20
;;		 -> sms(BANK1[20]), 
;;
;; usartstring@st	PTR const unsigned char  size(2) Largest target is 29
;;		 -> STR_29(CODE[5]), STR_28(CODE[12]), STR_27(CODE[24]), RiseArray(BANK0[5]), 
;;		 -> STR_18(CODE[20]), STR_17(CODE[24]), STR_16(CODE[20]), STR_15(CODE[24]), 
;;		 -> STR_14(CODE[20]), STR_13(CODE[24]), STR_12(CODE[29]), STR_11(CODE[24]), 
;;		 -> STR_10(CODE[27]), STR_9(CODE[24]), STR_7(CODE[19]), STR_6(CODE[11]), 
;;		 -> STR_5(CODE[11]), STR_4(CODE[10]), STR_3(CODE[4]), 
;;
;; lcdstring@a	PTR const unsigned char  size(2) Largest target is 22
;;		 -> STR_43(CODE[21]), STR_42(CODE[21]), STR_41(CODE[21]), STR_40(CODE[21]), 
;;		 -> STR_39(CODE[21]), STR_38(CODE[21]), STR_37(CODE[21]), STR_36(CODE[21]), 
;;		 -> STR_35(CODE[21]), STR_34(CODE[21]), STR_33(CODE[21]), STR_32(CODE[21]), 
;;		 -> STR_31(CODE[18]), STR_30(CODE[18]), STR_26(CODE[18]), STR_25(CODE[18]), 
;;		 -> STR_24(CODE[18]), STR_23(CODE[18]), STR_22(CODE[22]), STR_21(CODE[22]), 
;;		 -> STR_20(CODE[21]), STR_19(CODE[21]), sms(BANK1[20]), STR_8(CODE[10]), 
;;		 -> STR_2(CODE[17]), STR_1(CODE[17]), 
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
;;   _gsm_init->_lcdstring
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
;;   _SendRiseStock->_usartstring
;;   _RFID_read->_softreceive
;;   _lcddata->_enable
;;   _lcdcmd->_enable
;;   _LoadStockToArray->___lwdiv
;;   _paramter->___wmul
;;   _ReadStock->___wmul
;;   _ReadAmnt->___wmul
;;   _usartstring->_transmit
;;   _DelayS->_DelayMs
;;   ___awdiv->___awmod
;;   ___lwdiv->___lwmod
;;   ___wmul->_eeprom_read
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
;; (0) _main                                                 3     3      0   10577
;;                                             19 BANK0      3     3      0
;;                          _uart_init
;;                           _lcd_init
;;                           _paramter
;;                  _SoftWareUart_Init
;;                            _startup
;;                           _gsm_init
;;                          _lcdstring
;;                             _lcdcmd
;;                          _RFID_read
;;                             _strcmp
;;                           _ReadAmnt
;;                        _DisplayAmnt
;;                        _DisplayRise
;;                       _DisplaySugar
;;                    _DisplayKerosene
;;                          _ReadStock
;;                   _LoadStockToArray
;;                       _DisplayStock
;;                             _memcmp
;;                      _SendRiseStock
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
;; (1) _gsm_init                                             1     1      0     842
;;                             _lcdcmd
;;                          _lcdstring
;;                             _DelayS
;;                        _usartstring
;;                           _transmit
;;                            _receive
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
;; (1) _SendRiseStock                                        1     1      0     127
;;                        _usartstring
;;                           _transmit
;;                            _receive
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
;; (1) _LoadStockToArray                                     2     2      0     428
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
;; (2) _usartstring                                          2     0      2      96
;;                                              1 BANK0      2     0      2
;;                           _transmit
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
;; (2) _DelayS                                               2     2      0     130
;;                                              2 BANK0      2     2      0
;;                            _DelayMs
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
;; (1) _strcmp                                               6     4      2     127
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _eeprom_read                                          3     3      0      31
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _transmit                                             1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _receive                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _lcdport                                              1     1      0     124
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayMs                                              2     2      0      65
;;                                              0 BANK0      2     2      0
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
;;                          i1_receive
;; ---------------------------------------------------------------------------------
;; (7) i1_receive                                            0     0      0       0
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
;;   _gsm_init
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;     _lcdstring
;;       _lcddata
;;         _lcdport
;;         _enable
;;     _DelayS
;;       _DelayMs
;;     _usartstring
;;       _transmit
;;     _transmit
;;     _receive
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
;;   _ReadStock
;;     _eeprom_read
;;     ___wmul
;;       _eeprom_read (ARG)
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
;;   _SendRiseStock
;;     _usartstring
;;       _transmit
;;     _transmit
;;     _receive
;;
;; _ISR (ROOT)
;;   _gsm_read_line2
;;     i1_receive
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
;;		line 204 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
;;		On exit  : 60/20
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
;;		_gsm_init
;;		_lcdstring
;;		_lcdcmd
;;		_RFID_read
;;		_strcmp
;;		_ReadAmnt
;;		_DisplayAmnt
;;		_DisplayRise
;;		_DisplaySugar
;;		_DisplayKerosene
;;		_ReadStock
;;		_LoadStockToArray
;;		_DisplayStock
;;		_memcmp
;;		_SendRiseStock
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	204
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	205
	
l4074:	
;Main.c: 205: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	206
;Main.c: 206: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	line	207
	
l4076:	
;Main.c: 207: TRISD=0X01;
	movlw	(01h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	208
	
l4078:	
;Main.c: 208: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(8)	;volatile
	line	209
;Main.c: 209: TRISC=0X8F;
	movlw	(08Fh)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	210
	
l4080:	
;Main.c: 210: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(7)	;volatile
	line	211
	
l4082:	
;Main.c: 211: INTCON=0xC0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	212
	
l4084:	
;Main.c: 212: uart_init();
	fcall	_uart_init
	line	213
	
l4086:	
;Main.c: 213: lcd_init();
	fcall	_lcd_init
	line	214
	
l4088:	
;Main.c: 214: paramter();
	fcall	_paramter
	line	215
	
l4090:	
;Main.c: 215: SoftWareUart_Init();
	fcall	_SoftWareUart_Init
	line	216
	
l4092:	
;Main.c: 216: startup();
	fcall	_startup
	line	217
	
l4094:	
;Main.c: 217: gsm_init();
	fcall	_gsm_init
	line	218
	
l4096:	
;Main.c: 218: PIE1=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(140)^080h	;volatile
	line	223
	
l4098:	
;Main.c: 221: {
;Main.c: 223: if(!RC0)
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u1971
	goto	u1970
u1971:
	goto	l4110
u1970:
	line	225
	
l4100:	
;Main.c: 224: {
;Main.c: 225: lcdstring("PLEASE TAP YOUR  ");
	movlw	low(STR_30|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_30|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	226
	
l4102:	
;Main.c: 226: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	227
	
l4104:	
;Main.c: 227: lcdstring("SMART CARD       ");
	movlw	low(STR_31|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_31|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	228
	
l4106:	
;Main.c: 228: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2047:
	decfsz	((??_main+0)+0),f
	goto	u2047
	decfsz	((??_main+0)+0+1),f
	goto	u2047
	decfsz	((??_main+0)+0+2),f
	goto	u2047
opt asmopt_on

	line	229
	
l4108:	
;Main.c: 229: rfid_flag=0;
	bcf	(_rfid_flag/8),(_rfid_flag)&7
	line	231
	
l4110:	
;Main.c: 230: }
;Main.c: 231: RFID_read();
	fcall	_RFID_read
	line	232
	
l4112:	
;Main.c: 232: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	233
	
l4114:	
;Main.c: 233: lcdstring(sms);
	movlw	(_sms&0ffh)
	movwf	(?_lcdstring)
	movlw	(0x1/2)
	movwf	(?_lcdstring+1)
	fcall	_lcdstring
	line	236
	
l4116:	
;Main.c: 236: if(strcmp(card_store,User1)==0)
	movlw	(_User1)&0ffh
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u1981
	goto	u1980
u1981:
	goto	l4122
u1980:
	line	238
	
l4118:	
;Main.c: 237: {
;Main.c: 238: User=1;
	clrf	(_User)
	incf	(_User),f
	clrf	(_User+1)
	line	239
	
l4120:	
;Main.c: 239: card_store[0]=0;
	clrf	(_card_store)
	line	240
;Main.c: 240: }
	goto	l4196
	line	241
	
l4122:	
;Main.c: 241: else if(strcmp(card_store,User2)==0)
	movlw	(_User2)&0ffh
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u1991
	goto	u1990
u1991:
	goto	l4128
u1990:
	line	243
	
l4124:	
;Main.c: 242: {
;Main.c: 243: User=2;
	movlw	02h
	movwf	(_User)
	clrf	(_User+1)
	goto	l4120
	line	246
	
l4128:	
;Main.c: 246: else if(strcmp(card_store,User3)==0)
	movlw	(_User3)&0ffh
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u2001
	goto	u2000
u2001:
	goto	l1159
u2000:
	line	248
	
l4130:	
;Main.c: 247: {
;Main.c: 248: User=3;
	movlw	03h
	movwf	(_User)
	clrf	(_User+1)
	goto	l4120
	line	252
	
l1159:	
;Main.c: 250: }
;Main.c: 252: switch(User)
	goto	l4196
	line	256
	
l4134:	
;Main.c: 255: {
;Main.c: 256: ReadAmnt();
	fcall	_ReadAmnt
	line	257
;Main.c: 257: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	258
	
l4136:	
;Main.c: 258: lcdstring("USER1 AMOUNT:       ");
	movlw	low(STR_32|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_32|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	259
	
l4138:	
;Main.c: 259: DisplayAmnt(0X8D,User1amt);
	movf	(_User1amt+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_User1amt),w
	movwf	(?_DisplayAmnt)
	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	260
;Main.c: 260: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	261
	
l4140:	
;Main.c: 261: lcdstring("RISE:   Kg          ");
	movlw	low(STR_33|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_33|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	262
	
l4142:	
;Main.c: 262: DisplayRise(0XC5,User1Rise);
	movf	(_User1Rise),w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	263
;Main.c: 263: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	264
	
l4144:	
;Main.c: 264: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_34|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_34|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	265
	
l4146:	
;Main.c: 265: DisplaySugar(0x9A,User1Sugar);
	movf	(_User1Sugar),w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	266
;Main.c: 266: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	267
	
l4148:	
;Main.c: 267: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_35|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_35|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	268
	
l4150:	
;Main.c: 268: DisplayKerosene(0XDD,User1Kerosene);
	movf	(_User1Kerosene),w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	269
	
l4152:	
;Main.c: 269: User=0;
	clrf	(_User)
	clrf	(_User+1)
	line	270
;Main.c: 270: break;
	goto	l4198
	line	274
	
l4154:	
;Main.c: 273: {
;Main.c: 274: ReadAmnt();
	fcall	_ReadAmnt
	line	275
;Main.c: 275: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	276
	
l4156:	
;Main.c: 276: lcdstring("USER2 AMOUNT:       ");
	movlw	low(STR_36|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_36|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	277
	
l4158:	
;Main.c: 277: DisplayAmnt(0X8D,User2amt);
	movf	(_User2amt+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_User2amt),w
	movwf	(?_DisplayAmnt)
	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	278
;Main.c: 278: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	279
	
l4160:	
;Main.c: 279: lcdstring("RISE:   Kg          ");
	movlw	low(STR_37|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_37|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	280
	
l4162:	
;Main.c: 280: DisplayRise(0XC5,User2Rise);
	movf	(_User2Rise),w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	281
;Main.c: 281: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	282
	
l4164:	
;Main.c: 282: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_38|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_38|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	283
	
l4166:	
;Main.c: 283: DisplaySugar(0x9A,User2Sugar);
	movf	(_User2Sugar),w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	284
;Main.c: 284: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	285
	
l4168:	
;Main.c: 285: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_39|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_39|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	286
	
l4170:	
;Main.c: 286: DisplayKerosene(0XDD,User2Kerosene);
	movf	(_User2Kerosene),w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	goto	l4152
	line	292
	
l4174:	
;Main.c: 291: {
;Main.c: 292: ReadAmnt();
	fcall	_ReadAmnt
	line	293
;Main.c: 293: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	294
	
l4176:	
;Main.c: 294: lcdstring("USER3 AMOUNT:       ");
	movlw	low(STR_40|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_40|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	295
	
l4178:	
;Main.c: 295: DisplayAmnt(0X8D,User3amt);
	movf	(_User3amt+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_User3amt),w
	movwf	(?_DisplayAmnt)
	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	296
;Main.c: 296: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	297
	
l4180:	
;Main.c: 297: lcdstring("RISE:   Kg          ");
	movlw	low(STR_41|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_41|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	298
	
l4182:	
;Main.c: 298: DisplayRise(0XC5,User3Rise);
	movf	(_User3Rise),w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	299
;Main.c: 299: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	300
	
l4184:	
;Main.c: 300: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_42|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_42|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	301
	
l4186:	
;Main.c: 301: DisplaySugar(0x9A,User3Sugar);
	movf	(_User3Sugar),w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	302
;Main.c: 302: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	303
	
l4188:	
;Main.c: 303: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_43|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_43|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	304
	
l4190:	
;Main.c: 304: DisplayKerosene(0XDD,User3Kerosene);
	movf	(_User3Kerosene),w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	goto	l4152
	line	252
	
l4196:	
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
	goto	l4240
	goto	l4198
	
l4240:	
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
	goto	l4134
	xorlw	2^1	; case 2
	skipnz
	goto	l4154
	xorlw	3^2	; case 3
	skipnz
	goto	l4174
	goto	l4198

	line	309
	
l4198:	
;Main.c: 309: ReadStock();
	fcall	_ReadStock
	line	310
	
l4200:	
;Main.c: 310: LoadStockToArray();
	fcall	_LoadStockToArray
	line	311
	
l4202:	
;Main.c: 311: if(RC1)
	btfss	(57/8),(57)&7
	goto	u2011
	goto	u2010
u2011:
	goto	l4206
u2010:
	line	312
	
l4204:	
;Main.c: 312: DisplayStock();
	fcall	_DisplayStock
	line	313
	
l4206:	
;Main.c: 313: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_main+0)+0+2),f
movlw	163
movwf	((??_main+0)+0+1),f
	movlw	189
movwf	((??_main+0)+0),f
u2057:
	decfsz	((??_main+0)+0),f
	goto	u2057
	decfsz	((??_main+0)+0+1),f
	goto	u2057
	decfsz	((??_main+0)+0+2),f
	goto	u2057
	clrwdt
opt asmopt_on

	line	315
	
l4208:	
;Main.c: 315: if((memcmp("STOCK",&sms,5)==0))
	movlw	low(STR_44|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_memcmp)
	movlw	high(STR_44|8000h)
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
	goto	u2021
	goto	u2020
u2021:
	goto	l4098
u2020:
	line	317
	
l4210:	
;Main.c: 316: {
;Main.c: 317: if(!sms_indication)
	btfsc	(_sms_indication/8),(_sms_indication)&7
	goto	u2031
	goto	u2030
u2031:
	goto	l4098
u2030:
	line	319
	
l4212:	
;Main.c: 318: {
;Main.c: 319: SendRiseStock();
	fcall	_SendRiseStock
	line	320
	
l4214:	
;Main.c: 320: sms_indication=1;
	bsf	(_sms_indication/8),(_sms_indication)&7
	goto	l4098
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	325
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_startup
psect	text1124,local,class=CODE,delta=2
global __ptext1124
__ptext1124:

;; *************** function _startup *****************
;; Defined at:
;;		line 159 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1124
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	159
	global	__size_of_startup
	__size_of_startup	equ	__end_of_startup-_startup
	
_startup:	
	opt	stack 1
; Regs used in _startup: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	160
	
l4054:	
;Main.c: 160: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	161
	
l4056:	
;Main.c: 161: lcdstring("AUTOMATIC RATION ");
	movlw	low(STR_23|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_23|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	162
	
l4058:	
;Main.c: 162: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	163
;Main.c: 163: lcdstring("   CARD SYSTEM   ");
	movlw	low(STR_24|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_24|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	164
	
l4060:	
;Main.c: 164: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_startup+0)+0+2),f
movlw	69
movwf	((??_startup+0)+0+1),f
	movlw	126
movwf	((??_startup+0)+0),f
u2067:
	decfsz	((??_startup+0)+0),f
	goto	u2067
	decfsz	((??_startup+0)+0+1),f
	goto	u2067
	decfsz	((??_startup+0)+0+2),f
	goto	u2067
opt asmopt_on

	line	165
	
l4062:	
;Main.c: 165: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	166
	
l4064:	
;Main.c: 166: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_startup+0)+0+2),f
movlw	163
movwf	((??_startup+0)+0+1),f
	movlw	189
movwf	((??_startup+0)+0),f
u2077:
	decfsz	((??_startup+0)+0),f
	goto	u2077
	decfsz	((??_startup+0)+0+1),f
	goto	u2077
	decfsz	((??_startup+0)+0+2),f
	goto	u2077
	clrwdt
opt asmopt_on

	line	167
	
l4066:	
;Main.c: 167: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	168
;Main.c: 168: lcdstring("PLEASE TAP YOUR  ");
	movlw	low(STR_25|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_25|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	169
	
l4068:	
;Main.c: 169: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	170
	
l4070:	
;Main.c: 170: lcdstring("SMART CARD       ");
	movlw	low(STR_26|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_26|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	171
	
l4072:	
;Main.c: 171: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_startup+0)+0+2),f
movlw	69
movwf	((??_startup+0)+0+1),f
	movlw	126
movwf	((??_startup+0)+0),f
u2087:
	decfsz	((??_startup+0)+0),f
	goto	u2087
	decfsz	((??_startup+0)+0+1),f
	goto	u2087
	decfsz	((??_startup+0)+0+2),f
	goto	u2087
opt asmopt_on

	line	172
	
l1141:	
	return
	opt stack 0
GLOBAL	__end_of_startup
	__end_of_startup:
;; =============== function _startup ends ============

	signat	_startup,88
	global	_DisplayStock
psect	text1125,local,class=CODE,delta=2
global __ptext1125
__ptext1125:

;; *************** function _DisplayStock *****************
;; Defined at:
;;		line 112 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1125
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	112
	global	__size_of_DisplayStock
	__size_of_DisplayStock	equ	__end_of_DisplayStock-_DisplayStock
	
_DisplayStock:	
	opt	stack 1
; Regs used in _DisplayStock: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	113
	
l4040:	
;Main.c: 113: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	114
	
l4042:	
;Main.c: 114: lcdstring("    STOCK DETAILS   ");
	movlw	low(STR_19|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_19|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	115
	
l4044:	
;Main.c: 115: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	116
;Main.c: 116: lcdstring("RISE:      Kg       ");
	movlw	low(STR_20|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_20|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	117
;Main.c: 117: DisplayAmnt(0XC5,RiseStock);
	movf	(_RiseStock+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_RiseStock),w
	movwf	(?_DisplayAmnt)
	movlw	(0C5h)
	fcall	_DisplayAmnt
	line	118
	
l4046:	
;Main.c: 118: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	119
	
l4048:	
;Main.c: 119: lcdstring("SUGAR:    Kg         ");
	movlw	low(STR_21|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_21|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	120
	
l4050:	
;Main.c: 120: DisplayAmnt(0x9A,SugarStock);
	movf	(_SugarStock+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_SugarStock),w
	movwf	(?_DisplayAmnt)
	movlw	(09Ah)
	fcall	_DisplayAmnt
	line	121
	
l4052:	
;Main.c: 121: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	122
;Main.c: 122: lcdstring("KEROSENE:     Lts    ");
	movlw	low(STR_22|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_22|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	123
;Main.c: 123: DisplayAmnt(0XDD,KeroseneStock);
	movf	(_KeroseneStock+1),w
	movwf	(?_DisplayAmnt+1)
	movf	(_KeroseneStock),w
	movwf	(?_DisplayAmnt)
	movlw	(0DDh)
	fcall	_DisplayAmnt
	line	124
	
l1123:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayStock
	__end_of_DisplayStock:
;; =============== function _DisplayStock ends ============

	signat	_DisplayStock,88
	global	_gsm_init
psect	text1126,local,class=CODE,delta=2
global __ptext1126
__ptext1126:

;; *************** function _gsm_init *****************
;; Defined at:
;;		line 29 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  d               1    0        unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_lcdcmd
;;		_lcdstring
;;		_DelayS
;;		_usartstring
;;		_transmit
;;		_receive
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1126
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	29
	global	__size_of_gsm_init
	__size_of_gsm_init	equ	__end_of_gsm_init-_gsm_init
	
_gsm_init:	
	opt	stack 1
; Regs used in _gsm_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l3994:	
;UART.C: 30: unsigned char d;
;UART.C: 31: lcdcmd(0X80);
	movlw	(080h)
	fcall	_lcdcmd
	line	32
	
l3996:	
;UART.C: 32: lcdstring("GSM INITIALIZING");
	movlw	low(STR_1|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_1|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	33
	
l3998:	
;UART.C: 33: lcdcmd(0XC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	34
;UART.C: 34: lcdstring("PLS WAIT........");
	movlw	low(STR_2|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_2|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	35
	
l4000:	
;UART.C: 35: DelayS(5);
	movlw	(05h)
	fcall	_DelayS
	line	36
	
l4002:	
;UART.C: 36: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	38
;UART.C: 38: usartstring("AT\r");
	movlw	low(STR_3|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_3|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	39
	
l4004:	
;UART.C: 39: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	40
;UART.C: 40: while((d=receive())!='K');
	
l4006:	
	fcall	_receive
	xorlw	04Bh
	skipz
	goto	u1921
	goto	u1920
u1921:
	goto	l4006
u1920:
	line	42
	
l4008:	
;UART.C: 42: usartstring("AT+CPIN?\r");
	movlw	low(STR_4|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_4|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	43
	
l4010:	
;UART.C: 43: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	44
;UART.C: 44: while((d=receive())!='K');
	
l4012:	
	fcall	_receive
	xorlw	04Bh
	skipz
	goto	u1931
	goto	u1930
u1931:
	goto	l4012
u1930:
	line	46
	
l4014:	
;UART.C: 46: usartstring("AT+CSDH=1\r");
	movlw	low(STR_5|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_5|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	47
	
l4016:	
;UART.C: 47: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	48
;UART.C: 48: while((d=receive())!='K');
	
l4018:	
	fcall	_receive
	xorlw	04Bh
	skipz
	goto	u1941
	goto	u1940
u1941:
	goto	l4018
u1940:
	line	50
	
l4020:	
;UART.C: 50: usartstring("AT+CMGF=1\r");
	movlw	low(STR_6|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_6|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	51
	
l4022:	
;UART.C: 51: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	52
;UART.C: 52: while((d=receive())!='K');
	
l4024:	
	fcall	_receive
	xorlw	04Bh
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l4024
u1950:
	line	54
	
l4026:	
;UART.C: 54: usartstring("AT+CNMI=2,2,0,0,0\r");
	movlw	low(STR_7|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_7|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	55
	
l4028:	
;UART.C: 55: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	56
;UART.C: 56: while((d=receive())!='K');
	
l4030:	
	fcall	_receive
	xorlw	04Bh
	skipz
	goto	u1961
	goto	u1960
u1961:
	goto	l4030
u1960:
	line	57
	
l4032:	
;UART.C: 57: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	58
	
l4034:	
;UART.C: 58: lcdstring("GSM READY");
	movlw	low(STR_8|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_8|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	59
	
l4036:	
;UART.C: 59: DelayS(10);
	movlw	(0Ah)
	fcall	_DelayS
	line	60
	
l4038:	
;UART.C: 60: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	61
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_gsm_init
	__end_of_gsm_init:
;; =============== function _gsm_init ends ============

	signat	_gsm_init,88
	global	_DisplayKerosene
psect	text1127,local,class=CODE,delta=2
global __ptext1127
__ptext1127:

;; *************** function _DisplayKerosene *****************
;; Defined at:
;;		line 138 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1127
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	138
	global	__size_of_DisplayKerosene
	__size_of_DisplayKerosene	equ	__end_of_DisplayKerosene-_DisplayKerosene
	
_DisplayKerosene:	
	opt	stack 2
; Regs used in _DisplayKerosene: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayKerosene@Location stored from wreg
	movwf	(DisplayKerosene@Location)
	line	139
	
l3988:	
;Main.c: 139: lcdcmd(Location);
	movf	(DisplayKerosene@Location),w
	fcall	_lcdcmd
	line	140
	
l3990:	
;Main.c: 140: lcddata(digit[Kerosene/10]);
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
	line	141
	
l3992:	
;Main.c: 141: lcddata(digit[Kerosene%10]);
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
	line	142
	
l1132:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayKerosene
	__end_of_DisplayKerosene:
;; =============== function _DisplayKerosene ends ============

	signat	_DisplayKerosene,8312
	global	_DisplayRise
psect	text1128,local,class=CODE,delta=2
global __ptext1128
__ptext1128:

;; *************** function _DisplayRise *****************
;; Defined at:
;;		line 132 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1128
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	132
	global	__size_of_DisplayRise
	__size_of_DisplayRise	equ	__end_of_DisplayRise-_DisplayRise
	
_DisplayRise:	
	opt	stack 2
; Regs used in _DisplayRise: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayRise@Location stored from wreg
	movwf	(DisplayRise@Location)
	line	133
	
l3982:	
;Main.c: 133: lcdcmd(Location);
	movf	(DisplayRise@Location),w
	fcall	_lcdcmd
	line	134
	
l3984:	
;Main.c: 134: lcddata(digit[Rise/10]);
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
	line	135
	
l3986:	
;Main.c: 135: lcddata(digit[Rise%10]);
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
	line	136
	
l1129:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayRise
	__end_of_DisplayRise:
;; =============== function _DisplayRise ends ============

	signat	_DisplayRise,8312
	global	_DisplaySugar
psect	text1129,local,class=CODE,delta=2
global __ptext1129
__ptext1129:

;; *************** function _DisplaySugar *****************
;; Defined at:
;;		line 126 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1129
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	126
	global	__size_of_DisplaySugar
	__size_of_DisplaySugar	equ	__end_of_DisplaySugar-_DisplaySugar
	
_DisplaySugar:	
	opt	stack 2
; Regs used in _DisplaySugar: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplaySugar@Location stored from wreg
	movwf	(DisplaySugar@Location)
	line	127
	
l3976:	
;Main.c: 127: lcdcmd(Location);
	movf	(DisplaySugar@Location),w
	fcall	_lcdcmd
	line	128
	
l3978:	
;Main.c: 128: lcddata(digit[Sugar/10]);
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
	line	129
	
l3980:	
;Main.c: 129: lcddata(digit[Sugar%10]);
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
	line	130
	
l1126:	
	return
	opt stack 0
GLOBAL	__end_of_DisplaySugar
	__end_of_DisplaySugar:
;; =============== function _DisplaySugar ends ============

	signat	_DisplaySugar,8312
	global	_DisplayAmnt
psect	text1130,local,class=CODE,delta=2
global __ptext1130
__ptext1130:

;; *************** function _DisplayAmnt *****************
;; Defined at:
;;		line 80 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1130
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	80
	global	__size_of_DisplayAmnt
	__size_of_DisplayAmnt	equ	__end_of_DisplayAmnt-_DisplayAmnt
	
_DisplayAmnt:	
	opt	stack 1
; Regs used in _DisplayAmnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayAmnt@Location stored from wreg
	movwf	(DisplayAmnt@Location)
	line	81
	
l3966:	
;Main.c: 81: lcdcmd(Location);
	movf	(DisplayAmnt@Location),w
	fcall	_lcdcmd
	line	82
	
l3968:	
;Main.c: 82: lcddata(digit[Amnt/1000]);
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
	line	83
	
l3970:	
;Main.c: 83: lcddata(digit[Amnt%1000/100]);
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
	line	84
	
l3972:	
;Main.c: 84: lcddata(digit[Amnt%1000%100/10]);
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
	line	85
	
l3974:	
;Main.c: 85: lcddata(digit[Amnt%1000%100%10]);
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
	movwf	(_DisplayAmnt$1090+1)
	movf	(0+(?___awmod)),w
	movwf	(_DisplayAmnt$1090)
;Main.c: 85: lcddata(digit[Amnt%1000%100%10]);
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(_DisplayAmnt$1090+1),w
	movwf	1+(?___awmod)+02h
	movf	(_DisplayAmnt$1090),w
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
	line	86
	
l1114:	
	return
	opt stack 0
GLOBAL	__end_of_DisplayAmnt
	__end_of_DisplayAmnt:
;; =============== function _DisplayAmnt ends ============

	signat	_DisplayAmnt,8312
	global	_lcdstring
psect	text1131,local,class=CODE,delta=2
global __ptext1131
__ptext1131:

;; *************** function _lcdstring *****************
;; Defined at:
;;		line 90 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               2    5[BANK0 ] PTR const unsigned char 
;;		 -> STR_43(21), STR_42(21), STR_41(21), STR_40(21), 
;;		 -> STR_39(21), STR_38(21), STR_37(21), STR_36(21), 
;;		 -> STR_35(21), STR_34(21), STR_33(21), STR_32(21), 
;;		 -> STR_31(18), STR_30(18), STR_26(18), STR_25(18), 
;;		 -> STR_24(18), STR_23(18), STR_22(22), STR_21(22), 
;;		 -> STR_20(21), STR_19(21), sms(20), STR_8(10), 
;;		 -> STR_2(17), STR_1(17), 
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
;;		_gsm_init
;;		_DisplayStock
;;		_startup
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1131
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	90
	global	__size_of_lcdstring
	__size_of_lcdstring	equ	__end_of_lcdstring-_lcdstring
	
_lcdstring:	
	opt	stack 1
; Regs used in _lcdstring: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	91
	
l3958:	
;lcd.c: 91: while(*a)
	goto	l3964
	line	93
	
l3960:	
;lcd.c: 92: {
;lcd.c: 93: lcddata(*a++);
	movf	(lcdstring@a+1),w
	movwf	btemp+1
	movf	(lcdstring@a),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcddata
	
l3962:	
	incf	(lcdstring@a),f
	skipnz
	incf	(lcdstring@a+1),f
	line	91
	
l3964:	
	movf	(lcdstring@a+1),w
	movwf	btemp+1
	movf	(lcdstring@a),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u1911
	goto	u1910
u1911:
	goto	l3960
u1910:
	line	95
	
l978:	
	return
	opt stack 0
GLOBAL	__end_of_lcdstring
	__end_of_lcdstring:
;; =============== function _lcdstring ends ============

	signat	_lcdstring,4216
	global	_lcd_init
psect	text1132,local,class=CODE,delta=2
global __ptext1132
__ptext1132:

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
psect	text1132
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	71
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 2
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	72
	
l3948:	
;lcd.c: 72: lcdport(0x00);
	movlw	(0)
	fcall	_lcdport
	line	73
	
l3950:	
;lcd.c: 73: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u2097:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2097
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2097
	nop2
opt asmopt_on

	line	74
	
l3952:	
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
u2107:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2107
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2107
	clrwdt
opt asmopt_on

	line	76
	
l3954:	
;lcd.c: 76: lcdcmd(0x03);
	movlw	(03h)
	fcall	_lcdcmd
	line	77
	
l3956:	
;lcd.c: 77: _delay((unsigned long)((11)*(20000000/4000.0)));
	opt asmopt_off
movlw	72
movwf	((??_lcd_init+0)+0+1),f
	movlw	108
movwf	((??_lcd_init+0)+0),f
u2117:
	decfsz	((??_lcd_init+0)+0),f
	goto	u2117
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u2117
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
	
l972:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_init
	__end_of_lcd_init:
;; =============== function _lcd_init ends ============

	signat	_lcd_init,88
	global	_SendRiseStock
psect	text1133,local,class=CODE,delta=2
global __ptext1133
__ptext1133:

;; *************** function _SendRiseStock *****************
;; Defined at:
;;		line 189 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_usartstring
;;		_transmit
;;		_receive
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1133
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	189
	global	__size_of_SendRiseStock
	__size_of_SendRiseStock	equ	__end_of_SendRiseStock-_SendRiseStock
	
_SendRiseStock:	
	opt	stack 2
; Regs used in _SendRiseStock: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	191
	
l3932:	
;Main.c: 190: unsigned char d;
;Main.c: 191: PIE1=0X00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(140)^080h	;volatile
	line	192
	
l3934:	
;Main.c: 192: usartstring("AT+CMGS=\"+919790080510\"");
	movlw	low(STR_27|8000h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_usartstring)
	movlw	high(STR_27|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	193
	
l3936:	
;Main.c: 193: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	194
;Main.c: 194: while((d=receive())!='>');
	
l3938:	
	fcall	_receive
	xorlw	03Eh
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l3938
u1890:
	line	195
	
l3940:	
;Main.c: 195: usartstring("Rise Stock:");
	movlw	low(STR_28|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_28|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	196
;Main.c: 196: usartstring(RiseArray);
	movlw	(_RiseArray&0ffh)
	movwf	(?_usartstring)
	movlw	(0x0/2)
	movwf	(?_usartstring+1)
	fcall	_usartstring
	line	197
;Main.c: 197: usartstring(" Kgs");
	movlw	low(STR_29|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_29|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	198
	
l3942:	
;Main.c: 198: transmit(0x1A);
	movlw	(01Ah)
	fcall	_transmit
	line	199
;Main.c: 199: while((d=receive())!='K');
	
l3944:	
	fcall	_receive
	xorlw	04Bh
	skipz
	goto	u1901
	goto	u1900
u1901:
	goto	l3944
u1900:
	line	200
	
l3946:	
;Main.c: 200: PIE1=0X20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(140)^080h	;volatile
	line	201
	
l1153:	
	return
	opt stack 0
GLOBAL	__end_of_SendRiseStock
	__end_of_SendRiseStock:
;; =============== function _SendRiseStock ends ============

	signat	_SendRiseStock,88
	global	_RFID_read
psect	text1134,local,class=CODE,delta=2
global __ptext1134
__ptext1134:

;; *************** function _RFID_read *****************
;; Defined at:
;;		line 71 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1134
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	71
	global	__size_of_RFID_read
	__size_of_RFID_read	equ	__end_of_RFID_read-_RFID_read
	
_RFID_read:	
	opt	stack 3
; Regs used in _RFID_read: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	72
	
l3918:	
;Main.c: 72: if(!rfid_flag)
	btfsc	(_rfid_flag/8),(_rfid_flag)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l1111
u1870:
	line	74
	
l3920:	
;Main.c: 73: {
;Main.c: 74: for(int i=0;i<12;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(RFID_read@i)
	clrf	(RFID_read@i+1)
	line	75
	
l3926:	
;Main.c: 75: {card_store[i]=softreceive();}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(RFID_read@i),w
	addlw	_card_store&0ffh
	movwf	fsr0
	fcall	_softreceive
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	74
	
l3928:	
	incf	(RFID_read@i),f
	skipnz
	incf	(RFID_read@i+1),f
	
l3930:	
	movf	(RFID_read@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u1885
	movlw	low(0Ch)
	subwf	(RFID_read@i),w
u1885:

	skipc
	goto	u1881
	goto	u1880
u1881:
	goto	l3926
u1880:
	
l1110:	
	line	76
;Main.c: 76: rfid_flag=1;
	bsf	(_rfid_flag/8),(_rfid_flag)&7
	line	78
	
l1111:	
	return
	opt stack 0
GLOBAL	__end_of_RFID_read
	__end_of_RFID_read:
;; =============== function _RFID_read ends ============

	signat	_RFID_read,88
	global	_lcddata
psect	text1135,local,class=CODE,delta=2
global __ptext1135
__ptext1135:

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
psect	text1135
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
	
l3900:	
;lcd.c: 52: unsigned char y,z;
;lcd.c: 53: z=a>>4&0x0F;
	swapf	(lcddata@a),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(lcddata@z)
	movlw	(0Fh)
	andwf	(lcddata@z),f
	line	54
	
l3902:	
;lcd.c: 54: y=a&0x0F;
	movf	(lcddata@a),w
	movwf	(lcddata@y)
	
l3904:	
	movlw	(0Fh)
	andwf	(lcddata@y),f
	line	55
	
l3906:	
;lcd.c: 55: RD2=1;
	bsf	(66/8),(66)&7
	line	56
	
l3908:	
;lcd.c: 56: lcdport(z);
	movf	(lcddata@z),w
	fcall	_lcdport
	line	57
	
l3910:	
;lcd.c: 57: enable();
	fcall	_enable
	line	58
	
l3912:	
;lcd.c: 58: lcdport(y);
	movf	(lcddata@y),w
	fcall	_lcdport
	line	59
	
l3914:	
;lcd.c: 59: enable();
	fcall	_enable
	line	60
	
l3916:	
;lcd.c: 60: RD2 = 0;
	bcf	(66/8),(66)&7
	line	61
	
l966:	
	return
	opt stack 0
GLOBAL	__end_of_lcddata
	__end_of_lcddata:
;; =============== function _lcddata ends ============

	signat	_lcddata,4216
	global	_lcdcmd
psect	text1136,local,class=CODE,delta=2
global __ptext1136
__ptext1136:

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
;;		_gsm_init
;;		_DisplayAmnt
;;		_DisplayStock
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;;		_startup
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1136
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
	
l3886:	
;lcd.c: 40: unsigned char y,z;
;lcd.c: 41: z=a>>4&0x0F;
	swapf	(lcdcmd@a),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(lcdcmd@z)
	movlw	(0Fh)
	andwf	(lcdcmd@z),f
	line	42
	
l3888:	
;lcd.c: 42: y=a&0x0F;
	movf	(lcdcmd@a),w
	movwf	(lcdcmd@y)
	
l3890:	
	movlw	(0Fh)
	andwf	(lcdcmd@y),f
	line	44
	
l3892:	
;lcd.c: 44: lcdport(z);
	movf	(lcdcmd@z),w
	fcall	_lcdport
	line	45
	
l3894:	
;lcd.c: 45: enable();
	fcall	_enable
	line	46
	
l3896:	
;lcd.c: 46: lcdport(y);
	movf	(lcdcmd@y),w
	fcall	_lcdport
	line	47
	
l3898:	
;lcd.c: 47: enable();
	fcall	_enable
	line	48
	
l963:	
	return
	opt stack 0
GLOBAL	__end_of_lcdcmd
	__end_of_lcdcmd:
;; =============== function _lcdcmd ends ============

	signat	_lcdcmd,4216
	global	_LoadStockToArray
psect	text1137,local,class=CODE,delta=2
global __ptext1137
__ptext1137:

;; *************** function _LoadStockToArray *****************
;; Defined at:
;;		line 175 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1137
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	175
	global	__size_of_LoadStockToArray
	__size_of_LoadStockToArray	equ	__end_of_LoadStockToArray-_LoadStockToArray
	
_LoadStockToArray:	
	opt	stack 3
; Regs used in _LoadStockToArray: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	176
	
l3868:	
;Main.c: 176: RiseArray[0] = digit[RiseStock/1000];
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
	line	177
;Main.c: 177: RiseArray[1] = digit[RiseStock%1000/100];
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
	line	178
;Main.c: 178: RiseArray[2] = digit[RiseStock%1000%100/10];
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
	line	179
	
l3870:	
;Main.c: 179: RiseArray[3] = digit[RiseStock%1000%100%10];
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
	movwf	(_LoadStockToArray$1091+1)
	movf	(0+(?___lwmod)),w
	movwf	(_LoadStockToArray$1091)
	
l3872:	
;Main.c: 179: RiseArray[3] = digit[RiseStock%1000%100%10];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(_LoadStockToArray$1091+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_LoadStockToArray$1091),w
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
	line	180
	
l3874:	
;Main.c: 180: SugarArray[0] = digit[SugarStock/100];
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
	line	181
	
l3876:	
;Main.c: 181: SugarArray[1] = digit[SugarStock/10];
	movlw	0Ah
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
	movwf	0+(_SugarArray)+01h
	line	182
	
l3878:	
;Main.c: 182: SugarArray[2] = digit[SugarStock%10];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(_SugarStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_SugarStock),w
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
	line	183
	
l3880:	
;Main.c: 183: KeroseneArray[0] = digit[KeroseneStock/100];
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
	line	184
	
l3882:	
;Main.c: 184: KeroseneArray[1] = digit[KeroseneStock/10];
	movlw	0Ah
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
	movwf	0+(_KeroseneArray)+01h
	line	185
	
l3884:	
;Main.c: 185: KeroseneArray[2] = digit[KeroseneStock%10];
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	movf	(_KeroseneStock+1),w
	movwf	1+(?___lwmod)+02h
	movf	(_KeroseneStock),w
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
	line	186
	
l1144:	
	return
	opt stack 0
GLOBAL	__end_of_LoadStockToArray
	__end_of_LoadStockToArray:
;; =============== function _LoadStockToArray ends ============

	signat	_LoadStockToArray,88
	global	_paramter
psect	text1138,local,class=CODE,delta=2
global __ptext1138
__ptext1138:

;; *************** function _paramter *****************
;; Defined at:
;;		line 154 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1138
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	154
	global	__size_of_paramter
	__size_of_paramter	equ	__end_of_paramter-_paramter
	
_paramter:	
	opt	stack 3
; Regs used in _paramter: [wreg+status,2+status,0+pclath+cstack]
	line	155
	
l3866:	
;Main.c: 155: c1=(eeprom_read(0)*100)+eeprom_read(1);
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
	line	156
;Main.c: 156: c2=(eeprom_read(2)*100)+eeprom_read(3);
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
	line	157
	
l1138:	
	return
	opt stack 0
GLOBAL	__end_of_paramter
	__end_of_paramter:
;; =============== function _paramter ends ============

	signat	_paramter,88
	global	_ReadStock
psect	text1139,local,class=CODE,delta=2
global __ptext1139
__ptext1139:

;; *************** function _ReadStock *****************
;; Defined at:
;;		line 105 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1139
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	105
	global	__size_of_ReadStock
	__size_of_ReadStock	equ	__end_of_ReadStock-_ReadStock
	
_ReadStock:	
	opt	stack 3
; Regs used in _ReadStock: [wreg+status,2+status,0+pclath+cstack]
	line	106
	
l3864:	
;Main.c: 106: RiseStock=(eeprom_read(24)*100)+eeprom_read(25);
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
	line	107
;Main.c: 107: SugarStock=eeprom_read(26);
	movlw	(01Ah)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_SugarStock)
	clrf	(_SugarStock+1)
	line	108
;Main.c: 108: KeroseneStock=eeprom_read(27);
	movlw	(01Bh)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_KeroseneStock)
	clrf	(_KeroseneStock+1)
	line	109
	
l1120:	
	return
	opt stack 0
GLOBAL	__end_of_ReadStock
	__end_of_ReadStock:
;; =============== function _ReadStock ends ============

	signat	_ReadStock,88
	global	_ReadAmnt
psect	text1140,local,class=CODE,delta=2
global __ptext1140
__ptext1140:

;; *************** function _ReadAmnt *****************
;; Defined at:
;;		line 89 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1140
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	89
	global	__size_of_ReadAmnt
	__size_of_ReadAmnt	equ	__end_of_ReadAmnt-_ReadAmnt
	
_ReadAmnt:	
	opt	stack 3
; Regs used in _ReadAmnt: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l3862:	
;Main.c: 90: User1amt=(eeprom_read(0)*100)+eeprom_read(1);
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
	line	91
;Main.c: 91: User2amt=(eeprom_read(8)*100)+eeprom_read(15);
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
	movlw	(0Fh)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User2amt),f
	skipnc
	incf	(_User2amt+1),f
	line	92
;Main.c: 92: User3amt=(eeprom_read(16)*100)+eeprom_read(23);
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
	movlw	(017h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_User3amt),f
	skipnc
	incf	(_User3amt+1),f
	line	93
;Main.c: 93: User1Rise = eeprom_read(2);
	movlw	(02h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User1Rise)
	line	94
;Main.c: 94: User2Rise = eeprom_read(10);
	movlw	(0Ah)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User2Rise)
	line	95
;Main.c: 95: User3Rise = eeprom_read(18);
	movlw	(012h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User3Rise)
	line	96
;Main.c: 96: User1Kerosene = eeprom_read(4);
	movlw	(04h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User1Kerosene)
	line	97
;Main.c: 97: User2Kerosene = eeprom_read(12);
	movlw	(0Ch)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User2Kerosene)
	line	98
;Main.c: 98: User3Kerosene = eeprom_read(20);
	movlw	(014h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User3Kerosene)
	line	99
;Main.c: 99: User1Sugar = eeprom_read(3);
	movlw	(03h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User1Sugar)
	line	100
;Main.c: 100: User2Sugar = eeprom_read(11);
	movlw	(0Bh)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User2Sugar)
	line	101
;Main.c: 101: User3Sugar = eeprom_read(19);
	movlw	(013h)
	fcall	_eeprom_read
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_User3Sugar)
	line	102
	
l1117:	
	return
	opt stack 0
GLOBAL	__end_of_ReadAmnt
	__end_of_ReadAmnt:
;; =============== function _ReadAmnt ends ============

	signat	_ReadAmnt,88
	global	_usartstring
psect	text1141,local,class=CODE,delta=2
global __ptext1141
__ptext1141:

;; *************** function _usartstring *****************
;; Defined at:
;;		line 22 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
;; Parameters:    Size  Location     Type
;;  st              2    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_29(5), STR_28(12), STR_27(24), RiseArray(5), 
;;		 -> STR_18(20), STR_17(24), STR_16(20), STR_15(24), 
;;		 -> STR_14(20), STR_13(24), STR_12(29), STR_11(24), 
;;		 -> STR_10(27), STR_9(24), STR_7(19), STR_6(11), 
;;		 -> STR_5(11), STR_4(10), STR_3(4), 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_transmit
;; This function is called by:
;;		_gsm_init
;;		_SendRiseStock
;; This function uses a non-reentrant model
;;
psect	text1141
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	22
	global	__size_of_usartstring
	__size_of_usartstring	equ	__end_of_usartstring-_usartstring
	
_usartstring:	
	opt	stack 2
; Regs used in _usartstring: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l3854:	
;UART.C: 23: while(*st)
	goto	l3860
	line	24
	
l3856:	
;UART.C: 24: transmit(*st++);
	movf	(usartstring@st+1),w
	movwf	btemp+1
	movf	(usartstring@st),w
	movwf	fsr0
	fcall	stringtab
	fcall	_transmit
	
l3858:	
	incf	(usartstring@st),f
	skipnz
	incf	(usartstring@st+1),f
	line	23
	
l3860:	
	movf	(usartstring@st+1),w
	movwf	btemp+1
	movf	(usartstring@st),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u1861
	goto	u1860
u1861:
	goto	l3856
u1860:
	line	25
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_usartstring
	__end_of_usartstring:
;; =============== function _usartstring ends ============

	signat	_usartstring,4216
	global	_softreceive
psect	text1142,local,class=CODE,delta=2
global __ptext1142
__ptext1142:

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
psect	text1142
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
	line	21
	global	__size_of_softreceive
	__size_of_softreceive	equ	__end_of_softreceive-_softreceive
	
_softreceive:	
	opt	stack 3
; Regs used in _softreceive: [wreg+status,2+status,0]
	line	24
	
l3830:	
;softuart.c: 22: char mask;
;softuart.c: 23: char Data;
;softuart.c: 24: Data=0;
	clrf	(softreceive@Data)
	line	25
;softuart.c: 25: while(RD0);
	
l990:	
	btfsc	(64/8),(64)&7
	goto	u1831
	goto	u1830
u1831:
	goto	l990
u1830:
	line	26
	
l3832:	
;softuart.c: 26: _delay((unsigned long)(((((1000000/9600)-2)/2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	84
movwf	(??_softreceive+0)+0,f
u2127:
decfsz	(??_softreceive+0)+0,f
	goto	u2127
	nop2	;nop
opt asmopt_on

	line	27
	
l3834:	
;softuart.c: 27: for(mask=0x01;mask!=0;mask=mask<<1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(softreceive@mask)
	incf	(softreceive@mask),f
	line	29
	
l3840:	
;softuart.c: 28: {
;softuart.c: 29: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_softreceive+0)+0,f
u2137:
decfsz	(??_softreceive+0)+0,f
	goto	u2137
	nop2	;nop
opt asmopt_on

	line	30
	
l3842:	
;softuart.c: 30: if(RD0)Data=Data|mask;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u1841
	goto	u1840
u1841:
	goto	l3846
u1840:
	
l3844:	
	movf	(softreceive@mask),w
	iorwf	(softreceive@Data),f
	line	27
	
l3846:	
	clrc
	rlf	(softreceive@mask),f
	
l3848:	
	movf	(softreceive@mask),f
	skipz
	goto	u1851
	goto	u1850
u1851:
	goto	l3840
u1850:
	line	32
	
l3850:	
;softuart.c: 31: }
;softuart.c: 32: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_softreceive+0)+0,f
u2147:
decfsz	(??_softreceive+0)+0,f
	goto	u2147
	nop2	;nop
opt asmopt_on

	line	33
;softuart.c: 33: return Data;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(softreceive@Data),w
	line	34
	
l996:	
	return
	opt stack 0
GLOBAL	__end_of_softreceive
	__end_of_softreceive:
;; =============== function _softreceive ends ============

	signat	_softreceive,89
	global	_SoftWareUart_Init
psect	text1143,local,class=CODE,delta=2
global __ptext1143
__ptext1143:

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
psect	text1143
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
	line	10
	global	__size_of_SoftWareUart_Init
	__size_of_SoftWareUart_Init	equ	__end_of_SoftWareUart_Init-_SoftWareUart_Init
	
_SoftWareUart_Init:	
	opt	stack 4
; Regs used in _SoftWareUart_Init: [wreg]
	line	11
	
l3826:	
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
	
l3828:	
;softuart.c: 16: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_SoftWareUart_Init+0)+0,f
u2157:
decfsz	(??_SoftWareUart_Init+0)+0,f
	goto	u2157
	nop2	;nop
opt asmopt_on

	line	17
	
l987:	
	return
	opt stack 0
GLOBAL	__end_of_SoftWareUart_Init
	__end_of_SoftWareUart_Init:
;; =============== function _SoftWareUart_Init ends ============

	signat	_SoftWareUart_Init,88
	global	_enable
psect	text1144,local,class=CODE,delta=2
global __ptext1144
__ptext1144:

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
psect	text1144
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	9
	global	__size_of_enable
	__size_of_enable	equ	__end_of_enable-_enable
	
_enable:	
	opt	stack 1
; Regs used in _enable: [wreg]
	line	10
	
l3820:	
;lcd.c: 10: RD3 = 1;
	bsf	(67/8),(67)&7
	line	11
	
l3822:	
;lcd.c: 11: _delay((unsigned long)((4)*(20000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_enable+0)+0+1),f
	movlw	248
movwf	((??_enable+0)+0),f
u2167:
	decfsz	((??_enable+0)+0),f
	goto	u2167
	decfsz	((??_enable+0)+0+1),f
	goto	u2167
	clrwdt
opt asmopt_on

	line	12
	
l3824:	
;lcd.c: 12: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	13
	
l949:	
	return
	opt stack 0
GLOBAL	__end_of_enable
	__end_of_enable:
;; =============== function _enable ends ============

	signat	_enable,88
	global	_DelayS
psect	text1145,local,class=CODE,delta=2
global __ptext1145
__ptext1145:

;; *************** function _DelayS *****************
;; Defined at:
;;		line 75 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    2[BANK0 ] unsigned char 
;;  i               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_gsm_init
;; This function uses a non-reentrant model
;;
psect	text1145
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
	line	75
	global	__size_of_DelayS
	__size_of_DelayS	equ	__end_of_DelayS-_DelayS
	
_DelayS:	
	opt	stack 2
; Regs used in _DelayS: [wreg+status,2+status,0+pclath+cstack]
;DelayS@cnt stored from wreg
	movwf	(DelayS@cnt)
	line	77
;Delay.c: 76: unsigned char i;
;Delay.c: 77: do {
	
l942:	
	line	78
	
l3812:	
;Delay.c: 78: i = 4;
	movlw	(04h)
	movwf	(DelayS@i)
	line	80
	
l3814:	
;Delay.c: 80: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	81
	
l3816:	
# 81 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
clrwdt ;#
psect	text1145
	line	82
	
l3818:	
;Delay.c: 82: } while(--i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(DelayS@i),f
	goto	u1811
	goto	u1810
u1811:
	goto	l3814
u1810:
	
l944:	
	line	83
;Delay.c: 83: } while(--cnt);
	decfsz	(DelayS@cnt),f
	goto	u1821
	goto	u1820
u1821:
	goto	l942
u1820:
	line	84
	
l946:	
	return
	opt stack 0
GLOBAL	__end_of_DelayS
	__end_of_DelayS:
;; =============== function _DelayS ends ============

	signat	_DelayS,4216
	global	___awmod
psect	text1146,local,class=CODE,delta=2
global __ptext1146
__ptext1146:

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
;; This function uses a non-reentrant model
;;
psect	text1146
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 2
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3776:	
	clrf	(___awmod@sign)
	line	9
	
l3778:	
	btfss	(___awmod@dividend+1),7
	goto	u1741
	goto	u1740
u1741:
	goto	l3784
u1740:
	line	10
	
l3780:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l3782:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l3784:	
	btfss	(___awmod@divisor+1),7
	goto	u1751
	goto	u1750
u1751:
	goto	l3788
u1750:
	line	14
	
l3786:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l3788:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1761
	goto	u1760
u1761:
	goto	l3804
u1760:
	line	16
	
l3790:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l3794
	line	18
	
l3792:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l3794:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l3792
u1770:
	line	22
	
l3796:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1785
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1785:
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l3800
u1780:
	line	23
	
l3798:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l3800:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l3802:	
	decfsz	(___awmod@counter),f
	goto	u1791
	goto	u1790
u1791:
	goto	l3796
u1790:
	line	27
	
l3804:	
	movf	(___awmod@sign),w
	skipz
	goto	u1800
	goto	l3808
u1800:
	line	28
	
l3806:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l3808:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l1430:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text1147,local,class=CODE,delta=2
global __ptext1147
__ptext1147:

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
;; This function uses a non-reentrant model
;;
psect	text1147
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3070:	
	clrf	(___awdiv@sign)
	line	10
	
l3072:	
	btfss	(___awdiv@divisor+1),7
	goto	u1121
	goto	u1120
u1121:
	goto	l3078
u1120:
	line	11
	
l3074:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l3076:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l3078:	
	btfss	(___awdiv@dividend+1),7
	goto	u1131
	goto	u1130
u1131:
	goto	l3084
u1130:
	line	15
	
l3080:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3082:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l3084:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3086:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1141
	goto	u1140
u1141:
	goto	l3106
u1140:
	line	20
	
l3088:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l3092
	line	22
	
l3090:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l3092:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1151
	goto	u1150
u1151:
	goto	l3090
u1150:
	line	26
	
l3094:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l3096:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1165
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1165:
	skipc
	goto	u1161
	goto	u1160
u1161:
	goto	l3102
u1160:
	line	28
	
l3098:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3100:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l3102:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l3104:	
	decfsz	(___awdiv@counter),f
	goto	u1171
	goto	u1170
u1171:
	goto	l3094
u1170:
	line	34
	
l3106:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1180
	goto	l3110
u1180:
	line	35
	
l3108:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l3110:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l1362:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lbmod
psect	text1148,local,class=CODE,delta=2
global __ptext1148
__ptext1148:

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
psect	text1148
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
	
l3758:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l3760:	
	clrf	(___lbmod@rem)
	line	12
	
l3762:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u1715:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u1715
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l3764:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l3766:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u1721
	goto	u1720
u1721:
	goto	l3770
u1720:
	line	15
	
l3768:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l3770:	
	decfsz	(___lbmod@counter),f
	goto	u1731
	goto	u1730
u1731:
	goto	l3762
u1730:
	line	17
	
l3772:	
	movf	(___lbmod@rem),w
	line	18
	
l1251:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text1149,local,class=CODE,delta=2
global __ptext1149
__ptext1149:

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
psect	text1149
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
	
l3734:	
	clrf	(___lbdiv@quotient)
	line	10
	
l3736:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u1670
	goto	l3754
u1670:
	line	11
	
l3738:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l3742
	
l1240:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l3740:	
	incf	(___lbdiv@counter),f
	line	12
	
l3742:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u1681
	goto	u1680
u1681:
	goto	l1240
u1680:
	line	16
	
l1242:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l3744:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u1691
	goto	u1690
u1691:
	goto	l3750
u1690:
	line	19
	
l3746:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l3748:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l3750:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l3752:	
	decfsz	(___lbdiv@counter),f
	goto	u1701
	goto	u1700
u1701:
	goto	l1242
u1700:
	line	25
	
l3754:	
	movf	(___lbdiv@quotient),w
	line	26
	
l1245:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___lwmod
psect	text1150,local,class=CODE,delta=2
global __ptext1150
__ptext1150:

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
;; This function uses a non-reentrant model
;;
psect	text1150
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3714:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1631
	goto	u1630
u1631:
	goto	l3730
u1630:
	line	9
	
l3716:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3720
	line	11
	
l3718:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3720:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1641
	goto	u1640
u1641:
	goto	l3718
u1640:
	line	15
	
l3722:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1655
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1655:
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l3726
u1650:
	line	16
	
l3724:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3726:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3728:	
	decfsz	(___lwmod@counter),f
	goto	u1661
	goto	u1660
u1661:
	goto	l3722
u1660:
	line	20
	
l3730:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l1235:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text1151,local,class=CODE,delta=2
global __ptext1151
__ptext1151:

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
;; This function uses a non-reentrant model
;;
psect	text1151
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2982:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2984:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u971
	goto	u970
u971:
	goto	l3004
u970:
	line	11
	
l2986:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l2990
	line	13
	
l2988:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l2990:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u981
	goto	u980
u981:
	goto	l2988
u980:
	line	17
	
l2992:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l2994:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u995
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u995:
	skipc
	goto	u991
	goto	u990
u991:
	goto	l3000
u990:
	line	19
	
l2996:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2998:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3000:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3002:	
	decfsz	(___lwdiv@counter),f
	goto	u1001
	goto	u1000
u1001:
	goto	l2992
u1000:
	line	25
	
l3004:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l1225:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text1152,local,class=CODE,delta=2
global __ptext1152
__ptext1152:

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
psect	text1152
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2966:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l2968:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u951
	goto	u950
u951:
	goto	l2972
u950:
	line	8
	
l2970:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l2972:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l2974:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l2976:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u961
	goto	u960
u961:
	goto	l2968
u960:
	line	12
	
l2978:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l1215:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_memcmp
psect	text1153,local,class=CODE,delta=2
global __ptext1153
__ptext1153:

;; *************** function _memcmp *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\memcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              2    0[BANK0 ] PTR const void 
;;		 -> STR_44(6), 
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
psect	text1153
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\memcmp.c"
	line	4
	global	__size_of_memcmp
	__size_of_memcmp	equ	__end_of_memcmp-_memcmp
	
_memcmp:	
	opt	stack 4
; Regs used in _memcmp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	5
	
l3698:	
	goto	l3708
	line	6
	
l3700:	
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
	goto	u1611
	goto	u1610
u1611:
	goto	l3706
u1610:
	line	7
	
l3702:	
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
	
	goto	l1194
	line	8
	
l3706:	
	incf	(memcmp@s1),f
	skipnz
	incf	(memcmp@s1+1),f
	line	9
	incf	(memcmp@s2),f
	line	5
	
l3708:	
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
	goto	u1621
	goto	u1620
u1621:
	goto	l3700
u1620:
	line	11
	
l3710:	
	clrf	(?_memcmp)
	clrf	(?_memcmp+1)
	line	12
	
l1194:	
	return
	opt stack 0
GLOBAL	__end_of_memcmp
	__end_of_memcmp:
;; =============== function _memcmp ends ============

	signat	_memcmp,12410
	global	_strcmp
psect	text1154,local,class=CODE,delta=2
global __ptext1154
__ptext1154:

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
psect	text1154
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
	
l3688:	
	
l3690:	
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
	goto	u1591
	goto	u1590
u1591:
	goto	l3694
u1590:
	
l3692:	
	movf	(strcmp@s1),w
	incf	(strcmp@s1),f
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u1601
	goto	u1600
u1601:
	goto	l3690
u1600:
	line	39
	
l3694:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	line	40
	
l1203:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_uart_init
psect	text1155,local,class=CODE,delta=2
global __ptext1155
__ptext1155:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 145 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1155
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	145
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 4
; Regs used in _uart_init: [wreg+status,2]
	line	146
	
l2936:	
;Main.c: 146: PORTC=0xFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	147
;Main.c: 147: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(135)^080h	;volatile
	line	148
;Main.c: 148: TXSTA=0X24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	149
;Main.c: 149: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	150
;Main.c: 150: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(153)^080h	;volatile
	line	151
	
l2938:	
;Main.c: 151: RCREG=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(26)	;volatile
	line	152
	
l1135:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_eeprom_read
psect	text1156,local,class=CODE,delta=2
global __ptext1156
__ptext1156:

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
;;		On entry : 20/0
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
psect	text1156
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eeread.c"
	line	8
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 3
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	line	10
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eeprom_read@addr)
	line	9
	
l1186:	
	line	10
# 10 "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eeread.c"
clrwdt ;#
psect	text1156
	line	11
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l1186
u1580:
	line	12
	
l3684:	
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
	
l1188:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_transmit
psect	text1157,local,class=CODE,delta=2
global __ptext1157
__ptext1157:

;; *************** function _transmit *****************
;; Defined at:
;;		line 8 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[BANK0 ] unsigned char 
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
;;		_usartstring
;;		_gsm_init
;;		_SendRiseStock
;; This function uses a non-reentrant model
;;
psect	text1157
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	8
	global	__size_of_transmit
	__size_of_transmit	equ	__end_of_transmit-_transmit
	
_transmit:	
	opt	stack 3
; Regs used in _transmit: [wreg]
;transmit@data stored from wreg
	movwf	(transmit@data)
	line	9
	
l3680:	
;UART.C: 9: while(!TXIF);
	
l1019:	
	btfss	(100/8),(100)&7
	goto	u1571
	goto	u1570
u1571:
	goto	l1019
u1570:
	line	10
	
l3682:	
;UART.C: 10: TXREG =data;
	movf	(transmit@data),w
	movwf	(25)	;volatile
	line	11
	
l1022:	
	return
	opt stack 0
GLOBAL	__end_of_transmit
	__end_of_transmit:
;; =============== function _transmit ends ============

	signat	_transmit,4216
	global	_receive
psect	text1158,local,class=CODE,delta=2
global __ptext1158
__ptext1158:

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
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_gsm_init
;;		_SendRiseStock
;; This function uses a non-reentrant model
;;
psect	text1158
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	2
	global	__size_of_receive
	__size_of_receive	equ	__end_of_receive-_receive
	
_receive:	
	opt	stack 3
; Regs used in _receive: [wreg]
	line	3
	
l2896:	
;UART.C: 3: if(OERR){CREN=0;CREN=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(193/8),(193)&7
	goto	u831
	goto	u830
u831:
	goto	l1013
u830:
	
l2898:	
	bcf	(196/8),(196)&7
	bsf	(196/8),(196)&7
	line	4
	
l1013:	
	btfss	(101/8),(101)&7
	goto	u841
	goto	u840
u841:
	goto	l1013
u840:
	line	5
	
l2900:	
;UART.C: 5: return(RCREG);
	movf	(26),w	;volatile
	line	6
	
l1016:	
	return
	opt stack 0
GLOBAL	__end_of_receive
	__end_of_receive:
;; =============== function _receive ends ============

	signat	_receive,89
	global	_lcdport
psect	text1159,local,class=CODE,delta=2
global __ptext1159
__ptext1159:

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
psect	text1159
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
	
l3670:	
;lcd.c: 17: if(a & 1)
	btfss	(lcdport@a),(0)&7
	goto	u1531
	goto	u1530
u1531:
	goto	l952
u1530:
	line	18
	
l3672:	
;lcd.c: 18: RD4 = 1;
	bsf	(68/8),(68)&7
	goto	l953
	line	19
	
l952:	
	line	20
;lcd.c: 19: else
;lcd.c: 20: RD4 = 0;
	bcf	(68/8),(68)&7
	
l953:	
	line	22
;lcd.c: 22: if(a & 2)
	btfss	(lcdport@a),(1)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l954
u1540:
	line	23
	
l3674:	
;lcd.c: 23: RD5 = 1;
	bsf	(69/8),(69)&7
	goto	l955
	line	24
	
l954:	
	line	25
;lcd.c: 24: else
;lcd.c: 25: RD5 = 0;
	bcf	(69/8),(69)&7
	
l955:	
	line	27
;lcd.c: 27: if(a & 4)
	btfss	(lcdport@a),(2)&7
	goto	u1551
	goto	u1550
u1551:
	goto	l956
u1550:
	line	28
	
l3676:	
;lcd.c: 28: RD6 = 1;
	bsf	(70/8),(70)&7
	goto	l957
	line	29
	
l956:	
	line	30
;lcd.c: 29: else
;lcd.c: 30: RD6 = 0;
	bcf	(70/8),(70)&7
	
l957:	
	line	32
;lcd.c: 32: if(a & 8)
	btfss	(lcdport@a),(3)&7
	goto	u1561
	goto	u1560
u1561:
	goto	l958
u1560:
	line	33
	
l3678:	
;lcd.c: 33: RD7 = 1;
	bsf	(71/8),(71)&7
	goto	l960
	line	34
	
l958:	
	line	35
;lcd.c: 34: else
;lcd.c: 35: RD7 = 0;
	bcf	(71/8),(71)&7
	line	36
	
l960:	
	return
	opt stack 0
GLOBAL	__end_of_lcdport
	__end_of_lcdport:
;; =============== function _lcdport ends ============

	signat	_lcdport,4216
	global	_DelayMs
psect	text1160,local,class=CODE,delta=2
global __ptext1160
__ptext1160:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 39 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    0[BANK0 ] unsigned char 
;;  i               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DelayS
;; This function uses a non-reentrant model
;;
psect	text1160
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
	line	39
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 2
; Regs used in _DelayMs: [wreg]
;DelayMs@cnt stored from wreg
	movwf	(DelayMs@cnt)
	line	41
;Delay.c: 40: unsigned char i;
;Delay.c: 41: do {
	
l921:	
	line	42
	
l3658:	
;Delay.c: 42: i = 4;
	movlw	(04h)
	movwf	(DelayMs@i)
	line	43
;Delay.c: 43: do {
	
l922:	
	line	44
;Delay.c: 44: { delayus_variable=(unsigned char)(250/4); asm("nop"); } asm("decfsz _delayus_variable,f"); asm("goto $ - 2");;
	movlw	(03Eh)
	movwf	(_delayus_variable)
	
l3660:	
# 44 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
nop ;#
psect	text1160
	
l3662:	
# 44 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
decfsz _delayus_variable,f ;#
psect	text1160
	
l3664:	
# 44 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
goto $ - 2 ;#
psect	text1160
	line	45
	
l3666:	
# 45 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
clrwdt ;#
psect	text1160
	line	46
	
l3668:	
;Delay.c: 46: } while(--i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(DelayMs@i),f
	goto	u1511
	goto	u1510
u1511:
	goto	l922
u1510:
	
l923:	
	line	47
;Delay.c: 47: } while(--cnt);
	decfsz	(DelayMs@cnt),f
	goto	u1521
	goto	u1520
u1521:
	goto	l921
u1520:
	line	48
	
l925:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_ISR
psect	text1161,local,class=CODE,delta=2
global __ptext1161
__ptext1161:

;; *************** function _ISR *****************
;; Defined at:
;;		line 63 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
psect	text1161
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	63
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
psect	text1161
	line	64
	
i1l2928:	
;Main.c: 64: if (RCIF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u89_21
	goto	u89_20
u89_21:
	goto	i1l1105
u89_20:
	line	66
	
i1l2930:	
;Main.c: 65: {
;Main.c: 66: gsm_read_line2(sms);
	movlw	(_sms)&0ffh
	fcall	_gsm_read_line2
	line	68
	
i1l1105:	
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
psect	text1162,local,class=CODE,delta=2
global __ptext1162
__ptext1162:

;; *************** function _gsm_read_line2 *****************
;; Defined at:
;;		line 46 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
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
;;		i1_receive
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text1162
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	46
	global	__size_of_gsm_read_line2
	__size_of_gsm_read_line2	equ	__end_of_gsm_read_line2-_gsm_read_line2
	
_gsm_read_line2:	
	opt	stack 1
; Regs used in _gsm_read_line2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;gsm_read_line2@buffer stored from wreg
	movwf	(gsm_read_line2@buffer)
	line	47
	
i1l2908:	
	clrf	(gsm_read_line2@flag)
	line	51
	
i1l2910:	
;Main.c: 50: {
;Main.c: 51: rec_data = receive();
	fcall	i1_receive
	movwf	(gsm_read_line2@rec_data)
	line	52
	
i1l2912:	
;Main.c: 52: if(rec_data=='#'){flag=1;rec_data = receive(); }
	movf	(gsm_read_line2@rec_data),w
	xorlw	023h
	skipz
	goto	u86_21
	goto	u86_20
u86_21:
	goto	i1l2918
u86_20:
	
i1l2914:	
	clrf	(gsm_read_line2@flag)
	incf	(gsm_read_line2@flag),f
	
i1l2916:	
	fcall	i1_receive
	movwf	(gsm_read_line2@rec_data)
	line	53
	
i1l2918:	
;Main.c: 53: if(flag)
	movf	(gsm_read_line2@flag),w
	skipz
	goto	u87_20
	goto	i1l2924
u87_20:
	line	55
	
i1l2920:	
;Main.c: 54: {
;Main.c: 55: *buffer++ = rec_data;
	movf	(gsm_read_line2@buffer),w
	movwf	fsr0
	movf	(gsm_read_line2@rec_data),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l2922:	
	incf	(gsm_read_line2@buffer),f
	line	57
	
i1l2924:	
;Main.c: 56: }
;Main.c: 57: }while (rec_data != '\n');
	movf	(gsm_read_line2@rec_data),w
	xorlw	0Ah
	skipz
	goto	u88_21
	goto	u88_20
u88_21:
	goto	i1l2910
u88_20:
	line	58
	
i1l2926:	
;Main.c: 58: *buffer='\0';
	movf	(gsm_read_line2@buffer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	59
	
i1l1101:	
	return
	opt stack 0
GLOBAL	__end_of_gsm_read_line2
	__end_of_gsm_read_line2:
;; =============== function _gsm_read_line2 ends ============

	signat	_gsm_read_line2,4216
	global	i1_receive
psect	text1163,local,class=CODE,delta=2
global __ptext1163
__ptext1163:

;; *************** function i1_receive *****************
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
psect	text1163
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	2
	global	__size_ofi1_receive
	__size_ofi1_receive	equ	__end_ofi1_receive-i1_receive
	
i1_receive:	
	opt	stack 1
; Regs used in i1_receive: [wreg]
	line	3
	
i1l3150:	
;UART.C: 3: if(OERR){CREN=0;CREN=1;}
	btfss	(193/8),(193)&7
	goto	u126_21
	goto	u126_20
u126_21:
	goto	i1l1013
u126_20:
	
i1l3152:	
	bcf	(196/8),(196)&7
	bsf	(196/8),(196)&7
	line	4
	
i1l1013:	
	btfss	(101/8),(101)&7
	goto	u127_21
	goto	u127_20
u127_21:
	goto	i1l1013
u127_20:
	line	5
	
i1l3154:	
;UART.C: 5: return(RCREG);
	movf	(26),w	;volatile
	line	6
	
i1l1016:	
	return
	opt stack 0
GLOBAL	__end_ofi1_receive
	__end_ofi1_receive:
;; =============== function i1_receive ends ============

	signat	i1_receive,89
psect	text1164,local,class=CODE,delta=2
global __ptext1164
__ptext1164:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
