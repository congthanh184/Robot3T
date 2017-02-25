opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

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
# 7 "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	dw 0xFFFF & 0xFFEF & 0xFFFA & 0xFFFF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 10 "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 10 "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	dw 0xFFFF ;#
	FNCALL	_main,_Init_Button_Port
	FNCALL	_main,_Init_DTHC_LCD
	FNCALL	_main,_LCD_SetMode
	FNCALL	_main,_init_comms
	FNCALL	_main,_SetValueTipV
	FNCALL	_main,_SetValueSetV
	FNCALL	_main,_SetVisible_TOR
	FNCALL	_main,_SetVisible_ARC
	FNCALL	_main,_SetArrow
	FNCALL	_main,_LCD_Update
	FNCALL	_main,_GetButton
	FNCALL	_main,_LCD_SetEditValue
	FNCALL	_main,___wmul
	FNCALL	_main,_LCD_SubMode
	FNCALL	_main,_LCD_Repaint
	FNCALL	_main,_SetValueTipI
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_putch
	FNCALL	_LCD_Repaint,_Clear_LCD
	FNCALL	_LCD_Repaint,_SetCursor
	FNCALL	_LCD_Repaint,_strcpy
	FNCALL	_LCD_Repaint,_print_LCD
	FNCALL	_LCD_Repaint,_WriteDataLCD
	FNCALL	_LCD_Repaint,_Enable_Blink_LCD
	FNCALL	_LCD_Repaint,_sprintf
	FNCALL	_LCD_SetEditValue,_SetCursor
	FNCALL	_LCD_SetEditValue,_WriteDataLCD
	FNCALL	_LCD_SetEditValue,_strcpy
	FNCALL	_LCD_SetEditValue,_print_LCD
	FNCALL	_LCD_Update,_SetCursor
	FNCALL	_LCD_Update,_sprintf
	FNCALL	_LCD_Update,_print_LCD
	FNCALL	_LCD_Update,_WriteDataLCD
	FNCALL	_LCD_SetMode,_Clear_LCD
	FNCALL	_LCD_SetMode,_SetCursor
	FNCALL	_LCD_SetMode,_strcpy
	FNCALL	_LCD_SetMode,_print_LCD
	FNCALL	_LCD_SetMode,_Enable_Blink_LCD
	FNCALL	_LCD_SetMode,_sprintf
	FNCALL	_LCD_SetMode,_WriteDataLCD
	FNCALL	_Init_DTHC_LCD,_Initial_4bitLCD
	FNCALL	_Init_DTHC_LCD,_WriteCmdLCD
	FNCALL	_Init_DTHC_LCD,_WriteDataLCD
	FNCALL	_print_LCD,_WriteDataLCD
	FNCALL	_Clear_LCD,_WriteCmdLCD
	FNCALL	_Clear_LCD,_Lcd_Special_Delay
	FNCALL	_Enable_Blink_LCD,_WriteCmdLCD
	FNCALL	_Enable_Blink_LCD,_Lcd_Special_Delay
	FNCALL	_Initial_4bitLCD,_Lcd_Init_Delay
	FNCALL	_Initial_4bitLCD,_Delay_tW_LCD
	FNCALL	_Initial_4bitLCD,_Lcd_Special_Delay
	FNCALL	_Initial_4bitLCD,_WriteCmdLCD
	FNCALL	_WriteDataLCD,_Read_BusyLCD
	FNCALL	_WriteDataLCD,_Delay_tW_LCD
	FNCALL	_SetCursor,_Read_BusyLCD
	FNCALL	_SetCursor,_Delay_tW_LCD
	FNCALL	_WriteCmdLCD,_Read_BusyLCD
	FNCALL	_WriteCmdLCD,_Delay_tW_LCD
	FNCALL	_Read_BusyLCD,_Delay_tW_LCD
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_mode
	global	_CustomCharacters
	global	_MainScreen4
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	line	26

;initializer for _mode
	retlw	05h
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	19

;initializer for _CustomCharacters
	retlw	04h
	retlw	0Eh
	retlw	015h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	04h
	retlw	015h
	retlw	0Eh
	retlw	04h
	line	14

;initializer for _MainScreen4
	retlw	(STR_1-__stringbase)&0ffh
	retlw	(STR_2-__stringbase)&0ffh
	retlw	(STR_3-__stringbase)&0ffh
	retlw	(STR_4-__stringbase)&0ffh
	retlw	(STR_5-__stringbase)&0ffh
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_WelcomeScreen1
psect	strings
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	9
_WelcomeScreen1:
	retlw	033h
	retlw	054h
	retlw	020h
	retlw	052h
	retlw	04Fh
	retlw	042h
	retlw	04Fh
	retlw	054h
	retlw	049h
	retlw	043h
	retlw	020h
	retlw	047h
	retlw	052h
	retlw	04Fh
	retlw	055h
	retlw	050h
	retlw	0
	global	_WelcomeScreen2
psect	strings
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	10
_WelcomeScreen2:
	retlw	077h
	retlw	077h
	retlw	077h
	retlw	02Eh
	retlw	072h
	retlw	06Fh
	retlw	062h
	retlw	06Fh
	retlw	074h
	retlw	033h
	retlw	074h
	retlw	02Eh
	retlw	063h
	retlw	06Fh
	retlw	06Dh
	retlw	0
	global	_MainScreen3
psect	strings
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	13
_MainScreen3:
	retlw	053h
	retlw	065h
	retlw	06Ch
	retlw	065h
	retlw	063h
	retlw	074h
	retlw	020h
	retlw	04Dh
	retlw	06Fh
	retlw	064h
	retlw	065h
	retlw	03Ah
	retlw	0
	global	_MainScreen1
psect	strings
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	11
_MainScreen1:
	retlw	054h
	retlw	069h
	retlw	070h
	retlw	056h
	retlw	03Ah
	retlw	0
	global	_MainScreen2
psect	strings
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	12
_MainScreen2:
	retlw	053h
	retlw	065h
	retlw	074h
	retlw	056h
	retlw	03Ah
	retlw	0
	global	_StrARC
psect	strings
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	17
_StrARC:
	retlw	041h
	retlw	052h
	retlw	043h
	retlw	0
	global	_StrTOR
psect	strings
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	16
_StrTOR:
	retlw	054h
	retlw	04Fh
	retlw	052h
	retlw	0
	global	_StrNull
psect	strings
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	18
_StrNull:
	retlw	0
	retlw	0
	global	_dpowers
	global	_WelcomeScreen1
	global	_WelcomeScreen2
	global	_MainScreen3
	global	_MainScreen1
	global	_MainScreen2
	global	_StrARC
	global	_StrTOR
	global	_StrNull
	global	_unIntTemp
	global	_voltage_set_value
	global	dthc_lcd_controller@valueSetV
	global	dthc_lcd_controller@valueTipV
	global	_Down_State
	global	_FLAG_VALUE_CHANGED
	global	_LCD_Status
	global	_LCD_UPDATE_EVENT
	global	_UART_RECEIVE_EVENT
	global	_Up_State
	global	_bt
	global	_count
	global	_countEnter
	global	_dispARC
	global	_dispTOR
	global	_enableARC
	global	_enableTOR
	global	_initMainScreen
	global	_lengthDataInput
	global	_maxCountEnter
	global	_nameMode
	global	_tempMode
	global	dthc_lcd_controller@LCD_Status
	global	dthc_lcd_controller@initMainScreen
	global	dthc_lcd_controller@nameMode
	global	_GotButtonPressed
	global	_countData
	global	_globalTemp
	global	_lastButton
	global	_saveLevelTemp
	global	_Data_Input
	global	_Data_Output
	global	_countLCD_Repaint
	global	_valueSetV
	global	_valueTipI
	global	_valueTipV
	global	dthc_lcd_controller@valueTipI
	global	_countTimer
	global	_countUpdate
	global	_curEditCursor
	global	_valueEdit
	global	dthc_lcd_controller@enableARC
	global	dthc_lcd_controller@enableTOR
	global	_lcd_buf
	global	_value
	global	_INTCON
_INTCON	set	11
	global	_PORTAbits
_PORTAbits	set	5
	global	_PORTBbits
_PORTBbits	set	6
	global	_PORTDbits
_PORTDbits	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T1CON
_T1CON	set	16
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RCIF
_RCIF	set	101
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_SPBRGH
_SPBRGH	set	154
	global	_TRISAbits
_TRISAbits	set	133
	global	_TRISBbits
_TRISBbits	set	134
	global	_TRISDbits
_TRISDbits	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_RCIE
_RCIE	set	1125
	global	_TMR1IE
_TMR1IE	set	1120
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_WDTCON
_WDTCON	set	261
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	
STR_2:	
	retlw	50	;'2'
	retlw	46	;'.'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	51	;'3'
	retlw	46	;'.'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	67	;'C'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	32	;' '
	retlw	85	;'U'
	retlw	47	;'/'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_4:	
	retlw	52	;'4'
	retlw	46	;'.'
	retlw	77	;'M'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	119	;'w'
	retlw	0
psect	strings
	
STR_5:	
	retlw	53	;'5'
	retlw	46	;'.'
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	119	;'w'
	retlw	0
psect	strings
	
STR_6:	
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	32	;' '
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_17:	
	retlw	40	;'('
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	41	;')'
	retlw	0
psect	strings
	
STR_16:	
	retlw	84	;'T'
	retlw	105	;'i'
	retlw	112	;'p'
	retlw	73	;'I'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_15:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	73	;'I'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_14:	
	retlw	77	;'M'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	86	;'V'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_13:	
	retlw	77	;'M'
	retlw	97	;'a'
	retlw	120	;'x'
	retlw	86	;'V'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_8:	
	retlw	37	;'%'
	retlw	51	;'3'
	retlw	117	;'u'
	retlw	0
psect	strings
STR_9	equ	STR_8+0
STR_10	equ	STR_8+0
STR_11	equ	STR_8+0
STR_12	equ	STR_8+0
STR_7	equ	STR_6+5
	file	"DisplayDTHC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_GotButtonPressed:
       ds      1

_countData:
       ds      1

_globalTemp:
       ds      1

_lastButton:
       ds      1

_saveLevelTemp:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_unIntTemp:
       ds      2

_voltage_set_value:
       ds      2

dthc_lcd_controller@valueSetV:
       ds      2

dthc_lcd_controller@valueTipV:
       ds      2

_Down_State:
       ds      1

_FLAG_VALUE_CHANGED:
       ds      1

_LCD_Status:
       ds      1

_LCD_UPDATE_EVENT:
       ds      1

_UART_RECEIVE_EVENT:
       ds      1

_Up_State:
       ds      1

_bt:
       ds      1

_count:
       ds      1

_countEnter:
       ds      1

_dispARC:
       ds      1

_dispTOR:
       ds      1

_enableARC:
       ds      1

_enableTOR:
       ds      1

_initMainScreen:
       ds      1

_lengthDataInput:
       ds      1

_maxCountEnter:
       ds      1

_nameMode:
       ds      1

_tempMode:
       ds      1

dthc_lcd_controller@LCD_Status:
       ds      1

dthc_lcd_controller@initMainScreen:
       ds      1

dthc_lcd_controller@nameMode:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	line	26
_mode:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_Data_Input:
       ds      15

_Data_Output:
       ds      15

_countLCD_Repaint:
       ds      2

_valueSetV:
       ds      2

_valueTipI:
       ds      2

_valueTipV:
       ds      2

dthc_lcd_controller@valueTipI:
       ds      2

_countTimer:
       ds      1

_countUpdate:
       ds      1

_curEditCursor:
       ds      1

_valueEdit:
       ds      1

dthc_lcd_controller@enableARC:
       ds      1

dthc_lcd_controller@enableTOR:
       ds      1

_lcd_buf:
       ds      16

_value:
       ds      15

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	19
_CustomCharacters:
       ds      16

psect	dataBANK3
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	14
_MainScreen4:
       ds      5

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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Dh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+04Dh)
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
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+21)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1
global __pcstackBANK3
__pcstackBANK3:
	global	main@REQUIRED_TRANSMIT
main@REQUIRED_TRANSMIT:	; 1 bytes @ 0x0
	ds	1
	global	_main$6110
_main$6110:	; 2 bytes @ 0x1
	ds	2
	global	main@count
main@count:	; 1 bytes @ 0x3
	ds	1
	global	main@requiredInit
main@requiredInit:	; 1 bytes @ 0x4
	ds	1
	global	main@compareMode
main@compareMode:	; 1 bytes @ 0x5
	ds	1
	global	main@compareAmpeValue
main@compareAmpeValue:	; 1 bytes @ 0x6
	ds	1
	global	main@maxVol
main@maxVol:	; 2 bytes @ 0x7
	ds	2
	global	main@minVol
main@minVol:	; 2 bytes @ 0x9
	ds	2
	global	main@temp
main@temp:	; 1 bytes @ 0xB
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Init_DTHC_LCD
?_Init_DTHC_LCD:	; 0 bytes @ 0x0
	global	?_LCD_SetMode
?_LCD_SetMode:	; 0 bytes @ 0x0
	global	?_init_comms
?_init_comms:	; 0 bytes @ 0x0
	global	?_SetVisible_TOR
?_SetVisible_TOR:	; 0 bytes @ 0x0
	global	?_SetVisible_ARC
?_SetVisible_ARC:	; 0 bytes @ 0x0
	global	?_SetArrow
?_SetArrow:	; 0 bytes @ 0x0
	global	?_LCD_Update
?_LCD_Update:	; 0 bytes @ 0x0
	global	?_LCD_SubMode
?_LCD_SubMode:	; 0 bytes @ 0x0
	global	?_LCD_Repaint
?_LCD_Repaint:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	?_Delay_tW_LCD
?_Delay_tW_LCD:	; 0 bytes @ 0x0
	global	?_WriteCmdLCD
?_WriteCmdLCD:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	?_Init_Button_Port
?_Init_Button_Port:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_isr
?_isr:	; 0 bytes @ 0x0
	global	??_isr
??_isr:	; 0 bytes @ 0x0
	global	?_Lcd_Init_Delay
?_Lcd_Init_Delay:	; 0 bytes @ 0x0
	global	?_Lcd_Special_Delay
?_Lcd_Special_Delay:	; 0 bytes @ 0x0
	global	?_Initial_4bitLCD
?_Initial_4bitLCD:	; 0 bytes @ 0x0
	global	?_Enable_Blink_LCD
?_Enable_Blink_LCD:	; 0 bytes @ 0x0
	global	?_Clear_LCD
?_Clear_LCD:	; 0 bytes @ 0x0
	global	?_SetCursor
?_SetCursor:	; 0 bytes @ 0x0
	global	?_WriteDataLCD
?_WriteDataLCD:	; 0 bytes @ 0x0
	global	?_print_LCD
?_print_LCD:	; 0 bytes @ 0x0
	global	?_Read_BusyLCD
?_Read_BusyLCD:	; 1 bytes @ 0x0
	global	?_GetButton
?_GetButton:	; 1 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_init_comms
??_init_comms:	; 0 bytes @ 0x0
	global	?_SetValueTipV
?_SetValueTipV:	; 0 bytes @ 0x0
	global	?_SetValueSetV
?_SetValueSetV:	; 0 bytes @ 0x0
	global	??_SetVisible_TOR
??_SetVisible_TOR:	; 0 bytes @ 0x0
	global	??_SetVisible_ARC
??_SetVisible_ARC:	; 0 bytes @ 0x0
	global	??_SetArrow
??_SetArrow:	; 0 bytes @ 0x0
	global	??_LCD_SubMode
??_LCD_SubMode:	; 0 bytes @ 0x0
	global	?_SetValueTipI
?_SetValueTipI:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	??_Delay_tW_LCD
??_Delay_tW_LCD:	; 0 bytes @ 0x0
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	??_Init_Button_Port
??_Init_Button_Port:	; 0 bytes @ 0x0
	global	??_GetButton
??_GetButton:	; 0 bytes @ 0x0
	global	??_Lcd_Init_Delay
??_Lcd_Init_Delay:	; 0 bytes @ 0x0
	global	??_Lcd_Special_Delay
??_Lcd_Special_Delay:	; 0 bytes @ 0x0
	global	?_strcpy
?_strcpy:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	_isdigit$5752
_isdigit$5752:	; 1 bytes @ 0x0
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x0
	global	SetValueTipV@k
SetValueTipV@k:	; 2 bytes @ 0x0
	global	SetValueSetV@k
SetValueSetV@k:	; 2 bytes @ 0x0
	global	SetValueTipI@k
SetValueTipI@k:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_WriteCmdLCD
??_WriteCmdLCD:	; 0 bytes @ 0x1
	global	??_Read_BusyLCD
??_Read_BusyLCD:	; 0 bytes @ 0x1
	global	??_strcpy
??_strcpy:	; 0 bytes @ 0x1
	global	??_SetCursor
??_SetCursor:	; 0 bytes @ 0x1
	global	??_WriteDataLCD
??_WriteDataLCD:	; 0 bytes @ 0x1
	global	GetButton@button
GetButton@button:	; 1 bytes @ 0x1
	global	LCD_SubMode@k
LCD_SubMode@k:	; 1 bytes @ 0x1
	global	SetVisible_TOR@eTOR
SetVisible_TOR@eTOR:	; 1 bytes @ 0x1
	global	SetVisible_ARC@eARC
SetVisible_ARC@eARC:	; 1 bytes @ 0x1
	global	SetArrow@state
SetArrow@state:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_SetValueTipV
??_SetValueTipV:	; 0 bytes @ 0x2
	global	??_SetValueSetV
??_SetValueSetV:	; 0 bytes @ 0x2
	global	??_SetValueTipI
??_SetValueTipI:	; 0 bytes @ 0x2
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	SetCursor@address
SetCursor@address:	; 1 bytes @ 0x3
	global	WriteCmdLCD@cmd
WriteCmdLCD@cmd:	; 1 bytes @ 0x3
	global	WriteDataLCD@data
WriteDataLCD@data:	; 1 bytes @ 0x3
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x3
	ds	1
	global	??_Initial_4bitLCD
??_Initial_4bitLCD:	; 0 bytes @ 0x4
	global	??_Enable_Blink_LCD
??_Enable_Blink_LCD:	; 0 bytes @ 0x4
	global	??_Clear_LCD
??_Clear_LCD:	; 0 bytes @ 0x4
	global	??_print_LCD
??_print_LCD:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	Enable_Blink_LCD@enable
Enable_Blink_LCD@enable:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	print_LCD@p
print_LCD@p:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	?_LCD_SetEditValue
?_LCD_SetEditValue:	; 0 bytes @ 0x6
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	LCD_SetEditValue@value
LCD_SetEditValue@value:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	??_Init_DTHC_LCD
??_Init_DTHC_LCD:	; 0 bytes @ 0x7
	global	??_LCD_SetEditValue
??_LCD_SetEditValue:	; 0 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	LCD_SetEditValue@pos
LCD_SetEditValue@pos:	; 1 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xA
	global	Init_DTHC_LCD@i
Init_DTHC_LCD@i:	; 1 bytes @ 0xA
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xB
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xC
	ds	2
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xE
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xE
	ds	4
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x12
	ds	4
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x16
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x17
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x18
	ds	1
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x19
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x1A
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1C
	ds	1
	global	sprintf@_val
sprintf@_val:	; 3 bytes @ 0x1D
	ds	3
	global	??_LCD_SetMode
??_LCD_SetMode:	; 0 bytes @ 0x20
	global	??_LCD_Update
??_LCD_Update:	; 0 bytes @ 0x20
	global	??_LCD_Repaint
??_LCD_Repaint:	; 0 bytes @ 0x20
	ds	1
	global	LCD_Repaint@cmd
LCD_Repaint@cmd:	; 1 bytes @ 0x21
	global	LCD_SetMode@mode
LCD_SetMode@mode:	; 1 bytes @ 0x21
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x22
	ds	8
