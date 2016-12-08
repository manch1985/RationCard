opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

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
	FNCALL	_main,_gsm_init
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
	FNCALL	_main,_SendStock
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
	FNCALL	_DisplayKerosene,___awdiv
	FNCALL	_DisplayKerosene,_lcddata
	FNCALL	_DisplayKerosene,___awmod
	FNCALL	_DisplayRise,_lcdcmd
	FNCALL	_DisplayRise,___awdiv
	FNCALL	_DisplayRise,_lcddata
	FNCALL	_DisplayRise,___awmod
	FNCALL	_DisplaySugar,_lcdcmd
	FNCALL	_DisplaySugar,___awdiv
	FNCALL	_DisplaySugar,_lcddata
	FNCALL	_DisplaySugar,___awmod
	FNCALL	_DisplayAmnt,_lcdcmd
	FNCALL	_DisplayAmnt,___awdiv
	FNCALL	_DisplayAmnt,_lcddata
	FNCALL	_DisplayAmnt,___awmod
	FNCALL	_lcdstring,_lcddata
	FNCALL	_lcd_init,_lcdport
	FNCALL	_lcd_init,_lcdcmd
	FNCALL	_SendStock,_usartstring
	FNCALL	_SendStock,_transmit
	FNCALL	_SendStock,_receive
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
	global	_c2bal
	global	_c1bal
	global	_User1
	global	_User2
	global	_User3
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	20

;initializer for _c2bal
	retlw	0E7h
	retlw	03h


;initializer for _c1bal
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	retlw	0E7h
	retlw	03h

psect	idataBANK0
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
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
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
	global	_a
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
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	1
_a:
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
psect	stringtext
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
	global	_a
	global	_digit
	global	_KeroseneStock
	global	_RiseStock
	global	_SugarStock
	global	_User
	global	_User1amt
	global	_User2amt
	global	_User3amt
	global	_c1
	global	_c2
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
	global	_i
	global	_j
	global	_rfid_flag
	global	_sms_indication
	global	_k
	global	_RiseArray
	global	_KeroseneArray
	global	_SugarArray
	global	_sms
	global	_card_store
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
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	51	;'3'
	retlw	56	;'8'
	retlw	51	;'3'
	retlw	49	;'1'
	retlw	51	;'3'
	retlw	48	;'0'
	retlw	52	;'4'
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

_i:
       ds      1

_j:
       ds      1

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	20
_c1bal:
       ds      2

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

_c1:
       ds      2

_c2:
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

_RiseArray:
       ds      5

_KeroseneArray:
       ds      4

_SugarArray:
       ds      4

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
_c2bal:
       ds      2

psect	dataBANK0
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	38
_User1:
       ds      13

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_k:
       ds      15

_sms:
       ds      20

_card_store:
       ds      15

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
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
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+028h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+032h)
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
	movlw low(__pdataBANK1+26)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+15)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
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
	global	?_SendStock
?_SendStock:	; 0 bytes @ 0x0
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
	global	?_enable
?_enable:	; 2 bytes @ 0x0
	ds	1
	global	gsm_read_line2@flag
gsm_read_line2@flag:	; 1 bytes @ 0x1
	ds	1
	global	gsm_read_line2@buffer
gsm_read_line2@buffer:	; 1 bytes @ 0x2
	ds	1
	global	gsm_read_line2@rec_data
gsm_read_line2@rec_data:	; 1 bytes @ 0x3
	ds	1
	global	??_ISR
??_ISR:	; 0 bytes @ 0x4
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0x0
	global	??_DelayMs
??_DelayMs:	; 0 bytes @ 0x0
	global	??_enable
??_enable:	; 0 bytes @ 0x0
	global	??_lcdport
??_lcdport:	; 0 bytes @ 0x0
	global	??_SoftWareUart_Init
??_SoftWareUart_Init:	; 0 bytes @ 0x0
	global	??_softreceive
??_softreceive:	; 0 bytes @ 0x0
	global	??_receive
??_receive:	; 0 bytes @ 0x0
	global	??_transmit
??_transmit:	; 0 bytes @ 0x0
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x0
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
	global	transmit@data
transmit@data:	; 1 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x0
	global	memcmp@s1
memcmp@s1:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	?_usartstring
?_usartstring:	; 0 bytes @ 0x1
	global	DelayMs@cnt
DelayMs@cnt:	; 1 bytes @ 0x1
	global	usartstring@st
usartstring@st:	; 2 bytes @ 0x1
	ds	1
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	??_lcdcmd
??_lcdcmd:	; 0 bytes @ 0x2
	global	??_lcddata
??_lcddata:	; 0 bytes @ 0x2
	global	DelayMs@i
DelayMs@i:	; 1 bytes @ 0x2
	global	softreceive@Data
softreceive@Data:	; 1 bytes @ 0x2
	global	memcmp@s2
memcmp@s2:	; 1 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_DelayS
??_DelayS:	; 0 bytes @ 0x3
	global	??_usartstring
??_usartstring:	; 0 bytes @ 0x3
	global	??_SendStock
??_SendStock:	; 0 bytes @ 0x3
	global	softreceive@mask
softreceive@mask:	; 1 bytes @ 0x3
	global	SendStock@d
SendStock@d:	; 1 bytes @ 0x3
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x3
	global	memcmp@n
memcmp@n:	; 2 bytes @ 0x3
	ds	1
	global	??_RFID_read
??_RFID_read:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	?___wmul
?___wmul:	; 2 bytes @ 0x4
	global	DelayS@cnt
DelayS@cnt:	; 1 bytes @ 0x4
	global	lcdcmd@y
lcdcmd@y:	; 1 bytes @ 0x4
	global	lcddata@y
lcddata@y:	; 1 bytes @ 0x4
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x4
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x4
	ds	1
	global	??_memcmp
??_memcmp:	; 0 bytes @ 0x5
	global	DelayS@i
DelayS@i:	; 1 bytes @ 0x5
	global	lcdcmd@z
lcdcmd@z:	; 1 bytes @ 0x5
	global	lcddata@z
lcddata@z:	; 1 bytes @ 0x5
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	RFID_read@i
RFID_read@i:	; 2 bytes @ 0x5
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	lcdcmd@a
lcdcmd@a:	; 1 bytes @ 0x6
	global	lcddata@a
lcddata@a:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	??_lcd_init
??_lcd_init:	; 0 bytes @ 0x7
	global	?_lcdstring
?_lcdstring:	; 0 bytes @ 0x7
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	lcdstring@a
lcdstring@a:	; 2 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x8
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	1
	global	??_lcdstring
??_lcdstring:	; 0 bytes @ 0x9
	global	??_gsm_init
??_gsm_init:	; 0 bytes @ 0x9
	global	??_startup
??_startup:	; 0 bytes @ 0x9
	global	gsm_init@d
gsm_init@d:	; 1 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	ds	1
	global	??_ReadAmnt
??_ReadAmnt:	; 0 bytes @ 0xA
	global	??_ReadStock
??_ReadStock:	; 0 bytes @ 0xA
	global	??_paramter
??_paramter:	; 0 bytes @ 0xA
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xA
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xB
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xC
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xD
	ds	1
	global	??_LoadStockToArray
??_LoadStockToArray:	; 0 bytes @ 0xE
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xE
	ds	1
	global	_LoadStockToArray$1138
_LoadStockToArray$1138:	; 2 bytes @ 0xF
	ds	1
	global	?_eeprom_write
?_eeprom_write:	; 0 bytes @ 0x10
	global	?_DisplayAmnt
?_DisplayAmnt:	; 0 bytes @ 0x10
	global	?_DisplaySugar
?_DisplaySugar:	; 0 bytes @ 0x10
	global	?_DisplayRise
?_DisplayRise:	; 0 bytes @ 0x10
	global	?_DisplayKerosene
?_DisplayKerosene:	; 0 bytes @ 0x10
	global	DisplaySugar@Sugar
DisplaySugar@Sugar:	; 1 bytes @ 0x10
	global	DisplayRise@Rise
DisplayRise@Rise:	; 1 bytes @ 0x10
	global	DisplayKerosene@Kerosene
DisplayKerosene@Kerosene:	; 1 bytes @ 0x10
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x10
	global	DisplayAmnt@Amnt
DisplayAmnt@Amnt:	; 2 bytes @ 0x10
	ds	1
	global	??_eeprom_write
??_eeprom_write:	; 0 bytes @ 0x11
	global	??_DisplaySugar
??_DisplaySugar:	; 0 bytes @ 0x11
	global	??_DisplayRise
??_DisplayRise:	; 0 bytes @ 0x11
	global	??_DisplayKerosene
??_DisplayKerosene:	; 0 bytes @ 0x11
	ds	1
	global	??_DisplayAmnt
??_DisplayAmnt:	; 0 bytes @ 0x12
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x12
	global	_DisplayAmnt$1137
_DisplayAmnt$1137:	; 2 bytes @ 0x12
	ds	1
	global	DisplaySugar@Location
DisplaySugar@Location:	; 1 bytes @ 0x13
	global	DisplayRise@Location
DisplayRise@Location:	; 1 bytes @ 0x13
	global	DisplayKerosene@Location
DisplayKerosene@Location:	; 1 bytes @ 0x13
	ds	1
	global	DisplayAmnt@Location
DisplayAmnt@Location:	; 1 bytes @ 0x14
	ds	1
	global	??_DisplayStock
??_DisplayStock:	; 0 bytes @ 0x15
	global	??_main
??_main:	; 0 bytes @ 0x15
	ds	3