;;Data sizes: Strings 105, constant 78, data 22, bss 111, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5      10
;; BANK0           80     42      72
;; BANK1           80      0      77
;; BANK3           96     12      33
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strcpy	PTR unsigned char  size(1) Largest target is 16
;;		 -> lcd_buf(BANK1[16]), 
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), StrARC(CODE[4]), StrTOR(CODE[4]), StrNull(CODE[2]), 
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; strcpy@from	PTR const unsigned char  size(1) Largest target is 17
;;		 -> MainScreen3(CODE[13]), WelcomeScreen2(CODE[16]), WelcomeScreen1(CODE[17]), MainScreen2(CODE[6]), 
;;		 -> MainScreen1(CODE[6]), STR_5(CODE[12]), STR_4(CODE[12]), STR_3(CODE[12]), 
;;		 -> STR_2(CODE[12]), STR_1(CODE[12]), 
;;
;; strcpy@to	PTR unsigned char  size(1) Largest target is 16
;;		 -> lcd_buf(BANK1[16]), 
;;
;; strcpy@cp	PTR unsigned char  size(1) Largest target is 16
;;		 -> lcd_buf(BANK1[16]), 
;;
;; sprintf@_val._cp	PTR const unsigned char  size(1) Largest target is 7
;;		 -> NULL(NULL[0]), STR_17(CODE[7]), StrARC(CODE[4]), StrTOR(CODE[4]), 
;;		 -> StrNull(CODE[2]), 
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 10
;;		 -> STR_16(CODE[6]), STR_15(CODE[6]), STR_14(CODE[6]), STR_13(CODE[6]), 
;;		 -> STR_12(CODE[4]), STR_11(CODE[4]), STR_10(CODE[4]), STR_9(CODE[4]), 
;;		 -> STR_8(CODE[4]), STR_7(CODE[5]), STR_6(CODE[10]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 16
;;		 -> lcd_buf(BANK1[16]), 
;;
;; ?_sprintf	int  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), StrARC(CODE[4]), StrTOR(CODE[4]), StrNull(CODE[2]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S5735$_cp	PTR const unsigned char  size(1) Largest target is 7
;;		 -> NULL(NULL[0]), STR_17(CODE[7]), StrARC(CODE[4]), StrTOR(CODE[4]), 
;;		 -> StrNull(CODE[2]), 
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 7
;;		 -> NULL(NULL[0]), STR_17(CODE[7]), StrARC(CODE[4]), StrTOR(CODE[4]), 
;;		 -> StrNull(CODE[2]), 
;;
;; sp__strcpy	PTR unsigned char  size(1) Largest target is 16
;;		 -> lcd_buf(BANK1[16]), 
;;
;; dispARC	PTR volatile unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), StrARC(CODE[4]), StrNull(CODE[2]), 
;;
;; dispTOR	PTR volatile unsigned char  size(1) Largest target is 4
;;		 -> NULL(NULL[0]), StrTOR(CODE[4]), StrNull(CODE[2]), 
;;
;; MainScreen4	PTR const unsigned char [5] size(1) Largest target is 12
;;		 -> STR_5(CODE[12]), STR_4(CODE[12]), STR_3(CODE[12]), STR_2(CODE[12]), 
;;		 -> STR_1(CODE[12]), 
;;
;; print_LCD@p	PTR unsigned char  size(1) Largest target is 16
;;		 -> lcd_buf(BANK1[16]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _isr in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_LCD_SetMode
;;   _main->_LCD_Update
;;   _main->_LCD_Repaint
;;   _LCD_Repaint->_sprintf
;;   _LCD_SetEditValue->_print_LCD
;;   _LCD_Update->_sprintf
;;   _LCD_SetMode->_sprintf
;;   _Init_DTHC_LCD->_Initial_4bitLCD
;;   _print_LCD->_WriteDataLCD
;;   _Clear_LCD->_WriteCmdLCD
;;   _Enable_Blink_LCD->_WriteCmdLCD
;;   _Initial_4bitLCD->_WriteCmdLCD
;;   _WriteDataLCD->_Delay_tW_LCD
;;   _SetCursor->_Delay_tW_LCD
;;   _WriteCmdLCD->_Delay_tW_LCD
;;   _Read_BusyLCD->_Delay_tW_LCD
;;   _sprintf->___lwdiv
;;   ___lwdiv->___lwmod
;;
;; Critical Paths under _isr in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _isr in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _isr in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _isr in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 8, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                24    24      0   15714
;;                                             34 BANK0      8     8      0
;;                                              0 BANK3     12    12      0
;;                   _Init_Button_Port
;;                      _Init_DTHC_LCD
;;                        _LCD_SetMode
;;                         _init_comms
;;                       _SetValueTipV
;;                       _SetValueSetV
;;                     _SetVisible_TOR
;;                     _SetVisible_ARC
;;                           _SetArrow
;;                         _LCD_Update
;;                          _GetButton
;;                   _LCD_SetEditValue
;;                             ___wmul
;;                        _LCD_SubMode
;;                        _LCD_Repaint
;;                       _SetValueTipI
;;                            ___lwdiv
;;                            ___lwmod
;;                            ___awdiv
;;                            ___awmod
;;                              _putch
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Repaint                                          2     2      0    3563
;;                                             32 BANK0      2     2      0
;;                          _Clear_LCD
;;                          _SetCursor
;;                             _strcpy
;;                          _print_LCD
;;                       _WriteDataLCD
;;                   _Enable_Blink_LCD
;;                            _sprintf
;; ---------------------------------------------------------------------------------
;; (1) _LCD_SetEditValue                                     3     2      1    1240
;;                                              6 BANK0      3     2      1
;;                          _SetCursor
;;                       _WriteDataLCD
;;                             _strcpy
;;                          _print_LCD
;; ---------------------------------------------------------------------------------
;; (1) _LCD_Update                                           2     2      0    2871
;;                                             32 BANK0      2     2      0
;;                          _SetCursor
;;                            _sprintf
;;                          _print_LCD
;;                       _WriteDataLCD
;; ---------------------------------------------------------------------------------
;; (1) _LCD_SetMode                                          2     2      0    3594
;;                                             32 BANK0      2     2      0
;;                          _Clear_LCD
;;                          _SetCursor
;;                             _strcpy
;;                          _print_LCD
;;                   _Enable_Blink_LCD
;;                            _sprintf
;;                       _WriteDataLCD
;; ---------------------------------------------------------------------------------
;; (1) _Init_DTHC_LCD                                        4     4      0     843
;;                                              7 BANK0      4     4      0
;;                    _Initial_4bitLCD
;;                        _WriteCmdLCD
;;                       _WriteDataLCD
;; ---------------------------------------------------------------------------------
;; (2) _print_LCD                                            2     2      0     316
;;                                              4 BANK0      2     2      0
;;                       _WriteDataLCD
;; ---------------------------------------------------------------------------------
;; (2) _Clear_LCD                                            0     0      0     248
;;                        _WriteCmdLCD
;;                  _Lcd_Special_Delay
;; ---------------------------------------------------------------------------------
;; (2) _Enable_Blink_LCD                                     1     1      0     279
;;                                              4 BANK0      1     1      0
;;                        _WriteCmdLCD
;;                  _Lcd_Special_Delay
;; ---------------------------------------------------------------------------------
;; (2) _Initial_4bitLCD                                      3     3      0     248
;;                                              4 BANK0      3     3      0
;;                     _Lcd_Init_Delay
;;                       _Delay_tW_LCD
;;                  _Lcd_Special_Delay
;;                        _WriteCmdLCD
;; ---------------------------------------------------------------------------------
;; (2) _WriteDataLCD                                         3     3      0     248
;;                                              1 BANK0      3     3      0
;;                       _Read_BusyLCD
;;                       _Delay_tW_LCD
;; ---------------------------------------------------------------------------------
;; (2) _SetCursor                                            3     3      0     217
;;                                              1 BANK0      3     3      0
;;                       _Read_BusyLCD
;;                       _Delay_tW_LCD
;; ---------------------------------------------------------------------------------
;; (3) _WriteCmdLCD                                          3     3      0     248
;;                                              1 BANK0      3     3      0
;;                       _Read_BusyLCD
;;                       _Delay_tW_LCD
;; ---------------------------------------------------------------------------------
;; (4) _Read_BusyLCD                                         0     0      0       0
;;                       _Delay_tW_LCD
;; ---------------------------------------------------------------------------------
;; (2) _sprintf                                             18    14      4    2090
;;                                             14 BANK0     18    14      4
;;                            _isdigit
;;                             ___wmul
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (4) _Delay_tW_LCD                                         1     1      0       0
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _Lcd_Special_Delay                                    2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _Lcd_Init_Delay                                       2     2      0       0
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     433
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     445
;;                                              0 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              6     2      4     232
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     241
;;                                              6 BANK0      8     4      4
;;                            ___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___wmul                                               6     2      4     136
;;                                              0 BANK0      6     2      4
;; ---------------------------------------------------------------------------------
;; (3) _isdigit                                              2     2      0      99
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _strcpy                                               4     3      1     103
;;                                              0 BANK0      4     3      1
;; ---------------------------------------------------------------------------------
;; (1) _putch                                                1     1      0      31
;;                                              0 BANK0      1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _SetValueTipI                                         2     0      2      31
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _LCD_SubMode                                          2     2      0      31
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _SetArrow                                             2     2      0      62
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _SetVisible_ARC                                       2     2      0      31
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _SetVisible_TOR                                       2     2      0      31
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _SetValueSetV                                         2     0      2      31
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _SetValueTipV                                         2     0      2      31
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _init_comms                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _GetButton                                            2     2      0     142
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _Init_Button_Port                                     0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (6) _isr                                                  5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Init_Button_Port
;;   _Init_DTHC_LCD
;;     _Initial_4bitLCD
;;       _Lcd_Init_Delay
;;       _Delay_tW_LCD
;;       _Lcd_Special_Delay
;;       _WriteCmdLCD
;;         _Read_BusyLCD
;;           _Delay_tW_LCD
;;         _Delay_tW_LCD
;;     _WriteCmdLCD
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;     _WriteDataLCD
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;   _LCD_SetMode
;;     _Clear_LCD
;;       _WriteCmdLCD
;;         _Read_BusyLCD
;;           _Delay_tW_LCD
;;         _Delay_tW_LCD
;;       _Lcd_Special_Delay
;;     _SetCursor
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;     _strcpy
;;     _print_LCD
;;       _WriteDataLCD
;;         _Read_BusyLCD
;;           _Delay_tW_LCD
;;         _Delay_tW_LCD
;;     _Enable_Blink_LCD
;;       _WriteCmdLCD
;;         _Read_BusyLCD
;;           _Delay_tW_LCD
;;         _Delay_tW_LCD
;;       _Lcd_Special_Delay
;;     _sprintf
;;       _isdigit
;;       ___wmul
;;       ___lwdiv
;;         ___lwmod (ARG)
;;       ___lwmod
;;     _WriteDataLCD
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;   _init_comms
;;   _SetValueTipV
;;   _SetValueSetV
;;   _SetVisible_TOR
;;   _SetVisible_ARC
;;   _SetArrow
;;   _LCD_Update
;;     _SetCursor
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;     _sprintf
;;       _isdigit
;;       ___wmul
;;       ___lwdiv
;;         ___lwmod (ARG)
;;       ___lwmod
;;     _print_LCD
;;       _WriteDataLCD
;;         _Read_BusyLCD
;;           _Delay_tW_LCD
;;         _Delay_tW_LCD
;;     _WriteDataLCD
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;   _GetButton
;;   _LCD_SetEditValue
;;     _SetCursor
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;     _WriteDataLCD
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;     _strcpy
;;     _print_LCD
;;       _WriteDataLCD
;;         _Read_BusyLCD
;;           _Delay_tW_LCD
;;         _Delay_tW_LCD
;;   ___wmul
;;   _LCD_SubMode
;;   _LCD_Repaint
;;     _Clear_LCD
;;       _WriteCmdLCD
;;         _Read_BusyLCD
;;           _Delay_tW_LCD
;;         _Delay_tW_LCD
;;       _Lcd_Special_Delay
;;     _SetCursor
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;     _strcpy
;;     _print_LCD
;;       _WriteDataLCD
;;         _Read_BusyLCD
;;           _Delay_tW_LCD
;;         _Delay_tW_LCD
;;     _WriteDataLCD
;;       _Read_BusyLCD
;;         _Delay_tW_LCD
;;       _Delay_tW_LCD
;;     _Enable_Blink_LCD
;;       _WriteCmdLCD
;;         _Read_BusyLCD
;;           _Delay_tW_LCD
;;         _Delay_tW_LCD
;;       _Lcd_Special_Delay
;;     _sprintf
;;       _isdigit
;;       ___wmul
;;       ___lwdiv
;;         ___lwmod (ARG)
;;       ___lwmod
;;   _SetValueTipI
;;   ___lwdiv
;;     ___lwmod (ARG)
;;   ___lwmod
;;   ___awdiv
;;   ___awmod
;;   _putch
;;
;; _isr (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      C      21       9       34.4%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      4D       7       96.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      C5      12        0.0%
;;ABS                  0      0      C0       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50     2A      48       5       90.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      5       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 177 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  minVol          2    9[BANK3 ] unsigned int 
;;  maxVol          2    7[BANK3 ] unsigned int 
;;  temp            1   11[BANK3 ] unsigned char 
;;  compareAmpeV    1    6[BANK3 ] unsigned char 
;;  compareMode     1    5[BANK3 ] unsigned char 
;;  requiredInit    1    4[BANK3 ] unsigned char 
;;  count           1    3[BANK3 ] unsigned char 
;;  REQUIRED_TRA    1    0[BANK3 ] unsigned char 
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
;;      Locals:         0       0       0      12       0
;;      Temps:          0       8       0       0       0
;;      Totals:         0       8       0      12       0
;;Total ram usage:       20 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Init_Button_Port
;;		_Init_DTHC_LCD
;;		_LCD_SetMode
;;		_init_comms
;;		_SetValueTipV
;;		_SetValueSetV
;;		_SetVisible_TOR
;;		_SetVisible_ARC
;;		_SetArrow
;;		_LCD_Update
;;		_GetButton
;;		_LCD_SetEditValue
;;		___wmul
;;		_LCD_SubMode
;;		_LCD_Repaint
;;		_SetValueTipI
;;		___lwdiv
;;		___lwmod
;;		___awdiv
;;		___awmod
;;		_putch
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	line	177
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	186
	
l9570:	
;main.c: 178: unsigned char count;
;main.c: 179: unsigned char compareMode, compareAmpeValue;
;main.c: 180: unsigned char requiredInit;
;main.c: 181: unsigned char REQUIRED_TRANSMIT;
;main.c: 182: unsigned char temp;
;main.c: 183: unsigned int maxVol, minVol;
;main.c: 186: ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	line	187
;main.c: 187: ANSEL = 0;
	clrf	(392)^0180h	;volatile
	line	188
;main.c: 188: INTCON = 0;
	clrf	(11)	;volatile
	line	191
	
l9572:	
;main.c: 191: WDTCON = 0b00001011;
	movlw	(0Bh)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(261)^0100h	;volatile
	line	192
	
l9574:	
# 192 "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
clrwdt ;#
psect	maintext
	line	194
	
l9576:	
;main.c: 194: TRISAbits.TRISA0 = 0;;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(133)^080h,0	;volatile
	line	195
	
l9578:	
;main.c: 195: PORTAbits.RA0 = 1;;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(5),0	;volatile
	line	196
	
l9580:	
;main.c: 196: Init_Button_Port();
	fcall	_Init_Button_Port
	line	198
	
l9582:	
;main.c: 198: Init_DTHC_LCD();
	fcall	_Init_DTHC_LCD
	line	199
	
l9584:	
;main.c: 199: LCD_SetMode(LCD_INIT_MODE);
	movlw	(05h)
	fcall	_LCD_SetMode
	line	200
	
l9586:	
;main.c: 200: T1CON = 0b00110000;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	201
	
l9588:	
;main.c: 201: TMR1IF = 0;
	bcf	(96/8),(96)&7
	line	202
	
l9590:	
;main.c: 202: TMR1H = (unsigned char) (-62500 >> 8);
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	203
	
l9592:	
;main.c: 203: TMR1L = (unsigned char) (-62500);
	movlw	(0DCh)
	movwf	(14)	;volatile
	line	204
	
l9594:	
;main.c: 204: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	205
	
l9596:	
;main.c: 205: count = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@count)^0180h
	line	206
	
l9598:	
;main.c: 206: TMR1ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(128/8),(128)&7
	line	208
	
l9600:	
;main.c: 208: init_comms();
	fcall	_init_comms
	line	209
	
l9602:	
;main.c: 209: lengthDataInput = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_lengthDataInput)	;volatile
	line	211
	
l9604:	
;main.c: 211: PEIE = 1;
	bsf	(94/8),(94)&7
	line	212
	
l9606:	
;main.c: 212: GIE = 1;
	bsf	(95/8),(95)&7
	line	216
	
l9608:	
;main.c: 216: Data_Output[0] = '*';
	movlw	(02Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Data_Output)^080h	;volatile
	line	217
	
l9610:	
;main.c: 217: Data_Output[1] = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+01h	;volatile
	line	218
	
l9612:	
;main.c: 218: Data_Output[2] = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+02h	;volatile
	line	219
	
l9614:	
;main.c: 219: Data_Output[3] = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+03h	;volatile
	line	220
	
l9616:	
;main.c: 220: Data_Output[4] = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+04h	;volatile
	line	221
	
l9618:	
;main.c: 221: Data_Output[5] = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+05h	;volatile
	line	222
	
l9620:	
;main.c: 222: Data_Output[6] = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+06h	;volatile
	line	223
	
l9622:	
;main.c: 223: Data_Output[7] = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+07h	;volatile
	line	224
	
l9624:	
;main.c: 224: Data_Output[8] = '#';
	movlw	(023h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+08h	;volatile
	line	226
	
l9626:	
;main.c: 226: compareMode = 'V';
	movlw	(056h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@compareMode)^0180h
	line	227
	
l9628:	
;main.c: 227: compareAmpeValue = 0;
	clrf	(main@compareAmpeValue)^0180h
	line	229
	
l9630:	
# 229 "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
clrwdt ;#
psect	maintext
	line	230
	
l9632:	
;main.c: 230: _delay((unsigned long)((300)*(8000000UL/4000.0)));
	opt asmopt_off
movlw  4
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	9
movwf	((??_main+0)+0+1),f
	movlw	52
movwf	((??_main+0)+0),f
u6717:
	decfsz	((??_main+0)+0),f
	goto	u6717
	decfsz	((??_main+0)+0+1),f
	goto	u6717
	decfsz	((??_main+0)+0+2),f
	goto	u6717
	nop2
opt asmopt_on

	line	231
	
l9634:	
;main.c: 231: requiredInit = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@requiredInit)^0180h
	bsf	status,0
	rlf	(main@requiredInit)^0180h,f
	line	232
	
l9636:	
;main.c: 232: SetValueTipV(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SetValueTipV)
	movlw	high(0)
	movwf	((?_SetValueTipV))+1
	fcall	_SetValueTipV
	line	233
	
l9638:	
;main.c: 233: SetValueSetV(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_SetValueSetV)
	movlw	high(0)
	movwf	((?_SetValueSetV))+1
	fcall	_SetValueSetV
	line	234
	
l9640:	
;main.c: 234: SetVisible_TOR(0);
	movlw	(0)
	fcall	_SetVisible_TOR
	line	235
	
l9642:	
;main.c: 235: SetVisible_ARC(0);
	movlw	(0)
	fcall	_SetVisible_ARC
	line	236
	
l9644:	
;main.c: 236: SetArrow(NONE_ARROW);
	movlw	(016h)
	fcall	_SetArrow
	line	237
	
l9646:	
;main.c: 237: LCD_SetMode(LCD_RUN_MODE);
	movlw	(03h)
	fcall	_LCD_SetMode
	line	238
	
l9648:	
;main.c: 238: mode = LCD_RUN_MODE;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mode)
	line	239
	
l9650:	
;main.c: 239: LCD_Update();
	fcall	_LCD_Update
	line	240
	
l9652:	
;main.c: 240: REQUIRED_TRANSMIT = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@REQUIRED_TRANSMIT)^0180h
	goto	l9654
	line	242
;main.c: 242: while (1) {
	
l1129:	
	line	243
	
l9654:	
# 243 "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
clrwdt ;#
psect	maintext
	line	245
	
l9656:	
;main.c: 245: bt = GetButton();
	fcall	_GetButton
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_bt)
	line	246
;main.c: 246: switch (bt) {
	goto	l9812
	line	247
;main.c: 247: case BUTTON_ENTER:
	
l1131:	
	line	248
	
l9658:	
;main.c: 248: if ( mode == LCD_RUN_MODE || mode == LCD_TEST_VIEW_MODE ) {
	movf	(_mode),w
	xorlw	03h
	skipnz
	goto	u6231
	goto	u6230
u6231:
	goto	l9662
u6230:
	
l9660:	
	movf	(_mode),w
	xorlw	04h
	skipz
	goto	u6241
	goto	u6240
u6241:
	goto	l9670
u6240:
	goto	l9662
	
l1134:	
	line	249
	
l9662:	
;main.c: 249: mode = LCD_EDIT_MODE;
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mode)
	line	250
	
l9664:	
;main.c: 250: countEnter = 0;
	clrf	(_countEnter)
	line	251
	
l9666:	
;main.c: 251: LCD_SetMode( mode );
	movf	(_mode),w
	fcall	_LCD_SetMode
	line	256
	
l9668:	
;main.c: 256: tempMode = LCD_V_UD_MODE;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tempMode)
	line	257
;main.c: 257: }
	goto	l9814
	line	258
	
l1132:	
	line	259
	
l9670:	
;main.c: 258: else {
;main.c: 259: if ( mode == LCD_EDIT_MODE ) {
	movf	(_mode),w
	xorlw	06h
	skipz
	goto	u6251
	goto	u6250
u6251:
	goto	l9814
u6250:
	line	260
	
l9672:	
;main.c: 260: if ( countEnter == 0 ) {
	movf	(_countEnter),f
	skipz
	goto	u6261
	goto	u6260
u6261:
	goto	l9712
u6260:
	line	261
	
l9674:	
;main.c: 261: countEnter = 1;
	clrf	(_countEnter)
	bsf	status,0
	rlf	(_countEnter),f
	line	262
	
l9676:	
;main.c: 262: compareMode = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@compareMode)^0180h
	line	263
;main.c: 263: if ( tempMode == LCD_V_UD_MODE ) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempMode),f
	skipz
	goto	u6271
	goto	u6270
u6271:
	goto	l9680
u6270:
	line	264
	
l9678:	
;main.c: 264: maxCountEnter = countEnter+3;
	movf	(_countEnter),w
	addlw	03h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_maxCountEnter)
	line	265
;main.c: 265: }
	goto	l9700
	line	266
	
l1138:	
	line	267
	
l9680:	
;main.c: 266: else
;main.c: 267: if ( tempMode == LCD_ARC_I_MODE ) {
	movf	(_tempMode),w
	xorlw	01h
	skipz
	goto	u6281
	goto	u6280
u6281:
	goto	l9688
u6280:
	line	268
	
l9682:	
;main.c: 268: countEnter = 4;
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_countEnter)
	line	269
	
l9684:	
;main.c: 269: maxCountEnter = countEnter+2;
	movf	(_countEnter),w
	addlw	02h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_maxCountEnter)
	line	270
;main.c: 270: compareMode = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@compareMode)^0180h
	bsf	status,0
	rlf	(main@compareMode)^0180h,f
	line	271
	
l9686:	
;main.c: 271: compareAmpeValue = 0;
	clrf	(main@compareAmpeValue)^0180h
	line	272
;main.c: 272: }
	goto	l9700
	line	273
	
l1140:	
	line	274
	
l9688:	
;main.c: 273: else
;main.c: 274: if ( tempMode == LCD_ARC_V_MODE ) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempMode),w
	xorlw	02h
	skipz
	goto	u6291
	goto	u6290
u6291:
	goto	l9698
u6290:
	line	275
	
l9690:	
;main.c: 275: countEnter = 6;
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_countEnter)
	line	276
	
l9692:	
;main.c: 276: maxCountEnter = countEnter+6;
	movf	(_countEnter),w
	addlw	06h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_maxCountEnter)
	line	277
	
l9694:	
;main.c: 277: compareMode = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@compareMode)^0180h
	line	278
	
l9696:	
;main.c: 278: compareAmpeValue = 0;
	clrf	(main@compareAmpeValue)^0180h
	line	279
;main.c: 279: }
	goto	l9700
	line	280
	
l1142:	
	line	281
	
l9698:	
;main.c: 280: else {
;main.c: 281: mode = tempMode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempMode),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mode)
	goto	l9700
	line	282
	
l1143:	
	goto	l9700
	
l1141:	
	goto	l9700
	
l1139:	
	line	283
	
l9700:	
;main.c: 282: }
;main.c: 283: LCD_SetMode(tempMode);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempMode),w
	fcall	_LCD_SetMode
	line	284
	
l9702:	
;main.c: 284: if ( mode != tempMode ) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	xorwf	(_tempMode),w
	skipnz
	goto	u6301
	goto	u6300
u6301:
	goto	l9814
u6300:
	line	285
	
l9704:	
;main.c: 285: for ( temp = maxCountEnter - 1; temp >= countEnter; temp--)
	movf	(_maxCountEnter),w
	addlw	0FFh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@temp)^0180h
	goto	l9710
	line	286
	
l1146:	
	
l9706:	
;main.c: 286: LCD_SetEditValue( temp, value[temp] );
	movf	(main@temp)^0180h,w
	addlw	_value&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_SetEditValue)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@temp)^0180h,w
	fcall	_LCD_SetEditValue
	line	285
	
l9708:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@temp)^0180h,f
	goto	l9710
	
l1145:	
	
l9710:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_countEnter),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@temp)^0180h,w
	skipnc
	goto	u6311
	goto	u6310
u6311:
	goto	l9706
u6310:
	goto	l9814
	
l1147:	
	goto	l9814
	line	287
	
l1144:	
	line	289
;main.c: 287: }
;main.c: 289: }
	goto	l9814
	line	290
	
l1137:	
	line	291
	
l9712:	
;main.c: 290: else
;main.c: 291: if ( countEnter < maxCountEnter-1 ) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_maxCountEnter),w
	addlw	low(-1)
	movwf	(??_main+0)+0
	movlw	high(-1)
	skipnc
	movlw	(high(-1)+1)&0ffh
	movwf	((??_main+0)+0)+1
	movf	1+(??_main+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u6325
	movf	0+(??_main+0)+0,w
	subwf	(_countEnter),w
u6325:

	skipnc
	goto	u6321
	goto	u6320
u6321:
	goto	l1149
u6320:
	line	292
	
l9714:	
;main.c: 292: countEnter++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_countEnter),f
	line	293
	
l9716:	
;main.c: 293: LCD_SetEditValue( countEnter, value[countEnter] );
	movf	(_countEnter),w
	addlw	_value&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_SetEditValue)
	movf	(_countEnter),w
	fcall	_LCD_SetEditValue
	line	294
;main.c: 294: }
	goto	l9814
	line	295
	
l1149:	
	line	297
;main.c: 295: else
;main.c: 296: {
;main.c: 297: FLAG_VALUE_CHANGED = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_FLAG_VALUE_CHANGED)	;volatile
	line	298
	
l9718:	
;main.c: 298: unIntTemp = (unsigned int) value[1] * 100 + value[2] * 10 + value[3];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+01h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+?___wmul),w
	movwf	(??_main+2)+0
	movf	(1+?___wmul),w
	movwf	((??_main+2)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+02h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+4)+0
	clrf	(??_main+4)+0+1
	movf	0+(??_main+4)+0,w
	movwf	(?___wmul)
	movf	1+(??_main+4)+0,w
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	addwf	0+(??_main+2)+0,w
	movwf	(??_main+6)+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_main+2)+0,w
	movwf	1+(??_main+6)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+03h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+6)+0,w
	movwf	(_unIntTemp)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+6)+0,w
	movwf	1+(_unIntTemp)
	line	299
	
l9720:	
;main.c: 299: if (unIntTemp != voltage_set_value) {
	movf	(_voltage_set_value+1),w
	xorwf	(_unIntTemp+1),w
	skipz
	goto	u6335
	movf	(_voltage_set_value),w
	xorwf	(_unIntTemp),w
u6335:

	skipnz
	goto	u6331
	goto	u6330
u6331:
	goto	l9728
u6330:
	line	300
	
l9722:	
;main.c: 300: voltage_set_value = unIntTemp;
	movf	(_unIntTemp+1),w
	clrf	(_voltage_set_value+1)
	addwf	(_voltage_set_value+1)
	movf	(_unIntTemp),w
	clrf	(_voltage_set_value)
	addwf	(_voltage_set_value)

	line	301
	
l9724:	
;main.c: 301: SetValueSetV(voltage_set_value);
	movf	(_voltage_set_value+1),w
	clrf	(?_SetValueSetV+1)
	addwf	(?_SetValueSetV+1)
	movf	(_voltage_set_value),w
	clrf	(?_SetValueSetV)
	addwf	(?_SetValueSetV)

	fcall	_SetValueSetV
	line	302
	
l9726:	
;main.c: 302: FLAG_VALUE_CHANGED = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_FLAG_VALUE_CHANGED)	;volatile
	bsf	status,0
	rlf	(_FLAG_VALUE_CHANGED),f	;volatile
	goto	l9728
	line	303
	
l1151:	
	line	305
	
l9728:	
;main.c: 303: }
;main.c: 305: unIntTemp = (unsigned int) value[4] * 10 + value[5];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+04h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+05h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(0+(?___wmul)),w
	movwf	(_unIntTemp)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(_unIntTemp)
	line	306
;main.c: 306: if (unIntTemp != compareAmpeValue) {
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@compareAmpeValue)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(_unIntTemp+1),w
	xorwf	1+(??_main+0)+0,w
	skipz
	goto	u6345
	movf	(_unIntTemp),w
	xorwf	0+(??_main+0)+0,w
u6345:

	skipnz
	goto	u6341
	goto	u6340
u6341:
	goto	l9734
u6340:
	line	307
	
l9730:	
;main.c: 307: compareAmpeValue = unIntTemp;
	movf	(_unIntTemp),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@compareAmpeValue)^0180h
	line	308
	
l9732:	
;main.c: 308: FLAG_VALUE_CHANGED = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_FLAG_VALUE_CHANGED)	;volatile
	bsf	status,0
	rlf	(_FLAG_VALUE_CHANGED),f	;volatile
	goto	l9734
	line	309
	
l1152:	
	line	311
	
l9734:	
;main.c: 309: }
;main.c: 311: unIntTemp = (unsigned int) value[6] * 100 + value[7] * 10 + value[8];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+?___wmul),w
	movwf	(??_main+2)+0
	movf	(1+?___wmul),w
	movwf	((??_main+2)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+07h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+4)+0
	clrf	(??_main+4)+0+1
	movf	0+(??_main+4)+0,w
	movwf	(?___wmul)
	movf	1+(??_main+4)+0,w
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	addwf	0+(??_main+2)+0,w
	movwf	(??_main+6)+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_main+2)+0,w
	movwf	1+(??_main+6)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+08h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+6)+0,w
	movwf	(_unIntTemp)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+6)+0,w
	movwf	1+(_unIntTemp)
	line	312
	
l9736:	
;main.c: 312: if (unIntTemp != maxVol) {
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_unIntTemp+1),w
	skipz
	goto	u6355
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_unIntTemp),w
u6355:

	skipnz
	goto	u6351
	goto	u6350
u6351:
	goto	l9742
u6350:
	line	313
	
l9738:	
;main.c: 313: maxVol = unIntTemp;
	movf	(_unIntTemp+1),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@maxVol+1)^0180h
	addwf	(main@maxVol+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_unIntTemp),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@maxVol)^0180h
	addwf	(main@maxVol)^0180h

	line	314
	
l9740:	
;main.c: 314: FLAG_VALUE_CHANGED = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_FLAG_VALUE_CHANGED)	;volatile
	bsf	status,0
	rlf	(_FLAG_VALUE_CHANGED),f	;volatile
	goto	l9742
	line	315
	
l1153:	
	line	317
	
l9742:	
;main.c: 315: }
;main.c: 317: unIntTemp = (unsigned int) value[9] * 100 + value[10] * 10 + value[11];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+09h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?___wmul)
	movf	1+(??_main+0)+0,w
	movwf	(?___wmul+1)
	movlw	low(064h)
	movwf	0+(?___wmul)+02h
	movlw	high(064h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+?___wmul),w
	movwf	(??_main+2)+0
	movf	(1+?___wmul),w
	movwf	((??_main+2)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+0Ah,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+4)+0
	clrf	(??_main+4)+0+1
	movf	0+(??_main+4)+0,w
	movwf	(?___wmul)
	movf	1+(??_main+4)+0,w
	movwf	(?___wmul+1)
	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	addwf	0+(??_main+2)+0,w
	movwf	(??_main+6)+0
	movf	(1+(?___wmul)),w
	skipnc
	incf	(1+(?___wmul)),w
	addwf	1+(??_main+2)+0,w
	movwf	1+(??_main+6)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_value)^080h+0Bh,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_main+6)+0,w
	movwf	(_unIntTemp)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_main+6)+0,w
	movwf	1+(_unIntTemp)
	line	318
	
l9744:	
;main.c: 318: if (unIntTemp != minVol) {
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_unIntTemp+1),w
	skipz
	goto	u6365
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_unIntTemp),w
u6365:

	skipnz
	goto	u6361
	goto	u6360
u6361:
	goto	l1154
u6360:
	line	319
	
l9746:	
;main.c: 319: minVol = unIntTemp;
	movf	(_unIntTemp+1),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@minVol+1)^0180h
	addwf	(main@minVol+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_unIntTemp),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@minVol)^0180h
	addwf	(main@minVol)^0180h

	line	320
	
l9748:	
;main.c: 320: FLAG_VALUE_CHANGED = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_FLAG_VALUE_CHANGED)	;volatile
	bsf	status,0
	rlf	(_FLAG_VALUE_CHANGED),f	;volatile
	line	321
	
l1154:	
	line	323
;main.c: 321: }
;main.c: 323: if (FLAG_VALUE_CHANGED) {
	movf	(_FLAG_VALUE_CHANGED),w	;volatile
	skipz
	goto	u6370
	goto	l9766
u6370:
	line	324
	
l9750:	
;main.c: 324: LCD_SubMode(compareMode);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@compareMode)^0180h,w
	fcall	_LCD_SubMode
	line	325
	
l9752:	
;main.c: 325: Data_Output[1] = (unsigned char)(voltage_set_value >> 8);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_voltage_set_value+1),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+01h	;volatile
	line	326
	
l9754:	
;main.c: 326: Data_Output[2] = (unsigned char)voltage_set_value;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_voltage_set_value),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+02h	;volatile
	line	327
	
l9756:	
;main.c: 327: Data_Output[3] = compareAmpeValue | ( compareMode << 7 );
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@compareMode)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	(07h)-1
u6385:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6385
	clrc
	rlf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	iorwf	(main@compareAmpeValue)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+03h	;volatile
	line	328
	
l9758:	
;main.c: 328: Data_Output[4] = (unsigned char)(maxVol >> 8);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+04h	;volatile
	line	329
	
l9760:	
;main.c: 329: Data_Output[5] = (unsigned char) maxVol;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+05h	;volatile
	line	330
	
l9762:	
;main.c: 330: Data_Output[6] = (unsigned char)(minVol >> 8);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+06h	;volatile
	line	331
	
l9764:	
;main.c: 331: Data_Output[7] = (unsigned char) minVol;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+07h	;volatile
	goto	l9766
	line	332
	
l1155:	
	line	333
	
l9766:	
;main.c: 332: }
;main.c: 333: mode = LCD_RUN_MODE;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mode)
	line	334
	
l9768:	
;main.c: 334: LCD_SetMode( mode );
	movf	(_mode),w
	fcall	_LCD_SetMode
	goto	l9814
	line	335
	
l1150:	
	goto	l9814
	
l1148:	
	goto	l9814
	line	336
	
l1136:	
	goto	l9814
	line	337
	
l1135:	
	line	338
;main.c: 335: }
;main.c: 336: }
;main.c: 337: }
;main.c: 338: break;
	goto	l9814
	line	339
;main.c: 339: case BUTTON_UP:
	
l1157:	
	line	340
	
l9770:	
;main.c: 340: if ( mode == LCD_EDIT_MODE ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	xorlw	06h
	skipz
	goto	u6391
	goto	u6390
u6391:
	goto	l9814
u6390:
	line	341
	
l9772:	
;main.c: 341: if ( countEnter > 0) {
	movf	(_countEnter),w
	skipz
	goto	u6400
	goto	l9782
u6400:
	line	342
	
l9774:	
;main.c: 342: if ( value[countEnter] < 9 )
	movf	(_countEnter),w
	addlw	_value&0ffh
	movwf	fsr0
	movlw	(09h)
	bcf	status, 7	;select IRP bank1
	subwf	indf,w
	skipnc
	goto	u6411
	goto	u6410
u6411:
	goto	l9778
u6410:
	line	343
	
l9776:	
;main.c: 343: value[countEnter]++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_countEnter),w
	addlw	_value&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	addwf	indf,f
	goto	l9780
	line	344
	
l1160:	
	line	345
	
l9778:	
;main.c: 344: else
;main.c: 345: value[countEnter] = 0;
	movf	(_countEnter),w
	addlw	_value&0ffh
	movwf	fsr0
	clrf	indf
	goto	l9780
	
l1161:	
	line	346
	
l9780:	
;main.c: 346: LCD_SetEditValue( countEnter, value[countEnter]);
	movf	(_countEnter),w
	addlw	_value&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_SetEditValue)
	movf	(_countEnter),w
	fcall	_LCD_SetEditValue
	line	347
;main.c: 347: }
	goto	l9814
	line	348
	
l1159:	
	line	349
	
l9782:	
;main.c: 348: else {
;main.c: 349: if ( tempMode > LCD_V_UD_MODE ) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tempMode),w
	skipz
	goto	u6420
	goto	l9786
u6420:
	line	350
	
l9784:	
;main.c: 350: tempMode--;
	movlw	low(01h)
	subwf	(_tempMode),f
	line	351
;main.c: 351: }
	goto	l9788
	line	352
	
l1163:	
	line	353
	
l9786:	
;main.c: 352: else {
;main.c: 353: tempMode = LCD_TEST_VIEW_MODE;
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_tempMode)
	goto	l9788
	line	354
	
l1164:	
	line	355
	
l9788:	
;main.c: 354: }
;main.c: 355: LCD_SetEditValue( 0xFF, tempMode);
	movf	(_tempMode),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_SetEditValue)
	movlw	(0FFh)
	fcall	_LCD_SetEditValue
	goto	l9814
	line	356
	
l1162:	
	goto	l9814
	line	358
	
l1158:	
	line	359
;main.c: 356: }
;main.c: 358: }
;main.c: 359: break;
	goto	l9814
	line	360
;main.c: 360: case BUTTON_DOWN:
	
l1165:	
	line	361
	
l9790:	
;main.c: 361: if ( mode == LCD_EDIT_MODE ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	xorlw	06h
	skipz
	goto	u6431
	goto	u6430
u6431:
	goto	l9814
u6430:
	line	362
	
l9792:	
;main.c: 362: if ( countEnter > 0 ) {
	movf	(_countEnter),w
	skipz
	goto	u6440
	goto	l9802
u6440:
	line	363
	
l9794:	
;main.c: 363: if ( value[countEnter] > 0 ) {
	movf	(_countEnter),w
	addlw	_value&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf
	skipnz
	goto	u6451
	goto	u6450
u6451:
	goto	l9798
u6450:
	line	364
	
l9796:	
;main.c: 364: value[countEnter]--;
	movf	(_countEnter),w
	addlw	_value&0ffh
	movwf	fsr0
	movlw	low(01h)
	subwf	indf,f
	line	365
;main.c: 365: }
	goto	l9800
	line	366
	
l1168:	
	line	367
	
l9798:	
;main.c: 366: else {
;main.c: 367: value[countEnter] = 9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(_countEnter),w
	addlw	_value&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	goto	l9800
	line	368
	
l1169:	
	line	369
	
l9800:	
;main.c: 368: }
;main.c: 369: LCD_SetEditValue( countEnter, value[countEnter]);
	movf	(_countEnter),w
	addlw	_value&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_SetEditValue)
	movf	(_countEnter),w
	fcall	_LCD_SetEditValue
	line	370
;main.c: 370: }
	goto	l9814
	line	371
	
l1167:	
	line	372
	
l9802:	
;main.c: 371: else {
;main.c: 372: if ( tempMode < LCD_TEST_VIEW_MODE ) {
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_tempMode),w
	skipnc
	goto	u6461
	goto	u6460
u6461:
	goto	l1171
u6460:
	line	373
	
l9804:	
;main.c: 373: tempMode++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_tempMode),f
	line	374
;main.c: 374: }
	goto	l9806
	line	375
	
l1171:	
	line	376
;main.c: 375: else {
;main.c: 376: tempMode = LCD_V_UD_MODE;
	clrf	(_tempMode)
	goto	l9806
	line	377
	
l1172:	
	line	378
	
l9806:	
;main.c: 377: }
;main.c: 378: LCD_SetEditValue( 0xFF, tempMode);
	movf	(_tempMode),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCD_SetEditValue)
	movlw	(0FFh)
	fcall	_LCD_SetEditValue
	goto	l9814
	line	379
	
l1170:	
	goto	l9814
	line	380
	
l1166:	
	line	381
;main.c: 379: }
;main.c: 380: }
;main.c: 381: break;
	goto	l9814
	line	382
;main.c: 382: case BUTTON_AM:
	
l1173:	
	line	383
;main.c: 383: if ( PORTAbits.RA0 == 0 ) {
	btfsc	(5),0	;volatile
	goto	u6471
	goto	u6470
u6471:
	goto	l1174
u6470:
	line	384
	
l9808:	
;main.c: 384: PORTAbits.RA0 = 1;;
	bsf	(5),0	;volatile
	line	385
;main.c: 385: }
	goto	l9814
	line	386
	
l1174:	
	line	387
;main.c: 386: else {
;main.c: 387: PORTAbits.RA0 = 0;;
	bcf	(5),0	;volatile
	goto	l9814
	line	388
	
l1175:	
	line	389
;main.c: 388: }
;main.c: 389: break;
	goto	l9814
	line	390
;main.c: 390: default:
	
l1176:	
	line	391
;main.c: 391: break;
	goto	l9814
	line	392
	
l9810:	
;main.c: 392: }
	goto	l9814
	line	246
	
l1130:	
	
l9812:	
	movf	(_bt),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l9770
	xorlw	2^1	; case 2
	skipnz
	goto	l9790
	xorlw	3^2	; case 3
	skipnz
	goto	l9658
	xorlw	4^3	; case 4
	skipnz
	goto	l1173
	goto	l9814
	opt asmopt_on

	line	392
	
l1156:	
	line	395
	
l9814:	
;main.c: 395: if (LCD_UPDATE_EVENT) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_LCD_UPDATE_EVENT),w	;volatile
	skipz
	goto	u6480
	goto	l9824
u6480:
	line	396
	
l9816:	
;main.c: 396: LCD_UPDATE_EVENT = 0;
	clrf	(_LCD_UPDATE_EVENT)	;volatile
	line	397
	
l9818:	
;main.c: 397: countLCD_Repaint++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_countLCD_Repaint)^080h,f
	skipnc
	incf	(_countLCD_Repaint+1)^080h,f
	movlw	high(01h)
	addwf	(_countLCD_Repaint+1)^080h,f
	line	398
;main.c: 398: if ( countLCD_Repaint == 200 ) {
	movlw	0C8h
	xorwf	(_countLCD_Repaint)^080h,w
	iorwf	(_countLCD_Repaint+1)^080h,w
	skipz
	goto	u6491
	goto	u6490
u6491:
	goto	l9824
u6490:
	line	399
	
l9820:	
;main.c: 399: LCD_Repaint(0);
	movlw	(0)
	fcall	_LCD_Repaint
	line	400
;main.c: 400: LCD_Update();
	fcall	_LCD_Update
	line	401
	
l9822:	
;main.c: 401: countLCD_Repaint = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_countLCD_Repaint)^080h
	clrf	(_countLCD_Repaint+1)^080h
	goto	l9824
	line	402
	
l1178:	
	goto	l9824
	line	403
	
l1177:	
	line	405
	
l9824:	
;main.c: 402: }
;main.c: 403: }
;main.c: 405: if (UART_RECEIVE_EVENT) {
	bcf	status, 5	;RP0=0, select bank0
	movf	(_UART_RECEIVE_EVENT),w	;volatile
	skipz
	goto	u6500
	goto	l9654
u6500:
	line	406
	
l9826:	
;main.c: 406: UART_RECEIVE_EVENT = 0;
	clrf	(_UART_RECEIVE_EVENT)	;volatile
	line	408
	
l9828:	
;main.c: 408: if ( Data_Input[0] == '*') {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Data_Input)^080h,w	;volatile
	xorlw	02Ah
	skipz
	goto	u6511
	goto	u6510
u6511:
	goto	l9842
u6510:
	line	409
	
l9830:	
;main.c: 409: unIntTemp = ((unsigned int)Data_Input[1] << 8) | Data_Input[2];
	movf	0+(_Data_Input)^080h+02h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+01h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	(??_main+2)+0,w
	movwf	(??_main+2)+1
	clrf	(??_main+2)+0
	movf	0+(??_main+0)+0,w
	iorwf	0+(??_main+2)+0,w
	movwf	(_unIntTemp)
	movf	1+(??_main+0)+0,w
	iorwf	1+(??_main+2)+0,w
	movwf	1+(_unIntTemp)
	line	410
	
l9832:	
;main.c: 410: if (unIntTemp <= 999)
	movlw	high(03E8h)
	subwf	(_unIntTemp+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(_unIntTemp),w
	skipnc
	goto	u6521
	goto	u6520
u6521:
	goto	l9836
u6520:
	line	411
	
l9834:	
;main.c: 411: SetValueTipV( unIntTemp );
	movf	(_unIntTemp+1),w
	clrf	(?_SetValueTipV+1)
	addwf	(?_SetValueTipV+1)
	movf	(_unIntTemp),w
	clrf	(?_SetValueTipV)
	addwf	(?_SetValueTipV)

	fcall	_SetValueTipV
	goto	l9836
	
l1181:	
	line	413
	
l9836:	
;main.c: 413: unIntTemp = ((unsigned int)Data_Input[4] << 8) | Data_Input[5];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+05h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+04h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	(??_main+2)+0,w
	movwf	(??_main+2)+1
	clrf	(??_main+2)+0
	movf	0+(??_main+0)+0,w
	iorwf	0+(??_main+2)+0,w
	movwf	(_unIntTemp)
	movf	1+(??_main+0)+0,w
	iorwf	1+(??_main+2)+0,w
	movwf	1+(_unIntTemp)
	line	414
	
l9838:	
;main.c: 414: if (unIntTemp <= 999)
	movlw	high(03E8h)
	subwf	(_unIntTemp+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(_unIntTemp),w
	skipnc
	goto	u6531
	goto	u6530
u6531:
	goto	l1182
u6530:
	line	415
	
l9840:	
;main.c: 415: SetValueTipI( unIntTemp );
	movf	(_unIntTemp+1),w
	clrf	(?_SetValueTipI+1)
	addwf	(?_SetValueTipI+1)
	movf	(_unIntTemp),w
	clrf	(?_SetValueTipI)
	addwf	(?_SetValueTipI)

	fcall	_SetValueTipI
	
l1182:	
	line	417
;main.c: 417: SetVisible_TOR( Data_Input[3] & 0x80 );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+03h,w	;volatile
	andlw	080h
	fcall	_SetVisible_TOR
	line	418
;main.c: 418: SetVisible_ARC( Data_Input[3] & 0x40 );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+03h,w	;volatile
	andlw	040h
	fcall	_SetVisible_ARC
	line	419
;main.c: 419: SetArrow( Data_Input[3] & 0x3F );
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+03h,w	;volatile
	andlw	03Fh
	fcall	_SetArrow
	line	420
;main.c: 420: }
	goto	l9934
	line	421
	
l1180:	
	line	422
	
l9842:	
;main.c: 421: else
;main.c: 422: if (Data_Input[0] == '>') {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Data_Input)^080h,w	;volatile
	xorlw	03Eh
	skipz
	goto	u6541
	goto	u6540
u6541:
	goto	l9934
u6540:
	line	423
	
l9844:	
;main.c: 423: REQUIRED_TRANSMIT = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@REQUIRED_TRANSMIT)^0180h
	line	425
	
l9846:	
;main.c: 425: for ( temp = 1; temp < 8; temp++ ) {
	clrf	(main@temp)^0180h
	bsf	status,0
	rlf	(main@temp)^0180h,f
	
l9848:	
	movlw	(08h)
	subwf	(main@temp)^0180h,w
	skipc
	goto	u6551
	goto	u6550
u6551:
	goto	l9852
u6550:
	goto	l9860
	
l9850:	
	goto	l9860
	
l1185:	
	line	426
	
l9852:	
;main.c: 426: if (Data_Input[temp] != Data_Output[temp]) {
	movf	(main@temp)^0180h,w
	addlw	_Data_Output&0ffh
	movwf	fsr
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@temp)^0180h,w
	addlw	_Data_Input&0ffh
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(??_main+0)+0,w
	skipnz
	goto	u6561
	goto	u6560
u6561:
	goto	l9856
u6560:
	line	427
	
l9854:	
;main.c: 427: REQUIRED_TRANSMIT = 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@REQUIRED_TRANSMIT)^0180h
	bsf	status,0
	rlf	(main@REQUIRED_TRANSMIT)^0180h,f
	line	429
;main.c: 429: break;
	goto	l9860
	line	430
	
l1187:	
	line	425
	
l9856:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@temp)^0180h,f
	
l9858:	
	movlw	(08h)
	subwf	(main@temp)^0180h,w
	skipc
	goto	u6571
	goto	u6570
u6571:
	goto	l9852
u6570:
	goto	l9860
	
l1186:	
	line	433
	
l9860:	
;main.c: 430: }
;main.c: 431: }
;main.c: 433: if ( requiredInit ) {
	movf	(main@requiredInit)^0180h,w
	skipz
	goto	u6580
	goto	l9934
u6580:
	line	434
	
l9862:	
;main.c: 434: unIntTemp = ((unsigned int)Data_Input[1] << 8) | Data_Input[2];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+02h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+01h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	(??_main+2)+0,w
	movwf	(??_main+2)+1
	clrf	(??_main+2)+0
	movf	0+(??_main+0)+0,w
	iorwf	0+(??_main+2)+0,w
	movwf	(_unIntTemp)
	movf	1+(??_main+0)+0,w
	iorwf	1+(??_main+2)+0,w
	movwf	1+(_unIntTemp)
	line	435
	
l9864:	
;main.c: 435: if ( unIntTemp <= 999 ) {
	movlw	high(03E8h)
	subwf	(_unIntTemp+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(_unIntTemp),w
	skipnc
	goto	u6591
	goto	u6590
u6591:
	goto	l9878
u6590:
	line	436
	
l9866:	
;main.c: 436: voltage_set_value = unIntTemp;
	movf	(_unIntTemp+1),w
	clrf	(_voltage_set_value+1)
	addwf	(_voltage_set_value+1)
	movf	(_unIntTemp),w
	clrf	(_voltage_set_value)
	addwf	(_voltage_set_value)

	line	437
	
l9868:	
;main.c: 437: SetValueSetV(voltage_set_value);
	movf	(_voltage_set_value+1),w
	clrf	(?_SetValueSetV+1)
	addwf	(?_SetValueSetV+1)
	movf	(_voltage_set_value),w
	clrf	(?_SetValueSetV)
	addwf	(?_SetValueSetV)

	fcall	_SetValueSetV
	line	438
	
l9870:	
;main.c: 438: value[1] = voltage_set_value / 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(_voltage_set_value+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(_voltage_set_value),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+01h
	line	439
	
l9872:	
;main.c: 439: value[2] = ( voltage_set_value % 100 ) / 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(_voltage_set_value+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_voltage_set_value),w
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
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+02h
	line	440
	
l9874:	
;main.c: 440: value[3] = ( voltage_set_value % 100 ) % 10;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_voltage_set_value+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(_voltage_set_value),w
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_main$6110+1)^0180h
	addwf	(_main$6110+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_main$6110)^0180h
	addwf	(_main$6110)^0180h

	
l9876:	
;main.c: 440: value[3] = ( voltage_set_value % 100 ) % 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$6110+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$6110)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+03h
	goto	l9878
	line	441
	
l1189:	
	line	443
	
l9878:	
;main.c: 441: }
;main.c: 443: temp = Data_Input[3] & ~(1<<7);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+03h,w	;volatile
	andlw	07Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@temp)^0180h
	line	444
	
l9880:	
;main.c: 444: if ( temp <= 99 ) {
	movlw	(064h)
	subwf	(main@temp)^0180h,w
	skipnc
	goto	u6601
	goto	u6600
u6601:
	goto	l9892
u6600:
	line	445
	
l9882:	
;main.c: 445: compareAmpeValue = temp;
	movf	(main@temp)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@compareAmpeValue)^0180h
	line	446
	
l9884:	
;main.c: 446: compareMode = Data_Input[3]>>7;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+03h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	07h
u6615:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6615
	movf	0+(??_main+0)+0,w
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@compareMode)^0180h
	line	447
	
l9886:	
;main.c: 447: LCD_SubMode(compareMode);
	movf	(main@compareMode)^0180h,w
	fcall	_LCD_SubMode
	line	448
	
l9888:	
;main.c: 448: value[4] = compareAmpeValue / 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@compareAmpeValue)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_main+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+04h
	line	449
	
l9890:	
;main.c: 449: value[5] = compareAmpeValue % 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@compareAmpeValue)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_main+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+05h
	goto	l9892
	line	450
	
l1190:	
	line	452
	
l9892:	
;main.c: 450: }
;main.c: 452: unIntTemp = ((unsigned int)Data_Input[4] << 8) | Data_Input[5];
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+05h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+04h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	(??_main+2)+0,w
	movwf	(??_main+2)+1
	clrf	(??_main+2)+0
	movf	0+(??_main+0)+0,w
	iorwf	0+(??_main+2)+0,w
	movwf	(_unIntTemp)
	movf	1+(??_main+0)+0,w
	iorwf	1+(??_main+2)+0,w
	movwf	1+(_unIntTemp)
	line	453
	
l9894:	
;main.c: 453: if ( unIntTemp <= 999 ) {
	movlw	high(03E8h)
	subwf	(_unIntTemp+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(_unIntTemp),w
	skipnc
	goto	u6621
	goto	u6620
u6621:
	goto	l9906
u6620:
	line	454
	
l9896:	
;main.c: 454: maxVol = unIntTemp;
	movf	(_unIntTemp+1),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@maxVol+1)^0180h
	addwf	(main@maxVol+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_unIntTemp),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@maxVol)^0180h
	addwf	(main@maxVol)^0180h

	line	455
	
l9898:	
;main.c: 455: value[6] = maxVol / 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+06h
	line	456
	
l9900:	
;main.c: 456: value[7] = ( maxVol % 100 ) / 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+07h
	line	457
	
l9902:	
;main.c: 457: value[8] = ( maxVol % 100 ) % 10;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_main$6110+1)^0180h
	addwf	(_main$6110+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_main$6110)^0180h
	addwf	(_main$6110)^0180h

	
l9904:	
;main.c: 457: value[8] = ( maxVol % 100 ) % 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$6110+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$6110)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+08h
	goto	l9906
	line	458
	
l1191:	
	line	460
	
l9906:	
;main.c: 458: }
;main.c: 460: unIntTemp = ((unsigned int)Data_Input[6] << 8) | Data_Input[7];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+07h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_Data_Input)^080h+06h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	(??_main+2)+0,w
	movwf	(??_main+2)+1
	clrf	(??_main+2)+0
	movf	0+(??_main+0)+0,w
	iorwf	0+(??_main+2)+0,w
	movwf	(_unIntTemp)
	movf	1+(??_main+0)+0,w
	iorwf	1+(??_main+2)+0,w
	movwf	1+(_unIntTemp)
	line	461
	
l9908:	
;main.c: 461: if ( unIntTemp <= 999 ) {
	movlw	high(03E8h)
	subwf	(_unIntTemp+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(_unIntTemp),w
	skipnc
	goto	u6631
	goto	u6630
u6631:
	goto	l9920
u6630:
	line	462
	
l9910:	
;main.c: 462: minVol = unIntTemp;
	movf	(_unIntTemp+1),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@minVol+1)^0180h
	addwf	(main@minVol+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_unIntTemp),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@minVol)^0180h
	addwf	(main@minVol)^0180h

	line	463
	
l9912:	
;main.c: 463: value[9] = minVol / 100;
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+09h
	line	464
	
l9914:	
;main.c: 464: value[10] = ( minVol % 100 ) / 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+0Ah
	line	465
	
l9916:	
;main.c: 465: value[11] = ( minVol % 100 ) % 10;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_main$6110+1)^0180h
	addwf	(_main$6110+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(_main$6110)^0180h
	addwf	(_main$6110)^0180h

	
l9918:	
;main.c: 465: value[11] = ( minVol % 100 ) % 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$6110+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_main$6110)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_value)^080h+0Bh
	goto	l9920
	line	466
	
l1192:	
	line	468
	
l9920:	
;main.c: 466: }
;main.c: 468: Data_Output[1] = (unsigned char)(voltage_set_value >> 8);
	bcf	status, 5	;RP0=0, select bank0
	movf	(_voltage_set_value+1),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+01h	;volatile
	line	469
	
l9922:	
;main.c: 469: Data_Output[2] = (unsigned char)voltage_set_value;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_voltage_set_value),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+02h	;volatile
	line	470
	