;;Data sizes: Strings 658, constant 22, data 43, bss 93, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      14
;; BANK0           80     24      79
;; BANK1           80      0      76
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
;;		 -> User3(BANK1[13]), User2(BANK1[13]), User1(BANK0[13]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 15
;;		 -> card_store(BANK1[15]), 
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
;; usartstring@st	PTR const unsigned char  size(2) Largest target is 29
;;		 -> STR_33(CODE[5]), STR_32(CODE[16]), STR_31(CODE[5]), STR_30(CODE[13]), 
;;		 -> STR_29(CODE[5]), STR_28(CODE[12]), STR_27(CODE[24]), KeroseneArray(BANK0[4]), 
;;		 -> SugarArray(BANK0[4]), RiseArray(BANK0[5]), STR_18(CODE[20]), STR_17(CODE[24]), 
;;		 -> STR_16(CODE[20]), STR_15(CODE[24]), STR_14(CODE[20]), STR_13(CODE[24]), 
;;		 -> STR_12(CODE[29]), STR_11(CODE[24]), STR_10(CODE[27]), STR_9(CODE[24]), 
;;		 -> STR_7(CODE[19]), STR_6(CODE[11]), STR_5(CODE[11]), STR_4(CODE[10]), 
;;		 -> STR_3(CODE[4]), 
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
;;   _gsm_init->_lcdstring
;;   _DisplayKerosene->___awdiv
;;   _DisplayRise->___awdiv
;;   _DisplaySugar->___awdiv
;;   _DisplayAmnt->___awdiv
;;   _lcdstring->_lcddata
;;   _lcd_init->_lcdcmd
;;   _SendStock->_usartstring
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
;; (0) _main                                                 3     3      0    9611
;;                                             21 BANK0      3     3      0
;;                          _uart_init
;;                           _lcd_init
;;                           _paramter
;;                  _SoftWareUart_Init
;;                            _startup
;;                           _gsm_init
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
;;                          _SendStock
;; ---------------------------------------------------------------------------------
;; (1) _startup                                              3     3      0     401
;;                                              9 BANK0      3     3      0
;;                             _lcdcmd
;;                          _lcdstring
;; ---------------------------------------------------------------------------------
;; (1) _DisplayStock                                         0     0      0    1486
;;                             _lcdcmd
;;                          _lcdstring
;;                        _DisplayAmnt
;; ---------------------------------------------------------------------------------
;; (1) _gsm_init                                             1     1      0     585
;;                                              9 BANK0      1     1      0
;;                             _lcdcmd
;;                          _lcdstring
;;                             _DelayS
;;                        _usartstring
;;                           _transmit
;;                            _receive
;; ---------------------------------------------------------------------------------
;; (1) _DisplayKerosene                                      4     3      1    1018
;;                                             16 BANK0      4     3      1
;;                             _lcdcmd
;;                            ___awdiv
;;                            _lcddata
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _DisplayRise                                          4     3      1    1018
;;                                             16 BANK0      4     3      1
;;                             _lcdcmd
;;                            ___awdiv
;;                            _lcddata
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _DisplaySugar                                         4     3      1    1018
;;                                             16 BANK0      4     3      1
;;                             _lcdcmd
;;                            ___awdiv
;;                            _lcddata
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (2) _DisplayAmnt                                          5     3      2    1085
;;                                             16 BANK0      5     3      2
;;                             _lcdcmd
;;                            ___awdiv
;;                            _lcddata
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (2) _lcdstring                                            2     0      2     223
;;                                              7 BANK0      2     0      2
;;                            _lcddata
;; ---------------------------------------------------------------------------------
;; (1) _lcd_init                                             2     2      0     266
;;                                              7 BANK0      2     2      0
;;                            _lcdport
;;                             _lcdcmd
;; ---------------------------------------------------------------------------------
;; (1) _SendStock                                            1     1      0      91
;;                                              3 BANK0      1     1      0
;;                        _usartstring
;;                           _transmit
;;                            _receive
;; ---------------------------------------------------------------------------------
;; (1) _RFID_read                                            3     3      0     204
;;                                              4 BANK0      3     3      0
;;                        _softreceive
;; ---------------------------------------------------------------------------------
;; (3) _lcddata                                              5     5      0     178
;;                                              2 BANK0      5     5      0
;;                            _lcdport
;;                             _enable
;; ---------------------------------------------------------------------------------
;; (3) _lcdcmd                                               5     5      0     178
;;                                              2 BANK0      5     5      0
;;                            _lcdport
;;                             _enable
;; ---------------------------------------------------------------------------------
;; (1) _LoadStockToArray                                     7     7      0     528
;;                                             14 BANK0      3     3      0
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (1) _paramter                                             3     3      0     114
;;                                             10 BANK0      3     3      0
;;                        _eeprom_read
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (1) _ReadStock                                            3     3      0     114
;;                                             10 BANK0      3     3      0
;;                        _eeprom_read
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (1) _ReadAmnt                                             3     3      0     114
;;                                             10 BANK0      3     3      0
;;                        _eeprom_read
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (2) _usartstring                                          2     0      2      67
;;                                              1 BANK0      2     0      2
;;                           _transmit
;; ---------------------------------------------------------------------------------
;; (2) _softreceive                                          4     4      0     136
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _SoftWareUart_Init                                    1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (4) _enable                                               2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _DelayS                                               3     3      0      90
;;                                              3 BANK0      3     3      0
;;                            _DelayMs
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     296
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     300
;;                                              7 BANK0      9     5      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              6 BANK0      8     4      4
;;                            ___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              4 BANK0      6     2      4
;;                        _eeprom_read (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _memcmp                                               7     2      5     118
;;                                              0 BANK0      7     2      5
;; ---------------------------------------------------------------------------------
;; (1) _eeprom_write                                         3     2      1      44
;;                                             16 BANK0      3     2      1
;;                            ___lwdiv (ARG)
;;                            ___lwmod (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _strcmp                                               6     4      2      89
;;                                              0 BANK0      6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _eeprom_read                                          4     4      0      22
;;                                              0 BANK0      4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _transmit                                             1     1      0      22
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _receive                                              0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _lcdport                                              1     1      0      88
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _DelayMs                                              3     3      0      45
;;                                              0 BANK0      3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (5) _ISR                                                  4     4      0     138
;;                                              4 COMMON     4     4      0
;;                     _gsm_read_line2
;; ---------------------------------------------------------------------------------
;; (6) _gsm_read_line2                                       4     4      0     138
;;                                              0 COMMON     4     4      0
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
;;     ___awdiv
;;       ___awmod (ARG)
;;     _lcddata
;;       _lcdport
;;       _enable
;;     ___awmod
;;   _DisplaySugar
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;     ___awdiv
;;       ___awmod (ARG)
;;     _lcddata
;;       _lcdport
;;       _enable
;;     ___awmod
;;   _DisplayKerosene
;;     _lcdcmd
;;       _lcdport
;;       _enable
;;     ___awdiv
;;       ___awmod (ARG)
;;     _lcddata
;;       _lcdport
;;       _enable
;;     ___awmod
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
;;   _SendStock
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
;;BANK1               50      0      4C       7       95.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      B3      12        0.0%
;;ABS                  0      0      A9       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       A       2        0.0%
;;BANK0               50     18      4F       5       98.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       E       1      100.0%
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
;;		On exit  : 0/0
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
;;		_SendStock
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
	
l4748:	
;Main.c: 215: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	216
;Main.c: 216: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	line	217
	
l4750:	
;Main.c: 217: TRISD=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	218
	
l4752:	
;Main.c: 218: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	219
;Main.c: 219: TRISC=0X8F;
	movlw	(08Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	220
	
l4754:	
;Main.c: 220: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	221
	
l4756:	
;Main.c: 221: INTCON=0xC0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	222
	
l4758:	
;Main.c: 222: uart_init();
	fcall	_uart_init
	line	223
	
l4760:	
;Main.c: 223: lcd_init();
	fcall	_lcd_init
	line	224
	
l4762:	
;Main.c: 224: paramter();
	fcall	_paramter
	line	225
	
l4764:	
;Main.c: 225: SoftWareUart_Init();
	fcall	_SoftWareUart_Init
	line	226
	
l4766:	
;Main.c: 226: startup();
	fcall	_startup
	line	227
	
l4768:	
;Main.c: 227: gsm_init();
	fcall	_gsm_init
	line	228
	
l4770:	
;Main.c: 228: PIE1=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(140)^080h	;volatile
	goto	l4772
	line	230
;Main.c: 230: while(1)
	
l1158:	
	line	232
	
l4772:	
;Main.c: 231: {
;Main.c: 232: ReadStock();
	fcall	_ReadStock
	line	233
	
l4774:	
;Main.c: 233: if(!RC0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l4786
u3770:
	line	235
	
l4776:	
;Main.c: 234: {
;Main.c: 235: lcdstring("PLEASE TAP YOUR  ");
	movlw	low(STR_34|8000h)
	movwf	(?_lcdstring)
	movlw	high(STR_34|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	236
	
l4778:	
;Main.c: 236: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	237
	
l4780:	
;Main.c: 237: lcdstring("SMART CARD       ");
	movlw	low(STR_35|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_35|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	238
	
l4782:	
;Main.c: 238: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u3867:
	decfsz	((??_main+0)+0),f
	goto	u3867
	decfsz	((??_main+0)+0+1),f
	goto	u3867
	decfsz	((??_main+0)+0+2),f
	goto	u3867
opt asmopt_on

	line	239
	
l4784:	
;Main.c: 239: rfid_flag=0;
	bcf	(_rfid_flag/8),(_rfid_flag)&7
	goto	l4786
	line	240
	
l1159:	
	line	241
	
l4786:	
;Main.c: 240: }
;Main.c: 241: RFID_read();
	fcall	_RFID_read
	line	242
	
l4788:	
;Main.c: 242: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	243
	
l4790:	
;Main.c: 243: lcdstring(sms);
	movlw	(_sms&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	(0x1/2)
	movwf	(?_lcdstring+1)
	fcall	_lcdstring
	line	246
	
l4792:	
;Main.c: 246: if(strcmp(card_store,User1)==0)
	movlw	(_User1)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l4798
u3780:
	line	248
	
l4794:	
;Main.c: 247: {
;Main.c: 248: User=1;
	movlw	low(01h)
	movwf	(_User)
	movlw	high(01h)
	movwf	((_User))+1
	line	249
	
l4796:	
;Main.c: 249: card_store[0]=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_card_store)^080h
	line	250
;Main.c: 250: }
	goto	l5018
	line	251
	
l1160:	
	
l4798:	
;Main.c: 251: else if(strcmp(card_store,User2)==0)
	movlw	(_User2)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u3791
	goto	u3790
u3791:
	goto	l4804
u3790:
	line	253
	
l4800:	
;Main.c: 252: {
;Main.c: 253: User=2;
	movlw	low(02h)
	movwf	(_User)
	movlw	high(02h)
	movwf	((_User))+1
	line	254
	
l4802:	
;Main.c: 254: card_store[0]=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_card_store)^080h
	line	255
;Main.c: 255: }
	goto	l5018
	line	256
	
l1162:	
	
l4804:	
;Main.c: 256: else if(strcmp(card_store,User3)==0)
	movlw	(_User3)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_strcmp)
	movlw	(_card_store)&0ffh
	fcall	_strcmp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l5018
u3800:
	line	258
	
l4806:	
;Main.c: 257: {
;Main.c: 258: User=3;
	movlw	low(03h)
	movwf	(_User)
	movlw	high(03h)
	movwf	((_User))+1
	line	259
	
l4808:	
;Main.c: 259: card_store[0]=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_card_store)^080h
	goto	l5018
	line	260
	
l1164:	
	goto	l5018
	line	262
	
l1163:	
	goto	l5018
	
l1161:	
;Main.c: 260: }
;Main.c: 262: switch(User)
	goto	l5018
	line	264
;Main.c: 263: {
;Main.c: 264: case 1:
	
l1166:	
	line	266
	
l4810:	
;Main.c: 265: {
;Main.c: 266: ReadAmnt();
	fcall	_ReadAmnt
	line	267
;Main.c: 267: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	268
	
l4812:	
;Main.c: 268: lcdstring("USER1 AMOUNT:       ");
	movlw	low(STR_36|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_36|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	269
	
l4814:	
;Main.c: 269: DisplayAmnt(0X8D,User1amt);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1amt+1),w
	clrf	(?_DisplayAmnt+1)
	addwf	(?_DisplayAmnt+1)
	movf	(_User1amt),w
	clrf	(?_DisplayAmnt)
	addwf	(?_DisplayAmnt)

	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	270
;Main.c: 270: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	271
	
l4816:	
;Main.c: 271: lcdstring("RISE:   Kg          ");
	movlw	low(STR_37|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_37|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	272
	
l4818:	
;Main.c: 272: DisplayRise(0XC5,User1Rise);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Rise),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	273
;Main.c: 273: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	274
	
l4820:	
;Main.c: 274: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_38|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_38|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	275
	
l4822:	
;Main.c: 275: DisplaySugar(0x9A,User1Sugar);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Sugar),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	276
;Main.c: 276: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	277
	
l4824:	
;Main.c: 277: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_39|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_39|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	278
	
l4826:	
;Main.c: 278: DisplayKerosene(0XDD,User1Kerosene);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Kerosene),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	279
	
l4828:	
;Main.c: 279: _delay((unsigned long)((8000)*(20000000/4000.0)));
	opt asmopt_off
movlw  203
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	35
movwf	((??_main+0)+0+1),f
	movlw	9
movwf	((??_main+0)+0),f
u3877:
	decfsz	((??_main+0)+0),f
	goto	u3877
	decfsz	((??_main+0)+0+1),f
	goto	u3877
	decfsz	((??_main+0)+0+2),f
	goto	u3877
	clrwdt
opt asmopt_on

	line	280
	
l4830:	
;Main.c: 280: RiseStock=RiseStock-User1Rise;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Rise),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_RiseStock),w
	addwf	0+(??_main+0)+0,w
	movwf	(_RiseStock)
	movf	(_RiseStock+1),w
	skipnc
	incf	(_RiseStock+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_RiseStock)
	line	281
	
l4832:	
;Main.c: 281: SugarStock=SugarStock-User1Sugar;
	movf	(_User1Sugar),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_SugarStock),w
	addwf	0+(??_main+0)+0,w
	movwf	(_SugarStock)
	movf	(_SugarStock+1),w
	skipnc
	incf	(_SugarStock+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_SugarStock)
	line	282
	
l4834:	
;Main.c: 282: KeroseneStock=KeroseneStock-User1Kerosene;
	movf	(_User1Kerosene),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_KeroseneStock),w
	addwf	0+(??_main+0)+0,w
	movwf	(_KeroseneStock)
	movf	(_KeroseneStock+1),w
	skipnc
	incf	(_KeroseneStock+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_KeroseneStock)
	line	283
	
l4836:	
;Main.c: 283: eeprom_write(24,RiseStock/100);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_RiseStock+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(018h)
	fcall	_eeprom_write
	line	284
	
l4838:	
;Main.c: 284: eeprom_write(25,RiseStock%100);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_RiseStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(019h)
	fcall	_eeprom_write
	line	285
	
l4840:	
;Main.c: 285: eeprom_write(26,SugarStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_SugarStock),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(01Ah)
	fcall	_eeprom_write
	line	286
	
l4842:	
;Main.c: 286: eeprom_write(27,KeroseneStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeroseneStock),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(01Bh)
	fcall	_eeprom_write
	line	287
	
l4844:	
;Main.c: 287: User1amt = User1amt-50;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1amt),w
	addlw	low(-50)
	movwf	(_User1amt)
	movf	(_User1amt+1),w
	skipnc
	addlw	1
	addlw	high(-50)
	movwf	1+(_User1amt)
	line	291
	
l4846:	
;Main.c: 291: eeprom_write(0,User1amt/100);
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_User1amt+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_User1amt),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0)
	fcall	_eeprom_write
	line	292
	
l4848:	
;Main.c: 292: eeprom_write(1,User1amt%100);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_User1amt+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_User1amt),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(01h)
	fcall	_eeprom_write
	line	293
	
l4850:	
;Main.c: 293: eeprom_write(2,User1Rise);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Rise),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(02h)
	fcall	_eeprom_write
	line	294
	
l4852:	
;Main.c: 294: eeprom_write(3,User1Sugar);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Sugar),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(03h)
	fcall	_eeprom_write
	line	295
	
l4854:	
;Main.c: 295: eeprom_write(4,User1Kerosene);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User1Kerosene),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(04h)
	fcall	_eeprom_write
	line	297
	
l4856:	
;Main.c: 297: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	298
	
l4858:	
;Main.c: 298: lcdstring(" PLEASE KEEP YOUR");
	movlw	low(STR_40|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_40|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	299
	
l4860:	
;Main.c: 299: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	300
	
l4862:	
;Main.c: 300: lcdstring(" CAN ON KEROSENE ");
	movlw	low(STR_41|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_41|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	301
	
l4864:	
;Main.c: 301: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	302
	
l4866:	
;Main.c: 302: lcdstring("      VOLUE      ");
	movlw	low(STR_42|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_42|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	303
	
l4868:	
;Main.c: 303: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u3887:
	decfsz	((??_main+0)+0),f
	goto	u3887
	decfsz	((??_main+0)+0+1),f
	goto	u3887
	decfsz	((??_main+0)+0+2),f
	goto	u3887
opt asmopt_on

	line	304
	
l4870:	
;Main.c: 304: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	305
	
l4872:	
;Main.c: 305: _delay((unsigned long)((5000)*(20000000/4000.0)));
	opt asmopt_off
movlw  127
movwf	((??_main+0)+0+2),f
movlw	86
movwf	((??_main+0)+0+1),f
	movlw	132
movwf	((??_main+0)+0),f
u3897:
	decfsz	((??_main+0)+0),f
	goto	u3897
	decfsz	((??_main+0)+0+1),f
	goto	u3897
	decfsz	((??_main+0)+0+2),f
	goto	u3897
	nop2
opt asmopt_on

	line	306
	
l4874:	
;Main.c: 306: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	307
	
l4876:	
;Main.c: 307: User=0;
	movlw	low(0)
	movwf	(_User)
	movlw	high(0)
	movwf	((_User))+1
	line	308
;Main.c: 308: break;
	goto	l5020
	line	310
;Main.c: 309: }
;Main.c: 310: case 2:
	
l1168:	
	line	312
	
l4878:	
;Main.c: 311: {
;Main.c: 312: ReadAmnt();
	fcall	_ReadAmnt
	line	313
;Main.c: 313: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	314
	
l4880:	
;Main.c: 314: lcdstring("USER2 AMOUNT:       ");
	movlw	low(STR_43|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_43|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	315
	
l4882:	
;Main.c: 315: DisplayAmnt(0X8D,User2amt);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2amt+1),w
	clrf	(?_DisplayAmnt+1)
	addwf	(?_DisplayAmnt+1)
	movf	(_User2amt),w
	clrf	(?_DisplayAmnt)
	addwf	(?_DisplayAmnt)

	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	316
;Main.c: 316: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	317
	
l4884:	
;Main.c: 317: lcdstring("RISE:   Kg          ");
	movlw	low(STR_44|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_44|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	318
	
l4886:	
;Main.c: 318: DisplayRise(0XC5,User2Rise);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Rise),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	319
;Main.c: 319: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	320
	
l4888:	
;Main.c: 320: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_45|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_45|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	321
	
l4890:	
;Main.c: 321: DisplaySugar(0x9A,User2Sugar);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Sugar),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	322
;Main.c: 322: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	323
	
l4892:	
;Main.c: 323: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_46|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_46|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	324
	
l4894:	
;Main.c: 324: DisplayKerosene(0XDD,User2Kerosene);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Kerosene),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	325
	
l4896:	
;Main.c: 325: _delay((unsigned long)((8000)*(20000000/4000.0)));
	opt asmopt_off
movlw  203
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	35
movwf	((??_main+0)+0+1),f
	movlw	9
movwf	((??_main+0)+0),f
u3907:
	decfsz	((??_main+0)+0),f
	goto	u3907
	decfsz	((??_main+0)+0+1),f
	goto	u3907
	decfsz	((??_main+0)+0+2),f
	goto	u3907
	clrwdt
opt asmopt_on

	line	326
	
l4898:	
;Main.c: 326: RiseStock=RiseStock-User2Rise;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Rise),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_RiseStock),w
	addwf	0+(??_main+0)+0,w
	movwf	(_RiseStock)
	movf	(_RiseStock+1),w
	skipnc
	incf	(_RiseStock+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_RiseStock)
	line	327
	