l9924:	
;main.c: 470: Data_Output[3] = compareAmpeValue | ( compareMode << 7 );
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@compareMode)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movlw	(07h)-1
u6645:
	clrc
	rlf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u6645
	clrc
	rlf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	iorwf	(main@compareAmpeValue)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	(??_main+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+03h	;volatile
	line	471
	
l9926:	
;main.c: 471: Data_Output[4] = (unsigned char)(maxVol >> 8);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+04h	;volatile
	line	472
;main.c: 472: Data_Output[5] = (unsigned char) maxVol;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@maxVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+05h	;volatile
	line	473
	
l9928:	
;main.c: 473: Data_Output[6] = (unsigned char)(minVol >> 8);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+06h	;volatile
	line	474
	
l9930:	
;main.c: 474: Data_Output[7] = (unsigned char) minVol;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@minVol)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_Data_Output)^080h+07h	;volatile
	line	475
	
l9932:	
;main.c: 475: requiredInit++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@requiredInit)^0180h,f
	goto	l9934
	line	476
	
l1188:	
	goto	l9934
	line	477
	
l1184:	
	goto	l9934
	line	479
	
l1183:	
	
l9934:	
;main.c: 476: }
;main.c: 477: }
;main.c: 479: if ( requiredInit == 3 ) {
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@requiredInit)^0180h,w
	xorlw	03h
	skipz
	goto	u6651
	goto	u6650
u6651:
	goto	l9944
u6650:
	line	480
	
l9936:	
;main.c: 480: LCD_SubMode(compareMode);
	movf	(main@compareMode)^0180h,w
	fcall	_LCD_SubMode
	line	481
	
l9938:	
;main.c: 481: LCD_SetMode( LCD_RUN_MODE );
	movlw	(03h)
	fcall	_LCD_SetMode
	line	482
	
l9940:	
;main.c: 482: mode = LCD_RUN_MODE;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_mode)
	line	483
	
l9942:	
;main.c: 483: requiredInit = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@requiredInit)^0180h
	goto	l9944
	line	484
	
l1193:	
	line	485
	
l9944:	
# 485 "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
clrwdt ;#
psect	maintext
	line	486
	
l9946:	
;main.c: 486: if ( REQUIRED_TRANSMIT || requiredInit || FLAG_VALUE_CHANGED ) {
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@REQUIRED_TRANSMIT)^0180h,f
	skipz
	goto	u6661
	goto	u6660
u6661:
	goto	l1196
u6660:
	
l9948:	
	movf	(main@requiredInit)^0180h,f
	skipz
	goto	u6671
	goto	u6670
u6671:
	goto	l1196
u6670:
	
l9950:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_FLAG_VALUE_CHANGED),w	;volatile
	skipz
	goto	u6680
	goto	l9962
u6680:
	
l1196:	
	line	487
;main.c: 487: for ( count = 0; count < 9; count++ )
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@count)^0180h
	
l9952:	
	movlw	(09h)
	subwf	(main@count)^0180h,w
	skipc
	goto	u6691
	goto	u6690
u6691:
	goto	l9956
u6690:
	goto	l1198
	
l9954:	
	goto	l1198
	line	488
	
l1197:	
	
l9956:	
;main.c: 488: putch(Data_Output[count]);
	movf	(main@count)^0180h,w
	addlw	_Data_Output&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_putch
	line	487
	
l9958:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@count)^0180h,f
	
l9960:	
	movlw	(09h)
	subwf	(main@count)^0180h,w
	skipc
	goto	u6701
	goto	u6700
u6701:
	goto	l9956
u6700:
	
l1198:	
	line	489
;main.c: 489: REQUIRED_TRANSMIT = 0;
	clrf	(main@REQUIRED_TRANSMIT)^0180h
	line	490
;main.c: 490: FLAG_VALUE_CHANGED = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_FLAG_VALUE_CHANGED)	;volatile
	goto	l9962
	line	491
	
l1194:	
	line	492
	
l9962:	
;main.c: 491: }
;main.c: 492: LCD_Update();
	fcall	_LCD_Update
	goto	l9654
	line	493
	
l1179:	
	goto	l9654
	line	494
	
l1199:	
	line	242
	goto	l9654
	
l1200:	
	line	495
	
l1201:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCD_Repaint
psect	text1164,local,class=CODE,delta=2
global __ptext1164
__ptext1164:

;; *************** function _LCD_Repaint *****************
;; Defined at:
;;		line 114 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1   33[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Clear_LCD
;;		_SetCursor
;;		_strcpy
;;		_print_LCD
;;		_WriteDataLCD
;;		_Enable_Blink_LCD
;;		_sprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1164
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	114
	global	__size_of_LCD_Repaint
	__size_of_LCD_Repaint	equ	__end_of_LCD_Repaint-_LCD_Repaint
	
_LCD_Repaint:	
	opt	stack 2
; Regs used in _LCD_Repaint: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;LCD_Repaint@cmd stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_Repaint@cmd)
	line	115
	
l9546:	
;dthc_lcd_controller.c: 115: if ( cmd == 0 && LCD_Status == LCD_RUN_MODE ) {
	movf	(LCD_Repaint@cmd),f
	skipz
	goto	u6201
	goto	u6200
u6201:
	goto	l3415
u6200:
	
l9548:	
	movf	(dthc_lcd_controller@LCD_Status),w	;volatile
	xorlw	03h
	skipz
	goto	u6211
	goto	u6210
u6211:
	goto	l3415
u6210:
	line	116
	
l9550:	
;dthc_lcd_controller.c: 116: Clear_LCD();
	fcall	_Clear_LCD
	line	117
;dthc_lcd_controller.c: 117: SetCursor( 0x00);
	movlw	(0)
	fcall	_SetCursor
	line	118
	
l9552:	
;dthc_lcd_controller.c: 118: strcpy( lcd_buf, MainScreen1);
	movlw	((_MainScreen1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_Repaint+0)+0
	movf	(??_LCD_Repaint+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	119
	
l9554:	
;dthc_lcd_controller.c: 119: print_LCD();
	fcall	_print_LCD
	line	120
	
l9556:	
;dthc_lcd_controller.c: 120: if (nameMode != 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dthc_lcd_controller@nameMode),w
	skipz
	goto	u6220
	goto	l3412
u6220:
	line	121
	
l9558:	
;dthc_lcd_controller.c: 121: SetCursor(0x0B);
	movlw	(0Bh)
	fcall	_SetCursor
	line	122
;dthc_lcd_controller.c: 122: WriteDataLCD(nameMode);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dthc_lcd_controller@nameMode),w
	fcall	_WriteDataLCD
	line	123
;dthc_lcd_controller.c: 123: SetCursor(0x0B);
	movlw	(0Bh)
	fcall	_SetCursor
	line	124
	
l3412:	
	line	125
;dthc_lcd_controller.c: 124: }
;dthc_lcd_controller.c: 125: SetCursor( 0x40);
	movlw	(040h)
	fcall	_SetCursor
	line	126
	
l9560:	
;dthc_lcd_controller.c: 126: strcpy( lcd_buf, MainScreen2);
	movlw	((_MainScreen2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_Repaint+0)+0
	movf	(??_LCD_Repaint+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	127
	
l9562:	
;dthc_lcd_controller.c: 127: print_LCD();
	fcall	_print_LCD
	line	128
;dthc_lcd_controller.c: 128: Enable_Blink_LCD(1);
	movlw	(01h)
	fcall	_Enable_Blink_LCD
	line	129
;dthc_lcd_controller.c: 129: SetCursor( 0x46 );
	movlw	(046h)
	fcall	_SetCursor
	line	130
	
l9564:	
;dthc_lcd_controller.c: 130: sprintf(lcd_buf, "%3u", valueSetV);
	movlw	((STR_10-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_Repaint+0)+0
	movf	(??_LCD_Repaint+0)+0,w
	movwf	(?_sprintf)
	movf	(dthc_lcd_controller@valueSetV+1),w	;volatile
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(dthc_lcd_controller@valueSetV),w	;volatile
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	131
	
l9566:	
;dthc_lcd_controller.c: 131: print_LCD();
	fcall	_print_LCD
	line	132
;dthc_lcd_controller.c: 132: }
	goto	l3415
	line	133
	
l3411:	
	goto	l3415
	line	134
	
l9568:	
	goto	l3415
	line	136
	
l3414:	
	goto	l3415
	line	137
	
l3413:	
	
l3415:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Repaint
	__end_of_LCD_Repaint:
;; =============== function _LCD_Repaint ends ============

	signat	_LCD_Repaint,4216
	global	_LCD_SetEditValue
psect	text1165,local,class=CODE,delta=2
global __ptext1165
__ptext1165:

;; *************** function _LCD_SetEditValue *****************
;; Defined at:
;;		line 279 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;;  value           1    6[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SetCursor
;;		_WriteDataLCD
;;		_strcpy
;;		_print_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1165
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	279
	global	__size_of_LCD_SetEditValue
	__size_of_LCD_SetEditValue	equ	__end_of_LCD_SetEditValue-_LCD_SetEditValue
	
_LCD_SetEditValue:	
	opt	stack 2
; Regs used in _LCD_SetEditValue: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCD_SetEditValue@pos stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_SetEditValue@pos)
	line	280
	
l9516:	
;dthc_lcd_controller.c: 280: if ( pos != 0xFF ) {
	movf	(LCD_SetEditValue@pos),w
	xorlw	0FFh
	skipnz
	goto	u6151
	goto	u6150
u6151:
	goto	l9540
u6150:
	line	301
	
l9518:	
;dthc_lcd_controller.c: 301: if ( pos < 9 ) {
	movlw	(09h)
	subwf	(LCD_SetEditValue@pos),w
	skipnc
	goto	u6161
	goto	u6160
u6161:
	goto	l9528
u6160:
	line	302
	
l9520:	
;dthc_lcd_controller.c: 302: if (pos > 5) {
	movlw	(06h)
	subwf	(LCD_SetEditValue@pos),w
	skipc
	goto	u6171
	goto	u6170
u6171:
	goto	l9524
u6170:
	line	303
	
l9522:	
;dthc_lcd_controller.c: 303: pos -= 5;
	movlw	low(05h)
	subwf	(LCD_SetEditValue@pos),f
	line	304
;dthc_lcd_controller.c: 304: }
	goto	l3465
	line	305
	
l3464:	
	line	306
	
l9524:	
;dthc_lcd_controller.c: 305: else
;dthc_lcd_controller.c: 306: if (pos > 3) {
	movlw	(04h)
	subwf	(LCD_SetEditValue@pos),w
	skipc
	goto	u6181
	goto	u6180
u6181:
	goto	l3465
u6180:
	line	307
	
l9526:	
;dthc_lcd_controller.c: 307: pos -= 2;
	movlw	low(02h)
	subwf	(LCD_SetEditValue@pos),f
	goto	l3465
	line	308
	
l3466:	
	line	309
	
l3465:	
;dthc_lcd_controller.c: 308: }
;dthc_lcd_controller.c: 309: pos = 0x05 + pos;
	movf	(LCD_SetEditValue@pos),w
	addlw	05h
	movwf	(??_LCD_SetEditValue+0)+0
	movf	(??_LCD_SetEditValue+0)+0,w
	movwf	(LCD_SetEditValue@pos)
	line	310
;dthc_lcd_controller.c: 310: }
	goto	l9530
	line	311
	
l3463:	
	line	312
	
l9528:	
;dthc_lcd_controller.c: 311: else {
;dthc_lcd_controller.c: 312: pos = 0x45 + ( pos - 8 );
	movf	(LCD_SetEditValue@pos),w
	addlw	03Dh
	movwf	(??_LCD_SetEditValue+0)+0
	movf	(??_LCD_SetEditValue+0)+0,w
	movwf	(LCD_SetEditValue@pos)
	goto	l9530
	line	313
	
l3467:	
	line	315
	
l9530:	
;dthc_lcd_controller.c: 313: }
;dthc_lcd_controller.c: 315: SetCursor( pos );
	movf	(LCD_SetEditValue@pos),w
	fcall	_SetCursor
	line	317
	
l9532:	
;dthc_lcd_controller.c: 317: if ( value <= 9 ) {
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCD_SetEditValue@value),w
	skipnc
	goto	u6191
	goto	u6190
u6191:
	goto	l9536
u6190:
	line	318
	
l9534:	
;dthc_lcd_controller.c: 318: value += '0';
	movlw	(030h)
	movwf	(??_LCD_SetEditValue+0)+0
	movf	(??_LCD_SetEditValue+0)+0,w
	addwf	(LCD_SetEditValue@value),f
	goto	l9536
	line	319
	
l3468:	
	line	321
	
l9536:	
;dthc_lcd_controller.c: 319: }
;dthc_lcd_controller.c: 321: WriteDataLCD( value );
	movf	(LCD_SetEditValue@value),w
	fcall	_WriteDataLCD
	line	322
	
l9538:	
;dthc_lcd_controller.c: 322: SetCursor( pos );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_SetEditValue@pos),w
	fcall	_SetCursor
	line	323
;dthc_lcd_controller.c: 323: }
	goto	l3470
	line	324
	
l3462:	
	line	325
	
l9540:	
;dthc_lcd_controller.c: 324: else {
;dthc_lcd_controller.c: 325: strcpy( lcd_buf, MainScreen4[value]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_SetEditValue@value),w
	addlw	_MainScreen4&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_LCD_SetEditValue+0)+0
	movf	(??_LCD_SetEditValue+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	326
	
l9542:	
;dthc_lcd_controller.c: 326: SetCursor(0x42);
	movlw	(042h)
	fcall	_SetCursor
	line	327
	
l9544:	
;dthc_lcd_controller.c: 327: print_LCD();
	fcall	_print_LCD
	line	328
;dthc_lcd_controller.c: 328: SetCursor(0x56);
	movlw	(056h)
	fcall	_SetCursor
	goto	l3470
	line	329
	
l3469:	
	line	330
	
l3470:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_SetEditValue
	__end_of_LCD_SetEditValue:
;; =============== function _LCD_SetEditValue ends ============

	signat	_LCD_SetEditValue,8312
	global	_LCD_Update
psect	text1166,local,class=CODE,delta=2
global __ptext1166
__ptext1166:

;; *************** function _LCD_Update *****************
;; Defined at:
;;		line 62 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_SetCursor
;;		_sprintf
;;		_print_LCD
;;		_WriteDataLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1166
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	62
	global	__size_of_LCD_Update
	__size_of_LCD_Update	equ	__end_of_LCD_Update-_LCD_Update
	
_LCD_Update:	
	opt	stack 2
; Regs used in _LCD_Update: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	65
	
l9452:	
;dthc_lcd_controller.c: 65: if ( LCD_Status == LCD_RUN_MODE ) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dthc_lcd_controller@LCD_Status),w	;volatile
	xorlw	03h
	skipz
	goto	u6101
	goto	u6100
u6101:
	goto	l9490
u6100:
	line	66
	
l9454:	
;dthc_lcd_controller.c: 66: SetCursor(0x06);
	movlw	(06h)
	fcall	_SetCursor
	line	67
	
l9456:	
;dthc_lcd_controller.c: 67: sprintf(lcd_buf, "%3u  %3s ", valueTipV, dispTOR);
	movlw	((STR_6-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(?_sprintf)
	movf	(dthc_lcd_controller@valueTipV+1),w	;volatile
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(dthc_lcd_controller@valueTipV),w	;volatile
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movf	(_dispTOR),w
	movwf	(??_LCD_Update+1)+0
	movf	(??_LCD_Update+1)+0,w
	movwf	(0+?_sprintf+03h)
	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	68
	
l9458:	
;dthc_lcd_controller.c: 68: print_LCD();
	fcall	_print_LCD
	line	69
	
l9460:	
;dthc_lcd_controller.c: 69: WriteDataLCD( Up_State );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Up_State),w	;volatile
	fcall	_WriteDataLCD
	line	70
	
l9462:	
;dthc_lcd_controller.c: 70: if (nameMode != 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dthc_lcd_controller@nameMode),w
	skipz
	goto	u6110
	goto	l3402
u6110:
	line	71
	
l9464:	
;dthc_lcd_controller.c: 71: SetCursor(0x0B);
	movlw	(0Bh)
	fcall	_SetCursor
	line	72
;dthc_lcd_controller.c: 72: WriteDataLCD(nameMode);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dthc_lcd_controller@nameMode),w
	fcall	_WriteDataLCD
	line	73
;dthc_lcd_controller.c: 73: SetCursor(0x0B);
	movlw	(0Bh)
	fcall	_SetCursor
	line	74
	
l3402:	
	line	75
;dthc_lcd_controller.c: 74: }
;dthc_lcd_controller.c: 75: SetCursor(0x4B);
	movlw	(04Bh)
	fcall	_SetCursor
	line	76
	
l9466:	
;dthc_lcd_controller.c: 76: sprintf(lcd_buf, "%3s ", dispARC);
	movlw	((STR_7-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(?_sprintf)
	movf	(_dispARC),w
	movwf	(??_LCD_Update+1)+0
	movf	(??_LCD_Update+1)+0,w
	movwf	(0+?_sprintf+01h)
	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	77
	
l9468:	
;dthc_lcd_controller.c: 77: print_LCD();
	fcall	_print_LCD
	line	78
	
l9470:	
;dthc_lcd_controller.c: 78: WriteDataLCD( Down_State );
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Down_State),w	;volatile
	fcall	_WriteDataLCD
	line	80
	
l9472:	
;dthc_lcd_controller.c: 80: if (Up_State != NONE_ARROW)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Up_State),w	;volatile
	xorlw	016h
	skipnz
	goto	u6121
	goto	u6120
u6121:
	goto	l9476
u6120:
	line	81
	
l9474:	
;dthc_lcd_controller.c: 81: SetCursor(0x0F);
	movlw	(0Fh)
	fcall	_SetCursor
	goto	l9480
	line	82
	
l3403:	
	line	83
	
l9476:	
;dthc_lcd_controller.c: 82: else
;dthc_lcd_controller.c: 83: if (Down_State != NONE_ARROW)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Down_State),w	;volatile
	xorlw	016h
	skipnz
	goto	u6131
	goto	u6130
u6131:
	goto	l9480
u6130:
	line	84
	
l9478:	
;dthc_lcd_controller.c: 84: SetCursor(0x4F);
	movlw	(04Fh)
	fcall	_SetCursor
	goto	l9480
	
l3405:	
	goto	l9480
	line	88
	
l3404:	
	
l9480:	
;dthc_lcd_controller.c: 88: valueTipV = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(dthc_lcd_controller@valueTipV)	;volatile
	clrf	(dthc_lcd_controller@valueTipV+1)	;volatile
	line	89
	
l9482:	
;dthc_lcd_controller.c: 89: Up_State = NONE_ARROW;
	movlw	(016h)
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(_Up_State)	;volatile
	line	90
	
l9484:	
;dthc_lcd_controller.c: 90: Down_State = NONE_ARROW;
	movlw	(016h)
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(_Down_State)	;volatile
	line	91
	
l9486:	
;dthc_lcd_controller.c: 91: dispTOR = StrNull;
	movlw	((_StrNull-__stringbase))&0ffh
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(_dispTOR)
	line	92
	
l9488:	
;dthc_lcd_controller.c: 92: dispARC = StrNull;
	movlw	((_StrNull-__stringbase))&0ffh
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(_dispARC)
	line	93
;dthc_lcd_controller.c: 93: }
	goto	l3408
	line	94
	
l3401:	
	line	95
	
l9490:	
;dthc_lcd_controller.c: 94: else
;dthc_lcd_controller.c: 95: if ( LCD_Status == LCD_TEST_VIEW_MODE ) {
	movf	(dthc_lcd_controller@LCD_Status),w	;volatile
	xorlw	04h
	skipz
	goto	u6141
	goto	u6140
u6141:
	goto	l3408
u6140:
	line	96
	
l9492:	
;dthc_lcd_controller.c: 96: SetCursor(0x06);
	movlw	(06h)
	fcall	_SetCursor
	line	97
	
l9494:	
;dthc_lcd_controller.c: 97: sprintf(lcd_buf, "%3u", valueTipV);
	movlw	((STR_8-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(?_sprintf)
	movf	(dthc_lcd_controller@valueTipV+1),w	;volatile
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(dthc_lcd_controller@valueTipV),w	;volatile
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	98
	
l9496:	
;dthc_lcd_controller.c: 98: print_LCD();
	fcall	_print_LCD
	line	99
	
l9498:	
;dthc_lcd_controller.c: 99: SetCursor(0x46);
	movlw	(046h)
	fcall	_SetCursor
	line	100
	
l9500:	
;dthc_lcd_controller.c: 100: sprintf(lcd_buf, "%3u", valueTipI);
	movlw	((STR_9-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(dthc_lcd_controller@valueTipI+1)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(dthc_lcd_controller@valueTipI)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	101
;dthc_lcd_controller.c: 101: print_LCD();
	fcall	_print_LCD
	line	102
	
l9502:	
;dthc_lcd_controller.c: 102: SetCursor(0x10);
	movlw	(010h)
	fcall	_SetCursor
	line	103
	
l9504:	
;dthc_lcd_controller.c: 103: valueTipV = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(dthc_lcd_controller@valueTipV)	;volatile
	clrf	(dthc_lcd_controller@valueTipV+1)	;volatile
	line	104
	
l9506:	
;dthc_lcd_controller.c: 104: valueTipI = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(dthc_lcd_controller@valueTipI)^080h	;volatile
	clrf	(dthc_lcd_controller@valueTipI+1)^080h	;volatile
	line	105
	
l9508:	
;dthc_lcd_controller.c: 105: Up_State = NONE_ARROW;
	movlw	(016h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(_Up_State)	;volatile
	line	106
	
l9510:	
;dthc_lcd_controller.c: 106: Down_State = NONE_ARROW;
	movlw	(016h)
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(_Down_State)	;volatile
	line	107
	
l9512:	
;dthc_lcd_controller.c: 107: dispTOR = StrNull;
	movlw	((_StrNull-__stringbase))&0ffh
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(_dispTOR)
	line	108
	
l9514:	
;dthc_lcd_controller.c: 108: dispARC = StrNull;
	movlw	((_StrNull-__stringbase))&0ffh
	movwf	(??_LCD_Update+0)+0
	movf	(??_LCD_Update+0)+0,w
	movwf	(_dispARC)
	goto	l3408
	line	109
	
l3407:	
	goto	l3408
	line	112
	
l3406:	
	
l3408:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Update
	__end_of_LCD_Update:
;; =============== function _LCD_Update ends ============

	signat	_LCD_Update,88
	global	_LCD_SetMode
psect	text1167,local,class=CODE,delta=2
global __ptext1167
__ptext1167:

;; *************** function _LCD_SetMode *****************
;; Defined at:
;;		line 147 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  mode            1    wreg     enum E283
;; Auto vars:     Size  Location     Type
;;  mode            1   33[BANK0 ] enum E283
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Clear_LCD
;;		_SetCursor
;;		_strcpy
;;		_print_LCD
;;		_Enable_Blink_LCD
;;		_sprintf
;;		_WriteDataLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1167
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	147
	global	__size_of_LCD_SetMode
	__size_of_LCD_SetMode	equ	__end_of_LCD_SetMode-_LCD_SetMode
	
_LCD_SetMode:	
	opt	stack 2
; Regs used in _LCD_SetMode: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;LCD_SetMode@mode stored from wreg
	line	149
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_SetMode@mode)
	
l9356:	
;dthc_lcd_controller.c: 149: if ( mode == LCD_RUN_MODE && initMainScreen==0 ) {
	movf	(LCD_SetMode@mode),w
	xorlw	03h
	skipz
	goto	u6071
	goto	u6070
u6071:
	goto	l9448
u6070:
	
l9358:	
	movf	(dthc_lcd_controller@initMainScreen),f
	skipz
	goto	u6081
	goto	u6080
u6081:
	goto	l9448
u6080:
	line	150
	
l9360:	
;dthc_lcd_controller.c: 150: Clear_LCD();
	fcall	_Clear_LCD
	line	151
;dthc_lcd_controller.c: 151: SetCursor( 0x00);
	movlw	(0)
	fcall	_SetCursor
	line	152
	
l9362:	
;dthc_lcd_controller.c: 152: strcpy( lcd_buf, MainScreen1);
	movlw	((_MainScreen1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	153
	
l9364:	
;dthc_lcd_controller.c: 153: print_LCD();
	fcall	_print_LCD
	line	154
;dthc_lcd_controller.c: 154: SetCursor( 0x40);
	movlw	(040h)
	fcall	_SetCursor
	line	155
	
l9366:	
;dthc_lcd_controller.c: 155: strcpy( lcd_buf, MainScreen2);
	movlw	((_MainScreen2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	156
	
l9368:	
;dthc_lcd_controller.c: 156: print_LCD();
	fcall	_print_LCD
	line	157
;dthc_lcd_controller.c: 157: Enable_Blink_LCD(1);
	movlw	(01h)
	fcall	_Enable_Blink_LCD
	line	158
;dthc_lcd_controller.c: 158: SetCursor( 0x46 );
	movlw	(046h)
	fcall	_SetCursor
	line	159
	
l9370:	
;dthc_lcd_controller.c: 159: sprintf(lcd_buf, "%3u", valueSetV);
	movlw	((STR_11-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_sprintf)
	movf	(dthc_lcd_controller@valueSetV+1),w	;volatile
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(dthc_lcd_controller@valueSetV),w	;volatile
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	160
	
l9372:	
;dthc_lcd_controller.c: 160: print_LCD();
	fcall	_print_LCD
	line	161
	
l9374:	
;dthc_lcd_controller.c: 161: initMainScreen = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(dthc_lcd_controller@initMainScreen)
	bsf	status,0
	rlf	(dthc_lcd_controller@initMainScreen),f
	goto	l9448
	line	162
	
l3423:	
	line	164
;dthc_lcd_controller.c: 162: }
;dthc_lcd_controller.c: 164: switch (mode) {
	goto	l9448
	line	165
;dthc_lcd_controller.c: 165: case LCD_INIT_MODE:
	
l3425:	
	line	166
	
l9376:	
;dthc_lcd_controller.c: 166: Clear_LCD();
	fcall	_Clear_LCD
	line	167
;dthc_lcd_controller.c: 167: SetCursor( 0x00);
	movlw	(0)
	fcall	_SetCursor
	line	168
	
l9378:	
;dthc_lcd_controller.c: 168: strcpy( lcd_buf, WelcomeScreen1);
	movlw	((_WelcomeScreen1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	169
	
l9380:	
;dthc_lcd_controller.c: 169: print_LCD();
	fcall	_print_LCD
	line	170
;dthc_lcd_controller.c: 170: SetCursor( 0x40);
	movlw	(040h)
	fcall	_SetCursor
	line	171
	
l9382:	
;dthc_lcd_controller.c: 171: strcpy( lcd_buf, WelcomeScreen2);
	movlw	((_WelcomeScreen2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	172
	
l9384:	
;dthc_lcd_controller.c: 172: print_LCD();
	fcall	_print_LCD
	line	173
;dthc_lcd_controller.c: 173: break;
	goto	l9450
	line	174
;dthc_lcd_controller.c: 174: case LCD_RUN_MODE:
	
l3427:	
	line	176
	
l9386:	
;dthc_lcd_controller.c: 176: Clear_LCD();
	fcall	_Clear_LCD
	line	177
;dthc_lcd_controller.c: 177: SetCursor( 0x00);
	movlw	(0)
	fcall	_SetCursor
	line	178
	
l9388:	
;dthc_lcd_controller.c: 178: strcpy( lcd_buf, MainScreen1);
	movlw	((_MainScreen1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	179
	
l9390:	
;dthc_lcd_controller.c: 179: print_LCD();
	fcall	_print_LCD
	line	180
	
l9392:	
;dthc_lcd_controller.c: 180: if (nameMode != 0) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dthc_lcd_controller@nameMode),w
	skipz
	goto	u6090
	goto	l3428
u6090:
	line	181
	
l9394:	
;dthc_lcd_controller.c: 181: SetCursor(0x0B);
	movlw	(0Bh)
	fcall	_SetCursor
	line	182
;dthc_lcd_controller.c: 182: WriteDataLCD(nameMode);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(dthc_lcd_controller@nameMode),w
	fcall	_WriteDataLCD
	line	183
;dthc_lcd_controller.c: 183: SetCursor(0x0B);
	movlw	(0Bh)
	fcall	_SetCursor
	line	184
	
l3428:	
	line	185
;dthc_lcd_controller.c: 184: }
;dthc_lcd_controller.c: 185: SetCursor( 0x40);
	movlw	(040h)
	fcall	_SetCursor
	line	186
	
l9396:	
;dthc_lcd_controller.c: 186: strcpy( lcd_buf, MainScreen2);
	movlw	((_MainScreen2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	187
	
l9398:	
;dthc_lcd_controller.c: 187: print_LCD();
	fcall	_print_LCD
	line	188
;dthc_lcd_controller.c: 188: SetCursor( 0x46 );
	movlw	(046h)
	fcall	_SetCursor
	line	189
	
l9400:	
;dthc_lcd_controller.c: 189: sprintf(lcd_buf, "%3u", valueSetV);
	movlw	((STR_12-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_sprintf)
	movf	(dthc_lcd_controller@valueSetV+1),w	;volatile
	clrf	1+(?_sprintf)+01h
	addwf	1+(?_sprintf)+01h
	movf	(dthc_lcd_controller@valueSetV),w	;volatile
	clrf	0+(?_sprintf)+01h
	addwf	0+(?_sprintf)+01h

	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	190
	
l9402:	
;dthc_lcd_controller.c: 190: print_LCD();
	fcall	_print_LCD
	line	191
;dthc_lcd_controller.c: 191: break;
	goto	l9450
	line	192
;dthc_lcd_controller.c: 192: case LCD_EDIT_MODE:
	
l3429:	
	line	193
	
l9404:	
;dthc_lcd_controller.c: 193: Clear_LCD();
	fcall	_Clear_LCD
	line	194
;dthc_lcd_controller.c: 194: SetCursor( 0x00);
	movlw	(0)
	fcall	_SetCursor
	line	195
	
l9406:	
;dthc_lcd_controller.c: 195: strcpy( lcd_buf, MainScreen3);
	movlw	((_MainScreen3-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	196
	
l9408:	
;dthc_lcd_controller.c: 196: print_LCD();
	fcall	_print_LCD
	line	197
;dthc_lcd_controller.c: 197: SetCursor( 0x42);
	movlw	(042h)
	fcall	_SetCursor
	line	198
	
l9410:	
;dthc_lcd_controller.c: 198: strcpy( lcd_buf, MainScreen4[0]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(_MainScreen4)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	199
	
l9412:	
;dthc_lcd_controller.c: 199: print_LCD();
	fcall	_print_LCD
	line	200
;dthc_lcd_controller.c: 200: SetCursor(0x56);
	movlw	(056h)
	fcall	_SetCursor
	line	205
;dthc_lcd_controller.c: 205: break;
	goto	l9450
	line	206
;dthc_lcd_controller.c: 206: case LCD_V_UD_MODE:
	
l3430:	
	line	207
	
l9414:	
;dthc_lcd_controller.c: 207: Clear_LCD();
	fcall	_Clear_LCD
	line	208
;dthc_lcd_controller.c: 208: SetCursor( 0x00);
	movlw	(0)
	fcall	_SetCursor
	line	209
	
l9416:	
;dthc_lcd_controller.c: 209: strcpy ( lcd_buf, MainScreen2);
	movlw	((_MainScreen2-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	210
	
l9418:	
;dthc_lcd_controller.c: 210: print_LCD();
	fcall	_print_LCD
	line	211
;dthc_lcd_controller.c: 211: break;
	goto	l9450
	line	212
;dthc_lcd_controller.c: 212: case LCD_ARC_V_MODE:
	
l3431:	
	line	213
	
l9420:	
;dthc_lcd_controller.c: 213: Clear_LCD();
	fcall	_Clear_LCD
	line	214
;dthc_lcd_controller.c: 214: SetCursor( 0x00);
	movlw	(0)
	fcall	_SetCursor
	line	215
	
l9422:	
;dthc_lcd_controller.c: 215: sprintf( lcd_buf, "MaxV:");
	movlw	((STR_13-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_sprintf)
	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	216
	
l9424:	
;dthc_lcd_controller.c: 216: print_LCD();
	fcall	_print_LCD
	line	217
	
l9426:	
;dthc_lcd_controller.c: 217: SetCursor( 0x40);
	movlw	(040h)
	fcall	_SetCursor
	line	218
	
l9428:	
;dthc_lcd_controller.c: 218: sprintf( lcd_buf, "MinV:");
	movlw	((STR_14-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_sprintf)
	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	219
;dthc_lcd_controller.c: 219: print_LCD();
	fcall	_print_LCD
	line	220
;dthc_lcd_controller.c: 220: break;
	goto	l9450
	line	221
;dthc_lcd_controller.c: 221: case LCD_ARC_I_MODE:
	
l3432:	
	line	222
	
l9430:	
;dthc_lcd_controller.c: 222: Clear_LCD();
	fcall	_Clear_LCD
	line	223
;dthc_lcd_controller.c: 223: SetCursor( 0x00);
	movlw	(0)
	fcall	_SetCursor
	line	224
	
l9432:	
;dthc_lcd_controller.c: 224: sprintf ( lcd_buf, "SetI:");
	movlw	((STR_15-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_sprintf)
	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	225
	
l9434:	
;dthc_lcd_controller.c: 225: print_LCD();
	fcall	_print_LCD
	line	226
;dthc_lcd_controller.c: 226: break;
	goto	l9450
	line	227
;dthc_lcd_controller.c: 227: case LCD_TEST_VIEW_MODE:
	
l3433:	
	line	228
	
l9436:	
;dthc_lcd_controller.c: 228: Clear_LCD();
	fcall	_Clear_LCD
	line	229
;dthc_lcd_controller.c: 229: SetCursor( 0x00);
	movlw	(0)
	fcall	_SetCursor
	line	230
	
l9438:	
;dthc_lcd_controller.c: 230: strcpy ( lcd_buf, MainScreen1);
	movlw	((_MainScreen1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_strcpy)
	movlw	(_lcd_buf)&0ffh
	fcall	_strcpy
	line	231
	
l9440:	
;dthc_lcd_controller.c: 231: print_LCD();
	fcall	_print_LCD
	line	232
;dthc_lcd_controller.c: 232: SetCursor( 0x40);
	movlw	(040h)
	fcall	_SetCursor
	line	233
	
l9442:	
;dthc_lcd_controller.c: 233: sprintf( lcd_buf, "TipI:");
	movlw	((STR_16-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(?_sprintf)
	movlw	(_lcd_buf)&0ffh
	fcall	_sprintf
	line	234
	
l9444:	
;dthc_lcd_controller.c: 234: print_LCD();
	fcall	_print_LCD
	line	235
;dthc_lcd_controller.c: 235: break;
	goto	l9450
	line	236
	
l9446:	
;dthc_lcd_controller.c: 236: }
	goto	l9450
	line	164
	
l3424:	
	
l9448:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_SetMode@mode),w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 0 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           29     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable            11     6 (fixed)
; spacedrange           20     9 (fixed)
; locatedrange           7     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9414
	xorlw	1^0	; case 1
	skipnz
	goto	l9430
	xorlw	2^1	; case 2
	skipnz
	goto	l9420
	xorlw	3^2	; case 3
	skipnz
	goto	l9386
	xorlw	4^3	; case 4
	skipnz
	goto	l9436
	xorlw	5^4	; case 5
	skipnz
	goto	l9376
	xorlw	6^5	; case 6
	skipnz
	goto	l9404
	goto	l9450
	opt asmopt_on

	line	236
	
l3426:	
	line	237
	
l9450:	
;dthc_lcd_controller.c: 237: LCD_Status = mode;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_SetMode@mode),w
	movwf	(??_LCD_SetMode+0)+0
	movf	(??_LCD_SetMode+0)+0,w
	movwf	(dthc_lcd_controller@LCD_Status)	;volatile
	line	238
	
l3434:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_SetMode
	__end_of_LCD_SetMode:
;; =============== function _LCD_SetMode ends ============

	signat	_LCD_SetMode,4216
	global	_Init_DTHC_LCD
psect	text1168,local,class=CODE,delta=2
global __ptext1168
__ptext1168:

;; *************** function _Init_DTHC_LCD *****************
;; Defined at:
;;		line 28 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   10[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Initial_4bitLCD
;;		_WriteCmdLCD
;;		_WriteDataLCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1168
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	28
	global	__size_of_Init_DTHC_LCD
	__size_of_Init_DTHC_LCD	equ	__end_of_Init_DTHC_LCD-_Init_DTHC_LCD
	
_Init_DTHC_LCD:	
	opt	stack 2
; Regs used in _Init_DTHC_LCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	31
	
l9328:	
;dthc_lcd_controller.c: 29: unsigned char i;
;dthc_lcd_controller.c: 31: TRISBbits.TRISB3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h,3	;volatile
	line	32
;dthc_lcd_controller.c: 32: PORTBbits.RB3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),3	;volatile
	line	33
	
l9330:	
;dthc_lcd_controller.c: 33: _delay((unsigned long)((100)*(8000000UL/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_Init_DTHC_LCD+0)+0+2),f
movlw	3
movwf	((??_Init_DTHC_LCD+0)+0+1),f
	movlw	186
movwf	((??_Init_DTHC_LCD+0)+0),f
u6727:
	decfsz	((??_Init_DTHC_LCD+0)+0),f
	goto	u6727
	decfsz	((??_Init_DTHC_LCD+0)+0+1),f
	goto	u6727
	decfsz	((??_Init_DTHC_LCD+0)+0+2),f
	goto	u6727
opt asmopt_on

	line	35
	
l9332:	
;dthc_lcd_controller.c: 35: Initial_4bitLCD();
	fcall	_Initial_4bitLCD
	line	36
	
l9334:	
;dthc_lcd_controller.c: 36: initMainScreen = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(dthc_lcd_controller@initMainScreen)
	line	39
	
l9336:	
;dthc_lcd_controller.c: 39: WriteCmdLCD(0x48);
	movlw	(048h)
	fcall	_WriteCmdLCD
	line	40
	
l9338:	
;dthc_lcd_controller.c: 40: for (i=0; i<sizeof(CustomCharacters); i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Init_DTHC_LCD@i)
	movlw	(010h)
	subwf	(Init_DTHC_LCD@i),w
	skipc
	goto	u6051
	goto	u6050
u6051:
	goto	l9342
u6050:
	goto	l9348
	
l9340:	
	goto	l9348
	line	41
	
l3396:	
	
l9342:	
;dthc_lcd_controller.c: 41: WriteDataLCD(CustomCharacters[i]);
	movf	(Init_DTHC_LCD@i),w
	addlw	_CustomCharacters&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	_WriteDataLCD
	line	40
	
l9344:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Init_DTHC_LCD+0)+0
	movf	(??_Init_DTHC_LCD+0)+0,w
	addwf	(Init_DTHC_LCD@i),f
	
l9346:	
	movlw	(010h)
	subwf	(Init_DTHC_LCD@i),w
	skipc
	goto	u6061
	goto	u6060
u6061:
	goto	l9342
u6060:
	goto	l9348
	
l3397:	
	line	42
	
l9348:	
;dthc_lcd_controller.c: 42: WriteCmdLCD(0x80);
	movlw	(080h)
	fcall	_WriteCmdLCD
	line	43
	
l9350:	
;dthc_lcd_controller.c: 43: countTimer = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_countTimer)^080h	;volatile
	line	44
	
l9352:	
;dthc_lcd_controller.c: 44: countUpdate = 0;
	clrf	(_countUpdate)^080h
	line	45
	
l9354:	
;dthc_lcd_controller.c: 45: nameMode = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(dthc_lcd_controller@nameMode)
	line	46
	
l3398:	
	return
	opt stack 0
GLOBAL	__end_of_Init_DTHC_LCD
	__end_of_Init_DTHC_LCD:
;; =============== function _Init_DTHC_LCD ends ============

	signat	_Init_DTHC_LCD,88
	global	_print_LCD
psect	text1169,local,class=CODE,delta=2
global __ptext1169
__ptext1169:

;; *************** function _print_LCD *****************
;; Defined at:
;;		line 375 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  p               1    5[BANK0 ] PTR unsigned char 
;;		 -> lcd_buf(16), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_WriteDataLCD
;; This function is called by:
;;		_LCD_Update
;;		_LCD_Repaint
;;		_LCD_SetMode
;;		_LCD_SetEditValue
;; This function uses a non-reentrant model
;;
psect	text1169
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	375
	global	__size_of_print_LCD
	__size_of_print_LCD	equ	__end_of_print_LCD-_print_LCD
	
_print_LCD:	
	opt	stack 2
; Regs used in _print_LCD: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	377
	
l9320:	
;c16_lcd_driver.c: 376: char *p;
;c16_lcd_driver.c: 377: p = lcd_buf;
	movlw	(_lcd_buf)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_print_LCD+0)+0
	movf	(??_print_LCD+0)+0,w
	movwf	(print_LCD@p)
	goto	l9322
	line	379
;c16_lcd_driver.c: 379: do
	
l2295:	
	line	381
	
l9322:	
;c16_lcd_driver.c: 380: {
;c16_lcd_driver.c: 381: WriteDataLCD(*p);
	movf	(print_LCD@p),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_WriteDataLCD
	line	382
	
l9324:	
;c16_lcd_driver.c: 382: p++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_print_LCD+0)+0
	movf	(??_print_LCD+0)+0,w
	addwf	(print_LCD@p),f
	line	384
	
l9326:	
;c16_lcd_driver.c: 383: }
;c16_lcd_driver.c: 384: while(*p != '\0');
	movf	(print_LCD@p),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u6041
	goto	u6040
u6041:
	goto	l9322
u6040:
	goto	l2297
	
l2296:	
	line	387
;c16_lcd_driver.c: 386: return;
	
l2297:	
	return
	opt stack 0
GLOBAL	__end_of_print_LCD
	__end_of_print_LCD:
;; =============== function _print_LCD ends ============

	signat	_print_LCD,88
	global	_Clear_LCD
psect	text1170,local,class=CODE,delta=2
global __ptext1170
__ptext1170:

;; *************** function _Clear_LCD *****************
;; Defined at:
;;		line 211 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_WriteCmdLCD
;;		_Lcd_Special_Delay
;; This function is called by:
;;		_LCD_Repaint
;;		_LCD_SetMode
;; This function uses a non-reentrant model
;;
psect	text1170
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	211
	global	__size_of_Clear_LCD
	__size_of_Clear_LCD	equ	__end_of_Clear_LCD-_Clear_LCD
	
_Clear_LCD:	
	opt	stack 2
; Regs used in _Clear_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	212
	
l9318:	
;c16_lcd_driver.c: 212: WriteCmdLCD(0x01);
	movlw	(01h)
	fcall	_WriteCmdLCD
	line	213
;c16_lcd_driver.c: 213: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	214
	
l2268:	
	return
	opt stack 0
GLOBAL	__end_of_Clear_LCD
	__end_of_Clear_LCD:
;; =============== function _Clear_LCD ends ============

	signat	_Clear_LCD,88
	global	_Enable_Blink_LCD
psect	text1171,local,class=CODE,delta=2
global __ptext1171
__ptext1171:

;; *************** function _Enable_Blink_LCD *****************
;; Defined at:
;;		line 198 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
;; Parameters:    Size  Location     Type
;;  enable          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  enable          1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_WriteCmdLCD
;;		_Lcd_Special_Delay
;; This function is called by:
;;		_LCD_Repaint
;;		_LCD_SetMode
;; This function uses a non-reentrant model
;;
psect	text1171
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	198
	global	__size_of_Enable_Blink_LCD
	__size_of_Enable_Blink_LCD	equ	__end_of_Enable_Blink_LCD-_Enable_Blink_LCD
	
_Enable_Blink_LCD:	
	opt	stack 2
; Regs used in _Enable_Blink_LCD: [wreg+status,2+status,0+pclath+cstack]
;Enable_Blink_LCD@enable stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Enable_Blink_LCD@enable)
	line	199
	
l9312:	
;c16_lcd_driver.c: 199: if (enable) {
	movf	(Enable_Blink_LCD@enable),w
	skipz
	goto	u6030
	goto	l9316
u6030:
	line	200
	
l9314:	
;c16_lcd_driver.c: 200: WriteCmdLCD(0x0E);
	movlw	(0Eh)
	fcall	_WriteCmdLCD
	line	201
;c16_lcd_driver.c: 201: }
	goto	l2264
	line	202
	
l2263:	
	line	203
	
l9316:	
;c16_lcd_driver.c: 202: else {
;c16_lcd_driver.c: 203: WriteCmdLCD(0x0C);
	movlw	(0Ch)
	fcall	_WriteCmdLCD
	line	204
	
l2264:	
	line	205
;c16_lcd_driver.c: 204: }
;c16_lcd_driver.c: 205: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	206
	
l2265:	
	return
	opt stack 0
GLOBAL	__end_of_Enable_Blink_LCD
	__end_of_Enable_Blink_LCD:
;; =============== function _Enable_Blink_LCD ends ============

	signat	_Enable_Blink_LCD,4216
	global	_Initial_4bitLCD
psect	text1172,local,class=CODE,delta=2
global __ptext1172
__ptext1172:

;; *************** function _Initial_4bitLCD *****************
;; Defined at:
;;		line 123 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
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
;;		_Lcd_Init_Delay
;;		_Delay_tW_LCD
;;		_Lcd_Special_Delay
;;		_WriteCmdLCD
;; This function is called by:
;;		_Init_DTHC_LCD
;; This function uses a non-reentrant model
;;
psect	text1172
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	123
	global	__size_of_Initial_4bitLCD
	__size_of_Initial_4bitLCD	equ	__end_of_Initial_4bitLCD-_Initial_4bitLCD
	
_Initial_4bitLCD:	
	opt	stack 2
; Regs used in _Initial_4bitLCD: [wreg+status,2+status,0+pclath+cstack]
	line	124
	
l9198:	
;c16_lcd_driver.c: 124: ANSELH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	line	125
	
l9200:	
;c16_lcd_driver.c: 125: TRISDbits.TRISD7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(136)^080h,7	;volatile
	line	126
	
l9202:	
;c16_lcd_driver.c: 126: TRISDbits.TRISD6 = 0;
	bcf	(136)^080h,6	;volatile
	line	127
	
l9204:	
;c16_lcd_driver.c: 127: TRISDbits.TRISD5 = 0;
	bcf	(136)^080h,5	;volatile
	line	128
	
l9206:	
;c16_lcd_driver.c: 128: TRISDbits.TRISD4 = 0;
	bcf	(136)^080h,4	;volatile
	line	129
	
l9208:	
;c16_lcd_driver.c: 129: TRISBbits.TRISB2 = 0;
	bcf	(134)^080h,2	;volatile
	line	130
	
l9210:	
;c16_lcd_driver.c: 130: TRISBbits.TRISB1 = 0;
	bcf	(134)^080h,1	;volatile
	line	131
	
l9212:	
;c16_lcd_driver.c: 131: TRISBbits.TRISB0 = 0;
	bcf	(134)^080h,0	;volatile
	line	132
	
l9214:	
;c16_lcd_driver.c: 132: PORTBbits.RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),2	;volatile
	line	133
	
l9216:	
;c16_lcd_driver.c: 133: PORTBbits.RB1 = 0;
	bcf	(6),1	;volatile
	line	134
	
l9218:	
;c16_lcd_driver.c: 134: PORTBbits.RB0 = 0;
	bcf	(6),0	;volatile
	line	136
	
l9220:	
;c16_lcd_driver.c: 136: _delay((unsigned long)((100)*(8000000UL/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_Initial_4bitLCD+0)+0+2),f
movlw	3
movwf	((??_Initial_4bitLCD+0)+0+1),f
	movlw	186
movwf	((??_Initial_4bitLCD+0)+0),f
u6737:
	decfsz	((??_Initial_4bitLCD+0)+0),f
	goto	u6737
	decfsz	((??_Initial_4bitLCD+0)+0+1),f
	goto	u6737
	decfsz	((??_Initial_4bitLCD+0)+0+2),f
	goto	u6737
opt asmopt_on

	line	138
	
l9222:	
;c16_lcd_driver.c: 138: PORTDbits.RD7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8),7	;volatile
	line	139
	
l9224:	
;c16_lcd_driver.c: 139: PORTDbits.RD6 = 1;
	bsf	(8),6	;volatile
	line	140
	
l9226:	
;c16_lcd_driver.c: 140: PORTDbits.RD5 = 0;
	bcf	(8),5	;volatile
	line	141
	
l9228:	
;c16_lcd_driver.c: 141: PORTDbits.RD4 = 0;
	bcf	(8),4	;volatile
	line	142
	
l9230:	
;c16_lcd_driver.c: 142: PORTBbits.RB2 = 0;
	bcf	(6),2	;volatile
	line	143
	
l9232:	
;c16_lcd_driver.c: 143: PORTBbits.RB1 = 0;
	bcf	(6),1	;volatile
	line	144
	
l9234:	
;c16_lcd_driver.c: 144: PORTBbits.RB0 = 0;
	bcf	(6),0	;volatile
	line	147
	
l9236:	
;c16_lcd_driver.c: 147: Lcd_Init_Delay();
	fcall	_Lcd_Init_Delay
	line	148
	
l9238:	
;c16_lcd_driver.c: 148: Lcd_Init_Delay();
	fcall	_Lcd_Init_Delay
	line	150
	
l9240:	
;c16_lcd_driver.c: 150: PORTDbits.RD7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8),7	;volatile
	line	151
	
l9242:	
;c16_lcd_driver.c: 151: PORTDbits.RD6 = 1;
	bsf	(8),6	;volatile
	line	152
	
l9244:	
;c16_lcd_driver.c: 152: PORTDbits.RD5 = 0;
	bcf	(8),5	;volatile
	line	153
	
l9246:	
;c16_lcd_driver.c: 153: PORTDbits.RD4 = 0;
	bcf	(8),4	;volatile
	line	154
	
l9248:	
;c16_lcd_driver.c: 154: PORTBbits.RB2 = 0;
	bcf	(6),2	;volatile
	line	155
	
l9250:	
;c16_lcd_driver.c: 155: PORTBbits.RB1 = 0;
	bcf	(6),1	;volatile
	line	156
	
l9252:	
;c16_lcd_driver.c: 156: PORTBbits.RB0 = 1;
	bsf	(6),0	;volatile
	line	157
	
l9254:	
;c16_lcd_driver.c: 157: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	158
	
l9256:	
;c16_lcd_driver.c: 158: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	161
	
l9258:	
;c16_lcd_driver.c: 161: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	162
	
l9260:	
;c16_lcd_driver.c: 162: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	163
	
l9262:	
;c16_lcd_driver.c: 163: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	165
	
l9264:	
;c16_lcd_driver.c: 165: PORTDbits.RD7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8),7	;volatile
	line	166
	
l9266:	
;c16_lcd_driver.c: 166: PORTDbits.RD6 = 1;
	bsf	(8),6	;volatile
	line	167
	
l9268:	
;c16_lcd_driver.c: 167: PORTDbits.RD5 = 0;
	bcf	(8),5	;volatile
	line	168
	
l9270:	
;c16_lcd_driver.c: 168: PORTDbits.RD4 = 0;
	bcf	(8),4	;volatile
	line	169
	
l9272:	
;c16_lcd_driver.c: 169: PORTBbits.RB2 = 0;
	bcf	(6),2	;volatile
	line	170
	
l9274:	
;c16_lcd_driver.c: 170: PORTBbits.RB1 = 0;
	bcf	(6),1	;volatile
	line	171
	
l9276:	
;c16_lcd_driver.c: 171: PORTBbits.RB0 = 1;
	bsf	(6),0	;volatile
	line	172
	
l9278:	
;c16_lcd_driver.c: 172: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	173
	
l9280:	
;c16_lcd_driver.c: 173: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	176
	
l9282:	
;c16_lcd_driver.c: 176: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	177
	
l9284:	
;c16_lcd_driver.c: 177: TRISDbits.TRISD7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(136)^080h,7	;volatile
	line	178
	
l9286:	
;c16_lcd_driver.c: 178: TRISDbits.TRISD6 = 1;
	bsf	(136)^080h,6	;volatile
	line	179
	
l9288:	
;c16_lcd_driver.c: 179: TRISDbits.TRISD5 = 1;
	bsf	(136)^080h,5	;volatile
	line	180
	
l9290:	
;c16_lcd_driver.c: 180: TRISDbits.TRISD4 = 1;
	bsf	(136)^080h,4	;volatile
	line	181
	
l9292:	
;c16_lcd_driver.c: 181: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	183
	
l9294:	
;c16_lcd_driver.c: 183: WriteCmdLCD(0x32);
	movlw	(032h)
	fcall	_WriteCmdLCD
	line	184
	
l9296:	
;c16_lcd_driver.c: 184: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	185
	
l9298:	
;c16_lcd_driver.c: 185: WriteCmdLCD(0x28);
	movlw	(028h)
	fcall	_WriteCmdLCD
	line	186
	
l9300:	
;c16_lcd_driver.c: 186: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	187
	
l9302:	
;c16_lcd_driver.c: 187: WriteCmdLCD(0x0C);
	movlw	(0Ch)
	fcall	_WriteCmdLCD
	line	188
	
l9304:	
;c16_lcd_driver.c: 188: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	189
	
l9306:	
;c16_lcd_driver.c: 189: WriteCmdLCD(0x06);
	movlw	(06h)
	fcall	_WriteCmdLCD
	line	190
	
l9308:	
;c16_lcd_driver.c: 190: Lcd_Special_Delay();
	fcall	_Lcd_Special_Delay
	line	191
	
l9310:	
;c16_lcd_driver.c: 191: WriteCmdLCD(0x01);
	movlw	(01h)
	fcall	_WriteCmdLCD
	line	193
	
l2260:	
	return
	opt stack 0
GLOBAL	__end_of_Initial_4bitLCD
	__end_of_Initial_4bitLCD:
;; =============== function _Initial_4bitLCD ends ============

	signat	_Initial_4bitLCD,88
	global	_WriteDataLCD
psect	text1173,local,class=CODE,delta=2
global __ptext1173
__ptext1173:

;; *************** function _WriteDataLCD *****************
;; Defined at:
;;		line 298 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Read_BusyLCD
;;		_Delay_tW_LCD
;; This function is called by:
;;		_print_LCD
;;		_Init_DTHC_LCD
;;		_LCD_Update
;;		_LCD_Repaint
;;		_LCD_SetMode
;;		_LCD_SetEditValue
;; This function uses a non-reentrant model
;;
psect	text1173
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	298
	global	__size_of_WriteDataLCD
	__size_of_WriteDataLCD	equ	__end_of_WriteDataLCD-_WriteDataLCD
	
_WriteDataLCD:	
	opt	stack 3
; Regs used in _WriteDataLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteDataLCD@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(WriteDataLCD@data)
	line	299
	
l9164:	
;c16_lcd_driver.c: 299: while(Read_BusyLCD());
	goto	l9166
	
l2284:	
	goto	l9166
	
l2283:	
	
l9166:	
	fcall	_Read_BusyLCD
	iorlw	0
	skipz
	goto	u5961
	goto	u5960
u5961:
	goto	l9166
u5960:
	
l2285:	
	line	301
;c16_lcd_driver.c: 301: TRISDbits.TRISD7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(136)^080h,7	;volatile
	line	302
;c16_lcd_driver.c: 302: TRISDbits.TRISD6 = 0;
	bcf	(136)^080h,6	;volatile
	line	303
;c16_lcd_driver.c: 303: TRISDbits.TRISD5 = 0;
	bcf	(136)^080h,5	;volatile
	line	304
;c16_lcd_driver.c: 304: TRISDbits.TRISD4 = 0;
	bcf	(136)^080h,4	;volatile
	line	305
	
l9168:	
;c16_lcd_driver.c: 305: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	307
	
l9170:	
;c16_lcd_driver.c: 307: PORTBbits.RB2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),2	;volatile
	line	308
;c16_lcd_driver.c: 308: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	309
	
l9172:	
;c16_lcd_driver.c: 309: PORTBbits.RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),1	;volatile
	line	310
;c16_lcd_driver.c: 310: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	311
	
l9174:	
;c16_lcd_driver.c: 311: PORTDbits.RD4 = ((data & 0x80)>>7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(WriteDataLCD@data),w
	movwf	(??_WriteDataLCD+0)+0
	movlw	07h
u5975:
	clrc
	rrf	(??_WriteDataLCD+0)+0,f
	addlw	-1
	skipz
	goto	u5975
	movf	0+(??_WriteDataLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteDataLCD+1)+0
	swapf	(??_WriteDataLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteDataLCD+1)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_WriteDataLCD+1)+0,w
	movwf	(8)	;volatile
	line	312
	
l9176:	
;c16_lcd_driver.c: 312: PORTDbits.RD5 = ((data & 0x40)>>6);
	movf	(WriteDataLCD@data),w
	movwf	(??_WriteDataLCD+0)+0
	movlw	06h
u5985:
	clrc
	rrf	(??_WriteDataLCD+0)+0,f
	addlw	-1
	skipz
	goto	u5985
	movf	0+(??_WriteDataLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteDataLCD+1)+0
	swapf	(??_WriteDataLCD+1)+0,f
	rlf	(??_WriteDataLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteDataLCD+1)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_WriteDataLCD+1)+0,w
	movwf	(8)	;volatile
	line	313
	
l9178:	
;c16_lcd_driver.c: 313: PORTDbits.RD6 = ((data & 0x20)>>5);
	movf	(WriteDataLCD@data),w
	movwf	(??_WriteDataLCD+0)+0
	movlw	05h
u5995:
	clrc
	rrf	(??_WriteDataLCD+0)+0,f
	addlw	-1
	skipz
	goto	u5995
	movf	0+(??_WriteDataLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteDataLCD+1)+0
	swapf	(??_WriteDataLCD+1)+0,f
	rlf	(??_WriteDataLCD+1)+0,f
	rlf	(??_WriteDataLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteDataLCD+1)+0,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_WriteDataLCD+1)+0,w
	movwf	(8)	;volatile
	line	314
	
l9180:	
;c16_lcd_driver.c: 314: PORTDbits.RD7 = ((data & 0x10)>>4);
	movf	(WriteDataLCD@data),w
	movwf	(??_WriteDataLCD+0)+0
	movlw	04h
u6005:
	clrc
	rrf	(??_WriteDataLCD+0)+0,f
	addlw	-1
	skipz
	goto	u6005
	movf	0+(??_WriteDataLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteDataLCD+1)+0
	rrf	(??_WriteDataLCD+1)+0,f
	rrf	(??_WriteDataLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteDataLCD+1)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_WriteDataLCD+1)+0,w
	movwf	(8)	;volatile
	line	315
;c16_lcd_driver.c: 315: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	316
	
l9182:	
;c16_lcd_driver.c: 316: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	317
;c16_lcd_driver.c: 317: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	318
	
l9184:	
;c16_lcd_driver.c: 318: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	319
;c16_lcd_driver.c: 319: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	321
	
l9186:	
;c16_lcd_driver.c: 321: PORTDbits.RD4 = ((data & 0x08)>>3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(WriteDataLCD@data),w
	movwf	(??_WriteDataLCD+0)+0
	movlw	03h
u6015:
	clrc
	rrf	(??_WriteDataLCD+0)+0,f
	addlw	-1
	skipz
	goto	u6015
	movf	0+(??_WriteDataLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteDataLCD+1)+0
	swapf	(??_WriteDataLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteDataLCD+1)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_WriteDataLCD+1)+0,w
	movwf	(8)	;volatile
	line	322
	
l9188:	
;c16_lcd_driver.c: 322: PORTDbits.RD5 = ((data & 0x04)>>2);
	movf	(WriteDataLCD@data),w
	movwf	(??_WriteDataLCD+0)+0
	movlw	02h
u6025:
	clrc
	rrf	(??_WriteDataLCD+0)+0,f
	addlw	-1
	skipz
	goto	u6025
	movf	0+(??_WriteDataLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteDataLCD+1)+0
	swapf	(??_WriteDataLCD+1)+0,f
	rlf	(??_WriteDataLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteDataLCD+1)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_WriteDataLCD+1)+0,w
	movwf	(8)	;volatile
	line	323
	
l9190:	
;c16_lcd_driver.c: 323: PORTDbits.RD6 = ((data & 0x02)>>1);
	movf	(WriteDataLCD@data),w
	movwf	(??_WriteDataLCD+0)+0
	clrc
	rrf	(??_WriteDataLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteDataLCD+1)+0
	swapf	(??_WriteDataLCD+1)+0,f
	rlf	(??_WriteDataLCD+1)+0,f
	rlf	(??_WriteDataLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteDataLCD+1)+0,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_WriteDataLCD+1)+0,w
	movwf	(8)	;volatile
	line	324
	
l9192:	
;c16_lcd_driver.c: 324: PORTDbits.RD7 = (data & 0x01);
	movf	(WriteDataLCD@data),w
	andlw	01h
	movwf	(??_WriteDataLCD+0)+0
	rrf	(??_WriteDataLCD+0)+0,f
	rrf	(??_WriteDataLCD+0)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteDataLCD+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_WriteDataLCD+0)+0,w
	movwf	(8)	;volatile
	line	325
;c16_lcd_driver.c: 325: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	326
	
l9194:	
;c16_lcd_driver.c: 326: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	327
;c16_lcd_driver.c: 327: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	328
	
l9196:	
;c16_lcd_driver.c: 328: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	329
;c16_lcd_driver.c: 329: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	330
	
l2286:	
	return
	opt stack 0
GLOBAL	__end_of_WriteDataLCD
	__end_of_WriteDataLCD:
;; =============== function _WriteDataLCD ends ============

	signat	_WriteDataLCD,4216
	global	_SetCursor
psect	text1174,local,class=CODE,delta=2
global __ptext1174
__ptext1174:

;; *************** function _SetCursor *****************
;; Defined at:
;;		line 219 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Read_BusyLCD
;;		_Delay_tW_LCD
;; This function is called by:
;;		_LCD_Update
;;		_LCD_Repaint
;;		_LCD_SetMode
;;		_LCD_SetEditValue
;; This function uses a non-reentrant model
;;
psect	text1174
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	219
	global	__size_of_SetCursor
	__size_of_SetCursor	equ	__end_of_SetCursor-_SetCursor
	
_SetCursor:	
	opt	stack 3
; Regs used in _SetCursor: [wreg+status,2+status,0+pclath+cstack]
;SetCursor@address stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SetCursor@address)
	line	220
	
l9126:	
;c16_lcd_driver.c: 220: while(Read_BusyLCD());
	goto	l9128
	
l2272:	
	goto	l9128
	
l2271:	
	
l9128:	
	fcall	_Read_BusyLCD
	iorlw	0
	skipz
	goto	u5901
	goto	u5900
u5901:
	goto	l9128
u5900:
	
l2273:	
	line	222
;c16_lcd_driver.c: 222: TRISDbits.TRISD7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(136)^080h,7	;volatile
	line	223
;c16_lcd_driver.c: 223: TRISDbits.TRISD6 = 0;
	bcf	(136)^080h,6	;volatile
	line	224
;c16_lcd_driver.c: 224: TRISDbits.TRISD5 = 0;
	bcf	(136)^080h,5	;volatile
	line	225
;c16_lcd_driver.c: 225: TRISDbits.TRISD4 = 0;
	bcf	(136)^080h,4	;volatile
	line	226
	
l9130:	
;c16_lcd_driver.c: 226: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	228
	
l9132:	
;c16_lcd_driver.c: 228: PORTBbits.RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),2	;volatile
	line	229
;c16_lcd_driver.c: 229: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	230
	
l9134:	
;c16_lcd_driver.c: 230: PORTBbits.RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),1	;volatile
	line	231
;c16_lcd_driver.c: 231: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	232
	
l9136:	
;c16_lcd_driver.c: 232: PORTDbits.RD4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8),4	;volatile
	line	233
	
l9138:	
;c16_lcd_driver.c: 233: PORTDbits.RD5 = ((address & 0x40)>>6);
	movf	(SetCursor@address),w
	movwf	(??_SetCursor+0)+0
	movlw	06h
u5915:
	clrc
	rrf	(??_SetCursor+0)+0,f
	addlw	-1
	skipz
	goto	u5915
	movf	0+(??_SetCursor+0)+0,w
	andlw	01h
	movwf	(??_SetCursor+1)+0
	swapf	(??_SetCursor+1)+0,f
	rlf	(??_SetCursor+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_SetCursor+1)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_SetCursor+1)+0,w
	movwf	(8)	;volatile
	line	234
	
l9140:	
;c16_lcd_driver.c: 234: PORTDbits.RD6 = ((address & 0x20)>>5);
	movf	(SetCursor@address),w
	movwf	(??_SetCursor+0)+0
	movlw	05h
u5925:
	clrc
	rrf	(??_SetCursor+0)+0,f
	addlw	-1
	skipz
	goto	u5925
	movf	0+(??_SetCursor+0)+0,w
	andlw	01h
	movwf	(??_SetCursor+1)+0
	swapf	(??_SetCursor+1)+0,f
	rlf	(??_SetCursor+1)+0,f
	rlf	(??_SetCursor+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_SetCursor+1)+0,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_SetCursor+1)+0,w
	movwf	(8)	;volatile
	line	235
	
l9142:	
;c16_lcd_driver.c: 235: PORTDbits.RD7 = ((address & 0x10)>>4);
	movf	(SetCursor@address),w
	movwf	(??_SetCursor+0)+0
	movlw	04h
u5935:
	clrc
	rrf	(??_SetCursor+0)+0,f
	addlw	-1
	skipz
	goto	u5935
	movf	0+(??_SetCursor+0)+0,w
	andlw	01h
	movwf	(??_SetCursor+1)+0
	rrf	(??_SetCursor+1)+0,f
	rrf	(??_SetCursor+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_SetCursor+1)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_SetCursor+1)+0,w
	movwf	(8)	;volatile
	line	236
	
l9144:	
;c16_lcd_driver.c: 236: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	238
	
l9146:	
;c16_lcd_driver.c: 238: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	239
	
l9148:	
;c16_lcd_driver.c: 239: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	240
	
l9150:	
;c16_lcd_driver.c: 240: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	241
	
l9152:	
;c16_lcd_driver.c: 241: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	243
;c16_lcd_driver.c: 243: PORTDbits.RD4 = ((address & 0x08)>>3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetCursor@address),w
	movwf	(??_SetCursor+0)+0
	movlw	03h
u5945:
	clrc
	rrf	(??_SetCursor+0)+0,f
	addlw	-1
	skipz
	goto	u5945
	movf	0+(??_SetCursor+0)+0,w
	andlw	01h
	movwf	(??_SetCursor+1)+0
	swapf	(??_SetCursor+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_SetCursor+1)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_SetCursor+1)+0,w
	movwf	(8)	;volatile
	line	244
;c16_lcd_driver.c: 244: PORTDbits.RD5 = ((address & 0x04)>>2);
	movf	(SetCursor@address),w
	movwf	(??_SetCursor+0)+0
	movlw	02h
u5955:
	clrc
	rrf	(??_SetCursor+0)+0,f
	addlw	-1
	skipz
	goto	u5955
	movf	0+(??_SetCursor+0)+0,w
	andlw	01h
	movwf	(??_SetCursor+1)+0
	swapf	(??_SetCursor+1)+0,f
	rlf	(??_SetCursor+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_SetCursor+1)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_SetCursor+1)+0,w
	movwf	(8)	;volatile
	line	245
;c16_lcd_driver.c: 245: PORTDbits.RD6 = ((address & 0x02)>>1);
	movf	(SetCursor@address),w
	movwf	(??_SetCursor+0)+0
	clrc
	rrf	(??_SetCursor+0)+0,w
	andlw	01h
	movwf	(??_SetCursor+1)+0
	swapf	(??_SetCursor+1)+0,f
	rlf	(??_SetCursor+1)+0,f
	rlf	(??_SetCursor+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_SetCursor+1)+0,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_SetCursor+1)+0,w
	movwf	(8)	;volatile
	line	246
;c16_lcd_driver.c: 246: PORTDbits.RD7 = ((address & 0x01)>>0);
	movf	(SetCursor@address),w
	andlw	01h
	movwf	(??_SetCursor+0)+0
	rrf	(??_SetCursor+0)+0,f
	rrf	(??_SetCursor+0)+0,f
	movf	(8),w	;volatile
	xorwf	(??_SetCursor+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_SetCursor+0)+0,w
	movwf	(8)	;volatile
	line	247
	
l9154:	
;c16_lcd_driver.c: 247: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	249
	
l9156:	
;c16_lcd_driver.c: 249: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	250
	
l9158:	
;c16_lcd_driver.c: 250: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	251
	
l9160:	
;c16_lcd_driver.c: 251: PORTBbits.RB0 =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	252
	
l9162:	
;c16_lcd_driver.c: 252: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	253
	
l2274:	
	return
	opt stack 0
GLOBAL	__end_of_SetCursor
	__end_of_SetCursor:
;; =============== function _SetCursor ends ============

	signat	_SetCursor,4216
	global	_WriteCmdLCD
psect	text1175,local,class=CODE,delta=2
global __ptext1175
__ptext1175:

;; *************** function _WriteCmdLCD *****************
;; Defined at:
;;		line 258 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
;; Parameters:    Size  Location     Type
;;  cmd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd             1    3[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Read_BusyLCD
;;		_Delay_tW_LCD
;; This function is called by:
;;		_Initial_4bitLCD
;;		_Enable_Blink_LCD
;;		_Clear_LCD
;;		_Init_DTHC_LCD
;; This function uses a non-reentrant model
;;
psect	text1175
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	258
	global	__size_of_WriteCmdLCD
	__size_of_WriteCmdLCD	equ	__end_of_WriteCmdLCD-_WriteCmdLCD
	
_WriteCmdLCD:	
	opt	stack 2
; Regs used in _WriteCmdLCD: [wreg+status,2+status,0+pclath+cstack]
;WriteCmdLCD@cmd stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(WriteCmdLCD@cmd)
	line	259
	
l9092:	
;c16_lcd_driver.c: 259: while(Read_BusyLCD());
	goto	l9094
	
l2278:	
	goto	l9094
	
l2277:	
	
l9094:	
	fcall	_Read_BusyLCD
	iorlw	0
	skipz
	goto	u5831
	goto	u5830
u5831:
	goto	l9094
u5830:
	
l2279:	
	line	261
;c16_lcd_driver.c: 261: TRISDbits.TRISD7 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(136)^080h,7	;volatile
	line	262
;c16_lcd_driver.c: 262: TRISDbits.TRISD6 = 0;
	bcf	(136)^080h,6	;volatile
	line	263
;c16_lcd_driver.c: 263: TRISDbits.TRISD5 = 0;
	bcf	(136)^080h,5	;volatile
	line	264
;c16_lcd_driver.c: 264: TRISDbits.TRISD4 = 0;
	bcf	(136)^080h,4	;volatile
	line	265
	
l9096:	
;c16_lcd_driver.c: 265: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	267
	
l9098:	
;c16_lcd_driver.c: 267: PORTBbits.RB2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),2	;volatile
	line	268
;c16_lcd_driver.c: 268: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	269
	
l9100:	
;c16_lcd_driver.c: 269: PORTBbits.RB1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),1	;volatile
	line	270