l4900:	
;Main.c: 327: SugarStock=SugarStock-User2Sugar;
	movf	(_User2Sugar),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_SugarStock),w
	addwf	0+(??_main+0)+0,w
	movwf	(_SugarStock)
	movf	(_SugarStock+1),w
	skipnc
	incf	(_SugarStock+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_SugarStock)
	line	328
	
l4902:	
;Main.c: 328: KeroseneStock=KeroseneStock-User2Kerosene;
	movf	(_User2Kerosene),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_KeroseneStock),w
	addwf	0+(??_main+0)+0,w
	movwf	(_KeroseneStock)
	movf	(_KeroseneStock+1),w
	skipnc
	incf	(_KeroseneStock+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_KeroseneStock)
	line	329
	
l4904:	
;Main.c: 329: eeprom_write(24,RiseStock/100);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_RiseStock+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(018h)
	fcall	_eeprom_write
	line	330
	
l4906:	
;Main.c: 330: eeprom_write(25,RiseStock%100);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_RiseStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(019h)
	fcall	_eeprom_write
	line	331
	
l4908:	
;Main.c: 331: eeprom_write(26,SugarStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_SugarStock),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(01Ah)
	fcall	_eeprom_write
	line	332
	
l4910:	
;Main.c: 332: eeprom_write(27,KeroseneStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeroseneStock),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(01Bh)
	fcall	_eeprom_write
	line	333
	
l4912:	
;Main.c: 333: User2amt = User2amt-30;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2amt),w
	addlw	low(-30)
	movwf	(_User2amt)
	movf	(_User2amt+1),w
	skipnc
	addlw	1
	addlw	high(-30)
	movwf	1+(_User2amt)
	line	337
	
l4914:	
;Main.c: 337: eeprom_write(8,User2amt/100);
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_User2amt+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_User2amt),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(08h)
	fcall	_eeprom_write
	line	338
	
l4916:	
;Main.c: 338: eeprom_write(9,User2amt%100);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_User2amt+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_User2amt),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(09h)
	fcall	_eeprom_write
	line	339
	
l4918:	
;Main.c: 339: eeprom_write(10,User2Rise);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Rise),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0Ah)
	fcall	_eeprom_write
	line	340
	
l4920:	
;Main.c: 340: eeprom_write(11,User2Sugar);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Sugar),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0Bh)
	fcall	_eeprom_write
	line	341
	
l4922:	
;Main.c: 341: eeprom_write(12,User2Kerosene);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User2Kerosene),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0Ch)
	fcall	_eeprom_write
	line	343
	
l4924:	
;Main.c: 343: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	344
	
l4926:	
;Main.c: 344: lcdstring(" PLEASE KEEP YOUR");
	movlw	low(STR_47|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_47|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	345
	
l4928:	
;Main.c: 345: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	346
	
l4930:	
;Main.c: 346: lcdstring(" CAN ON KEROSENE ");
	movlw	low(STR_48|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_48|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	347
	
l4932:	
;Main.c: 347: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	348
	
l4934:	
;Main.c: 348: lcdstring("      VOLUE      ");
	movlw	low(STR_49|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_49|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	349
	
l4936:	
;Main.c: 349: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u3917:
	decfsz	((??_main+0)+0),f
	goto	u3917
	decfsz	((??_main+0)+0+1),f
	goto	u3917
	decfsz	((??_main+0)+0+2),f
	goto	u3917
opt asmopt_on

	line	350
	
l4938:	
;Main.c: 350: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	351
	
l4940:	
;Main.c: 351: _delay((unsigned long)((8000)*(20000000/4000.0)));
	opt asmopt_off
movlw  203
movwf	((??_main+0)+0+2),f
movlw	35
movwf	((??_main+0)+0+1),f
	movlw	9
movwf	((??_main+0)+0),f
u3927:
	decfsz	((??_main+0)+0),f
	goto	u3927
	decfsz	((??_main+0)+0+1),f
	goto	u3927
	decfsz	((??_main+0)+0+2),f
	goto	u3927
	clrwdt
opt asmopt_on

	line	352
	
l4942:	
;Main.c: 352: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	353
	
l4944:	
;Main.c: 353: User=0;
	movlw	low(0)
	movwf	(_User)
	movlw	high(0)
	movwf	((_User))+1
	line	354
;Main.c: 354: break;
	goto	l5020
	line	356
;Main.c: 355: }
;Main.c: 356: case 3:
	
l1169:	
	line	358
	
l4946:	
;Main.c: 357: {
;Main.c: 358: ReadAmnt();
	fcall	_ReadAmnt
	line	359
;Main.c: 359: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	360
	
l4948:	
;Main.c: 360: lcdstring("USER3 AMOUNT:       ");
	movlw	low(STR_50|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_50|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	361
	
l4950:	
;Main.c: 361: DisplayAmnt(0X8D,User3amt);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3amt+1),w
	clrf	(?_DisplayAmnt+1)
	addwf	(?_DisplayAmnt+1)
	movf	(_User3amt),w
	clrf	(?_DisplayAmnt)
	addwf	(?_DisplayAmnt)

	movlw	(08Dh)
	fcall	_DisplayAmnt
	line	362
;Main.c: 362: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	363
	
l4952:	
;Main.c: 363: lcdstring("RISE:   Kg          ");
	movlw	low(STR_51|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_51|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	364
	
l4954:	
;Main.c: 364: DisplayRise(0XC5,User3Rise);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Rise),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplayRise)
	movlw	(0C5h)
	fcall	_DisplayRise
	line	365
;Main.c: 365: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	366
	
l4956:	
;Main.c: 366: lcdstring("SUGAR:   Kg         ");
	movlw	low(STR_52|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_52|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	367
	
l4958:	
;Main.c: 367: DisplaySugar(0x9A,User3Sugar);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Sugar),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplaySugar)
	movlw	(09Ah)
	fcall	_DisplaySugar
	line	368
;Main.c: 368: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	369
	
l4960:	
;Main.c: 369: lcdstring("KEROSENE:   Lts     ");
	movlw	low(STR_53|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_53|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	370
	
l4962:	
;Main.c: 370: DisplayKerosene(0XDD,User3Kerosene);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Kerosene),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_DisplayKerosene)
	movlw	(0DDh)
	fcall	_DisplayKerosene
	line	371
	
l4964:	
;Main.c: 371: _delay((unsigned long)((8000)*(20000000/4000.0)));
	opt asmopt_off
movlw  203
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	35
movwf	((??_main+0)+0+1),f
	movlw	9
movwf	((??_main+0)+0),f
u3937:
	decfsz	((??_main+0)+0),f
	goto	u3937
	decfsz	((??_main+0)+0+1),f
	goto	u3937
	decfsz	((??_main+0)+0+2),f
	goto	u3937
	clrwdt
opt asmopt_on

	line	372
	
l4966:	
;Main.c: 372: RiseStock=RiseStock-User3Rise;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Rise),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_RiseStock),w
	addwf	0+(??_main+0)+0,w
	movwf	(_RiseStock)
	movf	(_RiseStock+1),w
	skipnc
	incf	(_RiseStock+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_RiseStock)
	line	373
	
l4968:	
;Main.c: 373: SugarStock=SugarStock-User3Sugar;
	movf	(_User3Sugar),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_SugarStock),w
	addwf	0+(??_main+0)+0,w
	movwf	(_SugarStock)
	movf	(_SugarStock+1),w
	skipnc
	incf	(_SugarStock+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_SugarStock)
	line	374
	
l4970:	
;Main.c: 374: KeroseneStock=KeroseneStock-User3Kerosene;
	movf	(_User3Kerosene),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_KeroseneStock),w
	addwf	0+(??_main+0)+0,w
	movwf	(_KeroseneStock)
	movf	(_KeroseneStock+1),w
	skipnc
	incf	(_KeroseneStock+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(_KeroseneStock)
	line	375
	
l4972:	
;Main.c: 375: eeprom_write(24,RiseStock/100);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_RiseStock+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(018h)
	fcall	_eeprom_write
	line	376
	
l4974:	
;Main.c: 376: eeprom_write(25,RiseStock%100);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(_RiseStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(019h)
	fcall	_eeprom_write
	line	377
	
l4976:	
;Main.c: 377: eeprom_write(26,SugarStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_SugarStock),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(01Ah)
	fcall	_eeprom_write
	line	378
	
l4978:	
;Main.c: 378: eeprom_write(27,KeroseneStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeroseneStock),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(01Bh)
	fcall	_eeprom_write
	line	379
	
l4980:	
;Main.c: 379: User3amt = User3amt-20;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3amt),w
	addlw	low(-20)
	movwf	(_User3amt)
	movf	(_User3amt+1),w
	skipnc
	addlw	1
	addlw	high(-20)
	movwf	1+(_User3amt)
	line	383
	
l4982:	
;Main.c: 383: eeprom_write(16,User3amt/100);
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_User3amt+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_User3amt),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(010h)
	fcall	_eeprom_write
	line	384
	
l4984:	
;Main.c: 384: eeprom_write(17,User3amt%100);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_User3amt+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_User3amt),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(011h)
	fcall	_eeprom_write
	line	385
	
l4986:	
;Main.c: 385: eeprom_write(18,User3Rise);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Rise),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(012h)
	fcall	_eeprom_write
	line	386
	
l4988:	
;Main.c: 386: eeprom_write(19,User3Sugar);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Sugar),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(013h)
	fcall	_eeprom_write
	line	387
	
l4990:	
;Main.c: 387: eeprom_write(20,User3Kerosene);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_User3Kerosene),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(014h)
	fcall	_eeprom_write
	line	389
	
l4992:	
;Main.c: 389: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	390
	
l4994:	
;Main.c: 390: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	391
	