;c16_lcd_driver.c: 270: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	272
	
l9102:	
;c16_lcd_driver.c: 272: PORTDbits.RD4 = ((cmd & 0x80)>>7);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(WriteCmdLCD@cmd),w
	movwf	(??_WriteCmdLCD+0)+0
	movlw	07h
u5845:
	clrc
	rrf	(??_WriteCmdLCD+0)+0,f
	addlw	-1
	skipz
	goto	u5845
	movf	0+(??_WriteCmdLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteCmdLCD+1)+0
	swapf	(??_WriteCmdLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteCmdLCD+1)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_WriteCmdLCD+1)+0,w
	movwf	(8)	;volatile
	line	273
	
l9104:	
;c16_lcd_driver.c: 273: PORTDbits.RD5 = ((cmd & 0x40)>>6);
	movf	(WriteCmdLCD@cmd),w
	movwf	(??_WriteCmdLCD+0)+0
	movlw	06h
u5855:
	clrc
	rrf	(??_WriteCmdLCD+0)+0,f
	addlw	-1
	skipz
	goto	u5855
	movf	0+(??_WriteCmdLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteCmdLCD+1)+0
	swapf	(??_WriteCmdLCD+1)+0,f
	rlf	(??_WriteCmdLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteCmdLCD+1)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_WriteCmdLCD+1)+0,w
	movwf	(8)	;volatile
	line	274
	
l9106:	
;c16_lcd_driver.c: 274: PORTDbits.RD6 = ((cmd & 0x20)>>5);
	movf	(WriteCmdLCD@cmd),w
	movwf	(??_WriteCmdLCD+0)+0
	movlw	05h
u5865:
	clrc
	rrf	(??_WriteCmdLCD+0)+0,f
	addlw	-1
	skipz
	goto	u5865
	movf	0+(??_WriteCmdLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteCmdLCD+1)+0
	swapf	(??_WriteCmdLCD+1)+0,f
	rlf	(??_WriteCmdLCD+1)+0,f
	rlf	(??_WriteCmdLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteCmdLCD+1)+0,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_WriteCmdLCD+1)+0,w
	movwf	(8)	;volatile
	line	275
	
l9108:	
;c16_lcd_driver.c: 275: PORTDbits.RD7 = ((cmd & 0x10)>>4);
	movf	(WriteCmdLCD@cmd),w
	movwf	(??_WriteCmdLCD+0)+0
	movlw	04h
u5875:
	clrc
	rrf	(??_WriteCmdLCD+0)+0,f
	addlw	-1
	skipz
	goto	u5875
	movf	0+(??_WriteCmdLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteCmdLCD+1)+0
	rrf	(??_WriteCmdLCD+1)+0,f
	rrf	(??_WriteCmdLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteCmdLCD+1)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_WriteCmdLCD+1)+0,w
	movwf	(8)	;volatile
	line	276
;c16_lcd_driver.c: 276: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	278
;c16_lcd_driver.c: 278: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	279
	
l9110:	
;c16_lcd_driver.c: 279: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	280
;c16_lcd_driver.c: 280: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	281
	
l9112:	
;c16_lcd_driver.c: 281: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	283
	
l9114:	
;c16_lcd_driver.c: 283: PORTDbits.RD4 = ((cmd & 0x08)>>3);
	movf	(WriteCmdLCD@cmd),w
	movwf	(??_WriteCmdLCD+0)+0
	movlw	03h
u5885:
	clrc
	rrf	(??_WriteCmdLCD+0)+0,f
	addlw	-1
	skipz
	goto	u5885
	movf	0+(??_WriteCmdLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteCmdLCD+1)+0
	swapf	(??_WriteCmdLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteCmdLCD+1)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_WriteCmdLCD+1)+0,w
	movwf	(8)	;volatile
	line	284
	
l9116:	
;c16_lcd_driver.c: 284: PORTDbits.RD5 = ((cmd & 0x04)>>2);
	movf	(WriteCmdLCD@cmd),w
	movwf	(??_WriteCmdLCD+0)+0
	movlw	02h
u5895:
	clrc
	rrf	(??_WriteCmdLCD+0)+0,f
	addlw	-1
	skipz
	goto	u5895
	movf	0+(??_WriteCmdLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteCmdLCD+1)+0
	swapf	(??_WriteCmdLCD+1)+0,f
	rlf	(??_WriteCmdLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteCmdLCD+1)+0,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_WriteCmdLCD+1)+0,w
	movwf	(8)	;volatile
	line	285
	
l9118:	
;c16_lcd_driver.c: 285: PORTDbits.RD6 = ((cmd & 0x02)>>1);
	movf	(WriteCmdLCD@cmd),w
	movwf	(??_WriteCmdLCD+0)+0
	clrc
	rrf	(??_WriteCmdLCD+0)+0,w
	andlw	01h
	movwf	(??_WriteCmdLCD+1)+0
	swapf	(??_WriteCmdLCD+1)+0,f
	rlf	(??_WriteCmdLCD+1)+0,f
	rlf	(??_WriteCmdLCD+1)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteCmdLCD+1)+0,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_WriteCmdLCD+1)+0,w
	movwf	(8)	;volatile
	line	286
	
l9120:	
;c16_lcd_driver.c: 286: PORTDbits.RD7 = (cmd & 0x01);
	movf	(WriteCmdLCD@cmd),w
	andlw	01h
	movwf	(??_WriteCmdLCD+0)+0
	rrf	(??_WriteCmdLCD+0)+0,f
	rrf	(??_WriteCmdLCD+0)+0,f
	movf	(8),w	;volatile
	xorwf	(??_WriteCmdLCD+0)+0,w
	andlw	not (((1<<1)-1)<<7)
	xorwf	(??_WriteCmdLCD+0)+0,w
	movwf	(8)	;volatile
	line	287
;c16_lcd_driver.c: 287: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	288
	
l9122:	
;c16_lcd_driver.c: 288: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	289
;c16_lcd_driver.c: 289: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	290
	
l9124:	
;c16_lcd_driver.c: 290: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	291
;c16_lcd_driver.c: 291: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	292
	
l2280:	
	return
	opt stack 0
GLOBAL	__end_of_WriteCmdLCD
	__end_of_WriteCmdLCD:
;; =============== function _WriteCmdLCD ends ============

	signat	_WriteCmdLCD,4216
	global	_Read_BusyLCD
psect	text1176,local,class=CODE,delta=2
global __ptext1176
__ptext1176:

;; *************** function _Read_BusyLCD *****************
;; Defined at:
;;		line 345 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay_tW_LCD
;; This function is called by:
;;		_SetCursor
;;		_WriteCmdLCD
;;		_WriteDataLCD
;; This function uses a non-reentrant model
;;
psect	text1176
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	345
	global	__size_of_Read_BusyLCD
	__size_of_Read_BusyLCD	equ	__end_of_Read_BusyLCD-_Read_BusyLCD
	
_Read_BusyLCD:	
	opt	stack 2
; Regs used in _Read_BusyLCD: [wreg+status,2+status,0+pclath+cstack]
	line	348
	
l9068:	
;c16_lcd_driver.c: 348: TRISDbits.TRISD7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(136)^080h,7	;volatile
	line	349
;c16_lcd_driver.c: 349: TRISDbits.TRISD6 = 1;
	bsf	(136)^080h,6	;volatile
	line	350
;c16_lcd_driver.c: 350: TRISDbits.TRISD5 = 1;
	bsf	(136)^080h,5	;volatile
	line	351
;c16_lcd_driver.c: 351: TRISDbits.TRISD4 = 1;
	bsf	(136)^080h,4	;volatile
	line	353
;c16_lcd_driver.c: 353: PORTBbits.RB1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),1	;volatile
	line	354
;c16_lcd_driver.c: 354: PORTBbits.RB2 = 0;
	bcf	(6),2	;volatile
	line	355
	
l9070:	
;c16_lcd_driver.c: 355: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	357
	
l9072:	
;c16_lcd_driver.c: 357: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	358
;c16_lcd_driver.c: 358: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	360
	
l9074:	
;c16_lcd_driver.c: 360: saveLevelTemp = PORTDbits.RD4;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(8),4	;volatile
	movlw	1
	movwf	(_saveLevelTemp)
	line	362
	
l9076:	
;c16_lcd_driver.c: 362: PORTBbits.RB0 = 0;
	bcf	(6),0	;volatile
	line	363
	
l9078:	
;c16_lcd_driver.c: 363: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	364
	
l9080:	
;c16_lcd_driver.c: 364: PORTBbits.RB0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	line	365
	
l9082:	
;c16_lcd_driver.c: 365: Delay_tW_LCD();
	fcall	_Delay_tW_LCD
	line	366
	
l9084:	
;c16_lcd_driver.c: 366: PORTBbits.RB0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
	line	367
	
l9086:	
;c16_lcd_driver.c: 367: PORTBbits.RB1 = 0;
	bcf	(6),1	;volatile
	line	368
	
l9088:	
;c16_lcd_driver.c: 368: return saveLevelTemp;
	movf	(_saveLevelTemp),w
	goto	l2292
	
l9090:	
	line	369
	
l2292:	
	return
	opt stack 0
GLOBAL	__end_of_Read_BusyLCD
	__end_of_Read_BusyLCD:
;; =============== function _Read_BusyLCD ends ============

	signat	_Read_BusyLCD,89
	global	_sprintf
psect	text1177,local,class=CODE,delta=2
global __ptext1177
__ptext1177:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> lcd_buf(16), 
;;  f               1   14[BANK0 ] PTR const unsigned char 
;;		 -> STR_16(6), STR_15(6), STR_14(6), STR_13(6), 
;;		 -> STR_12(4), STR_11(4), STR_10(4), STR_9(4), 
;;		 -> STR_8(4), STR_7(5), STR_6(10), 
;; Auto vars:     Size  Location     Type
;;  sp              1   25[BANK0 ] PTR unsigned char 
;;		 -> lcd_buf(16), 
;;  _val            3   29[BANK0 ] struct .
;;  width           2   26[BANK0 ] int 
;;  c               1   28[BANK0 ] char 
;;  ap              1   24[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  prec            1   23[BANK0 ] char 
;;  flag            1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_isdigit
;;		___wmul
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_LCD_Update
;;		_LCD_Repaint
;;		_LCD_SetMode
;; This function uses a non-reentrant model
;;
psect	text1177
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@sp)
	
l8958:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@ap)
	line	540
	goto	l9062
	
l4522:	
	line	542
	
l8960:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u5671
	goto	u5670
u5671:
	goto	l8966
u5670:
	line	545
	
l8962:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l8964:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	546
	goto	l9062
	line	547
	
l4523:	
	line	550
	
l8966:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	line	552
	
l8968:	
	clrf	(sprintf@flag)
	line	601
	
l8970:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u5681
	goto	u5680
u5681:
	goto	l9018
u5680:
	line	602
	
l8972:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l8974
	line	603
	
l4525:	
	line	604
	
l8974:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	movf	(sprintf@width+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(sprintf@width),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Ah)
	movwf	0+(?___wmul)+02h
	movlw	high(0Ah)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_sprintf+0)+0,w
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+2)+0
	movf	1+(??_sprintf+0)+0,w
	skipnc
	incf	1+(??_sprintf+0)+0,w
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+2)+0
	movf	0+(??_sprintf+2)+0,w
	addlw	low(0FFD0h)
	movwf	(sprintf@width)
	movf	1+(??_sprintf+2)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	movwf	1+(sprintf@width)
	
l8976:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@f),f
	line	605
	
l8978:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u5691
	goto	u5690
u5691:
	goto	l8974
u5690:
	goto	l9018
	
l4526:	
	goto	l9018
	line	611
	
l4524:	
	line	638
	goto	l9018
	line	640
	
l4528:	
	line	641
	goto	l9064
	line	731
	
l4530:	
	line	737
	
l8980:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@_val)
	
l8982:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	743
	
l8984:	
	movf	(sprintf@_val),f
	skipz
	goto	u5701
	goto	u5700
u5701:
	goto	l8988
u5700:
	line	744
	
l8986:	
	movlw	((STR_17-__stringbase))&0ffh
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@_val)
	goto	l8988
	
l4531:	
	line	748
	
l8988:	
	clrf	0+(sprintf@_val)+01h
	clrf	1+(sprintf@_val)+01h
	line	749
	goto	l8992
	
l4533:	
	line	750
	
l8990:	
	movlw	low(01h)
	addwf	0+(sprintf@_val)+01h,f
	skipnc
	incf	1+(sprintf@_val)+01h,f
	movlw	high(01h)
	addwf	1+(sprintf@_val)+01h,f
	goto	l8992
	
l4532:	
	line	749
	
l8992:	
	movf	0+(sprintf@_val)+01h,w
	addwf	(sprintf@_val),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u5711
	goto	u5710
u5711:
	goto	l8990
u5710:
	goto	l8994
	
l4534:	
	line	760
	
l8994:	
	movf	(sprintf@width+1),w
	subwf	1+(sprintf@_val)+01h,w
	skipz
	goto	u5725
	movf	(sprintf@width),w
	subwf	0+(sprintf@_val)+01h,w
u5725:
	skipnc
	goto	u5721
	goto	u5720
u5721:
	goto	l8998
u5720:
	line	761
	
l8996:	
	movf	0+(sprintf@_val)+01h,w
	subwf	(sprintf@width),f
	movf	1+(sprintf@_val)+01h,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l9004
	line	762
	
l4535:	
	line	763
	
l8998:	
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l9004
	
l4536:	
	line	767
	goto	l9004
	
l4538:	
	line	768
	
l9000:	
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l9002:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l9004
	
l4537:	
	line	767
	
l9004:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movlw	high(-1)
	xorwf	((sprintf@width+1)),w
	skipz
	goto	u5735
	movlw	low(-1)
	xorwf	((sprintf@width)),w
u5735:

	skipz
	goto	u5731
	goto	u5730
u5731:
	goto	l9000
u5730:
	goto	l9012
	
l4539:	
	line	770
	goto	l9012
	
l4541:	
	line	771
	
l9006:	
	movf	(sprintf@_val),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l9008:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@_val),f
	
l9010:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l9012
	
l4540:	
	line	770
	
l9012:	
	movlw	low(01h)
	subwf	0+(sprintf@_val)+01h,f
	movlw	high(01h)
	skipc
	decf	1+(sprintf@_val)+01h,f
	subwf	1+(sprintf@_val)+01h,f
	movlw	high(0FFFFh)
	xorwf	(1+(sprintf@_val)+01h),w
	skipz
	goto	u5745
	movlw	low(0FFFFh)
	xorwf	(0+(sprintf@_val)+01h),w
u5745:

	skipz
	goto	u5741
	goto	u5740
u5741:
	goto	l9006
u5740:
	goto	l9062
	
l4542:	
	line	777
	goto	l9062
	line	805
	
l4543:	
	line	816
	goto	l9062
	line	820
	
l4544:	
	line	821
	
l9014:	
	movlw	(0C0h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	iorwf	(sprintf@flag),f
	line	822
	goto	l9020
	line	825
	
l9016:	
	goto	l9020
	line	638
	
l4527:	
	
l9018:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           122     6 (fixed)
; spacedrange          242     9 (fixed)
; locatedrange         118     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l9064
	xorlw	115^0	; case 115
	skipnz
	goto	l8980
	xorlw	117^115	; case 117
	skipnz
	goto	l9014
	goto	l9062
	opt asmopt_on

	line	825
	
l4545:	
	line	1281
	
l9020:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l9022:	
	movlw	(02h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@ap),f
	line	1300
	
l9024:	
	clrf	(sprintf@c)
	bsf	status,0
	rlf	(sprintf@c),f
	
l9026:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u5751
	goto	u5750
u5751:
	goto	l9030
u5750:
	goto	l9038
	
l9028:	
	goto	l9038
	line	1301
	
l4546:	
	
l9030:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)+0
	fcall	stringdir
	movwf	(??_sprintf+1)+0+1
	movf	1+(??_sprintf+1)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u5765
	movf	0+(??_sprintf+1)+0,w
	subwf	(sprintf@_val),w
u5765:
	skipnc
	goto	u5761
	goto	u5760
u5761:
	goto	l9034
u5760:
	goto	l9038
	line	1302
	
l9032:	
	goto	l9038
	
l4548:	
	line	1300
	
l9034:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@c),f
	
l9036:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u5771
	goto	u5770
u5771:
	goto	l9030
u5770:
	goto	l9038
	
l4547:	
	line	1376
	
l9038:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	movf	(sprintf@width+1),w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u5785
	movf	(sprintf@width),w
	subwf	0+(??_sprintf+0)+0,w
u5785:

	skipnc
	goto	u5781
	goto	u5780
u5781:
	goto	l9042
u5780:
	line	1377
	
l9040:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@width),f
	movf	1+(??_sprintf+0)+0,w
	skipc
	decf	(sprintf@width+1),f
	subwf	(sprintf@width+1),f
	goto	l9044
	line	1378
	
l4549:	
	line	1379
	
l9042:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sprintf@width)
	clrf	(sprintf@width+1)
	goto	l9044
	
l4550:	
	line	1423
	
l9044:	
	movf	(sprintf@width+1),w
	iorwf	(sprintf@width),w
	skipnz
	goto	u5791
	goto	u5790
u5791:
	goto	l9052
u5790:
	goto	l9046
	line	1424
	
l4552:	
	line	1425
	
l9046:	
	movlw	(020h)
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l9048:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	line	1426
	
l9050:	
	movlw	low(-1)
	addwf	(sprintf@width),f
	skipnc
	incf	(sprintf@width+1),f
	movlw	high(-1)
	addwf	(sprintf@width+1),f
	movf	(((sprintf@width+1))),w
	iorwf	(((sprintf@width))),w
	skipz
	goto	u5801
	goto	u5800
u5801:
	goto	l9046
u5800:
	goto	l9052
	
l4553:	
	goto	l9052
	
l4551:	
	line	1467
	
l9052:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@prec)
	line	1469
	goto	l9060
	
l4555:	
	line	1484
	
l9054:	
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(sprintf@prec),w
	movwf	(??_sprintf+0)+0
	addwf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(sprintf@_val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(sprintf@_val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	movf	(??_sprintf+1)+0,w
	movwf	(sprintf@c)
	line	1516
	
l9056:	
	movf	(sprintf@c),w
	movwf	(??_sprintf+0)+0
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l9058:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@sp),f
	goto	l9060
	line	1517
	
l4554:	
	line	1469
	
l9060:	
	movlw	(-1)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	addwf	(sprintf@prec),f
	movf	((sprintf@prec)),w
	xorlw	-1
	skipz
	goto	u5811
	goto	u5810
u5811:
	goto	l9054
u5810:
	goto	l9062
	
l4556:	
	goto	l9062
	line	1525
	
l4521:	
	line	540
	
l9062:	
	movlw	01h
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u5821
	goto	u5820
u5821:
	goto	l8960
u5820:
	goto	l9064
	
l4557:	
	goto	l9064
	line	1527
	
l4529:	
	line	1530
	
l9064:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l4558
	line	1532
	
l9066:	
	line	1533
;	Return value of _sprintf is never used
	
l4558:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_Delay_tW_LCD
psect	text1178,local,class=CODE,delta=2
global __ptext1178
__ptext1178:

;; *************** function _Delay_tW_LCD *****************
;; Defined at:
;;		line 335 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Initial_4bitLCD
;;		_SetCursor
;;		_WriteCmdLCD
;;		_WriteDataLCD
;;		_Read_BusyLCD
;; This function uses a non-reentrant model
;;
psect	text1178
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	335
	global	__size_of_Delay_tW_LCD
	__size_of_Delay_tW_LCD	equ	__end_of_Delay_tW_LCD-_Delay_tW_LCD
	
_Delay_tW_LCD:	
	opt	stack 3
; Regs used in _Delay_tW_LCD: [wreg]
	line	338
	
l8956:	
;c16_lcd_driver.c: 338: _delay((unsigned long)((20)*(8000000UL/4000000.0)));
	opt asmopt_off
movlw	13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_Delay_tW_LCD+0)+0,f
u6747:
decfsz	(??_Delay_tW_LCD+0)+0,f
	goto	u6747
opt asmopt_on

	line	340
	
l2289:	
	return
	opt stack 0
GLOBAL	__end_of_Delay_tW_LCD
	__end_of_Delay_tW_LCD:
;; =============== function _Delay_tW_LCD ends ============

	signat	_Delay_tW_LCD,88
	global	_Lcd_Special_Delay
psect	text1179,local,class=CODE,delta=2
global __ptext1179
__ptext1179:

;; *************** function _Lcd_Special_Delay *****************
;; Defined at:
;;		line 99 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Initial_4bitLCD
;;		_Enable_Blink_LCD
;;		_Clear_LCD
;; This function uses a non-reentrant model
;;
psect	text1179
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	99
	global	__size_of_Lcd_Special_Delay
	__size_of_Lcd_Special_Delay	equ	__end_of_Lcd_Special_Delay-_Lcd_Special_Delay
	
_Lcd_Special_Delay:	
	opt	stack 4
; Regs used in _Lcd_Special_Delay: [wreg]
	line	103
	
l8954:	
;c16_lcd_driver.c: 103: _delay((unsigned long)((2)*(8000000UL/4000.0)));
	opt asmopt_off
movlw	6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Lcd_Special_Delay+0)+0+1),f
	movlw	48
movwf	((??_Lcd_Special_Delay+0)+0),f
u6757:
	decfsz	((??_Lcd_Special_Delay+0)+0),f
	goto	u6757
	decfsz	((??_Lcd_Special_Delay+0)+0+1),f
	goto	u6757
	clrwdt
opt asmopt_on

	line	105
	
l2254:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Special_Delay
	__end_of_Lcd_Special_Delay:
;; =============== function _Lcd_Special_Delay ends ============

	signat	_Lcd_Special_Delay,88
	global	_Lcd_Init_Delay
psect	text1180,local,class=CODE,delta=2
global __ptext1180
__ptext1180:

;; *************** function _Lcd_Init_Delay *****************
;; Defined at:
;;		line 87 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
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
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Initial_4bitLCD
;; This function uses a non-reentrant model
;;
psect	text1180
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\c16_lcd_driver.c"
	line	87
	global	__size_of_Lcd_Init_Delay
	__size_of_Lcd_Init_Delay	equ	__end_of_Lcd_Init_Delay-_Lcd_Init_Delay
	
_Lcd_Init_Delay:	
	opt	stack 4
; Regs used in _Lcd_Init_Delay: [wreg]
	line	91
	
l8952:	
;c16_lcd_driver.c: 91: _delay((unsigned long)((40)*(8000000UL/4000.0)));
	opt asmopt_off
movlw	104
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_Lcd_Init_Delay+0)+0+1),f
	movlw	228
movwf	((??_Lcd_Init_Delay+0)+0),f
u6767:
	decfsz	((??_Lcd_Init_Delay+0)+0),f
	goto	u6767
	decfsz	((??_Lcd_Init_Delay+0)+0+1),f
	goto	u6767
	clrwdt
opt asmopt_on

	line	93
	
l2251:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd_Init_Delay
	__end_of_Lcd_Init_Delay:
;; =============== function _Lcd_Init_Delay ends ============

	signat	_Lcd_Init_Delay,88
	global	___awmod
psect	text1181,local,class=CODE,delta=2
global __ptext1181
__ptext1181:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1181
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l8918:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u5581
	goto	u5580
u5581:
	goto	l8922
u5580:
	line	10
	
l8920:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l8922
	line	12
	
l4786:	
	line	13
	
l8922:	
	btfss	(___awmod@divisor+1),7
	goto	u5591
	goto	u5590
u5591:
	goto	l8926
u5590:
	line	14
	
l8924:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l8926
	
l4787:	
	line	15
	
l8926:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u5601
	goto	u5600
u5601:
	goto	l8944
u5600:
	line	16
	
l8928:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l8934
	
l4790:	
	line	18
	
l8930:	
	movlw	01h
	
u5615:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u5615
	line	19
	
l8932:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l8934
	line	20
	
l4789:	
	line	17
	
l8934:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u5621
	goto	u5620
u5621:
	goto	l8930
u5620:
	goto	l8936
	
l4791:	
	goto	l8936
	line	21
	
l4792:	
	line	22
	
l8936:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u5635
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u5635:
	skipc
	goto	u5631
	goto	u5630
u5631:
	goto	l8940
u5630:
	line	23
	
l8938:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l8940
	
l4793:	
	line	24
	
l8940:	
	movlw	01h
	
u5645:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u5645
	line	25
	
l8942:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u5651
	goto	u5650
u5651:
	goto	l8936
u5650:
	goto	l8944
	
l4794:	
	goto	l8944
	line	26
	
l4788:	
	line	27
	
l8944:	
	movf	(___awmod@sign),w
	skipz
	goto	u5660
	goto	l8948
u5660:
	line	28
	
l8946:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l8948
	
l4795:	
	line	29
	
l8948:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l4796
	
l8950:	
	line	30
	
l4796:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text1182,local,class=CODE,delta=2
global __ptext1182
__ptext1182:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1182
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l8878:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u5481
	goto	u5480
u5481:
	goto	l8882
u5480:
	line	11
	
l8880:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l8882
	line	13
	
l4718:	
	line	14
	
l8882:	
	btfss	(___awdiv@dividend+1),7
	goto	u5491
	goto	u5490
u5491:
	goto	l8888
u5490:
	line	15
	
l8884:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l8886:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l8888
	line	17
	
l4719:	
	line	18
	
l8888:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l8890:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u5501
	goto	u5500
u5501:
	goto	l8910
u5500:
	line	20
	
l8892:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l8898
	
l4722:	
	line	22
	
l8894:	
	movlw	01h
	
u5515:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u5515
	line	23
	
l8896:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l8898
	line	24
	
l4721:	
	line	21
	
l8898:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u5521
	goto	u5520
u5521:
	goto	l8894
u5520:
	goto	l8900
	
l4723:	
	goto	l8900
	line	25
	
l4724:	
	line	26
	
l8900:	
	movlw	01h
	
u5535:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u5535
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u5545
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u5545:
	skipc
	goto	u5541
	goto	u5540
u5541:
	goto	l8906
u5540:
	line	28
	
l8902:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l8904:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l8906
	line	30
	
l4725:	
	line	31
	
l8906:	
	movlw	01h
	
u5555:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u5555
	line	32
	
l8908:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u5561
	goto	u5560
u5561:
	goto	l8900
u5560:
	goto	l8910
	
l4726:	
	goto	l8910
	line	33
	
l4720:	
	line	34
	
l8910:	
	movf	(___awdiv@sign),w
	skipz
	goto	u5570
	goto	l8914
u5570:
	line	35
	
l8912:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l8914
	
l4727:	
	line	36
	
l8914:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l4728
	
l8916:	
	line	37
	
l4728:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text1183,local,class=CODE,delta=2
global __ptext1183
__ptext1183:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwmod.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text1183
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l8856:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u5421
	goto	u5420
u5421:
	goto	l8874
u5420:
	line	9
	
l8858:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l8864
	
l4596:	
	line	11
	
l8860:	
	movlw	01h
	
u5435:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u5435
	line	12
	
l8862:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l8864
	line	13
	
l4595:	
	line	10
	
l8864:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u5441
	goto	u5440
u5441:
	goto	l8860
u5440:
	goto	l8866
	
l4597:	
	goto	l8866
	line	14
	
l4598:	
	line	15
	
l8866:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u5455
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u5455:
	skipc
	goto	u5451
	goto	u5450
u5451:
	goto	l8870
u5450:
	line	16
	
l8868:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l8870
	
l4599:	
	line	17
	
l8870:	
	movlw	01h
	
u5465:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u5465
	line	18
	
l8872:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u5471
	goto	u5470
u5471:
	goto	l8866
u5470:
	goto	l8874
	
l4600:	
	goto	l8874
	line	19
	
l4594:	
	line	20
	
l8874:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l4601
	
l8876:	
	line	21
	
l4601:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text1184,local,class=CODE,delta=2
global __ptext1184
__ptext1184:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[BANK0 ] unsigned int 
;;  dividend        2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[BANK0 ] unsigned int 
;;  counter         1   11[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text1184
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l8830:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l8832:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u5351
	goto	u5350
u5351:
	goto	l8852
u5350:
	line	11
	
l8834:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l8840
	
l4586:	
	line	13
	
l8836:	
	movlw	01h
	
u5365:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u5365
	line	14
	
l8838:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l8840
	line	15
	
l4585:	
	line	12
	
l8840:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u5371
	goto	u5370
u5371:
	goto	l8836
u5370:
	goto	l8842
	
l4587:	
	goto	l8842
	line	16
	
l4588:	
	line	17
	
l8842:	
	movlw	01h
	
u5385:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u5385
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u5395
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u5395:
	skipc
	goto	u5391
	goto	u5390
u5391:
	goto	l8848
u5390:
	line	19
	
l8844:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l8846:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l8848
	line	21
	
l4589:	
	line	22
	
l8848:	
	movlw	01h
	
u5405:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u5405
	line	23
	
l8850:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u5411
	goto	u5410
u5411:
	goto	l8842
u5410:
	goto	l8852
	
l4590:	
	goto	l8852
	line	24
	
l4584:	
	line	25
	
l8852:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l4591
	
l8854:	
	line	26
	
l4591:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text1185,local,class=CODE,delta=2
global __ptext1185
__ptext1185:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text1185
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l8818:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l8820
	line	6
	
l4578:	
	line	7
	
l8820:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u5311
	goto	u5310
u5311:
	goto	l4579
u5310:
	line	8
	
l8822:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l4579:	
	line	9
	movlw	01h
	
u5325:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u5325
	line	10
	
l8824:	
	movlw	01h
	
u5335:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u5335
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u5341
	goto	u5340
u5341:
	goto	l8820
u5340:
	goto	l8826
	
l4580:	
	line	12
	
l8826:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l4581
	
l8828:	
	line	13
	
l4581:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_isdigit
psect	text1186,local,class=CODE,delta=2
global __ptext1186
__ptext1186:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "../../common/isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[BANK0 ] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text1186
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\isdigit.c"
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 4
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l8806:	
	clrf	(_isdigit$5752)
	
l8808:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u5291
	goto	u5290
u5291:
	goto	l8814
u5290:
	
l8810:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u5301
	goto	u5300
u5301:
	goto	l8814
u5300:
	
l8812:	
	clrf	(_isdigit$5752)
	bsf	status,0
	rlf	(_isdigit$5752),f
	goto	l8814
	
l4562:	
	
l8814:	
	rrf	(_isdigit$5752),w
	
	goto	l4563
	
l8816:	
	line	15
	
l4563:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_strcpy
psect	text1187,local,class=CODE,delta=2
global __ptext1187
__ptext1187:

;; *************** function _strcpy *****************
;; Defined at:
;;		line 10 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> lcd_buf(16), 
;;  from            1    0[BANK0 ] PTR const unsigned char 
;;		 -> MainScreen3(13), WelcomeScreen2(16), WelcomeScreen1(17), MainScreen2(6), 
;;		 -> MainScreen1(6), STR_5(12), STR_4(12), STR_3(12), 
;;		 -> STR_2(12), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[BANK0 ] PTR unsigned char 
;;		 -> lcd_buf(16), 
;;  cp              1    3[BANK0 ] PTR unsigned char 
;;		 -> lcd_buf(16), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    2
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Repaint
;;		_LCD_SetMode
;;		_LCD_SetEditValue
;; This function uses a non-reentrant model
;;
psect	text1187
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcpy.c"
	line	10
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
	opt	stack 4
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+pclath]
;strcpy@to stored from wreg
	line	18
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strcpy@to)
	
l8798:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l8800
	
l4567:	
	line	20
	goto	l8800
	
l4566:	
	line	19
	