l4996:	
;Main.c: 391: lcdstring(" PLEASE KEEP YOUR");
	movlw	low(STR_54|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_54|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	392
	
l4998:	
;Main.c: 392: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	393
	
l5000:	
;Main.c: 393: lcdstring(" CAN ON KEROSENE ");
	movlw	low(STR_55|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_55|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	394
	
l5002:	
;Main.c: 394: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	395
	
l5004:	
;Main.c: 395: lcdstring("      VOLUE      ");
	movlw	low(STR_56|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_56|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	396
	
l5006:	
;Main.c: 396: _delay((unsigned long)((200)*(20000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u3947:
	decfsz	((??_main+0)+0),f
	goto	u3947
	decfsz	((??_main+0)+0+1),f
	goto	u3947
	decfsz	((??_main+0)+0+2),f
	goto	u3947
opt asmopt_on

	line	397
	
l5008:	
;Main.c: 397: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	398
	
l5010:	
;Main.c: 398: _delay((unsigned long)((5000)*(20000000/4000.0)));
	opt asmopt_off
movlw  127
movwf	((??_main+0)+0+2),f
movlw	86
movwf	((??_main+0)+0+1),f
	movlw	132
movwf	((??_main+0)+0),f
u3957:
	decfsz	((??_main+0)+0),f
	goto	u3957
	decfsz	((??_main+0)+0+1),f
	goto	u3957
	decfsz	((??_main+0)+0+2),f
	goto	u3957
	nop2
opt asmopt_on

	line	399
	
l5012:	
;Main.c: 399: RC4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(60/8),(60)&7
	line	400
	
l5014:	
;Main.c: 400: User=0;
	movlw	low(0)
	movwf	(_User)
	movlw	high(0)
	movwf	((_User))+1
	line	401
;Main.c: 401: break;
	goto	l5020
	line	403
	
l5016:	
;Main.c: 402: }
;Main.c: 403: }
	goto	l5020
	line	262
	
l1165:	
	
l5018:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     4     3 (average)
; direct_byte    22    19 (fixed)
;	Chosen strategy is simple_byte

	bcf	status, 5	;RP0=0, select bank0
	movf (_User+1),w
	xorlw	0^0	; case 0
	skipnz
	goto	l5068
	goto	l5020
	
l5068:	
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
	goto	l4810
	xorlw	2^1	; case 2
	skipnz
	goto	l4878
	xorlw	3^2	; case 3
	skipnz
	goto	l4946
	goto	l5020

	line	403
	
l1167:	
	line	404
	
l5020:	
;Main.c: 404: ReadStock();
	fcall	_ReadStock
	line	405
	
l5022:	
;Main.c: 405: LoadStockToArray();
	fcall	_LoadStockToArray
	line	406
	
l5024:	
;Main.c: 406: if(RC1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l5028
u3810:
	line	407
	
l5026:	
;Main.c: 407: DisplayStock();
	fcall	_DisplayStock
	goto	l5028
	
l1170:	
	line	408
	
l5028:	
;Main.c: 408: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	163
movwf	((??_main+0)+0+1),f
	movlw	189
movwf	((??_main+0)+0),f
u3967:
	decfsz	((??_main+0)+0),f
	goto	u3967
	decfsz	((??_main+0)+0+1),f
	goto	u3967
	decfsz	((??_main+0)+0+2),f
	goto	u3967
	clrwdt
opt asmopt_on

	line	410
	
l5030:	
;Main.c: 410: if((memcmp("STOCK",&sms,5)==0))
	movlw	low(STR_57|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_memcmp)
	movlw	high(STR_57|8000h)
	movwf	((?_memcmp))+1
	movlw	(_sms)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(0+?_memcmp+02h)
	movlw	low(05h)
	movwf	0+(?_memcmp)+03h
	movlw	high(05h)
	movwf	(0+(?_memcmp)+03h)+1
	fcall	_memcmp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((1+(?_memcmp))),w
	iorwf	((0+(?_memcmp))),w
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l5038
u3820:
	line	412
	
l5032:	
;Main.c: 411: {
;Main.c: 412: if(!sms_indication)
	btfsc	(_sms_indication/8),(_sms_indication)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l5038
u3830:
	line	414
	
l5034:	
;Main.c: 413: {
;Main.c: 414: SendStock();
	fcall	_SendStock
	line	415
	
l5036:	
;Main.c: 415: sms_indication=1;
	bsf	(_sms_indication/8),(_sms_indication)&7
	goto	l5038
	line	416
	
l1172:	
	goto	l5038
	line	417
	
l1171:	
	line	418
	
l5038:	
;Main.c: 416: }
;Main.c: 417: }
;Main.c: 418: if(RC3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(59/8),(59)&7
	goto	u3841
	goto	u3840
u3841:
	goto	l1174
u3840:
	line	420
	
l5040:	
;Main.c: 419: {
;Main.c: 420: eeprom_write(24,10);
	movlw	(0Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(018h)
	fcall	_eeprom_write
	line	421
;Main.c: 421: eeprom_write(25,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_eeprom_write)
	movlw	(019h)
	fcall	_eeprom_write
	line	422
;Main.c: 422: eeprom_write(26,255);
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(01Ah)
	fcall	_eeprom_write
	line	423
;Main.c: 423: eeprom_write(27,200);
	movlw	(0C8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(01Bh)
	fcall	_eeprom_write
	line	424
;Main.c: 424: ReadStock();
	fcall	_ReadStock
	line	426
	
l5042:	
;Main.c: 426: DisplayStock();
	fcall	_DisplayStock
	goto	l1174
	line	427
	
l1173:	
;Main.c: 427: }while(RC3);
	goto	l1174
	
l1175:	
	
l1174:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(59/8),(59)&7
	goto	u3851
	goto	u3850
u3851:
	goto	l1174
u3850:
	goto	l4772
	
l1176:	
	goto	l4772
	line	430
	
l1177:	
	line	230
	goto	l4772
	
l1178:	
	line	431
	
l1179:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_startup
psect	text896,local,class=CODE,delta=2
global __ptext896
__ptext896:

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
;;		On entry : 0/0
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
psect	text896
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	161
	global	__size_of_startup
	__size_of_startup	equ	__end_of_startup-_startup
	
_startup:	
	opt	stack 1
; Regs used in _startup: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	162
	
l4728:	
;Main.c: 162: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	163
	
l4730:	
;Main.c: 163: lcdstring("AUTOMATIC RATION ");
	movlw	low(STR_23|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_23|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	164
	
l4732:	
;Main.c: 164: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	165
;Main.c: 165: lcdstring("   CARD SYSTEM   ");
	movlw	low(STR_24|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_24|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	166
	
l4734:	
;Main.c: 166: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_startup+0)+0+2),f
movlw	69
movwf	((??_startup+0)+0+1),f
	movlw	126
movwf	((??_startup+0)+0),f
u3977:
	decfsz	((??_startup+0)+0),f
	goto	u3977
	decfsz	((??_startup+0)+0+1),f
	goto	u3977
	decfsz	((??_startup+0)+0+2),f
	goto	u3977
opt asmopt_on

	line	167
	
l4736:	
;Main.c: 167: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	168
	
l4738:	
;Main.c: 168: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_startup+0)+0+2),f
movlw	163
movwf	((??_startup+0)+0+1),f
	movlw	189
movwf	((??_startup+0)+0),f
u3987:
	decfsz	((??_startup+0)+0),f
	goto	u3987
	decfsz	((??_startup+0)+0+1),f
	goto	u3987
	decfsz	((??_startup+0)+0+2),f
	goto	u3987
	clrwdt
opt asmopt_on

	line	169
	
l4740:	
;Main.c: 169: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	170
;Main.c: 170: lcdstring("PLEASE TAP YOUR  ");
	movlw	low(STR_25|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_25|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	171
	
l4742:	
;Main.c: 171: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	172
	
l4744:	
;Main.c: 172: lcdstring("SMART CARD       ");
	movlw	low(STR_26|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_26|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	173
	
l4746:	
;Main.c: 173: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_startup+0)+0+2),f
movlw	69
movwf	((??_startup+0)+0+1),f
	movlw	126
movwf	((??_startup+0)+0),f
u3997:
	decfsz	((??_startup+0)+0),f
	goto	u3997
	decfsz	((??_startup+0)+0+1),f
	goto	u3997
	decfsz	((??_startup+0)+0+2),f
	goto	u3997
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
psect	text897,local,class=CODE,delta=2
global __ptext897
__ptext897:

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
;;		On entry : 0/0
;;		On exit  : 0/0
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
psect	text897
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	114
	global	__size_of_DisplayStock
	__size_of_DisplayStock	equ	__end_of_DisplayStock-_DisplayStock
	
_DisplayStock:	
	opt	stack 1
; Regs used in _DisplayStock: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	115
	
l4714:	
;Main.c: 115: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	116
	
l4716:	
;Main.c: 116: lcdstring("    STOCK DETAILS   ");
	movlw	low(STR_19|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_19|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	117
	
l4718:	
;Main.c: 117: lcdcmd(0xC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	118
;Main.c: 118: lcdstring("RISE:      Kg       ");
	movlw	low(STR_20|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_20|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	119
;Main.c: 119: DisplayAmnt(0XC5,RiseStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_RiseStock+1),w
	clrf	(?_DisplayAmnt+1)
	addwf	(?_DisplayAmnt+1)
	movf	(_RiseStock),w
	clrf	(?_DisplayAmnt)
	addwf	(?_DisplayAmnt)

	movlw	(0C5h)
	fcall	_DisplayAmnt
	line	120
	
l4720:	
;Main.c: 120: lcdcmd(0x94);
	movlw	(094h)
	fcall	_lcdcmd
	line	121
	
l4722:	
;Main.c: 121: lcdstring("SUGAR:    Kg         ");
	movlw	low(STR_21|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_21|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	122
	
l4724:	
;Main.c: 122: DisplayAmnt(0x9A,SugarStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_SugarStock+1),w
	clrf	(?_DisplayAmnt+1)
	addwf	(?_DisplayAmnt+1)
	movf	(_SugarStock),w
	clrf	(?_DisplayAmnt)
	addwf	(?_DisplayAmnt)

	movlw	(09Ah)
	fcall	_DisplayAmnt
	line	123
	
l4726:	
;Main.c: 123: lcdcmd(0xD4);
	movlw	(0D4h)
	fcall	_lcdcmd
	line	124
;Main.c: 124: lcdstring("KEROSENE:     Lts    ");
	movlw	low(STR_22|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_22|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	125
;Main.c: 125: DisplayAmnt(0XDD,KeroseneStock);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_KeroseneStock+1),w
	clrf	(?_DisplayAmnt+1)
	addwf	(?_DisplayAmnt+1)
	movf	(_KeroseneStock),w
	clrf	(?_DisplayAmnt)
	addwf	(?_DisplayAmnt)

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
	global	_gsm_init
psect	text898,local,class=CODE,delta=2
global __ptext898
__ptext898:

;; *************** function _gsm_init *****************
;; Defined at:
;;		line 29 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  d               1    9[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
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
psect	text898
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	29
	global	__size_of_gsm_init
	__size_of_gsm_init	equ	__end_of_gsm_init-_gsm_init
	
_gsm_init:	
	opt	stack 1
; Regs used in _gsm_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l4668:	
;UART.C: 30: unsigned char d;
;UART.C: 31: lcdcmd(0X80);
	movlw	(080h)
	fcall	_lcdcmd
	line	32
	
l4670:	
;UART.C: 32: lcdstring("GSM INITIALIZING");
	movlw	low(STR_1|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_1|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	33
	
l4672:	
;UART.C: 33: lcdcmd(0XC0);
	movlw	(0C0h)
	fcall	_lcdcmd
	line	34
;UART.C: 34: lcdstring("PLS WAIT........");
	movlw	low(STR_2|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_2|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	35
	
l4674:	
;UART.C: 35: DelayS(5);
	movlw	(05h)
	fcall	_DelayS
	line	36
	
l4676:	
;UART.C: 36: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	38
;UART.C: 38: usartstring("AT\r");
	movlw	low(STR_3|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	high(STR_3|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	39
	
l4678:	
;UART.C: 39: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	40
;UART.C: 40: while((d=receive())!='K');
	goto	l4680
	
l1037:	
	goto	l4680
	
l1036:	
	
l4680:	
	fcall	_receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(gsm_init@d)
	xorlw	04Bh
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l4680
u3720:
	goto	l4682
	
l1038:	
	line	42
	
l4682:	
;UART.C: 42: usartstring("AT+CPIN?\r");
	movlw	low(STR_4|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_4|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	43
	
l4684:	
;UART.C: 43: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	44
;UART.C: 44: while((d=receive())!='K');
	goto	l4686
	
l1040:	
	goto	l4686
	
l1039:	
	
l4686:	
	fcall	_receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(gsm_init@d)
	xorlw	04Bh
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l4686
u3730:
	goto	l4688
	
l1041:	
	line	46
	
l4688:	
;UART.C: 46: usartstring("AT+CSDH=1\r");
	movlw	low(STR_5|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_5|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	47
	
l4690:	
;UART.C: 47: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	48
;UART.C: 48: while((d=receive())!='K');
	goto	l4692
	
l1043:	
	goto	l4692
	
l1042:	
	
l4692:	
	fcall	_receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(gsm_init@d)
	xorlw	04Bh
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l4692
u3740:
	goto	l4694
	
l1044:	
	line	50
	
l4694:	
;UART.C: 50: usartstring("AT+CMGF=1\r");
	movlw	low(STR_6|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_6|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	51
	
l4696:	
;UART.C: 51: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	52
;UART.C: 52: while((d=receive())!='K');
	goto	l4698
	
l1046:	
	goto	l4698
	
l1045:	
	
l4698:	
	fcall	_receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(gsm_init@d)
	xorlw	04Bh
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l4698
u3750:
	goto	l4700
	
l1047:	
	line	54
	
l4700:	
;UART.C: 54: usartstring("AT+CNMI=2,2,0,0,0\r");
	movlw	low(STR_7|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_7|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	55
	
l4702:	
;UART.C: 55: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	56
;UART.C: 56: while((d=receive())!='K');
	goto	l4704
	
l1049:	
	goto	l4704
	
l1048:	
	
l4704:	
	fcall	_receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(gsm_init@d)
	xorlw	04Bh
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l4704
u3760:
	goto	l4706
	
l1050:	
	line	57
	
l4706:	
;UART.C: 57: lcdcmd(0x80);
	movlw	(080h)
	fcall	_lcdcmd
	line	58
	
l4708:	
;UART.C: 58: lcdstring("GSM READY");
	movlw	low(STR_8|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_lcdstring)
	movlw	high(STR_8|8000h)
	movwf	((?_lcdstring))+1
	fcall	_lcdstring
	line	59
	
l4710:	
;UART.C: 59: DelayS(10);
	movlw	(0Ah)
	fcall	_DelayS
	line	60
	
l4712:	
;UART.C: 60: lcdcmd(0x01);
	movlw	(01h)
	fcall	_lcdcmd
	line	61
	
l1051:	
	return
	opt stack 0
GLOBAL	__end_of_gsm_init
	__end_of_gsm_init:
;; =============== function _gsm_init ends ============

	signat	_gsm_init,88
	global	_DisplayKerosene
psect	text899,local,class=CODE,delta=2
global __ptext899
__ptext899:

;; *************** function _DisplayKerosene *****************
;; Defined at:
;;		line 140 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Kerosene        1   16[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Location        1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcdcmd
;;		___awdiv
;;		_lcddata
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text899
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	140
	global	__size_of_DisplayKerosene
	__size_of_DisplayKerosene	equ	__end_of_DisplayKerosene-_DisplayKerosene
	
_DisplayKerosene:	
	opt	stack 2
; Regs used in _DisplayKerosene: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayKerosene@Location stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DisplayKerosene@Location)
	line	141
	
l4662:	
;Main.c: 141: lcdcmd(Location);
	movf	(DisplayKerosene@Location),w
	fcall	_lcdcmd
	line	142
	
l4664:	
;Main.c: 142: lcddata(digit[Kerosene/10]);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplayKerosene@Kerosene),w
	movwf	(??_DisplayKerosene+0)+0
	clrf	(??_DisplayKerosene+0)+0+1
	movf	0+(??_DisplayKerosene+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_DisplayKerosene+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	143
	
l4666:	
;Main.c: 143: lcddata(digit[Kerosene%10]);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(DisplayKerosene@Kerosene),w
	movwf	(??_DisplayKerosene+0)+0
	clrf	(??_DisplayKerosene+0)+0+1
	movf	0+(??_DisplayKerosene+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_DisplayKerosene+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
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
psect	text900,local,class=CODE,delta=2
global __ptext900
__ptext900:

;; *************** function _DisplayRise *****************
;; Defined at:
;;		line 134 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Rise            1   16[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Location        1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcdcmd
;;		___awdiv
;;		_lcddata
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text900
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	134
	global	__size_of_DisplayRise
	__size_of_DisplayRise	equ	__end_of_DisplayRise-_DisplayRise
	
_DisplayRise:	
	opt	stack 2
; Regs used in _DisplayRise: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayRise@Location stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DisplayRise@Location)
	line	135
	
l4656:	
;Main.c: 135: lcdcmd(Location);
	movf	(DisplayRise@Location),w
	fcall	_lcdcmd
	line	136
	
l4658:	
;Main.c: 136: lcddata(digit[Rise/10]);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplayRise@Rise),w
	movwf	(??_DisplayRise+0)+0
	clrf	(??_DisplayRise+0)+0+1
	movf	0+(??_DisplayRise+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_DisplayRise+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	137
	
l4660:	
;Main.c: 137: lcddata(digit[Rise%10]);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(DisplayRise@Rise),w
	movwf	(??_DisplayRise+0)+0
	clrf	(??_DisplayRise+0)+0+1
	movf	0+(??_DisplayRise+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_DisplayRise+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
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
psect	text901,local,class=CODE,delta=2
global __ptext901
__ptext901:

;; *************** function _DisplaySugar *****************
;; Defined at:
;;		line 128 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Sugar           1   16[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Location        1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcdcmd
;;		___awdiv
;;		_lcddata
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text901
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	128
	global	__size_of_DisplaySugar
	__size_of_DisplaySugar	equ	__end_of_DisplaySugar-_DisplaySugar
	
_DisplaySugar:	
	opt	stack 2
; Regs used in _DisplaySugar: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplaySugar@Location stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DisplaySugar@Location)
	line	129
	
l4650:	
;Main.c: 129: lcdcmd(Location);
	movf	(DisplaySugar@Location),w
	fcall	_lcdcmd
	line	130
	
l4652:	
;Main.c: 130: lcddata(digit[Sugar/10]);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplaySugar@Sugar),w
	movwf	(??_DisplaySugar+0)+0
	clrf	(??_DisplaySugar+0)+0+1
	movf	0+(??_DisplaySugar+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_DisplaySugar+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	fcall	_lcddata
	line	131
	
l4654:	
;Main.c: 131: lcddata(digit[Sugar%10]);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(DisplaySugar@Sugar),w
	movwf	(??_DisplaySugar+0)+0
	clrf	(??_DisplaySugar+0)+0+1
	movf	0+(??_DisplaySugar+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_DisplaySugar+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
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
psect	text902,local,class=CODE,delta=2
global __ptext902
__ptext902:

;; *************** function _DisplayAmnt *****************
;; Defined at:
;;		line 82 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  Location        1    wreg     unsigned char 
;;  Amnt            2   16[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  Location        1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
psect	text902
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	82
	global	__size_of_DisplayAmnt
	__size_of_DisplayAmnt	equ	__end_of_DisplayAmnt-_DisplayAmnt
	
_DisplayAmnt:	
	opt	stack 1
; Regs used in _DisplayAmnt: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;DisplayAmnt@Location stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DisplayAmnt@Location)
	line	83
	
l4640:	
;Main.c: 83: lcdcmd(Location);
	movf	(DisplayAmnt@Location),w
	fcall	_lcdcmd
	line	84
	
l4642:	
;Main.c: 84: lcddata(digit[Amnt/1000]);
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(DisplayAmnt@Amnt+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(DisplayAmnt@Amnt),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l4644:	
;Main.c: 85: lcddata(digit[Amnt%1000/100]);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(DisplayAmnt@Amnt+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(DisplayAmnt@Amnt),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l4646:	
;Main.c: 86: lcddata(digit[Amnt%1000%100/10]);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(DisplayAmnt@Amnt+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(DisplayAmnt@Amnt),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l4648:	
;Main.c: 87: lcddata(digit[Amnt%1000%100%10]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(DisplayAmnt@Amnt+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(DisplayAmnt@Amnt),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(_DisplayAmnt$1137+1)
	addwf	(_DisplayAmnt$1137+1)
	movf	(0+(?___awmod)),w
	clrf	(_DisplayAmnt$1137)
	addwf	(_DisplayAmnt$1137)

;Main.c: 87: lcddata(digit[Amnt%1000%100%10]);
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_DisplayAmnt$1137+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_DisplayAmnt$1137),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
psect	text903,local,class=CODE,delta=2
global __ptext903
__ptext903:

;; *************** function _lcdstring *****************
;; Defined at:
;;		line 90 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               2    7[BANK0 ] PTR const unsigned char 
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
;;		On entry : 0/0
;;		On exit  : 0/0
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
psect	text903
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	90
	global	__size_of_lcdstring
	__size_of_lcdstring	equ	__end_of_lcdstring-_lcdstring
	
_lcdstring:	
	opt	stack 1
; Regs used in _lcdstring: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	91
	
l4632:	
;lcd.c: 91: while(*a)
	goto	l4638
	
l978:	
	line	93
	
l4634:	
;lcd.c: 92: {
;lcd.c: 93: lcddata(*a++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcdstring@a+1),w
	movwf	btemp+1
	movf	(lcdstring@a),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcddata
	
l4636:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(lcdstring@a),f
	skipnc
	incf	(lcdstring@a+1),f
	movlw	high(01h)
	addwf	(lcdstring@a+1),f
	goto	l4638
	line	94
	
l977:	
	line	91
	
l4638:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcdstring@a+1),w
	movwf	btemp+1
	movf	(lcdstring@a),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l4634
u3710:
	goto	l980
	
l979:	
	line	95
	
l980:	
	return
	opt stack 0
GLOBAL	__end_of_lcdstring
	__end_of_lcdstring:
;; =============== function _lcdstring ends ============

	signat	_lcdstring,4216
	global	_lcd_init
psect	text904,local,class=CODE,delta=2
global __ptext904
__ptext904:

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
;;		On entry : 0/0
;;		On exit  : 0/0
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
psect	text904
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	71
	global	__size_of_lcd_init
	__size_of_lcd_init	equ	__end_of_lcd_init-_lcd_init
	
_lcd_init:	
	opt	stack 2
; Regs used in _lcd_init: [wreg+status,2+status,0+pclath+cstack]
	line	72
	
l4622:	
;lcd.c: 72: lcdport(0x00);
	movlw	(0)
	fcall	_lcdport
	line	73
	
l4624:	
;lcd.c: 73: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	221
movwf	((??_lcd_init+0)+0),f
u4007:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4007
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4007
	nop2
opt asmopt_on

	line	74
	
l4626:	
;lcd.c: 74: lcdcmd(0x03);
	movlw	(03h)
	fcall	_lcdcmd
	line	75
;lcd.c: 75: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	118
movwf	((??_lcd_init+0)+0),f
u4017:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4017
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4017
	clrwdt
opt asmopt_on

	line	76
	
l4628:	
;lcd.c: 76: lcdcmd(0x03);
	movlw	(03h)
	fcall	_lcdcmd
	line	77
	
l4630:	
;lcd.c: 77: _delay((unsigned long)((11)*(20000000/4000.0)));
	opt asmopt_off
movlw	72
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_lcd_init+0)+0+1),f
	movlw	108
movwf	((??_lcd_init+0)+0),f
u4027:
	decfsz	((??_lcd_init+0)+0),f
	goto	u4027
	decfsz	((??_lcd_init+0)+0+1),f
	goto	u4027
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
	global	_SendStock
psect	text905,local,class=CODE,delta=2
global __ptext905
__ptext905:

;; *************** function _SendStock *****************
;; Defined at:
;;		line 191 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  d               1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
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
psect	text905
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	191
	global	__size_of_SendStock
	__size_of_SendStock	equ	__end_of_SendStock-_SendStock
	
_SendStock:	
	opt	stack 2
; Regs used in _SendStock: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	193
	
l4592:	
;Main.c: 192: unsigned char d;
;Main.c: 193: PIE1=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(140)^080h	;volatile
	line	194
	
l4594:	
;Main.c: 194: usartstring("AT+CMGS=\"+919003831304\"");
	movlw	low(STR_27|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	high(STR_27|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	195
	
l4596:	
;Main.c: 195: transmit(0x0D);
	movlw	(0Dh)
	fcall	_transmit
	line	196
;Main.c: 196: while((d=receive())!='>');
	goto	l4598
	
l1150:	
	goto	l4598
	
l1149:	
	
l4598:	
	fcall	_receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SendStock@d)
	xorlw	03Eh
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l4598
u3690:
	goto	l4600
	
l1151:	
	line	197
	
l4600:	
;Main.c: 197: usartstring("Rise Stock:");
	movlw	low(STR_28|8000h)
	movwf	(?_usartstring)
	movlw	high(STR_28|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	198
;Main.c: 198: usartstring(RiseArray);
	movlw	(_RiseArray&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	(0x0/2)
	movwf	(?_usartstring+1)
	fcall	_usartstring
	line	199
;Main.c: 199: usartstring(" Kgs");
	movlw	low(STR_29|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	high(STR_29|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	200
	
l4602:	
;Main.c: 200: transmit('\r');
	movlw	(0Dh)
	fcall	_transmit
	line	201
	
l4604:	
;Main.c: 201: usartstring("Sugar Stock:");
	movlw	low(STR_30|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	high(STR_30|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	202
	
l4606:	
;Main.c: 202: usartstring(SugarArray);
	movlw	(_SugarArray&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	(0x0/2)
	movwf	(?_usartstring+1)
	fcall	_usartstring
	line	203
	
l4608:	
;Main.c: 203: usartstring(" Kgs");
	movlw	low(STR_31|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	high(STR_31|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	204
;Main.c: 204: transmit('\r');
	movlw	(0Dh)
	fcall	_transmit
	line	205
	
l4610:	
;Main.c: 205: usartstring("Kerosene Stock:");
	movlw	low(STR_32|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	high(STR_32|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	206
	
l4612:	
;Main.c: 206: usartstring(KeroseneArray);
	movlw	(_KeroseneArray&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	(0x0/2)
	movwf	(?_usartstring+1)
	fcall	_usartstring
	line	207
	
l4614:	
;Main.c: 207: usartstring(" Lts");
	movlw	low(STR_33|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_usartstring)
	movlw	high(STR_33|8000h)
	movwf	((?_usartstring))+1
	fcall	_usartstring
	line	208
	
l4616:	
;Main.c: 208: transmit(0x1A);
	movlw	(01Ah)
	fcall	_transmit
	line	209
;Main.c: 209: while((d=receive())!='K');
	goto	l4618
	
l1153:	
	goto	l4618
	
l1152:	
	
l4618:	
	fcall	_receive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SendStock@d)
	xorlw	04Bh
	skipz
	goto	u3701
	goto	u3700
u3701:
	goto	l4618
u3700:
	goto	l4620
	
l1154:	
	line	210
	
l4620:	
;Main.c: 210: PIE1=0X20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(140)^080h	;volatile
	line	211
	
l1155:	
	return
	opt stack 0
GLOBAL	__end_of_SendStock
	__end_of_SendStock:
;; =============== function _SendStock ends ============

	signat	_SendStock,88
	global	_RFID_read
psect	text906,local,class=CODE,delta=2
global __ptext906
__ptext906:

;; *************** function _RFID_read *****************
;; Defined at:
;;		line 73 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[BANK0 ] int 
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_softreceive
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text906
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	73
	global	__size_of_RFID_read
	__size_of_RFID_read	equ	__end_of_RFID_read-_RFID_read
	
_RFID_read:	
	opt	stack 3
; Regs used in _RFID_read: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	74
	
l4578:	
;Main.c: 74: if(!rfid_flag)
	btfsc	(_rfid_flag/8),(_rfid_flag)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l1113
u3660:
	line	76
	
l4580:	
;Main.c: 75: {
;Main.c: 76: for(int i=0;i<12;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RFID_read@i)
	movlw	high(0)
	movwf	((RFID_read@i))+1
	
l4582:	
	movf	(RFID_read@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3675
	movlw	low(0Ch)
	subwf	(RFID_read@i),w
u3675:

	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l4586
u3670:
	goto	l1112
	
l4584:	
	goto	l1112
	line	77
	
l1111:	
	
l4586:	
;Main.c: 77: {card_store[i]=softreceive();}
	fcall	_softreceive
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RFID_read+0)+0
	movf	(RFID_read@i),w
	addlw	_card_store&0ffh
	movwf	fsr0
	movf	(??_RFID_read+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	76
	
l4588:	
	movlw	low(01h)
	addwf	(RFID_read@i),f
	skipnc
	incf	(RFID_read@i+1),f
	movlw	high(01h)
	addwf	(RFID_read@i+1),f
	
l4590:	
	movf	(RFID_read@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3685
	movlw	low(0Ch)
	subwf	(RFID_read@i),w
u3685:

	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l4586
u3680:
	
l1112:	
	line	78
;Main.c: 78: rfid_flag=1;
	bsf	(_rfid_flag/8),(_rfid_flag)&7
	goto	l1113
	line	79
	
l1110:	
	line	80
	
l1113:	
	return
	opt stack 0
GLOBAL	__end_of_RFID_read
	__end_of_RFID_read:
;; =============== function _RFID_read ends ============

	signat	_RFID_read,88
	global	_lcddata
psect	text907,local,class=CODE,delta=2
global __ptext907
__ptext907:

;; *************** function _lcddata *****************
;; Defined at:
;;		line 51 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    6[BANK0 ] unsigned char 
;;  z               1    5[BANK0 ] unsigned char 
;;  y               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
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
psect	text907
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	51
	global	__size_of_lcddata
	__size_of_lcddata	equ	__end_of_lcddata-_lcddata
	
_lcddata:	
	opt	stack 1
; Regs used in _lcddata: [wreg+status,2+status,0+pclath+cstack]
;lcddata@a stored from wreg
	line	53
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcddata@a)
	
l4562:	
;lcd.c: 52: unsigned char y,z;
;lcd.c: 53: z=a>>4&0x0F;
	movf	(lcddata@a),w
	movwf	(??_lcddata+0)+0
	movlw	04h
u3655:
	clrc
	rrf	(??_lcddata+0)+0,f
	addlw	-1
	skipz
	goto	u3655
	movf	0+(??_lcddata+0)+0,w
	andlw	0Fh
	movwf	(??_lcddata+1)+0
	movf	(??_lcddata+1)+0,w
	movwf	(lcddata@z)
	line	54
	
l4564:	
;lcd.c: 54: y=a&0x0F;
	movf	(lcddata@a),w
	andlw	0Fh
	movwf	(??_lcddata+0)+0
	movf	(??_lcddata+0)+0,w
	movwf	(lcddata@y)
	line	55
	
l4566:	
;lcd.c: 55: RD2=1;
	bsf	(66/8),(66)&7
	line	56
	
l4568:	
;lcd.c: 56: lcdport(z);
	movf	(lcddata@z),w
	fcall	_lcdport
	line	57
	
l4570:	
;lcd.c: 57: enable();
	fcall	_enable
	line	58
	
l4572:	
;lcd.c: 58: lcdport(y);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcddata@y),w
	fcall	_lcdport
	line	59
	
l4574:	
;lcd.c: 59: enable();
	fcall	_enable
	line	60
	
l4576:	
;lcd.c: 60: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
psect	text908,local,class=CODE,delta=2
global __ptext908
__ptext908:

;; *************** function _lcdcmd *****************
;; Defined at:
;;		line 39 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    6[BANK0 ] unsigned char 
;;  z               1    5[BANK0 ] unsigned char 
;;  y               1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
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
;;		_lcdclear
;;		_Lcd_Shift_Right
;;		_Lcd_Shift_Left
;; This function uses a non-reentrant model
;;
psect	text908
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
	
l4550:	
;lcd.c: 40: unsigned char y,z;
;lcd.c: 41: z=a>>4&0x0F;
	movf	(lcdcmd@a),w
	movwf	(??_lcdcmd+0)+0
	movlw	04h
u3645:
	clrc
	rrf	(??_lcdcmd+0)+0,f
	addlw	-1
	skipz
	goto	u3645
	movf	0+(??_lcdcmd+0)+0,w
	andlw	0Fh
	movwf	(??_lcdcmd+1)+0
	movf	(??_lcdcmd+1)+0,w
	movwf	(lcdcmd@z)
	line	42
	
l4552:	
;lcd.c: 42: y=a&0x0F;
	movf	(lcdcmd@a),w
	andlw	0Fh
	movwf	(??_lcdcmd+0)+0
	movf	(??_lcdcmd+0)+0,w
	movwf	(lcdcmd@y)
	line	44
	
l4554:	
;lcd.c: 44: lcdport(z);
	movf	(lcdcmd@z),w
	fcall	_lcdport
	line	45
	
l4556:	
;lcd.c: 45: enable();
	fcall	_enable
	line	46
	
l4558:	
;lcd.c: 46: lcdport(y);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(lcdcmd@y),w
	fcall	_lcdport
	line	47
	
l4560:	
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
psect	text909,local,class=CODE,delta=2
global __ptext909
__ptext909:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text909
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	177
	global	__size_of_LoadStockToArray
	__size_of_LoadStockToArray	equ	__end_of_LoadStockToArray-_LoadStockToArray
	
_LoadStockToArray:	
	opt	stack 3
; Regs used in _LoadStockToArray: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	178
	
l4532:	
;Main.c: 178: RiseArray[0] = digit[RiseStock/1000];
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(_RiseStock+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
	movwf	(_RiseArray)
	line	179
;Main.c: 179: RiseArray[1] = digit[RiseStock%1000/100];
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_RiseStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
	movwf	0+(_RiseArray)+01h
	line	180
;Main.c: 180: RiseArray[2] = digit[RiseStock%1000%100/10];
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_RiseStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
	movwf	0+(_RiseArray)+02h
	line	181
	
l4534:	
;Main.c: 181: RiseArray[3] = digit[RiseStock%1000%100%10];
	movf	(_RiseStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_RiseStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_LoadStockToArray$1138+1)
	addwf	(_LoadStockToArray$1138+1)
	movf	(0+(?___lwmod)),w
	clrf	(_LoadStockToArray$1138)
	addwf	(_LoadStockToArray$1138)

	
l4536:	
;Main.c: 181: RiseArray[3] = digit[RiseStock%1000%100%10];
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_LoadStockToArray$1138+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_LoadStockToArray$1138),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
	movwf	0+(_RiseArray)+03h
	line	182
	
l4538:	
;Main.c: 182: SugarArray[0] = digit[SugarStock/100];
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_SugarStock+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_SugarStock),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
	movwf	(_SugarArray)
	line	183
	
l4540:	
;Main.c: 183: SugarArray[1] = digit[SugarStock%100/10];
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_SugarStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_SugarStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
	movwf	0+(_SugarArray)+01h
	line	184
;Main.c: 184: SugarArray[2] = digit[SugarStock%100%10];
	movf	(_SugarStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_SugarStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_LoadStockToArray$1138+1)
	addwf	(_LoadStockToArray$1138+1)
	movf	(0+(?___lwmod)),w
	clrf	(_LoadStockToArray$1138)
	addwf	(_LoadStockToArray$1138)

	
l4542:	
;Main.c: 184: SugarArray[2] = digit[SugarStock%100%10];
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_LoadStockToArray$1138+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_LoadStockToArray$1138),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
	movwf	0+(_SugarArray)+02h
	line	185
	
l4544:	
;Main.c: 185: KeroseneArray[0] = digit[KeroseneStock/100];
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_KeroseneStock+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_KeroseneStock),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
	movwf	(_KeroseneArray)
	line	186
	
l4546:	
;Main.c: 186: KeroseneArray[1] = digit[KeroseneStock%100/10];
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_KeroseneStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_KeroseneStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
	movwf	0+(_KeroseneArray)+01h
	line	187
	
l4548:	
;Main.c: 187: KeroseneArray[2] = digit[KeroseneStock%100%10];
	movf	(_KeroseneStock+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_KeroseneStock),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwmod)),w
	clrf	(_LoadStockToArray$1138+1)
	addwf	(_LoadStockToArray$1138+1)
	movf	(0+(?___lwmod)),w
	clrf	(_LoadStockToArray$1138)
	addwf	(_LoadStockToArray$1138)

;Main.c: 187: KeroseneArray[2] = digit[KeroseneStock%100%10];
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(_LoadStockToArray$1138+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_LoadStockToArray$1138),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	low(_digit|8000h)
	movwf	fsr0
	movlw	high(_digit|8000h)
	skipnc
	addlw	1
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LoadStockToArray+0)+0
	movf	(??_LoadStockToArray+0)+0,w
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
psect	text910,local,class=CODE,delta=2
global __ptext910
__ptext910:

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
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_eeprom_read
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text910
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	156
	global	__size_of_paramter
	__size_of_paramter	equ	__end_of_paramter-_paramter
	
_paramter:	
	opt	stack 3
; Regs used in _paramter: [wreg+status,2+status,0+pclath+cstack]
	line	157
	
l4530:	
;Main.c: 157: c1=(eeprom_read(0)*100)+eeprom_read(1);
	movlw	(01h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_paramter+0)+0
	movlw	(0)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_paramter+1)+0
	clrf	(??_paramter+1)+0+1
	movf	0+(??_paramter+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_paramter+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_paramter+0)+0,w
	addwf	(0+(?___wmul)),w
	movwf	(_c1)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_c1)
	line	158
;Main.c: 158: c2=(eeprom_read(2)*100)+eeprom_read(3);
	movlw	(03h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_paramter+0)+0
	movlw	(02h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_paramter+1)+0
	clrf	(??_paramter+1)+0+1
	movf	0+(??_paramter+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_paramter+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_paramter+0)+0,w
	addwf	(0+(?___wmul)),w
	movwf	(_c2)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_c2)
	line	159
	
l1140:	
	return
	opt stack 0
GLOBAL	__end_of_paramter
	__end_of_paramter:
;; =============== function _paramter ends ============

	signat	_paramter,88
	global	_ReadStock
psect	text911,local,class=CODE,delta=2
global __ptext911
__ptext911:

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
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_eeprom_read
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text911
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	107
	global	__size_of_ReadStock
	__size_of_ReadStock	equ	__end_of_ReadStock-_ReadStock
	
_ReadStock:	
	opt	stack 3
; Regs used in _ReadStock: [wreg+status,2+status,0+pclath+cstack]
	line	108
	
l4528:	
;Main.c: 108: RiseStock=(eeprom_read(24)*100)+eeprom_read(25);
	movlw	(019h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadStock+0)+0
	movlw	(018h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadStock+1)+0
	clrf	(??_ReadStock+1)+0+1
	movf	0+(??_ReadStock+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_ReadStock+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_ReadStock+0)+0,w
	addwf	(0+(?___wmul)),w
	movwf	(_RiseStock)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_RiseStock)
	line	109
;Main.c: 109: SugarStock=eeprom_read(26);
	movlw	(01Ah)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadStock+0)+0
	clrf	(??_ReadStock+0)+0+1
	movf	0+(??_ReadStock+0)+0,w
	movwf	(_SugarStock)
	movf	1+(??_ReadStock+0)+0,w
	movwf	(_SugarStock+1)
	line	110
;Main.c: 110: KeroseneStock=eeprom_read(27);
	movlw	(01Bh)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadStock+0)+0
	clrf	(??_ReadStock+0)+0+1
	movf	0+(??_ReadStock+0)+0,w
	movwf	(_KeroseneStock)
	movf	1+(??_ReadStock+0)+0,w
	movwf	(_KeroseneStock+1)
	line	111
	
l1122:	
	return
	opt stack 0
GLOBAL	__end_of_ReadStock
	__end_of_ReadStock:
;; =============== function _ReadStock ends ============

	signat	_ReadStock,88
	global	_ReadAmnt
psect	text912,local,class=CODE,delta=2
global __ptext912
__ptext912:

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
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_eeprom_read
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text912
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	91
	global	__size_of_ReadAmnt
	__size_of_ReadAmnt	equ	__end_of_ReadAmnt-_ReadAmnt
	
_ReadAmnt:	
	opt	stack 3
; Regs used in _ReadAmnt: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l4526:	
;Main.c: 92: User1amt=(eeprom_read(0)*100)+eeprom_read(1);
	movlw	(01h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movlw	(0)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+1)+0
	clrf	(??_ReadAmnt+1)+0+1
	movf	0+(??_ReadAmnt+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_ReadAmnt+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_ReadAmnt+0)+0,w
	addwf	(0+(?___wmul)),w
	movwf	(_User1amt)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_User1amt)
	line	93
;Main.c: 93: User2amt=(eeprom_read(8)*100)+eeprom_read(9);
	movlw	(09h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movlw	(08h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+1)+0
	clrf	(??_ReadAmnt+1)+0+1
	movf	0+(??_ReadAmnt+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_ReadAmnt+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_ReadAmnt+0)+0,w
	addwf	(0+(?___wmul)),w
	movwf	(_User2amt)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_User2amt)
	line	94
;Main.c: 94: User3amt=(eeprom_read(16)*100)+eeprom_read(17);
	movlw	(011h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movlw	(010h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+1)+0
	clrf	(??_ReadAmnt+1)+0+1
	movf	0+(??_ReadAmnt+1)+0,w
	movwf	(?___wmul)
	movf	1+(??_ReadAmnt+1)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_ReadAmnt+0)+0,w
	addwf	(0+(?___wmul)),w
	movwf	(_User3amt)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_User3amt)
	line	95
;Main.c: 95: User1Rise = eeprom_read(2);
	movlw	(02h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movf	(??_ReadAmnt+0)+0,w
	movwf	(_User1Rise)
	line	96
;Main.c: 96: User2Rise = eeprom_read(10);
	movlw	(0Ah)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movf	(??_ReadAmnt+0)+0,w
	movwf	(_User2Rise)
	line	97
;Main.c: 97: User3Rise = eeprom_read(18);
	movlw	(012h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movf	(??_ReadAmnt+0)+0,w
	movwf	(_User3Rise)
	line	98
;Main.c: 98: User1Kerosene = eeprom_read(4);
	movlw	(04h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movf	(??_ReadAmnt+0)+0,w
	movwf	(_User1Kerosene)
	line	99
;Main.c: 99: User2Kerosene = eeprom_read(12);
	movlw	(0Ch)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movf	(??_ReadAmnt+0)+0,w
	movwf	(_User2Kerosene)
	line	100
;Main.c: 100: User3Kerosene = eeprom_read(20);
	movlw	(014h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movf	(??_ReadAmnt+0)+0,w
	movwf	(_User3Kerosene)
	line	101
;Main.c: 101: User1Sugar = eeprom_read(3);
	movlw	(03h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movf	(??_ReadAmnt+0)+0,w
	movwf	(_User1Sugar)
	line	102
;Main.c: 102: User2Sugar = eeprom_read(11);
	movlw	(0Bh)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movf	(??_ReadAmnt+0)+0,w
	movwf	(_User2Sugar)
	line	103
;Main.c: 103: User3Sugar = eeprom_read(19);
	movlw	(013h)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ReadAmnt+0)+0
	movf	(??_ReadAmnt+0)+0,w
	movwf	(_User3Sugar)
	line	104
	
l1119:	
	return
	opt stack 0
GLOBAL	__end_of_ReadAmnt
	__end_of_ReadAmnt:
;; =============== function _ReadAmnt ends ============

	signat	_ReadAmnt,88
	global	_usartstring
psect	text913,local,class=CODE,delta=2
global __ptext913
__ptext913:

;; *************** function _usartstring *****************
;; Defined at:
;;		line 22 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
;; Parameters:    Size  Location     Type
;;  st              2    1[BANK0 ] PTR const unsigned char 
;;		 -> STR_33(5), STR_32(16), STR_31(5), STR_30(13), 
;;		 -> STR_29(5), STR_28(12), STR_27(24), KeroseneArray(4), 
;;		 -> SugarArray(4), RiseArray(5), STR_18(20), STR_17(24), 
;;		 -> STR_16(20), STR_15(24), STR_14(20), STR_13(24), 
;;		 -> STR_12(29), STR_11(24), STR_10(27), STR_9(24), 
;;		 -> STR_7(19), STR_6(11), STR_5(11), STR_4(10), 
;;		 -> STR_3(4), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
;;		_SendStock
;;		_send_moister_message2
;;		_send_moister_message1
;;		_send_stage1_message
;;		_send_stage2_message
;;		_send_stage3_message
;; This function uses a non-reentrant model
;;
psect	text913
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	22
	global	__size_of_usartstring
	__size_of_usartstring	equ	__end_of_usartstring-_usartstring
	
_usartstring:	
	opt	stack 2
; Regs used in _usartstring: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l4518:	
;UART.C: 23: while(*st)
	goto	l4524
	
l1031:	
	line	24
	
l4520:	
;UART.C: 24: transmit(*st++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(usartstring@st+1),w
	movwf	btemp+1
	movf	(usartstring@st),w
	movwf	fsr0
	fcall	stringtab
	fcall	_transmit
	
l4522:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(usartstring@st),f
	skipnc
	incf	(usartstring@st+1),f
	movlw	high(01h)
	addwf	(usartstring@st+1),f
	goto	l4524
	
l1030:	
	line	23
	
l4524:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(usartstring@st+1),w
	movwf	btemp+1
	movf	(usartstring@st),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l4520
u3630:
	goto	l1033
	
l1032:	
	line	25
	
l1033:	
	return
	opt stack 0
GLOBAL	__end_of_usartstring
	__end_of_usartstring:
;; =============== function _usartstring ends ============

	signat	_usartstring,4216
	global	_softreceive
psect	text914,local,class=CODE,delta=2
global __ptext914
__ptext914:

;; *************** function _softreceive *****************
;; Defined at:
;;		line 21 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mask            1    3[BANK0 ] unsigned char 
;;  Data            1    2[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RFID_read
;; This function uses a non-reentrant model
;;
psect	text914
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
	line	21
	global	__size_of_softreceive
	__size_of_softreceive	equ	__end_of_softreceive-_softreceive
	
_softreceive:	
	opt	stack 3
; Regs used in _softreceive: [wreg+status,2+status,0]
	line	24
	
l4496:	
;softuart.c: 22: char mask;
;softuart.c: 23: char Data;
;softuart.c: 24: Data=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(softreceive@Data)
	line	25
;softuart.c: 25: while(RD0);
	goto	l992
	
l993:	
	
l992:	
	btfsc	(64/8),(64)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l992
u3590:
	goto	l4498
	
l994:	
	line	26
	
l4498:	
;softuart.c: 26: _delay((unsigned long)(((((1000000/9600)-2)/2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	84
movwf	(??_softreceive+0)+0,f
u4037:
decfsz	(??_softreceive+0)+0,f
	goto	u4037
	nop2	;nop
opt asmopt_on

	line	27
	
l4500:	
;softuart.c: 27: for(mask=0x01;mask!=0;mask=mask<<1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(softreceive@mask)
	bsf	status,0
	rlf	(softreceive@mask),f
	
l4502:	
	movf	(softreceive@mask),f
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l4506
u3600:
	goto	l4514
	
l4504:	
	goto	l4514
	line	28
	
l995:	
	line	29
	
l4506:	
;softuart.c: 28: {
;softuart.c: 29: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_softreceive+0)+0,f
u4047:
decfsz	(??_softreceive+0)+0,f
	goto	u4047
	nop2	;nop
opt asmopt_on

	line	30
	
l4508:	
;softuart.c: 30: if(RD0)Data=Data|mask;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(64/8),(64)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l997
u3610:
	
l4510:	
	movf	(softreceive@Data),w
	iorwf	(softreceive@mask),w
	movwf	(??_softreceive+0)+0
	movf	(??_softreceive+0)+0,w
	movwf	(softreceive@Data)
	
l997:	
	line	27
	movf	(softreceive@mask),w
	movwf	(??_softreceive+0)+0
	addwf	(??_softreceive+0)+0,w
	movwf	(??_softreceive+1)+0
	movf	(??_softreceive+1)+0,w
	movwf	(softreceive@mask)
	
l4512:	
	movf	(softreceive@mask),f
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l4506
u3620:
	goto	l4514
	
l996:	
	line	32
	
l4514:	
;softuart.c: 31: }
;softuart.c: 32: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_softreceive+0)+0,f
u4057:
decfsz	(??_softreceive+0)+0,f
	goto	u4057
	nop2	;nop
opt asmopt_on

	line	33
;softuart.c: 33: return Data;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(softreceive@Data),w
	goto	l998
	
l4516:	
	line	34
	
l998:	
	return
	opt stack 0
GLOBAL	__end_of_softreceive
	__end_of_softreceive:
;; =============== function _softreceive ends ============

	signat	_softreceive,89
	global	_SoftWareUart_Init
psect	text915,local,class=CODE,delta=2
global __ptext915
__ptext915:

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
;;		On entry : 0/0
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
psect	text915
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\softuart.c"
	line	10
	global	__size_of_SoftWareUart_Init
	__size_of_SoftWareUart_Init	equ	__end_of_SoftWareUart_Init-_SoftWareUart_Init
	
_SoftWareUart_Init:	
	opt	stack 4
; Regs used in _SoftWareUart_Init: [wreg]
	line	11
	
l4492:	
;softuart.c: 11: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	12
;softuart.c: 12: RD0=1;
	bsf	(64/8),(64)&7
	line	13
;softuart.c: 13: TRISD1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1089/8)^080h,(1089)&7
	line	14
;softuart.c: 14: TRISD0=1;
	bsf	(1088/8)^080h,(1088)&7
	line	15
;softuart.c: 15: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	16
	
l4494:	
;softuart.c: 16: _delay((unsigned long)((((1000000/9600)-2))*(20000000/4000000.0)));
	opt asmopt_off
movlw	169
movwf	(??_SoftWareUart_Init+0)+0,f
u4067:
decfsz	(??_SoftWareUart_Init+0)+0,f
	goto	u4067
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
psect	text916,local,class=CODE,delta=2
global __ptext916
__ptext916:

;; *************** function _enable *****************
;; Defined at:
;;		line 9 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  950[COMMON] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
psect	text916
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	9
	global	__size_of_enable
	__size_of_enable	equ	__end_of_enable-_enable
	
_enable:	
	opt	stack 1
; Regs used in _enable: [wreg]
	line	10
	
l4486:	
;lcd.c: 10: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	11
	
l4488:	
;lcd.c: 11: _delay((unsigned long)((4)*(20000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_enable+0)+0+1),f
	movlw	248
movwf	((??_enable+0)+0),f
u4077:
	decfsz	((??_enable+0)+0),f
	goto	u4077
	decfsz	((??_enable+0)+0+1),f
	goto	u4077
	clrwdt
opt asmopt_on

	line	12
	
l4490:	
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

	signat	_enable,90
	global	_DelayS
psect	text917,local,class=CODE,delta=2
global __ptext917
__ptext917:

;; *************** function _DelayS *****************
;; Defined at:
;;		line 75 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    4[BANK0 ] unsigned char 
;;  i               1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_DelayMs
;; This function is called by:
;;		_gsm_init
;; This function uses a non-reentrant model
;;
psect	text917
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
	line	75
	global	__size_of_DelayS
	__size_of_DelayS	equ	__end_of_DelayS-_DelayS
	
_DelayS:	
	opt	stack 2
; Regs used in _DelayS: [wreg+status,2+status,0+pclath+cstack]
;DelayS@cnt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DelayS@cnt)
	line	77
;Delay.c: 76: unsigned char i;
;Delay.c: 77: do {
	
l944:	
	line	78
	
l4476:	
;Delay.c: 78: i = 4;
	movlw	(04h)
	movwf	(??_DelayS+0)+0
	movf	(??_DelayS+0)+0,w
	movwf	(DelayS@i)
	goto	l4478
	line	79
;Delay.c: 79: do {
	
l945:	
	line	80
	
l4478:	
;Delay.c: 80: DelayMs(250);
	movlw	(0FAh)
	fcall	_DelayMs
	line	81
	
l4480:	
# 81 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
clrwdt ;#
psect	text917
	line	82
	
l4482:	
;Delay.c: 82: } while(--i);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(DelayS@i),f
	btfss	status,2
	goto	u3571
	goto	u3570
u3571:
	goto	l4478
u3570:
	goto	l4484
	
l946:	
	line	83
	
l4484:	
;Delay.c: 83: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayS@cnt),f
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l944
u3580:
	goto	l948
	
l947:	
	line	84
	
l948:	
	return
	opt stack 0
GLOBAL	__end_of_DelayS
	__end_of_DelayS:
;; =============== function _DelayS ends ============

	signat	_DelayS,4216
	global	___awmod
psect	text918,local,class=CODE,delta=2
global __ptext918
__ptext918:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayAmnt
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;;		_main
;; This function uses a non-reentrant model
;;
psect	text918
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 2
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l4432:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	line	9
	
l4434:	
	btfss	(___awmod@dividend+1),7
	goto	u3461
	goto	u3460
u3461:
	goto	l4438
u3460:
	line	10
	
l4436:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l4438
	line	12
	
l1452:	
	line	13
	
l4438:	
	btfss	(___awmod@divisor+1),7
	goto	u3471
	goto	u3470
u3471:
	goto	l4442
u3470:
	line	14
	
l4440:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l4442
	
l1453:	
	line	15
	
l4442:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3481
	goto	u3480
u3481:
	goto	l4460
u3480:
	line	16
	
l4444:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l4450
	
l1456:	
	line	18
	
l4446:	
	movlw	01h
	
u3495:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3495
	line	19
	
l4448:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l4450
	line	20
	
l1455:	
	line	17
	
l4450:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l4446
u3500:
	goto	l4452
	
l1457:	
	goto	l4452
	line	21
	
l1458:	
	line	22
	
l4452:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3515
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3515:
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l4456
u3510:
	line	23
	
l4454:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l4456
	
l1459:	
	line	24
	
l4456:	
	movlw	01h
	
u3525:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3525
	line	25
	
l4458:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l4452
u3530:
	goto	l4460
	
l1460:	
	goto	l4460
	line	26
	
l1454:	
	line	27
	
l4460:	
	movf	(___awmod@sign),w
	skipz
	goto	u3540
	goto	l4464
u3540:
	line	28
	
l4462:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l4464
	
l1461:	
	line	29
	
l4464:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1462
	
l4466:	
	line	30
	
l1462:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text919,local,class=CODE,delta=2
global __ptext919
__ptext919:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[BANK0 ] int 
;;  dividend        2    9[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   14[BANK0 ] int 
;;  sign            1   13[BANK0 ] unsigned char 
;;  counter         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DisplayAmnt
;;		_DisplaySugar
;;		_DisplayRise
;;		_DisplayKerosene
;;		_main
;;		_DelayBigUs
;; This function uses a non-reentrant model
;;
psect	text919
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 2
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l4394:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l4396:	
	btfss	(___awdiv@divisor+1),7
	goto	u3361
	goto	u3360
u3361:
	goto	l4400
u3360:
	line	11
	
l4398:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l4400
	line	13
	
l1384:	
	line	14
	
l4400:	
	btfss	(___awdiv@dividend+1),7
	goto	u3371
	goto	u3370
u3371:
	goto	l1385
u3370:
	line	15
	
l4402:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l4404:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l1385:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3381
	goto	u3380
u3381:
	goto	l4424
u3380:
	line	20
	
l4406:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l4412
	
l1388:	
	line	22
	
l4408:	
	movlw	01h
	
u3395:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3395
	line	23
	
l4410:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l4412
	line	24
	
l1387:	
	line	21
	
l4412:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l4408
u3400:
	goto	l4414
	
l1389:	
	goto	l4414
	line	25
	
l1390:	
	line	26
	
l4414:	
	movlw	01h
	
u3415:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3415
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3425
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3425:
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l4420
u3420:
	line	28
	
l4416:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l4418:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l4420
	line	30
	
l1391:	
	line	31
	
l4420:	
	movlw	01h
	
u3435:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3435
	line	32
	
l4422:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l4414
u3440:
	goto	l4424
	
l1392:	
	goto	l4424
	line	33
	
l1386:	
	line	34
	
l4424:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3450
	goto	l4428
u3450:
	line	35
	
l4426:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l4428
	
l1393:	
	line	36
	
l4428:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1394
	
l4430:	
	line	37
	
l1394:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text920,local,class=CODE,delta=2
global __ptext920
__ptext920:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LoadStockToArray
;;		_main
;; This function uses a non-reentrant model
;;
psect	text920
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 3
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l4372:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3301
	goto	u3300
u3301:
	goto	l4390
u3300:
	line	9
	
l4374:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l4380
	
l1262:	
	line	11
	
l4376:	
	movlw	01h
	
u3315:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3315
	line	12
	
l4378:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l4380
	line	13
	
l1261:	
	line	10
	
l4380:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l4376
u3320:
	goto	l4382
	
l1263:	
	goto	l4382
	line	14
	
l1264:	
	line	15
	
l4382:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3335
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3335:
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l4386
u3330:
	line	16
	
l4384:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l4386
	
l1265:	
	line	17
	
l4386:	
	movlw	01h
	
u3345:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3345
	line	18
	
l4388:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l4382
u3350:
	goto	l4390
	
l1266:	
	goto	l4390
	line	19
	
l1260:	
	line	20
	
l4390:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1267
	
l4392:	
	line	21
	
l1267:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text921,local,class=CODE,delta=2
global __ptext921
__ptext921:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] unsigned int 
;;  dividend        2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[BANK0 ] unsigned int 
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LoadStockToArray
;;		_main
;; This function uses a non-reentrant model
;;
psect	text921
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l4348:	
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3231
	goto	u3230
u3231:
	goto	l4368
u3230:
	line	11
	
l4350:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l4356
	
l1252:	
	line	13
	
l4352:	
	movlw	01h
	
u3245:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3245
	line	14
	
l4354:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l4356
	line	15
	
l1251:	
	line	12
	
l4356:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l4352
u3250:
	goto	l4358
	
l1253:	
	goto	l4358
	line	16
	
l1254:	
	line	17
	
l4358:	
	movlw	01h
	
u3265:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3265
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3275
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3275:
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l4364
u3270:
	line	19
	
l4360:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l4362:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l4364
	line	21
	
l1255:	
	line	22
	
l4364:	
	movlw	01h
	
u3285:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3285
	line	23
	
l4366:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l4358
u3290:
	goto	l4368
	
l1256:	
	goto	l4368
	line	24
	
l1250:	
	line	25
	
l4368:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l1257
	
l4370:	
	line	26
	
l1257:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text922,local,class=CODE,delta=2
global __ptext922
__ptext922:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    4[BANK0 ] unsigned int 
;;  multiplicand    2    6[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    8[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text922
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 3
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l4336:	
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	goto	l4338
	line	6
	
l1244:	
	line	7
	
l4338:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l1245
u3190:
	line	8
	
l4340:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1245:	
	line	9
	movlw	01h
	
u3205:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u3205
	line	10
	
l4342:	
	movlw	01h
	
u3215:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u3215
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l4338
u3220:
	goto	l4344
	
l1246:	
	line	12
	
l4344:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1247
	
l4346:	
	line	13
	
l1247:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_memcmp
psect	text923,local,class=CODE,delta=2
global __ptext923
__ptext923:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text923
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\memcmp.c"
	line	4
	global	__size_of_memcmp
	__size_of_memcmp	equ	__end_of_memcmp-_memcmp
	
_memcmp:	
	opt	stack 4
; Regs used in _memcmp: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
	line	5
	
l4318:	
	goto	l4330
	
l1224:	
	line	6
	
l4320:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3171
	goto	u3170
u3171:
	goto	l4326
u3170:
	line	7
	
l4322:	
	movf	(memcmp@s2),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_memcmp+0)+0
	clrf	(??_memcmp+0)+0+1
	comf	(??_memcmp+0)+0,f
	comf	(??_memcmp+0)+1,f
	incf	(??_memcmp+0)+0,f
	skipnz
	incf	(??_memcmp+0)+1,f
	movf	(memcmp@s1+1),w
	movwf	btemp+1
	movf	(memcmp@s1),w
	movwf	fsr0
	fcall	stringtab
	addwf	0+(??_memcmp+0)+0,w
	movwf	(?_memcmp)
	movf	1+(??_memcmp+0)+0,w
	skipnc
	incf	1+(??_memcmp+0)+0,w
	movwf	((?_memcmp))+1
	goto	l1226
	
l4324:	
	goto	l1226
	
l1225:	
	line	8
	
l4326:	
	movlw	low(01h)
	addwf	(memcmp@s1),f
	skipnc
	incf	(memcmp@s1+1),f
	movlw	high(01h)
	addwf	(memcmp@s1+1),f
	line	9
	
l4328:	
	movlw	(01h)
	movwf	(??_memcmp+0)+0
	movf	(??_memcmp+0)+0,w
	addwf	(memcmp@s2),f
	goto	l4330
	line	10
	
l1223:	
	line	5
	
l4330:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(memcmp@n),f
	movlw	high(01h)
	skipc
	decf	(memcmp@n+1),f
	subwf	(memcmp@n+1),f
	movlw	high(0FFFFh)
	xorwf	((memcmp@n+1)),w
	skipz
	goto	u3185
	movlw	low(0FFFFh)
	xorwf	((memcmp@n)),w
u3185:

	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l4320
u3180:
	goto	l4332
	
l1227:	
	line	11
	
l4332:	
	movlw	low(0)
	movwf	(?_memcmp)
	movlw	high(0)
	movwf	((?_memcmp))+1
	goto	l1226
	
l4334:	
	line	12
	
l1226:	
	return
	opt stack 0
GLOBAL	__end_of_memcmp
	__end_of_memcmp:
;; =============== function _memcmp ends ============

	signat	_memcmp,12410
	global	_eeprom_write
psect	text924,local,class=CODE,delta=2
global __ptext924
__ptext924:

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1   16[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text924
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\eewrite.c"
	line	8
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
	opt	stack 4
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(eeprom_write@addr)
	line	9
	
l1213:	
	goto	l1214
	
l1215:	
	
l1214:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l1214
u3140:
	goto	l4298
	
l1216:	
	
l4298:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_write@value),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(268)^0100h	;volatile
	
l4300:	
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	
l4302:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7
	
l4304:	
	btfss	(95/8),(95)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l1217
u3150:
	
l4306:	
	bsf	(24/8),(24)&7
	
l1217:	
	bcf	(95/8),(95)&7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	
l4308:	
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l4310:	
	bsf	(3169/8)^0180h,(3169)&7
	
l4312:	
	bcf	(3170/8)^0180h,(3170)&7
	
l4314:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l1220
u3160:
	
l4316:	
	bsf	(95/8),(95)&7
	goto	l1220
	
l1218:	
	goto	l1220
	
l1219:	
	line	10
	
l1220:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
;; =============== function _eeprom_write ends ============

	signat	_eeprom_write,8312
	global	_strcmp
psect	text925,local,class=CODE,delta=2
global __ptext925
__ptext925:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text925
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
	opt	stack 4
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
;strcmp@s1 stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strcmp@s1)
	line	37
	
l4288:	
	goto	l4290
	
l1231:	
	line	38
	goto	l4290
	
l1230:	
	line	37
	
l4290:	
	movf	(strcmp@s1),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s2),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s2),f
	decf	indf,w
	xorlw	0ffh
	addwf	(??_strcmp+0)+0,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+1)+0,w
	movwf	(strcmp@r)
	movf	((strcmp@r)),f
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l4294
u3120:
	
l4292:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	movf	indf,f
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l4290
u3130:
	goto	l4294
	
l1233:	
	goto	l4294
	
l1234:	
	line	39
	
l4294:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l1235
	
l4296:	
	line	40
	
l1235:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_uart_init
psect	text926,local,class=CODE,delta=2
global __ptext926
__ptext926:

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
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text926
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
	line	147
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 4
; Regs used in _uart_init: [wreg+status,2]
	line	148
	
l4284:	
;Main.c: 148: PORTC=0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	149
;Main.c: 149: TRISC=0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	150
;Main.c: 150: TXSTA=0X24;
	movlw	(024h)
	movwf	(152)^080h	;volatile
	line	151
;Main.c: 151: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	152
;Main.c: 152: SPBRG=129;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	153
	
l4286:	
;Main.c: 153: RCREG=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
psect	text927,local,class=CODE,delta=2
global __ptext927
__ptext927:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 8 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
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
psect	text927
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
psect	text927
	line	11
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l1192
u3110:
	goto	l4280
	
l1193:	
	line	12
	
l4280:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_eeprom_read+0)+0
	movf	(??_eeprom_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
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
	movwf	(??_eeprom_read+1)+0
	clrf	(??_eeprom_read+1)+0+1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l1194
	
l4282:	
	line	13
	
l1194:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_transmit
psect	text928,local,class=CODE,delta=2
global __ptext928
__ptext928:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
;;		_SendStock
;;		_send_moister_message2
;;		_send_moister_message1
;;		_send_stage1_message
;;		_send_stage2_message
;;		_send_stage3_message
;; This function uses a non-reentrant model
;;
psect	text928
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	8
	global	__size_of_transmit
	__size_of_transmit	equ	__end_of_transmit-_transmit
	
_transmit:	
	opt	stack 3
; Regs used in _transmit: [wreg]
;transmit@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(transmit@data)
	line	9
	
l4190:	
;UART.C: 9: while(!TXIF);
	goto	l1021
	
l1022:	
	
l1021:	
	btfss	(100/8),(100)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l1021
u2960:
	goto	l4192
	
l1023:	
	line	10
	
l4192:	
;UART.C: 10: TXREG =data;
	movf	(transmit@data),w
	movwf	(25)	;volatile
	line	11
	
l1024:	
	return
	opt stack 0
GLOBAL	__end_of_transmit
	__end_of_transmit:
;; =============== function _transmit ends ============

	signat	_transmit,4216
	global	_receive
psect	text929,local,class=CODE,delta=2
global __ptext929
__ptext929:

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
;;		On exit  : 0/0
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
;;		Nothing
;; This function is called by:
;;		_gsm_init
;;		_SendStock
;;		_send_moister_message2
;;		_send_moister_message1
;;		_send_stage1_message
;;		_send_stage2_message
;;		_send_stage3_message
;; This function uses a non-reentrant model
;;
psect	text929
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	2
	global	__size_of_receive
	__size_of_receive	equ	__end_of_receive-_receive
	
_receive:	
	opt	stack 3
; Regs used in _receive: [wreg]
	line	3
	
l4182:	
;UART.C: 3: if(OERR){CREN=0;CREN=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(193/8),(193)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l1015
u2940:
	
l4184:	
	bcf	(196/8),(196)&7
	bsf	(196/8),(196)&7
	goto	l1015
	
l1014:	
	line	4
;UART.C: 4: while(!RCIF);
	goto	l1015
	
l1016:	
	
l1015:	
	btfss	(101/8),(101)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l1015
u2950:
	goto	l4186
	
l1017:	
	line	5
	
l4186:	
;UART.C: 5: return(RCREG);
	movf	(26),w	;volatile
	goto	l1018
	
l4188:	
	line	6
	
l1018:	
	return
	opt stack 0
GLOBAL	__end_of_receive
	__end_of_receive:
;; =============== function _receive ends ============

	signat	_receive,89
	global	_lcdport
psect	text930,local,class=CODE,delta=2
global __ptext930
__ptext930:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text930
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\lcd.c"
	line	16
	global	__size_of_lcdport
	__size_of_lcdport	equ	__end_of_lcdport-_lcdport
	
_lcdport:	
	opt	stack 1
; Regs used in _lcdport: [wreg]
;lcdport@a stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcdport@a)
	line	17
	
l4166:	
;lcd.c: 17: if(a & 1)
	btfss	(lcdport@a),(0)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l954
u2900:
	line	18
	
l4168:	
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
	goto	u2911
	goto	u2910
u2911:
	goto	l956
u2910:
	line	23
	
l4170:	
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
	goto	u2921
	goto	u2920
u2921:
	goto	l958
u2920:
	line	28
	
l4172:	
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
	goto	u2931
	goto	u2930
u2931:
	goto	l960
u2930:
	line	33
	
l4174:	
;lcd.c: 33: RD7 = 1;
	bsf	(71/8),(71)&7
	goto	l962
	line	34
	
l960:	
	line	35
;lcd.c: 34: else
;lcd.c: 35: RD7 = 0;
	bcf	(71/8),(71)&7
	goto	l962
	
l961:	
	line	36
	
l962:	
	return
	opt stack 0
GLOBAL	__end_of_lcdport
	__end_of_lcdport:
;; =============== function _lcdport ends ============

	signat	_lcdport,4216
	global	_DelayMs
psect	text931,local,class=CODE,delta=2
global __ptext931
__ptext931:

;; *************** function _DelayMs *****************
;; Defined at:
;;		line 39 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[BANK0 ] unsigned char 
;;  i               1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
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
;;		_DelayS
;; This function uses a non-reentrant model
;;
psect	text931
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
	line	39
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
	
_DelayMs:	
	opt	stack 2
; Regs used in _DelayMs: [wreg+status,2+status,0]
;DelayMs@cnt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DelayMs@cnt)
	line	41
;Delay.c: 40: unsigned char i;
;Delay.c: 41: do {
	
l923:	
	line	42
	
l4152:	
;Delay.c: 42: i = 4;
	movlw	(04h)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(DelayMs@i)
	line	43
;Delay.c: 43: do {
	
l924:	
	line	44
;Delay.c: 44: { delayus_variable=(unsigned char)(250/4); asm("nop"); } asm("decfsz _delayus_variable,f"); asm("goto $ - 2");;
	movlw	(03Eh)
	movwf	(??_DelayMs+0)+0
	movf	(??_DelayMs+0)+0,w
	movwf	(_delayus_variable)
	
l4154:	
# 44 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
nop ;#
psect	text931
	
l4156:	
# 44 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
decfsz _delayus_variable,f ;#
psect	text931
	
l4158:	
# 44 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
goto $ - 2 ;#
psect	text931
	line	45
	
l4160:	
# 45 "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Delay.c"
clrwdt ;#
psect	text931
	line	46
	
l4162:	
;Delay.c: 46: } while(--i);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(DelayMs@i),f
	btfss	status,2
	goto	u2881
	goto	u2880
u2881:
	goto	l924
u2880:
	goto	l4164
	
l925:	
	line	47
	
l4164:	
;Delay.c: 47: } while(--cnt);
	movlw	low(01h)
	subwf	(DelayMs@cnt),f
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l923
u2890:
	goto	l927
	
l926:	
	line	48
	
l927:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
;; =============== function _DelayMs ends ============

	signat	_DelayMs,4216
	global	_ISR
psect	text932,local,class=CODE,delta=2
global __ptext932
__ptext932:

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
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_gsm_read_line2
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text932
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text932
	line	66
	
i1l4274:	
;Main.c: 66: if (RCIF==1)
	btfss	(101/8),(101)&7
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l1107
u310_20:
	line	67
	
i1l4276:	
;Main.c: 67: { sms_indication=0;
	bcf	(_sms_indication/8),(_sms_indication)&7
	line	68
	
i1l4278:	
;Main.c: 68: gsm_read_line2(sms);
	movlw	(_sms)&0ffh
	fcall	_gsm_read_line2
	goto	i1l1107
	line	69
	
i1l1106:	
	line	70
	
i1l1107:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
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
psect	text933,local,class=CODE,delta=2
global __ptext933
__ptext933:

;; *************** function _gsm_read_line2 *****************
;; Defined at:
;;		line 48 in file "F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\Main.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    wreg     PTR unsigned char 
;;		 -> sms(20), 
;; Auto vars:     Size  Location     Type
;;  buffer          1    2[COMMON] PTR unsigned char 
;;		 -> sms(20), 
;;  rec_data        1    3[COMMON] unsigned char 
;;  flag            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_receive
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text933
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
	
i1l4254:	
;Main.c: 49: unsigned char rec_data=0,flag=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(gsm_read_line2@rec_data)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(gsm_read_line2@flag)
	goto	i1l4256
	line	51
;Main.c: 51: do
	
i1l1099:	
	line	53
	
i1l4256:	
;Main.c: 52: {
;Main.c: 53: rec_data = receive();
	fcall	i1_receive
	movwf	(??_gsm_read_line2+0)+0
	movf	(??_gsm_read_line2+0)+0,w
	movwf	(gsm_read_line2@rec_data)
	line	54
	
i1l4258:	
;Main.c: 54: if(rec_data=='#'){flag=1;rec_data = receive(); }
	movf	(gsm_read_line2@rec_data),w
	xorlw	023h
	skipz
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l4264
u307_20:
	
i1l4260:	
	clrf	(gsm_read_line2@flag)
	bsf	status,0
	rlf	(gsm_read_line2@flag),f
	
i1l4262:	
	fcall	i1_receive
	movwf	(??_gsm_read_line2+0)+0
	movf	(??_gsm_read_line2+0)+0,w
	movwf	(gsm_read_line2@rec_data)
	goto	i1l4264
	
i1l1100:	
	line	55
	
i1l4264:	
;Main.c: 55: if(flag)
	movf	(gsm_read_line2@flag),w
	skipz
	goto	u308_20
	goto	i1l4270
u308_20:
	line	57
	
i1l4266:	
;Main.c: 56: {
;Main.c: 57: *buffer++ = rec_data;
	movf	(gsm_read_line2@rec_data),w
	movwf	(??_gsm_read_line2+0)+0
	movf	(gsm_read_line2@buffer),w
	movwf	fsr0
	movf	(??_gsm_read_line2+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
i1l4268:	
	movlw	(01h)
	movwf	(??_gsm_read_line2+0)+0
	movf	(??_gsm_read_line2+0)+0,w
	addwf	(gsm_read_line2@buffer),f
	goto	i1l4270
	line	58
	
i1l1101:	
	line	59
	
i1l4270:	
;Main.c: 58: }
;Main.c: 59: }while (rec_data != '\n');
	movf	(gsm_read_line2@rec_data),w
	xorlw	0Ah
	skipz
	goto	u309_21
	goto	u309_20
u309_21:
	goto	i1l4256
u309_20:
	goto	i1l4272
	
i1l1102:	
	line	60
	
i1l4272:	
;Main.c: 60: *buffer='\0';
	clrc
	movf	(gsm_read_line2@buffer),w
	movwf	fsr0
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	61
	
i1l1103:	
	return
	opt stack 0
GLOBAL	__end_of_gsm_read_line2
	__end_of_gsm_read_line2:
;; =============== function _gsm_read_line2 ends ============

	signat	_gsm_read_line2,4216
	global	i1_receive
psect	text934,local,class=CODE,delta=2
global __ptext934
__ptext934:

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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
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
psect	text934
	file	"F:\PiROOT_Tech\student_projects\AutomaticRationCardSystem\UART.C"
	line	2
	global	__size_ofi1_receive
	__size_ofi1_receive	equ	__end_ofi1_receive-i1_receive
	
i1_receive:	
	opt	stack 1
; Regs used in i1_receive: [wreg]
	line	3
	
i1l4468:	
;UART.C: 3: if(OERR){CREN=0;CREN=1;}
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(193/8),(193)&7
	goto	u355_21
	goto	u355_20
u355_21:
	goto	i1l1015
u355_20:
	
i1l4470:	
	bcf	(196/8),(196)&7
	bsf	(196/8),(196)&7
	goto	i1l1015
	
i1l1014:	
	line	4
;UART.C: 4: while(!RCIF);
	goto	i1l1015
	
i1l1016:	
	
i1l1015:	
	btfss	(101/8),(101)&7
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l1015
u356_20:
	goto	i1l4472
	
i1l1017:	
	line	5
	
i1l4472:	
;UART.C: 5: return(RCREG);
	movf	(26),w	;volatile
	goto	i1l1018
	
i1l4474:	
	line	6
	
i1l1018:	
	return
	opt stack 0
GLOBAL	__end_ofi1_receive
	__end_ofi1_receive:
;; =============== function i1_receive ends ============

	signat	i1_receive,89
psect	text935,local,class=CODE,delta=2
global __ptext935
__ptext935:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