l8800:	
	movlw	01h
	addwf	(strcpy@from),f
	movlw	-01h
	addwf	(strcpy@from),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_strcpy+0)+0
	movf	(strcpy@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strcpy@cp),f
	movf	(??_strcpy+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	(indf),f
	skipz
	goto	u5281
	goto	u5280
u5281:
	goto	l8800
u5280:
	goto	l4569
	
l4568:	
	line	22
;	Return value of _strcpy is never used
	
l4569:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_putch
psect	text1188,local,class=CODE,delta=2
global __ptext1188
__ptext1188:

;; *************** function _putch *****************
;; Defined at:
;;		line 18 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\usart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_getche
;; This function uses a non-reentrant model
;;
psect	text1188
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\usart.c"
	line	18
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 6
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(putch@byte)
	line	20
	
l8794:	
;usart.c: 20: while(!TXIF)
	goto	l4498
	
l4499:	
	line	21
;usart.c: 21: continue;
	
l4498:	
	line	20
	btfss	(100/8),(100)&7
	goto	u5271
	goto	u5270
u5271:
	goto	l4498
u5270:
	goto	l8796
	
l4500:	
	line	22
	
l8796:	
;usart.c: 22: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	23
	
l4501:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_SetValueTipI
psect	text1189,local,class=CODE,delta=2
global __ptext1189
__ptext1189:

;; *************** function _SetValueTipI *****************
;; Defined at:
;;		line 274 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  k               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1189
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	274
	global	__size_of_SetValueTipI
	__size_of_SetValueTipI	equ	__end_of_SetValueTipI-_SetValueTipI
	
_SetValueTipI:	
	opt	stack 6
; Regs used in _SetValueTipI: [wreg+status,2+status,0]
	line	275
	
l8792:	
;dthc_lcd_controller.c: 275: valueTipI = k;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetValueTipI@k+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(dthc_lcd_controller@valueTipI+1)^080h	;volatile
	addwf	(dthc_lcd_controller@valueTipI+1)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetValueTipI@k),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(dthc_lcd_controller@valueTipI)^080h	;volatile
	addwf	(dthc_lcd_controller@valueTipI)^080h	;volatile

	line	276
	
l3459:	
	return
	opt stack 0
GLOBAL	__end_of_SetValueTipI
	__end_of_SetValueTipI:
;; =============== function _SetValueTipI ends ============

	signat	_SetValueTipI,4216
	global	_LCD_SubMode
psect	text1190,local,class=CODE,delta=2
global __ptext1190
__ptext1190:

;; *************** function _LCD_SubMode *****************
;; Defined at:
;;		line 139 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  k               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  k               1    1[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1190
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	139
	global	__size_of_LCD_SubMode
	__size_of_LCD_SubMode	equ	__end_of_LCD_SubMode-_LCD_SubMode
	
_LCD_SubMode:	
	opt	stack 6
; Regs used in _LCD_SubMode: [wreg+status,2+status,0]
;LCD_SubMode@k stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_SubMode@k)
	line	140
	
l8786:	
;dthc_lcd_controller.c: 140: if ( k == 0)
	movf	(LCD_SubMode@k),f
	skipz
	goto	u5261
	goto	u5260
u5261:
	goto	l8790
u5260:
	line	141
	
l8788:	
;dthc_lcd_controller.c: 141: nameMode = 'V';
	movlw	(056h)
	movwf	(??_LCD_SubMode+0)+0
	movf	(??_LCD_SubMode+0)+0,w
	movwf	(dthc_lcd_controller@nameMode)
	goto	l3420
	line	142
	
l3418:	
	line	143
	
l8790:	
;dthc_lcd_controller.c: 142: else
;dthc_lcd_controller.c: 143: nameMode = 'I';
	movlw	(049h)
	movwf	(??_LCD_SubMode+0)+0
	movf	(??_LCD_SubMode+0)+0,w
	movwf	(dthc_lcd_controller@nameMode)
	goto	l3420
	
l3419:	
	line	144
	
l3420:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_SubMode
	__end_of_LCD_SubMode:
;; =============== function _LCD_SubMode ends ============

	signat	_LCD_SubMode,4216
	global	_SetArrow
psect	text1191,local,class=CODE,delta=2
global __ptext1191
__ptext1191:

;; *************** function _SetArrow *****************
;; Defined at:
;;		line 263 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     enum E292
;; Auto vars:     Size  Location     Type
;;  state           1    1[BANK0 ] enum E292
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1191
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	263
	global	__size_of_SetArrow
	__size_of_SetArrow	equ	__end_of_SetArrow-_SetArrow
	
_SetArrow:	
	opt	stack 6
; Regs used in _SetArrow: [wreg+status,2+status,0]
;SetArrow@state stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SetArrow@state)
	line	264
	
l8776:	
;dthc_lcd_controller.c: 264: Up_State = NONE_ARROW;
	movlw	(016h)
	movwf	(??_SetArrow+0)+0
	movf	(??_SetArrow+0)+0,w
	movwf	(_Up_State)	;volatile
	line	265
;dthc_lcd_controller.c: 265: Down_State = NONE_ARROW;
	movlw	(016h)
	movwf	(??_SetArrow+0)+0
	movf	(??_SetArrow+0)+0,w
	movwf	(_Down_State)	;volatile
	line	266
;dthc_lcd_controller.c: 266: if ( LCD_Status == LCD_RUN_MODE ) {
	movf	(dthc_lcd_controller@LCD_Status),w	;volatile
	xorlw	03h
	skipz
	goto	u5231
	goto	u5230
u5231:
	goto	l3456
u5230:
	line	267
	
l8778:	
;dthc_lcd_controller.c: 267: if (state == UP_ARROW)
	movf	(SetArrow@state),w
	xorlw	01h
	skipz
	goto	u5241
	goto	u5240
u5241:
	goto	l8782
u5240:
	line	268
	
l8780:	
;dthc_lcd_controller.c: 268: Up_State = UP_ARROW;
	clrf	(_Up_State)	;volatile
	bsf	status,0
	rlf	(_Up_State),f	;volatile
	goto	l8782
	
l3454:	
	line	269
	
l8782:	
;dthc_lcd_controller.c: 269: if (state == DOWN_ARROW)
	movf	(SetArrow@state),w
	xorlw	02h
	skipz
	goto	u5251
	goto	u5250
u5251:
	goto	l3456
u5250:
	line	270
	
l8784:	
;dthc_lcd_controller.c: 270: Down_State = DOWN_ARROW;
	movlw	(02h)
	movwf	(??_SetArrow+0)+0
	movf	(??_SetArrow+0)+0,w
	movwf	(_Down_State)	;volatile
	goto	l3456
	
l3455:	
	goto	l3456
	line	271
	
l3453:	
	line	272
	
l3456:	
	return
	opt stack 0
GLOBAL	__end_of_SetArrow
	__end_of_SetArrow:
;; =============== function _SetArrow ends ============

	signat	_SetArrow,4216
	global	_SetVisible_ARC
psect	text1192,local,class=CODE,delta=2
global __ptext1192
__ptext1192:

;; *************** function _SetVisible_ARC *****************
;; Defined at:
;;		line 247 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  eARC            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  eARC            1    1[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1192
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	247
	global	__size_of_SetVisible_ARC
	__size_of_SetVisible_ARC	equ	__end_of_SetVisible_ARC-_SetVisible_ARC
	
_SetVisible_ARC:	
	opt	stack 6
; Regs used in _SetVisible_ARC: [wreg]
;SetVisible_ARC@eARC stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SetVisible_ARC@eARC)
	line	248
	
l8770:	
;dthc_lcd_controller.c: 248: if (eARC)
	movf	(SetVisible_ARC@eARC),w
	skipz
	goto	u5220
	goto	l8774
u5220:
	line	249
	
l8772:	
;dthc_lcd_controller.c: 249: dispARC = StrARC;
	movlw	((_StrARC-__stringbase))&0ffh
	movwf	(??_SetVisible_ARC+0)+0
	movf	(??_SetVisible_ARC+0)+0,w
	movwf	(_dispARC)
	goto	l3444
	line	250
	
l3442:	
	line	251
	
l8774:	
;dthc_lcd_controller.c: 250: else
;dthc_lcd_controller.c: 251: dispARC = StrNull;
	movlw	((_StrNull-__stringbase))&0ffh
	movwf	(??_SetVisible_ARC+0)+0
	movf	(??_SetVisible_ARC+0)+0,w
	movwf	(_dispARC)
	goto	l3444
	
l3443:	
	line	252
	
l3444:	
	return
	opt stack 0
GLOBAL	__end_of_SetVisible_ARC
	__end_of_SetVisible_ARC:
;; =============== function _SetVisible_ARC ends ============

	signat	_SetVisible_ARC,4216
	global	_SetVisible_TOR
psect	text1193,local,class=CODE,delta=2
global __ptext1193
__ptext1193:

;; *************** function _SetVisible_TOR *****************
;; Defined at:
;;		line 240 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  eTOR            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  eTOR            1    1[BANK0 ] unsigned char 
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1193
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	240
	global	__size_of_SetVisible_TOR
	__size_of_SetVisible_TOR	equ	__end_of_SetVisible_TOR-_SetVisible_TOR
	
_SetVisible_TOR:	
	opt	stack 6
; Regs used in _SetVisible_TOR: [wreg]
;SetVisible_TOR@eTOR stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SetVisible_TOR@eTOR)
	line	241
	
l8764:	
;dthc_lcd_controller.c: 241: if (eTOR)
	movf	(SetVisible_TOR@eTOR),w
	skipz
	goto	u5210
	goto	l8768
u5210:
	line	242
	
l8766:	
;dthc_lcd_controller.c: 242: dispTOR = StrTOR;
	movlw	((_StrTOR-__stringbase))&0ffh
	movwf	(??_SetVisible_TOR+0)+0
	movf	(??_SetVisible_TOR+0)+0,w
	movwf	(_dispTOR)
	goto	l3439
	line	243
	
l3437:	
	line	244
	
l8768:	
;dthc_lcd_controller.c: 243: else
;dthc_lcd_controller.c: 244: dispTOR = StrNull;
	movlw	((_StrNull-__stringbase))&0ffh
	movwf	(??_SetVisible_TOR+0)+0
	movf	(??_SetVisible_TOR+0)+0,w
	movwf	(_dispTOR)
	goto	l3439
	
l3438:	
	line	245
	
l3439:	
	return
	opt stack 0
GLOBAL	__end_of_SetVisible_TOR
	__end_of_SetVisible_TOR:
;; =============== function _SetVisible_TOR ends ============

	signat	_SetVisible_TOR,4216
	global	_SetValueSetV
psect	text1194,local,class=CODE,delta=2
global __ptext1194
__ptext1194:

;; *************** function _SetValueSetV *****************
;; Defined at:
;;		line 259 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  k               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1194
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	259
	global	__size_of_SetValueSetV
	__size_of_SetValueSetV	equ	__end_of_SetValueSetV-_SetValueSetV
	
_SetValueSetV:	
	opt	stack 6
; Regs used in _SetValueSetV: [wreg+status,2+status,0]
	line	260
	
l8762:	
;dthc_lcd_controller.c: 260: valueSetV = k;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetValueSetV@k+1),w
	clrf	(dthc_lcd_controller@valueSetV+1)	;volatile
	addwf	(dthc_lcd_controller@valueSetV+1)	;volatile
	movf	(SetValueSetV@k),w
	clrf	(dthc_lcd_controller@valueSetV)	;volatile
	addwf	(dthc_lcd_controller@valueSetV)	;volatile

	line	261
	
l3450:	
	return
	opt stack 0
GLOBAL	__end_of_SetValueSetV
	__end_of_SetValueSetV:
;; =============== function _SetValueSetV ends ============

	signat	_SetValueSetV,4216
	global	_SetValueTipV
psect	text1195,local,class=CODE,delta=2
global __ptext1195
__ptext1195:

;; *************** function _SetValueTipV *****************
;; Defined at:
;;		line 255 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
;; Parameters:    Size  Location     Type
;;  k               2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1195
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\dthc_lcd_controller.c"
	line	255
	global	__size_of_SetValueTipV
	__size_of_SetValueTipV	equ	__end_of_SetValueTipV-_SetValueTipV
	
_SetValueTipV:	
	opt	stack 6
; Regs used in _SetValueTipV: [wreg+status,2+status,0]
	line	256
	
l8760:	
;dthc_lcd_controller.c: 256: valueTipV = k;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SetValueTipV@k+1),w
	clrf	(dthc_lcd_controller@valueTipV+1)	;volatile
	addwf	(dthc_lcd_controller@valueTipV+1)	;volatile
	movf	(SetValueTipV@k),w
	clrf	(dthc_lcd_controller@valueTipV)	;volatile
	addwf	(dthc_lcd_controller@valueTipV)	;volatile

	line	257
	
l3447:	
	return
	opt stack 0
GLOBAL	__end_of_SetValueTipV
	__end_of_SetValueTipV:
;; =============== function _SetValueTipV ends ============

	signat	_SetValueTipV,4216
	global	_init_comms
psect	text1196,local,class=CODE,delta=2
global __ptext1196
__ptext1196:

;; *************** function _init_comms *****************
;; Defined at:
;;		line 6 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\usart.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1196
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\usart.c"
	line	6
	global	__size_of_init_comms
	__size_of_init_comms	equ	__end_of_init_comms-_init_comms
	
_init_comms:	
	opt	stack 6
; Regs used in _init_comms: [wreg+status,2]
	line	7
	
l8746:	
;usart.c: 7: TRISC7 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	8
;usart.c: 8: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	9
	
l8748:	
;usart.c: 9: SPBRGH = 0;
	clrf	(154)^080h	;volatile
	line	10
	
l8750:	
;usart.c: 10: SPBRG = ((int)(8000000L/(16UL * 9600) -1));
	movlw	(033h)
	movwf	(153)^080h	;volatile
	line	11
	
l8752:	
;usart.c: 11: RCSTA = (0|0x90);
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	12
	
l8754:	
;usart.c: 12: TXSTA = (0x4|0|0x20);
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	13
	
l8756:	
;usart.c: 13: RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	line	14
	
l8758:	
;usart.c: 14: RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1125/8)^080h,(1125)&7
	line	15
	
l4495:	
	return
	opt stack 0
GLOBAL	__end_of_init_comms
	__end_of_init_comms:
;; =============== function _init_comms ends ============

	signat	_init_comms,88
	global	_GetButton
psect	text1197,local,class=CODE,delta=2
global __ptext1197
__ptext1197:

;; *************** function _GetButton *****************
;; Defined at:
;;		line 54 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  button          1    1[BANK0 ] enum E1598
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E1598
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1197
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	line	54
	global	__size_of_GetButton
	__size_of_GetButton	equ	__end_of_GetButton-_GetButton
	
_GetButton:	
	opt	stack 6
; Regs used in _GetButton: [wreg+status,2+status,0]
	line	55
	
l8720:	
;main.c: 55: ButtonState button = NONE_BUTTON;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(GetButton@button)
	line	57
;main.c: 57: if ( PORTDbits.RD2 == 0 )
	btfsc	(8),2	;volatile
	goto	u5131
	goto	u5130
u5131:
	goto	l1114
u5130:
	line	58
	
l8722:	
;main.c: 58: button = BUTTON_ENTER;
	movlw	(03h)
	movwf	(??_GetButton+0)+0
	movf	(??_GetButton+0)+0,w
	movwf	(GetButton@button)
	goto	l1115
	line	59
	
l1114:	
	line	60
;main.c: 59: else
;main.c: 60: if ( PORTDbits.RD0 == 0 )
	btfsc	(8),0	;volatile
	goto	u5141
	goto	u5140
u5141:
	goto	l1116
u5140:
	line	61
	
l8724:	
;main.c: 61: button = BUTTON_UP;
	clrf	(GetButton@button)
	bsf	status,0
	rlf	(GetButton@button),f
	goto	l1115
	line	62
	
l1116:	
	line	63
;main.c: 62: else
;main.c: 63: if ( PORTDbits.RD1 == 0 )
	btfsc	(8),1	;volatile
	goto	u5151
	goto	u5150
u5151:
	goto	l1118
u5150:
	line	64
	
l8726:	
;main.c: 64: button = BUTTON_DOWN;
	movlw	(02h)
	movwf	(??_GetButton+0)+0
	movf	(??_GetButton+0)+0,w
	movwf	(GetButton@button)
	goto	l1115
	line	65
	
l1118:	
	line	66
;main.c: 65: else
;main.c: 66: if ( PORTDbits.RD3 == 0 )
	btfsc	(8),3	;volatile
	goto	u5161
	goto	u5160
u5161:
	goto	l1115
u5160:
	line	67
	
l8728:	
;main.c: 67: button = BUTTON_AM;
	movlw	(04h)
	movwf	(??_GetButton+0)+0
	movf	(??_GetButton+0)+0,w
	movwf	(GetButton@button)
	goto	l1115
	
l1120:	
	goto	l1115
	line	68
	
l1119:	
	goto	l1115
	
l1117:	
	
l1115:	
;main.c: 68: if ( button != NONE_BUTTON ) {
	movf	(GetButton@button),w
	skipz
	goto	u5170
	goto	l1121
u5170:
	line	69
	
l8730:	
;main.c: 69: if ( lastButton != button ) {
	movf	(_lastButton),w
	xorwf	(GetButton@button),w
	skipnz
	goto	u5181
	goto	u5180
u5181:
	goto	l1122
u5180:
	line	70
	
l8732:	
;main.c: 70: GotButtonPressed = 0;
	clrf	(_GotButtonPressed)
	line	71
	
l8734:	
;main.c: 71: lastButton = button;
	movf	(GetButton@button),w
	movwf	(??_GetButton+0)+0
	movf	(??_GetButton+0)+0,w
	movwf	(_lastButton)
	line	72
	
l1122:	
	line	73
;main.c: 72: }
;main.c: 73: if ( GotButtonPressed != 40 )
	movf	(_GotButtonPressed),w
	xorlw	028h
	skipnz
	goto	u5191
	goto	u5190
u5191:
	goto	l8738
u5190:
	line	74
	
l8736:	
;main.c: 74: button = NONE_BUTTON;
	clrf	(GetButton@button)
	goto	l8738
	
l1123:	
	line	75
	
l8738:	
;main.c: 75: if ( GotButtonPressed <= 40 )
	movlw	(029h)
	subwf	(_GotButtonPressed),w
	skipnc
	goto	u5201
	goto	u5200
u5201:
	goto	l8742
u5200:
	line	76
	
l8740:	
;main.c: 76: GotButtonPressed++;
	movlw	(01h)
	movwf	(??_GetButton+0)+0
	movf	(??_GetButton+0)+0,w
	addwf	(_GotButtonPressed),f
	goto	l8742
	
l1124:	
	line	77
;main.c: 77: }
	goto	l8742
	line	78
	
l1121:	
	line	79
;main.c: 78: else {
;main.c: 79: GotButtonPressed = 0;
	clrf	(_GotButtonPressed)
	goto	l8742
	line	80
	
l1125:	
	line	81
	
l8742:	
;main.c: 80: }
;main.c: 81: return button;
	movf	(GetButton@button),w
	goto	l1126
	
l8744:	
	line	82
	
l1126:	
	return
	opt stack 0
GLOBAL	__end_of_GetButton
	__end_of_GetButton:
;; =============== function _GetButton ends ============

	signat	_GetButton,89
	global	_Init_Button_Port
psect	text1198,local,class=CODE,delta=2
global __ptext1198
__ptext1198:

;; *************** function _Init_Button_Port *****************
;; Defined at:
;;		line 38 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
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
;;		Unchanged: 0/0
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
psect	text1198
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	line	38
	global	__size_of_Init_Button_Port
	__size_of_Init_Button_Port	equ	__end_of_Init_Button_Port-_Init_Button_Port
	
_Init_Button_Port:	
	opt	stack 6
; Regs used in _Init_Button_Port: []
	line	39
	
l8718:	
;main.c: 39: TRISDbits.TRISD3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(136)^080h,3	;volatile
	line	40
;main.c: 40: TRISDbits.TRISD0 = 1;
	bsf	(136)^080h,0	;volatile
	line	41
;main.c: 41: TRISDbits.TRISD1 = 1;
	bsf	(136)^080h,1	;volatile
	line	42
;main.c: 42: TRISDbits.TRISD2 = 1;
	bsf	(136)^080h,2	;volatile
	line	48
;main.c: 48: GotButtonPressed = 0;
	clrf	(_GotButtonPressed)
	line	49
;main.c: 49: lastButton = NONE_BUTTON;
	clrf	(_lastButton)
	line	52
	
l1111:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Button_Port
	__end_of_Init_Button_Port:
;; =============== function _Init_Button_Port ends ============

	signat	_Init_Button_Port,88
	global	_isr
psect	text1199,local,class=CODE,delta=2
global __ptext1199
__ptext1199:

;; *************** function _isr *****************
;; Defined at:
;;		line 497 in file "C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1199
	file	"C:\Users\Studio-Master\Desktop\Work\THC\27.05_DTHC\DisplayDTHC\main.c"
	line	497
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
	opt	stack 2
; Regs used in _isr: [wreg-fsr0h+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+1)
	movf	fsr0,w
	movwf	(??_isr+2)
	movf	pclath,w
	movwf	(??_isr+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+4)
	ljmp	_isr
psect	text1199
	line	498
	
i1l7456:	
;main.c: 498: if ( TMR1IF && TMR1IE ) {
	btfss	(96/8),(96)&7
	goto	u361_21
	goto	u361_20
u361_21:
	goto	i1l7466
u361_20:
	
i1l7458:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1120/8)^080h,(1120)&7
	goto	u362_21
	goto	u362_20
u362_21:
	goto	i1l7466
u362_20:
	line	499
	
i1l7460:	
;main.c: 499: TMR1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	500
	
i1l7462:	
;main.c: 500: TMR1H = (unsigned char) (-62500 >> 8);
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	501
;main.c: 501: TMR1L = (unsigned char) (-62500);
	movlw	(0DCh)
	movwf	(14)	;volatile
	line	502
	
i1l7464:	
;main.c: 502: LCD_UPDATE_EVENT = 1;
	clrf	(_LCD_UPDATE_EVENT)	;volatile
	bsf	status,0
	rlf	(_LCD_UPDATE_EVENT),f	;volatile
	goto	i1l7466
	line	503
	
i1l1204:	
	line	504
	
i1l7466:	
;main.c: 503: }
;main.c: 504: if ( RCIF && RCIE ) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(101/8),(101)&7
	goto	u363_21
	goto	u363_20
u363_21:
	goto	i1l1214
u363_20:
	
i1l7468:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1125/8)^080h,(1125)&7
	goto	u364_21
	goto	u364_20
u364_21:
	goto	i1l1214
u364_20:
	line	505
	
i1l7470:	
;main.c: 505: RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	line	506
	
i1l7472:	
;main.c: 506: globalTemp = RCREG;
	movf	(26),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	movwf	(_globalTemp)	;volatile
	line	508
;main.c: 508: if (globalTemp == '*' || globalTemp == '>' ) {
	movf	(_globalTemp),w	;volatile
	xorlw	02Ah
	skipnz
	goto	u365_21
	goto	u365_20
u365_21:
	goto	i1l7476
u365_20:
	
i1l7474:	
	movf	(_globalTemp),w	;volatile
	xorlw	03Eh
	skipz
	goto	u366_21
	goto	u366_20
u366_21:
	goto	i1l7480
u366_20:
	goto	i1l7476
	
i1l1208:	
	line	509
	
i1l7476:	
;main.c: 509: Data_Input[0] = globalTemp;
	movf	(_globalTemp),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Data_Input)^080h	;volatile
	line	510
	
i1l7478:	
;main.c: 510: countData = 1;
	clrf	(_countData)	;volatile
	bsf	status,0
	rlf	(_countData),f	;volatile
	line	511
;main.c: 511: }
	goto	i1l1214
	line	512
	
i1l1206:	
	line	513
	
i1l7480:	
;main.c: 512: else
;main.c: 513: if (globalTemp == '#') {
	movf	(_globalTemp),w	;volatile
	xorlw	023h
	skipz
	goto	u367_21
	goto	u367_20
u367_21:
	goto	i1l7490
u367_20:
	line	514
	
i1l7482:	
;main.c: 514: lengthDataInput = countData;
	movf	(_countData),w	;volatile
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(_lengthDataInput)	;volatile
	line	515
	
i1l7484:	
;main.c: 515: Data_Input[countData] = '\0';
	movf	(_countData),w
	addlw	_Data_Input&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	clrf	indf
	line	516
	
i1l7486:	
;main.c: 516: countData = 0;
	clrf	(_countData)	;volatile
	line	517
	
i1l7488:	
;main.c: 517: UART_RECEIVE_EVENT = 1;
	clrf	(_UART_RECEIVE_EVENT)	;volatile
	bsf	status,0
	rlf	(_UART_RECEIVE_EVENT),f	;volatile
	line	518
;main.c: 518: }
	goto	i1l1214
	line	519
	
i1l1210:	
	line	520
	
i1l7490:	
;main.c: 519: else
;main.c: 520: if ( countData!=0 && countData < 15 ) {
	movf	(_countData),w	;volatile
	skipz
	goto	u368_20
	goto	i1l1212
u368_20:
	
i1l7492:	
	movlw	(0Fh)
	subwf	(_countData),w	;volatile
	skipnc
	goto	u369_21
	goto	u369_20
u369_21:
	goto	i1l1212
u369_20:
	line	521
	
i1l7494:	
;main.c: 521: Data_Input[countData++] = globalTemp;
	movf	(_globalTemp),w	;volatile
	movwf	(??_isr+0)+0
	movf	(_countData),w
	addlw	_Data_Input&0ffh
	movwf	fsr0
	movf	(??_isr+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	
i1l7496:	
	movlw	(01h)
	movwf	(??_isr+0)+0
	movf	(??_isr+0)+0,w
	addwf	(_countData),f	;volatile
	line	522
;main.c: 522: }
	goto	i1l1214
	line	523
	
i1l1212:	
	line	524
;main.c: 523: else {
;main.c: 524: countData = 0;
	clrf	(_countData)	;volatile
	goto	i1l1214
	line	525
	
i1l1213:	
	goto	i1l1214
	
i1l1211:	
	goto	i1l1214
	
i1l1209:	
	goto	i1l1214
	line	526
	
i1l1205:	
	line	527
	
i1l1214:	
	movf	(??_isr+4),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_isr+3),w
	movwf	pclath
	movf	(??_isr+2),w
	movwf	fsr0
	swapf	(??_isr+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
;; =============== function _isr ends ============

	signat	_isr,88
psect	text1200,local,class=CODE,delta=2
global __ptext1200
__ptext1200:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
