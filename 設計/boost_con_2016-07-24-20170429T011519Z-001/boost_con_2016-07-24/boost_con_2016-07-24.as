opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 201502162209"

opt pagewidth 120

	opt lm

	processor	16F1827
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
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF0 equ 00h ;# 
# 70 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INDF1 equ 01h ;# 
# 89 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCL equ 02h ;# 
# 108 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS equ 03h ;# 
# 171 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L equ 04h ;# 
# 190 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H equ 05h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L equ 06h ;# 
# 231 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H equ 07h ;# 
# 250 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR equ 08h ;# 
# 301 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG equ 09h ;# 
# 320 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH equ 0Ah ;# 
# 339 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
INTCON equ 0Bh ;# 
# 416 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTA equ 0Ch ;# 
# 477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PORTB equ 0Dh ;# 
# 538 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR1 equ 011h ;# 
# 599 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR2 equ 012h ;# 
# 649 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR3 equ 013h ;# 
# 688 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIR4 equ 014h ;# 
# 713 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR0 equ 015h ;# 
# 732 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1 equ 016h ;# 
# 738 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1L equ 016h ;# 
# 757 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR1H equ 017h ;# 
# 776 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1CON equ 018h ;# 
# 847 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T1GCON equ 019h ;# 
# 916 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR2 equ 01Ah ;# 
# 935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR2 equ 01Bh ;# 
# 954 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T2CON equ 01Ch ;# 
# 1024 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON0 equ 01Eh ;# 
# 1077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CPSCON1 equ 01Fh ;# 
# 1122 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISA equ 08Ch ;# 
# 1183 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TRISB equ 08Dh ;# 
# 1244 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE1 equ 091h ;# 
# 1305 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE2 equ 092h ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE3 equ 093h ;# 
# 1394 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PIE4 equ 094h ;# 
# 1419 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OPTION_REG equ 095h ;# 
# 1501 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCON equ 096h ;# 
# 1551 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WDTCON equ 097h ;# 
# 1609 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCTUNE equ 098h ;# 
# 1666 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCCON equ 099h ;# 
# 1737 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
OSCSTAT equ 09Ah ;# 
# 1798 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRES equ 09Bh ;# 
# 1804 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESL equ 09Bh ;# 
# 1823 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADRESH equ 09Ch ;# 
# 1842 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON0 equ 09Dh ;# 
# 1921 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ADCON1 equ 09Eh ;# 
# 1992 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATA equ 010Ch ;# 
# 2048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
LATB equ 010Dh ;# 
# 2109 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON0 equ 0111h ;# 
# 2165 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM1CON1 equ 0112h ;# 
# 2230 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON0 equ 0113h ;# 
# 2286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CM2CON1 equ 0114h ;# 
# 2351 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CMOUT equ 0115h ;# 
# 2376 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BORCON equ 0116h ;# 
# 2402 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FVRCON equ 0117h ;# 
# 2477 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON0 equ 0118h ;# 
# 2537 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
DACCON1 equ 0119h ;# 
# 2588 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON0 equ 011Ah ;# 
# 2658 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SRCON1 equ 011Bh ;# 
# 2719 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON0 equ 011Dh ;# 
# 2780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
APFCON1 equ 011Eh ;# 
# 2799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELA equ 018Ch ;# 
# 2850 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ANSELB equ 018Dh ;# 
# 2914 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADR equ 0191h ;# 
# 2920 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRL equ 0191h ;# 
# 2939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEADRH equ 0192h ;# 
# 2958 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDAT equ 0193h ;# 
# 2964 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATL equ 0193h ;# 
# 2969 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATA equ 0193h ;# 
# 3001 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EEDATH equ 0194h ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON1 equ 0195h ;# 
# 3081 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
EECON2 equ 0196h ;# 
# 3100 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCREG equ 0199h ;# 
# 3119 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXREG equ 019Ah ;# 
# 3138 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRG equ 019Bh ;# 
# 3144 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGL equ 019Bh ;# 
# 3149 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRG equ 019Bh ;# 
# 3153 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGL equ 019Bh ;# 
# 3197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SP1BRGH equ 019Ch ;# 
# 3202 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SPBRGH equ 019Ch ;# 
# 3234 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
RCSTA equ 019Dh ;# 
# 3295 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TXSTA equ 019Eh ;# 
# 3356 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BAUDCON equ 019Fh ;# 
# 3407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUA equ 020Ch ;# 
# 3435 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WPUB equ 020Dh ;# 
# 3504 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1BUF equ 0211h ;# 
# 3509 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPBUF equ 0211h ;# 
# 3541 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1ADD equ 0212h ;# 
# 3546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPADD equ 0212h ;# 
# 3578 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1MSK equ 0213h ;# 
# 3583 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPMSK equ 0213h ;# 
# 3615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1STAT equ 0214h ;# 
# 3620 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPSTAT equ 0214h ;# 
# 3736 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON1 equ 0215h ;# 
# 3741 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON1 equ 0215h ;# 
# 3745 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON equ 0215h ;# 
# 3939 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON2 equ 0216h ;# 
# 3944 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON2 equ 0216h ;# 
# 4060 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP1CON3 equ 0217h ;# 
# 4065 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSPCON3 equ 0217h ;# 
# 4181 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2BUF equ 0219h ;# 
# 4200 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2ADD equ 021Ah ;# 
# 4219 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2MSK equ 021Bh ;# 
# 4238 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2STAT equ 021Ch ;# 
# 4299 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON1 equ 021Dh ;# 
# 4368 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON2 equ 021Eh ;# 
# 4429 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
SSP2CON3 equ 021Fh ;# 
# 4490 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1 equ 0291h ;# 
# 4496 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1L equ 0291h ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR1H equ 0292h ;# 
# 4534 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1CON equ 0293h ;# 
# 4615 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM1CON equ 0294h ;# 
# 4684 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP1AS equ 0295h ;# 
# 4689 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP1AS equ 0295h ;# 
# 4845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR1CON equ 0296h ;# 
# 4888 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2 equ 0298h ;# 
# 4894 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2L equ 0298h ;# 
# 4913 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR2H equ 0299h ;# 
# 4932 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2CON equ 029Ah ;# 
# 5013 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PWM2CON equ 029Bh ;# 
# 5082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP2AS equ 029Ch ;# 
# 5087 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
ECCP2AS equ 029Ch ;# 
# 5243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PSTR2CON equ 029Dh ;# 
# 5286 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS equ 029Eh ;# 
# 5291 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPTMRS0 equ 029Eh ;# 
# 5459 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3 equ 0311h ;# 
# 5465 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3L equ 0311h ;# 
# 5484 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR3H equ 0312h ;# 
# 5503 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP3CON equ 0313h ;# 
# 5566 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4 equ 0318h ;# 
# 5572 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4L equ 0318h ;# 
# 5591 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCPR4H equ 0319h ;# 
# 5610 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CCP4CON equ 031Ah ;# 
# 5673 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBP equ 0394h ;# 
# 5742 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBN equ 0395h ;# 
# 5811 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
IOCBF equ 0396h ;# 
# 5880 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
CLKRCON equ 039Ah ;# 
# 5955 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCON equ 039Ch ;# 
# 6005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDSRC equ 039Dh ;# 
# 6057 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARL equ 039Eh ;# 
# 6121 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
MDCARH equ 039Fh ;# 
# 6185 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR4 equ 0415h ;# 
# 6204 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR4 equ 0416h ;# 
# 6223 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T4CON equ 0417h ;# 
# 6293 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TMR6 equ 041Ch ;# 
# 6312 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PR6 equ 041Dh ;# 
# 6331 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
T6CON equ 041Eh ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STATUS_SHAD equ 0FE4h ;# 
# 6432 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
WREG_SHAD equ 0FE5h ;# 
# 6451 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
BSR_SHAD equ 0FE6h ;# 
# 6470 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6489 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6508 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6546 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
STKPTR equ 0FEDh ;# 
# 6584 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSL equ 0FEEh ;# 
# 6603 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic16f1827.h"
TOSH equ 0FEFh ;# 
	FNCALL	_main,_Get_AD_data
	FNCALL	_main,_Init
	FNCALL	_main,_putc_UART
	FNCALL	_main,_putdec_UARTb
	FNCALL	_main,_puts_UARTb
	FNCALL	_main,_set_halfbridge_duty
	FNCALL	_main,_stop_PWM
	FNCALL	_main,_system_halt
	FNCALL	_system_halt,_ioc_init
	FNCALL	_stop_PWM,_set_PWM_duty
	FNCALL	_set_halfbridge_duty,_set_PWM_duty
	FNCALL	_puts_UARTb,_set_data_buff
	FNCALL	_putdec_UARTb,___awdiv
	FNCALL	_putdec_UARTb,___awmod
	FNCALL	_putdec_UARTb,___wmul
	FNCALL	_putdec_UARTb,_set_data_buff
	FNCALL	_set_data_buff,_puts_UART
	FNCALL	_puts_UART,_putc_UART
	FNCALL	_Init,_AD_Init
	FNCALL	_Init,_ECCP1_Init
	FNCALL	_Init,_ECCP2_Init
	FNCALL	_Init,_TMR4_Interrupt_set
	FNCALL	_Init,_UART_Init
	FNCALL	_Init,_eccp_config_param_init
	FNCALL	_Init,_tmr0_Init
	FNCALL	_ECCP2_Init,_set_PWM_duty
	FNCALL	_ECCP1_Init,_set_PWM_duty
	FNROOT	_main
	FNCALL	__ISR,_roop_manager
	FNCALL	__ISR,i1_putc_UART
	FNCALL	intlevel1,__ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_rcmode
	global	set_halfbridge_duty@power_dd
psect	idataCOMMON,class=CODE,space=0,delta=2,noexec
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	74

;initializer for _rcmode
	retlw	01h
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\boost_con.c"
	line	10

;initializer for set_halfbridge_duty@power_dd
	retlw	0DFh
	retlw	01h

	retlw	020h
	retlw	0

	global	set_motor_power@power_dd
	global	__ISR@rc_count
	global	__ISR@rc_busy
	global	__ISR@rc_t_count
	global	_busy
	global	_key
	global	_rc_complete
	global	_rc_success
	global	_roop_f
	global	putdec_UART@F2803
	global	putdec_UARTb@F2797
	global	_txdata
	global	__ISR@comm_error_count
	global	__ISR@count
	global	_output
	global	_rcbuff
	global	_u1txbuff
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_T1CONbits
_T1CONbits	set	0x18
	global	_T1GCONbits
_T1GCONbits	set	0x19
	global	_TMR0
_TMR0	set	0x15
	global	_GIE
_GIE	set	0x5F
	global	_IOCIE
_IOCIE	set	0x5B
	global	_IOCIF
_IOCIF	set	0x58
	global	_PEIE
_PEIE	set	0x5E
	global	_RCIF
_RCIF	set	0x8D
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_TMR4IF
_TMR4IF	set	0x99
	global	_TXIF
_TXIF	set	0x8C
	global	_ADCON0bits
_ADCON0bits	set	0x9D
	global	_ADCON1bits
_ADCON1bits	set	0x9E
	global	_ADRESH
_ADRESH	set	0x9C
	global	_ADRESL
_ADRESL	set	0x9B
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x95
	global	_OSCCONbits
_OSCCONbits	set	0x99
	global	_OSCTUNEbits
_OSCTUNEbits	set	0x98
	global	_TRISA
_TRISA	set	0x8C
	global	_TRISAbits
_TRISAbits	set	0x8C
	global	_TRISB
_TRISB	set	0x8D
	global	_TRISBbits
_TRISBbits	set	0x8D
	global	_PSA
_PSA	set	0x4AB
	global	_RCIE
_RCIE	set	0x48D
	global	_TMR0CS
_TMR0CS	set	0x4AD
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_TMR4IE
_TMR4IE	set	0x499
	global	_TRISA6
_TRISA6	set	0x466
	global	_TRISA7
_TRISA7	set	0x467
	global	_TRISB3
_TRISB3	set	0x46B
	global	_TRISB5
_TRISB5	set	0x46D
	global	_TXIE
_TXIE	set	0x48C
	global	_APFCON0bits
_APFCON0bits	set	0x11D
	global	_APFCON1bits
_APFCON1bits	set	0x11E
	global	_LATA
_LATA	set	0x10C
	global	_LATB
_LATB	set	0x10D
	global	_LATA2
_LATA2	set	0x862
	global	_LATA3
_LATA3	set	0x863
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELAbits
_ANSELAbits	set	0x18C
	global	_ANSELBbits
_ANSELBbits	set	0x18D
	global	_RCREG
_RCREG	set	0x199
	global	_SPBRGH
_SPBRGH	set	0x19C
	global	_SPBRGL
_SPBRGL	set	0x19B
	global	_TXREG
_TXREG	set	0x19A
	global	_BRG16
_BRG16	set	0xCFB
	global	_BRGH
_BRGH	set	0xCF2
	global	_CREN
_CREN	set	0xCEC
	global	_SENDB
_SENDB	set	0xCF3
	global	_SPEN
_SPEN	set	0xCEF
	global	_SYNC
_SYNC	set	0xCF4
	global	_TX9
_TX9	set	0xCF6
	global	_TXEN
_TXEN	set	0xCF5
	global	_CCP1ASbits
_CCP1ASbits	set	0x295
	global	_CCP1CONbits
_CCP1CONbits	set	0x293
	global	_CCP2ASbits
_CCP2ASbits	set	0x29C
	global	_CCP2CONbits
_CCP2CONbits	set	0x29A
	global	_CCPR1L
_CCPR1L	set	0x291
	global	_CCPR2L
_CCPR2L	set	0x298
	global	_CCPTMRSbits
_CCPTMRSbits	set	0x29E
	global	_PWM1CONbits
_PWM1CONbits	set	0x294
	global	_PWM2CONbits
_PWM2CONbits	set	0x29B
	global	_IOCBN
_IOCBN	set	0x395
	global	_IOCBP
_IOCBP	set	0x394
	global	_PR4
_PR4	set	0x416
	global	_T4CONbits
_T4CONbits	set	0x417
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	
STR_1:	
	retlw	13
	retlw	10
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	95	;'_'
	retlw	100	;'d'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	95	;'_'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	95	;'_'
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	86	;'V'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	46	;'.'
	retlw	48	;'0'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	13
	retlw	10
	retlw	84	;'T'
	retlw	88	;'X'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	33	;'!'
	retlw	13
	retlw	10
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	124	;'|'
	retlw	0
psect	stringtext
STR_4	equ	STR_3+0
STR_5	equ	STR_3+0
STR_6	equ	STR_3+0
STR_7	equ	STR_8+16
; #config settings
global __CFG_CLKOUTEN$OFF
__CFG_CLKOUTEN$OFF equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_FCMEN$ON
__CFG_FCMEN$ON equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_IESO$ON
__CFG_IESO$ON equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_BORV$LO
__CFG_BORV$LO equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_PLLEN$ON
__CFG_PLLEN$ON equ 0x0
	file	"boost_con_2016-07-24.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
set_motor_power@power_dd:
       ds      2

__ISR@rc_count:
       ds      1

psect	dataCOMMON,class=COMMON,space=1,noexec
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	74
_rcmode:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
__ISR@rc_busy:
       ds      1

__ISR@rc_t_count:
       ds      1

_busy:
       ds      1

_key:
       ds      1

_rc_complete:
       ds      1

_rc_success:
       ds      1

_roop_f:
       ds      1

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\boost_con.c"
	line	10
set_halfbridge_duty@power_dd:
       ds      4

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
putdec_UART@F2803:
       ds      10

putdec_UARTb@F2797:
       ds      10

_txdata:
       ds      3

__ISR@comm_error_count:
       ds      2

__ISR@count:
       ds      2

_output:
       ds      2

_rcbuff:
       ds      2

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_u1txbuff:
       ds      52

	file	"boost_con_2016-07-24.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	WREG with the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	decfsz wreg		;Have we reached the end of clearing yet?
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	movlw	low(__pbssBANK0)
	movwf	fsr0l
	movlw	high(__pbssBANK0)
	movwf	fsr0h
	movlw	07h
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	01Fh
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	034h
	fcall	clear_ram0
	line	#
; Initialize objects allocated to COMMON
	global __pidataCOMMON,__pdataCOMMON
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0,__pdataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@power1_dd
main@power1_dd:	; 2 bytes @ 0x0
	ds	2
	global	main@power2_dd
main@power2_dd:	; 2 bytes @ 0x2
	ds	2
	global	_main$765
_main$765:	; 2 bytes @ 0x4
	ds	2
	global	_main$766
_main$766:	; 2 bytes @ 0x6
	ds	2
	global	_main$767
_main$767:	; 2 bytes @ 0x8
	ds	2
	global	_main$768
_main$768:	; 2 bytes @ 0xA
	ds	2
	global	_main$770
_main$770:	; 2 bytes @ 0xC
	ds	2
	global	_main$771
_main$771:	; 2 bytes @ 0xE
	ds	2
	global	main@cnt
main@cnt:	; 2 bytes @ 0x10
	ds	2
	global	main@output_voltage
main@output_voltage:	; 2 bytes @ 0x12
	ds	2
	global	main@input_voltage
main@input_voltage:	; 2 bytes @ 0x14
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x16
	ds	2
	global	main@mode
main@mode:	; 2 bytes @ 0x18
	ds	2
	global	main@power1
main@power1:	; 2 bytes @ 0x1A
	ds	2
	global	main@power2
main@power2:	; 2 bytes @ 0x1C
	ds	2
	global	main@boost_duty
main@boost_duty:	; 2 bytes @ 0x1E
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Init:	; 0 bytes @ 0x0
?_putc_UART:	; 0 bytes @ 0x0
?_system_halt:	; 0 bytes @ 0x0
?_tmr0_Init:	; 0 bytes @ 0x0
?_UART_Init:	; 0 bytes @ 0x0
??_roop_manager:	; 0 bytes @ 0x0
?_set_data_buff:	; 0 bytes @ 0x0
?_AD_Init:	; 0 bytes @ 0x0
?_stop_PWM:	; 0 bytes @ 0x0
?_ECCP1_Init:	; 0 bytes @ 0x0
?_ECCP2_Init:	; 0 bytes @ 0x0
?_TMR4_Interrupt_set:	; 0 bytes @ 0x0
?_eccp_config_param_init:	; 0 bytes @ 0x0
?_ioc_init:	; 0 bytes @ 0x0
?__ISR:	; 0 bytes @ 0x0
?i1_putc_UART:	; 0 bytes @ 0x0
??i1_putc_UART:	; 0 bytes @ 0x0
?_roop_manager:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i1putc_UART@data
i1putc_UART@data:	; 1 bytes @ 0x0
	ds	1
??__ISR:	; 0 bytes @ 0x1
	ds	2
	global	__ISR@sum
__ISR@sum:	; 1 bytes @ 0x3
	ds	1
?_set_PWM_duty:	; 0 bytes @ 0x4
??_putc_UART:	; 0 bytes @ 0x4
??_system_halt:	; 0 bytes @ 0x4
??_tmr0_Init:	; 0 bytes @ 0x4
??_UART_Init:	; 0 bytes @ 0x4
??_AD_Init:	; 0 bytes @ 0x4
??_TMR4_Interrupt_set:	; 0 bytes @ 0x4
??_eccp_config_param_init:	; 0 bytes @ 0x4
??_ioc_init:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	?_Get_AD_data
?_Get_AD_data:	; 2 bytes @ 0x4
	global	putc_UART@data
putc_UART@data:	; 1 bytes @ 0x4
	global	set_PWM_duty@duty
set_PWM_duty@duty:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
??_puts_UART:	; 0 bytes @ 0x5
	global	TMR4_Interrupt_set@ps
TMR4_Interrupt_set@ps:	; 1 bytes @ 0x5
	global	eccp_config_param_init@eccp_config
eccp_config_param_init@eccp_config:	; 1 bytes @ 0x5
	ds	1
??_stop_PWM:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_set_PWM_duty:	; 0 bytes @ 0x0
??_Get_AD_data:	; 0 bytes @ 0x0
?_puts_UART:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	puts_UART@str
puts_UART@str:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	puts_UART@txie
puts_UART@txie:	; 1 bytes @ 0x2
	global	_set_PWM_duty$524
_set_PWM_duty$524:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
??_set_data_buff:	; 0 bytes @ 0x3
	global	Get_AD_data@chs
Get_AD_data@chs:	; 1 bytes @ 0x3
	ds	1
	global	set_data_buff@data
set_data_buff@data:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	Get_AD_data@data
Get_AD_data@data:	; 2 bytes @ 0x4
	global	_set_PWM_duty$525
_set_PWM_duty$525:	; 2 bytes @ 0x4
	ds	1
?_puts_UARTb:	; 0 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	puts_UARTb@str
puts_UARTb@str:	; 2 bytes @ 0x5
	ds	1
	global	set_PWM_duty@id
set_PWM_duty@id:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	1
??_puts_UARTb:	; 0 bytes @ 0x7
??_ECCP1_Init:	; 0 bytes @ 0x7
??_ECCP2_Init:	; 0 bytes @ 0x7
	global	?_set_halfbridge_duty
?_set_halfbridge_duty:	; 2 bytes @ 0x7
	global	set_halfbridge_duty@power
set_halfbridge_duty@power:	; 2 bytes @ 0x7
	ds	1
?_putdec_UARTb:	; 0 bytes @ 0x8
	global	ECCP1_Init@eccp_config
ECCP1_Init@eccp_config:	; 1 bytes @ 0x8
	global	ECCP2_Init@eccp_config
ECCP2_Init@eccp_config:	; 1 bytes @ 0x8
	global	putdec_UARTb@dec
putdec_UARTb@dec:	; 2 bytes @ 0x8
	ds	1
??_Init:	; 0 bytes @ 0x9
??_set_halfbridge_duty:	; 0 bytes @ 0x9
	ds	1
??_putdec_UARTb:	; 0 bytes @ 0xA
	global	Init@eccp_config
Init@eccp_config:	; 3 bytes @ 0xA
	ds	1
	global	putdec_UARTb@dec_buff
putdec_UARTb@dec_buff:	; 10 bytes @ 0xB
	ds	3
	global	_set_halfbridge_duty$127
_set_halfbridge_duty$127:	; 2 bytes @ 0xE
	ds	2
	global	_set_halfbridge_duty$128
_set_halfbridge_duty$128:	; 2 bytes @ 0x10
	ds	2
	global	_set_halfbridge_duty$129
_set_halfbridge_duty$129:	; 2 bytes @ 0x12
	ds	2
	global	_set_halfbridge_duty$130
_set_halfbridge_duty$130:	; 2 bytes @ 0x14
	ds	1
	global	putdec_UARTb@cnt
putdec_UARTb@cnt:	; 2 bytes @ 0x15
	ds	1
	global	_set_halfbridge_duty$131
_set_halfbridge_duty$131:	; 2 bytes @ 0x16
	ds	1
	global	putdec_UARTb@i
putdec_UARTb@i:	; 2 bytes @ 0x17
	ds	1
	global	_set_halfbridge_duty$132
_set_halfbridge_duty$132:	; 2 bytes @ 0x18
	ds	2
	global	_set_halfbridge_duty$133
_set_halfbridge_duty$133:	; 2 bytes @ 0x1A
	ds	2
	global	_set_halfbridge_duty$134
_set_halfbridge_duty$134:	; 2 bytes @ 0x1C
	ds	2
	global	_set_halfbridge_duty$135
_set_halfbridge_duty$135:	; 2 bytes @ 0x1E
	ds	2
	global	_set_halfbridge_duty$136
_set_halfbridge_duty$136:	; 2 bytes @ 0x20
	ds	2
	global	_set_halfbridge_duty$137
_set_halfbridge_duty$137:	; 2 bytes @ 0x22
	ds	2
	global	set_halfbridge_duty@id
set_halfbridge_duty@id:	; 1 bytes @ 0x24
	ds	1
??_main:	; 0 bytes @ 0x25
	ds	3
;!
;!Data Sizes:
;!    Strings     59
;!    Constant    0
;!    Data        5
;!    BSS         93
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6      10
;!    BANK0            80     40      51
;!    BANK1            80     32      63
;!    BANK2            80      0      52
;!    BANK3            80      0       0
;!    BANK4            48      0       0

;!
;!Pointer List with Targets:
;!
;!    puts_UARTb@str	PTR unsigned char  size(2) Largest target is 36
;!		 -> STR_7(CODE[3]), STR_6(CODE[2]), STR_5(CODE[2]), STR_4(CODE[2]), 
;!		 -> STR_3(CODE[2]), STR_2(CODE[2]), STR_1(CODE[36]), 
;!
;!    puts_UART@str	PTR unsigned char  size(2) Largest target is 19
;!		 -> STR_8(CODE[19]), 
;!
;!    eccp_config_param_init@eccp_config	PTR struct _eccp_config_st size(1) Largest target is 3
;!		 -> Init@eccp_config(BANK0[3]), 
;!
;!    ECCP2_Init@eccp_config	PTR struct _eccp_config_st size(1) Largest target is 3
;!		 -> Init@eccp_config(BANK0[3]), 
;!
;!    ECCP1_Init@eccp_config	PTR struct _eccp_config_st size(1) Largest target is 3
;!		 -> Init@eccp_config(BANK0[3]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_Get_AD_data
;!    _stop_PWM->_set_PWM_duty
;!    _set_halfbridge_duty->_set_PWM_duty
;!    _putdec_UARTb->___wmul
;!    _set_data_buff->_puts_UART
;!    _puts_UART->_putc_UART
;!    _Init->_TMR4_Interrupt_set
;!    _Init->_eccp_config_param_init
;!    _ECCP2_Init->_set_PWM_duty
;!    _ECCP1_Init->_set_PWM_duty
;!
;!Critical Paths under __ISR in COMMON
;!
;!    __ISR->i1_putc_UART
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_set_halfbridge_duty
;!    _stop_PWM->_set_PWM_duty
;!    _set_halfbridge_duty->_set_PWM_duty
;!    _puts_UARTb->_set_data_buff
;!    _putdec_UARTb->___awdiv
;!    _set_data_buff->_puts_UART
;!    _Init->_ECCP1_Init
;!    _Init->_ECCP2_Init
;!    _ECCP2_Init->_set_PWM_duty
;!    _ECCP1_Init->_set_PWM_duty
;!
;!Critical Paths under __ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under __ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under __ISR in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under __ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under __ISR in BANK4
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                35    35      0   12139
;!                                             37 BANK0      3     3      0
;!                                              0 BANK1     32    32      0
;!                        _Get_AD_data
;!                               _Init
;!                          _putc_UART
;!                       _putdec_UARTb
;!                         _puts_UARTb
;!                _set_halfbridge_duty
;!                           _stop_PWM
;!                        _system_halt
;! ---------------------------------------------------------------------------------
;! (1) _system_halt                                          0     0      0       0
;!                           _ioc_init
;! ---------------------------------------------------------------------------------
;! (2) _ioc_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _stop_PWM                                             0     0      0    1179
;!                       _set_PWM_duty
;! ---------------------------------------------------------------------------------
;! (1) _set_halfbridge_duty                                 30    28      2    2614
;!                                              7 BANK0     30    28      2
;!                       _set_PWM_duty
;! ---------------------------------------------------------------------------------
;! (1) _puts_UARTb                                           3     1      2     842
;!                                              5 BANK0      3     1      2
;!                      _set_data_buff
;! ---------------------------------------------------------------------------------
;! (1) _putdec_UARTb                                        17    15      2    3071
;!                                              8 BANK0     17    15      2
;!                            ___awdiv
;!                            ___awmod
;!                             ___wmul
;!                      _set_data_buff
;! ---------------------------------------------------------------------------------
;! (2) _set_data_buff                                        2     2      0     238
;!                                              3 BANK0      2     2      0
;!                          _puts_UART
;! ---------------------------------------------------------------------------------
;! (3) _puts_UART                                            4     2      2     207
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      3     1      2
;!                          _putc_UART
;! ---------------------------------------------------------------------------------
;! (4) _putc_UART                                            1     1      0      31
;!                                              4 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     444
;!                                              4 COMMON     2     2      0
;!                                              0 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              7     3      4     741
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___awdiv                                              9     5      4     753
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _Init                                                 4     4      0    3000
;!                                              9 BANK0      4     4      0
;!                            _AD_Init
;!                         _ECCP1_Init
;!                         _ECCP2_Init
;!                 _TMR4_Interrupt_set
;!                          _UART_Init
;!             _eccp_config_param_init
;!                          _tmr0_Init
;! ---------------------------------------------------------------------------------
;! (2) _tmr0_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _eccp_config_param_init                               2     2      0     135
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _UART_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _TMR4_Interrupt_set                                   2     2      0      31
;!                                              4 COMMON     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _ECCP2_Init                                           2     2      0    1314
;!                                              7 BANK0      2     2      0
;!                       _set_PWM_duty
;! ---------------------------------------------------------------------------------
;! (2) _ECCP1_Init                                           2     2      0    1314
;!                                              7 BANK0      2     2      0
;!                       _set_PWM_duty
;! ---------------------------------------------------------------------------------
;! (2) _set_PWM_duty                                         9     7      2    1179
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      7     7      0
;! ---------------------------------------------------------------------------------
;! (2) _AD_Init                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Get_AD_data                                          8     6      2      68
;!                                              4 COMMON     2     0      2
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) __ISR                                                 3     3      0      46
;!                                              1 COMMON     3     3      0
;!                       _roop_manager
;!                        i1_putc_UART
;! ---------------------------------------------------------------------------------
;! (6) i1_putc_UART                                          1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (6) _roop_manager                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Get_AD_data
;!   _Init
;!     _AD_Init
;!     _ECCP1_Init
;!       _set_PWM_duty
;!     _ECCP2_Init
;!       _set_PWM_duty
;!     _TMR4_Interrupt_set
;!     _UART_Init
;!     _eccp_config_param_init
;!     _tmr0_Init
;!   _putc_UART
;!   _putdec_UARTb
;!     ___awdiv
;!     ___awmod
;!     ___wmul
;!     _set_data_buff
;!       _puts_UART
;!         _putc_UART
;!   _puts_UARTb
;!     _set_data_buff
;!       _puts_UART
;!         _putc_UART
;!   _set_halfbridge_duty
;!     _set_PWM_duty
;!   _stop_PWM
;!     _set_PWM_duty
;!   _system_halt
;!     _ioc_init
;!
;! __ISR (ROOT)
;!   _roop_manager
;!   i1_putc_UART
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             170      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      6       A       2       71.4%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!ABS                  0      0      B0       4        0.0%
;!BITBANK0            50      0       0       5        0.0%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BANK0               50     28      33       6       63.8%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BITBANK1            50      0       0       7        0.0%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BANK1               50     20      3F       8       78.8%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BITBANK2            50      0       0       9        0.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BANK2               50      0      34      10       65.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BITBANK3            50      0       0      11        0.0%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BANK3               50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BITBANK4            30      0       0      13        0.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BANK4               30      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!DATA                 0      0      B0      15        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 90 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  boost_duty      2   30[BANK1 ] unsigned int 
;;  power2          2   28[BANK1 ] int 
;;  power1          2   26[BANK1 ] int 
;;  mode            2   24[BANK1 ] unsigned int 
;;  i               2   22[BANK1 ] unsigned int 
;;  input_voltag    2   20[BANK1 ] unsigned int 
;;  output_volta    2   18[BANK1 ] unsigned int 
;;  cnt             2   16[BANK1 ] int 
;;  power2_dd       2    2[BANK1 ] int 
;;  power1_dd       2    0[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  2  333[None  ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0      32       0       0       0
;;      Temps:          0       3       0       0       0       0
;;      Totals:         0       3      32       0       0       0
;;Total ram usage:       35 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Get_AD_data
;;		_Init
;;		_putc_UART
;;		_putdec_UARTb
;;		_puts_UARTb
;;		_set_halfbridge_duty
;;		_stop_PWM
;;		_system_halt
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	90
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	90
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 10
; Regs used in _main: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	91
	
l3535:	
;newmain.c: 91: Init();
	fcall	_Init
	line	94
	
l3537:	
;newmain.c: 94: int16_t power1 = 1023, power2 = 1023;
	movlw	0FFh
	movlb 1	; select bank1
	movwf	(main@power1)^080h
	movlw	03h
	movwf	((main@power1)^080h)+1
	
l3539:	
	movlw	0FFh
	movwf	(main@power2)^080h
	movlw	03h
	movwf	((main@power2)^080h)+1
	line	95
	
l3541:	
;newmain.c: 95: int16_t power1_dd = 1023, power2_dd = 1023;
	movlw	0FFh
	movwf	(main@power1_dd)^080h
	movlw	03h
	movwf	((main@power1_dd)^080h)+1
	
l3543:	
	movlw	0FFh
	movwf	(main@power2_dd)^080h
	movlw	03h
	movwf	((main@power2_dd)^080h)+1
	line	96
	
l3545:	
;newmain.c: 96: int16_t cnt = 0;
	clrf	(main@cnt)^080h
	clrf	(main@cnt+1)^080h
	line	99
	
l3547:	
;newmain.c: 97: enum {NONE, TESTMODE, MODE1, MODE2};
;newmain.c: 99: uint16_t mode = MODE2;
	movlw	03h
	movwf	(main@mode)^080h
	movlw	0
	movwf	((main@mode)^080h)+1
	line	101
	
l3549:	
;newmain.c: 101: uint16_t boost_duty = 0;
	clrf	(main@boost_duty)^080h
	clrf	(main@boost_duty+1)^080h
	line	105
	
l3551:	
;newmain.c: 102: uint16_t output_voltage, input_voltage;
;newmain.c: 103: uint16_t i;
;newmain.c: 105: if(mode != MODE2){
		movlw	3
	xorwf	((main@mode)^080h),w
iorwf	((main@mode+1)^080h),w
	btfsc	status,2
	goto	u3261
	goto	u3260
u3261:
	goto	l3555
u3260:
	line	106
	
l3553:	
;newmain.c: 106: puts_UARTb("\r\nmotor_driver_test_program Ver.0\r\n");
	movlw	low(((STR_1)|8000h))
	movlb 0	; select bank0
	movwf	(puts_UARTb@str)
	movlw	high(((STR_1)|8000h))
	movwf	((puts_UARTb@str))+1
	fcall	_puts_UARTb
	goto	l3555
	line	107
	
l334:	
	goto	l3555
	line	111
;newmain.c: 107: }
;newmain.c: 111: while(1){
	
l335:	
	line	113
	
l3555:	
;newmain.c: 113: if(mode == MODE2){
		movlw	3
	movlb 1	; select bank1
	xorwf	((main@mode)^080h),w
iorwf	((main@mode+1)^080h),w
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l3587
u3270:
	line	114
	
l3557:	
;newmain.c: 114: if(rc_complete){
	movlb 0	; select bank0
	movf	((_rc_complete)),w
	btfsc	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l3587
u3280:
	line	115
	
l3559:	
;newmain.c: 115: boost_duty = ((((((rcbuff[0])) > ((255)) ? ((255)):((rcbuff[0])))) > ((0)) ? ((((rcbuff[0])) > ((255)) ? ((255)):((rcbuff[0])))):((0))));
	movlb 1	; select bank1
	movf	((_rcbuff)^080h),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l3563
u3290:
	
l3561:	
	clrf	(main@boost_duty)^080h
	clrf	(main@boost_duty+1)^080h
	goto	l3565
	
l339:	
	
l3563:	
	movf	(_rcbuff)^080h,w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movlb 1	; select bank1
	movwf	(main@boost_duty)^080h
	movlb 0	; select bank0
	movf	1+(??_main+0)+0,w
	movlb 1	; select bank1
	movwf	(main@boost_duty+1)^080h
	goto	l3565
	
l341:	
	line	117
	
l3565:	
;newmain.c: 117: txdata[0] = output_voltage >> 2;
	movf	(main@output_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(??_main+0)+0+1
	movlb 1	; select bank1
	movf	(main@output_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	lsrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	lsrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movlb 1	; select bank1
	movwf	(_txdata)^080h
	line	118
	
l3567:	
;newmain.c: 118: txdata[1] = input_voltage >> 2;
	movf	(main@input_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(??_main+0)+0+1
	movlb 1	; select bank1
	movf	(main@input_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	lsrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	lsrf	(??_main+0)+1,f
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movlb 1	; select bank1
	movwf	0+(_txdata)^080h+01h
	line	121
	
l3569:	
;newmain.c: 121: txdata[2] = txdata[0] + txdata[1];
	movf	0+(_txdata)^080h+01h,w
	addwf	(_txdata)^080h,w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movlb 1	; select bank1
	movwf	0+(_txdata)^080h+02h
	line	122
	
l3571:	
;newmain.c: 122: for(i = 0; i < 3; i++){
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	
l3573:	
	movlw	0
	subwf	(main@i+1)^080h,w
	movlw	03h
	skipnz
	subwf	(main@i)^080h,w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l3577
u3300:
	goto	l3583
	
l3575:	
	goto	l3583
	
l342:	
	line	123
	
l3577:	
;newmain.c: 123: putc_UART(txdata[i]);
	movf	(main@i)^080h,w
	addlw	low(_txdata|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	fcall	_putc_UART
	line	122
	
l3579:	
	movlw	01h
	movlb 1	; select bank1
	addwf	(main@i)^080h,f
	movlw	0
	addwfc	(main@i+1)^080h,f
	
l3581:	
	movlw	0
	subwf	(main@i+1)^080h,w
	movlw	03h
	skipnz
	subwf	(main@i)^080h,w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l3577
u3310:
	goto	l3583
	
l343:	
	line	125
	
l3583:	
;newmain.c: 124: }
;newmain.c: 125: output = ENABLE;
	movlw	01h
	movwf	(_output)^080h
	movlw	0
	movwf	((_output)^080h)+1
	line	126
	
l3585:	
;newmain.c: 126: rc_complete = 0;
	movlb 0	; select bank0
	clrf	(_rc_complete)
	line	127
;newmain.c: 127: }
	goto	l3587
	line	128
	
l337:	
	goto	l3587
	line	130
;newmain.c: 128: else{
	
l344:	
	goto	l3587
	line	131
	
l336:	
	line	132
	
l3587:	
;newmain.c: 130: }
;newmain.c: 131: }
;newmain.c: 132: if(roop_f){
	movlb 0	; select bank0
	movf	((_roop_f)),w
	btfsc	status,2
	goto	u3321
	goto	u3320
u3321:
	goto	l3555
u3320:
	line	133
	
l3589:	
;newmain.c: 133: roop_f = 0;
	clrf	(_roop_f)
	line	134
	
l3591:	
;newmain.c: 134: busy = 1;
	clrf	(_busy)
	incf	(_busy),f
	line	138
	
l3593:	
;newmain.c: 138: output_voltage = Get_AD_data(0);
	movlw	low(0)
	fcall	_Get_AD_data
	movf	(1+(?_Get_AD_data)),w
	movlb 1	; select bank1
	movwf	(main@output_voltage+1)^080h
	movf	(0+(?_Get_AD_data)),w
	movwf	(main@output_voltage)^080h
	line	139
	
l3595:	
;newmain.c: 139: input_voltage = Get_AD_data(4);
	movlw	low(04h)
	fcall	_Get_AD_data
	movf	(1+(?_Get_AD_data)),w
	movlb 1	; select bank1
	movwf	(main@input_voltage+1)^080h
	movf	(0+(?_Get_AD_data)),w
	movwf	(main@input_voltage)^080h
	line	144
;newmain.c: 144: switch(key){
	goto	l3625
	line	145
;newmain.c: 145: case 'u':
	
l347:	
	line	146
	
l3597:	
;newmain.c: 146: boost_duty += 10;
	movlw	0Ah
	movlb 1	; select bank1
	addwf	(main@boost_duty)^080h,f
	movlw	0
	addwfc	(main@boost_duty+1)^080h,f
	line	147
;newmain.c: 147: break;
	goto	l3627
	line	148
;newmain.c: 148: case 'U':
	
l349:	
	line	149
	
l3599:	
;newmain.c: 149: boost_duty += 50;
	movlw	032h
	movlb 1	; select bank1
	addwf	(main@boost_duty)^080h,f
	movlw	0
	addwfc	(main@boost_duty+1)^080h,f
	line	150
;newmain.c: 150: break;
	goto	l3627
	line	152
;newmain.c: 152: case 'd':
	
l350:	
	line	153
	
l3601:	
;newmain.c: 153: boost_duty -= 10;
	movlw	0Ah
	movlb 1	; select bank1
	subwf	(main@boost_duty)^080h,f
	movlw	0
	subwfb	(main@boost_duty+1)^080h,f
	line	154
;newmain.c: 154: break;
	goto	l3627
	line	155
;newmain.c: 155: case 'D':
	
l351:	
	line	156
	
l3603:	
;newmain.c: 156: boost_duty -= 50;
	movlw	032h
	movlb 1	; select bank1
	subwf	(main@boost_duty)^080h,f
	movlw	0
	subwfb	(main@boost_duty+1)^080h,f
	line	157
;newmain.c: 157: break;
	goto	l3627
	line	159
;newmain.c: 159: case 'g':
	
l352:	
	line	161
;newmain.c: 161: break;
	goto	l3627
	line	163
;newmain.c: 163: case 'r':
	
l353:	
	line	164
# 164 "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
reset ;# 
psect	maintext
	line	165
;newmain.c: 165: break;
	goto	l3627
	line	167
;newmain.c: 167: case 'z':
	
l354:	
	line	168
	
l3605:	
;newmain.c: 168: boost_duty = 0;
	movlb 1	; select bank1
	clrf	(main@boost_duty)^080h
	clrf	(main@boost_duty+1)^080h
	line	169
	
l3607:	
;newmain.c: 169: stop_PWM();
	fcall	_stop_PWM
	line	170
	
l3609:	
;newmain.c: 170: system_halt();
	fcall	_system_halt
	line	171
;newmain.c: 171: break;
	goto	l3627
	line	173
;newmain.c: 173: case 'k':
	
l355:	
	line	174
	
l3611:	
;newmain.c: 174: boost_duty = 500;
	movlw	0F4h
	movlb 1	; select bank1
	movwf	(main@boost_duty)^080h
	movlw	01h
	movwf	((main@boost_duty)^080h)+1
	line	175
;newmain.c: 175: mode = TESTMODE;
	movlw	01h
	movwf	(main@mode)^080h
	movlw	0
	movwf	((main@mode)^080h)+1
	line	176
;newmain.c: 176: output = ENABLE;
	movlw	01h
	movwf	(_output)^080h
	movlw	0
	movwf	((_output)^080h)+1
	line	177
;newmain.c: 177: break;
	goto	l3627
	line	179
;newmain.c: 179: case 'a':
	
l356:	
	line	180
	
l3613:	
;newmain.c: 180: mode = MODE1;
	movlw	02h
	movlb 1	; select bank1
	movwf	(main@mode)^080h
	movlw	0
	movwf	((main@mode)^080h)+1
	line	181
	
l3615:	
;newmain.c: 181: output = DISABLE;
	clrf	(_output)^080h
	clrf	(_output+1)^080h
	line	182
;newmain.c: 182: break;
	goto	l3627
	line	184
;newmain.c: 184: case 'o':
	
l357:	
	line	185
	
l3617:	
;newmain.c: 185: output ^= 1;
	movlw	01h
	movlb 1	; select bank1
	xorwf	(_output)^080h,f
	movlw	0
	xorwf	(_output+1)^080h,f
	line	186
;newmain.c: 186: break;
	goto	l3627
	line	188
;newmain.c: 188: case 'i':
	
l358:	
	line	189
	
l3619:	
;newmain.c: 189: boost_duty += 1;
	movlw	01h
	movlb 1	; select bank1
	addwf	(main@boost_duty)^080h,f
	movlw	0
	addwfc	(main@boost_duty+1)^080h,f
	line	190
;newmain.c: 190: break;
	goto	l3627
	line	191
;newmain.c: 191: case 'p':
	
l359:	
	line	192
	
l3621:	
;newmain.c: 192: boost_duty -= 1;
	movlw	01h
	movlb 1	; select bank1
	subwf	(main@boost_duty)^080h,f
	movlw	0
	subwfb	(main@boost_duty+1)^080h,f
	line	193
;newmain.c: 193: break;
	goto	l3627
	line	195
;newmain.c: 195: default:
	
l360:	
	line	196
;newmain.c: 196: break;
	goto	l3627
	line	197
	
l3623:	
;newmain.c: 197: }
	goto	l3627
	line	144
	
l346:	
	
l3625:	
	movlb 0	; select bank0
	movf	(_key),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 68 to 122
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte          119     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	68^0	; case 68
	skipnz
	goto	l3603
	xorlw	85^68	; case 85
	skipnz
	goto	l3599
	xorlw	97^85	; case 97
	skipnz
	goto	l3613
	xorlw	100^97	; case 100
	skipnz
	goto	l3601
	xorlw	103^100	; case 103
	skipnz
	goto	l3627
	xorlw	105^103	; case 105
	skipnz
	goto	l3619
	xorlw	107^105	; case 107
	skipnz
	goto	l3611
	xorlw	111^107	; case 111
	skipnz
	goto	l3617
	xorlw	112^111	; case 112
	skipnz
	goto	l3621
	xorlw	114^112	; case 114
	skipnz
	goto	l353
	xorlw	117^114	; case 117
	skipnz
	goto	l3597
	xorlw	122^117	; case 122
	skipnz
	goto	l3605
	goto	l3627
	opt asmopt_on

	line	197
	
l348:	
	line	198
	
l3627:	
;newmain.c: 198: key = 0;
	movlb 0	; select bank0
	clrf	(_key)
	line	201
	
l3629:	
;newmain.c: 201: mode = MODE2;
	movlw	03h
	movlb 1	; select bank1
	movwf	(main@mode)^080h
	movlw	0
	movwf	((main@mode)^080h)+1
	line	208
;newmain.c: 208: switch(mode){
	goto	l3639
	line	209
;newmain.c: 209: case NONE:
	
l362:	
	line	211
;newmain.c: 211: break;
	goto	l3641
	line	213
;newmain.c: 213: case TESTMODE:
	
l364:	
	line	215
;newmain.c: 215: break;
	goto	l3641
	line	217
;newmain.c: 217: case MODE1:
	
l365:	
	line	220
	
l3631:	
;newmain.c: 220: boost_duty = (int16_t)Get_AD_data(1);
	movlw	low(01h)
	fcall	_Get_AD_data
	movf	(1+(?_Get_AD_data)),w
	movlb 1	; select bank1
	movwf	(main@boost_duty+1)^080h
	movf	(0+(?_Get_AD_data)),w
	movwf	(main@boost_duty)^080h
	line	221
	
l3633:	
;newmain.c: 221: boost_duty /= 4;
	movlw	02h
	
u3335:
	lsrf	(main@boost_duty+1)^080h,f
	rrf	(main@boost_duty)^080h,f
	decfsz	wreg,f
	goto	u3335
	line	222
;newmain.c: 222: break;
	goto	l3641
	line	224
;newmain.c: 224: case MODE2:
	
l366:	
	line	225
;newmain.c: 225: break;
	goto	l3641
	line	227
;newmain.c: 227: default:
	
l367:	
	line	228
	
l3635:	
;newmain.c: 228: boost_duty = 0;
	clrf	(main@boost_duty)^080h
	clrf	(main@boost_duty+1)^080h
	line	229
;newmain.c: 229: break;
	goto	l3641
	line	230
	
l3637:	
;newmain.c: 230: }
	goto	l3641
	line	208
	
l361:	
	
l3639:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@mode+1)^080h,w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3849
	goto	l3635
	opt asmopt_on
	
l3849:	
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@mode)^080h,w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3641
	xorlw	1^0	; case 1
	skipnz
	goto	l3641
	xorlw	2^1	; case 2
	skipnz
	goto	l3631
	xorlw	3^2	; case 3
	skipnz
	goto	l3641
	goto	l3635
	opt asmopt_on

	line	230
	
l363:	
	line	234
	
l3641:	
;newmain.c: 234: boost_duty = ((((((boost_duty)) > ((256)) ? ((256)):((boost_duty)))) > ((32)) ? ((((boost_duty)) > ((256)) ? ((256)):((boost_duty)))):((32))));
	movlw	01h
	subwf	(main@boost_duty+1)^080h,w
	movlw	01h
	skipnz
	subwf	(main@boost_duty)^080h,w
	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l3645
u3340:
	
l3643:	
	movf	(main@boost_duty+1)^080h,w
	movwf	(_main$765+1)^080h
	movf	(main@boost_duty)^080h,w
	movwf	(_main$765)^080h
	goto	l375
	
l373:	
	
l3645:	
	movlw	0
	movwf	(_main$765)^080h
	movlw	01h
	movwf	((_main$765)^080h)+1
	
l375:	
	movlw	0
	subwf	(_main$765+1)^080h,w
	movlw	021h
	skipnz
	subwf	(_main$765)^080h,w
	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l3649
u3350:
	
l3647:	
	movlw	020h
	movwf	(main@boost_duty)^080h
	movlw	0
	movwf	((main@boost_duty)^080h)+1
	goto	l3655
	
l369:	
	
l3649:	
	movlw	01h
	subwf	(main@boost_duty+1)^080h,w
	movlw	01h
	skipnz
	subwf	(main@boost_duty)^080h,w
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l3653
u3360:
	
l3651:	
	movf	(main@boost_duty+1)^080h,w
	movwf	(_main$766+1)^080h
	movf	(main@boost_duty)^080h,w
	movwf	(_main$766)^080h
	goto	l379
	
l377:	
	
l3653:	
	movlw	0
	movwf	(_main$766)^080h
	movlw	01h
	movwf	((_main$766)^080h)+1
	
l379:	
	movf	(_main$766+1)^080h,w
	movwf	(main@boost_duty+1)^080h
	movf	(_main$766)^080h,w
	movwf	(main@boost_duty)^080h
	goto	l3655
	
l371:	
	line	250
	
l3655:	
;newmain.c: 250: if(output == ENABLE){
		decf	((_output)^080h),w
iorwf	((_output+1)^080h),w
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l380
u3370:
	line	251
	
l3657:	
;newmain.c: 251: LATA3 = 1;
	movlb 2	; select bank2
	bsf	(2147/8)^0100h,(2147)&7	;volatile
	line	253
	
l3659:	
;newmain.c: 253: power1 = 511 - boost_duty;
	movlb 1	; select bank1
	comf	(main@boost_duty)^080h,w
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlb 1	; select bank1
	comf	(main@boost_duty+1)^080h,w
	movlb 0	; select bank0
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	0+(??_main+0)+0,w
	addlw	0FFh
	movlb 1	; select bank1
	movwf	(main@power1)^080h
	movlw	01h
	movlb 0	; select bank0
	addwfc	1+(??_main+0)+0,w
	movlb 1	; select bank1
	movwf	1+(main@power1)^080h
	line	254
	
l3661:	
;newmain.c: 254: power2 = boost_duty;
	movf	(main@boost_duty+1)^080h,w
	movwf	(main@power2+1)^080h
	movf	(main@boost_duty)^080h,w
	movwf	(main@power2)^080h
	line	256
	
l3663:	
;newmain.c: 256: TRISA7 = 0;
	bcf	(1127/8)^080h,(1127)&7	;volatile
	line	257
	
l3665:	
;newmain.c: 257: TRISA6 = 0;
	bcf	(1126/8)^080h,(1126)&7	;volatile
	line	258
	
l3667:	
;newmain.c: 258: TRISB3 = 0;
	bcf	(1131/8)^080h,(1131)&7	;volatile
	line	259
	
l3669:	
;newmain.c: 259: TRISB5 = 0;
	bcf	(1133/8)^080h,(1133)&7	;volatile
	line	260
;newmain.c: 260: }
	goto	l3671
	line	261
	
l380:	
	line	262
;newmain.c: 261: else{
;newmain.c: 262: LATA3 = 0;
	movlb 2	; select bank2
	bcf	(2147/8)^0100h,(2147)&7	;volatile
	line	267
;newmain.c: 267: TRISA7 = 1;
	movlb 1	; select bank1
	bsf	(1127/8)^080h,(1127)&7	;volatile
	line	268
;newmain.c: 268: TRISA6 = 1;
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	269
;newmain.c: 269: TRISB3 = 1;
	bsf	(1131/8)^080h,(1131)&7	;volatile
	line	270
;newmain.c: 270: TRISB5 = 1;
	bsf	(1133/8)^080h,(1133)&7	;volatile
	goto	l3671
	line	271
	
l381:	
	line	272
	
l3671:	
;newmain.c: 271: }
;newmain.c: 272: power1 = ((((((power1)) > ((1023)) ? ((1023)):((power1)))) > ((1)) ? ((((power1)) > ((1023)) ? ((1023)):((power1)))):((1))));
	movf	(main@power1+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(04h)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3385
	movlw	0
	movlb 1	; select bank1
	subwf	(main@power1)^080h,w
u3385:

	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l3675
u3380:
	
l3673:	
	movlb 1	; select bank1
	movf	(main@power1+1)^080h,w
	movwf	(_main$767+1)^080h
	movf	(main@power1)^080h,w
	movwf	(_main$767)^080h
	goto	l389
	
l387:	
	
l3675:	
	movlw	0FFh
	movlb 1	; select bank1
	movwf	(_main$767)^080h
	movlw	03h
	movwf	((_main$767)^080h)+1
	
l389:	
	movf	(_main$767+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3395
	movlw	02h
	movlb 1	; select bank1
	subwf	(_main$767)^080h,w
u3395:

	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l3679
u3390:
	
l3677:	
	movlw	01h
	movlb 1	; select bank1
	movwf	(main@power1)^080h
	movlw	0
	movwf	((main@power1)^080h)+1
	goto	l3685
	
l383:	
	
l3679:	
	movlb 1	; select bank1
	movf	(main@power1+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(04h)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3405
	movlw	0
	movlb 1	; select bank1
	subwf	(main@power1)^080h,w
u3405:

	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l3683
u3400:
	
l3681:	
	movlb 1	; select bank1
	movf	(main@power1+1)^080h,w
	movwf	(_main$768+1)^080h
	movf	(main@power1)^080h,w
	movwf	(_main$768)^080h
	goto	l393
	
l391:	
	
l3683:	
	movlw	0FFh
	movlb 1	; select bank1
	movwf	(_main$768)^080h
	movlw	03h
	movwf	((_main$768)^080h)+1
	
l393:	
	movf	(_main$768+1)^080h,w
	movwf	(main@power1+1)^080h
	movf	(_main$768)^080h,w
	movwf	(main@power1)^080h
	goto	l3685
	
l385:	
	line	273
	
l3685:	
;newmain.c: 273: power1_dd = set_halfbridge_duty(1, power1);
	movf	(main@power1+1)^080h,w
	movlb 0	; select bank0
	movwf	(set_halfbridge_duty@power+1)
	movlb 1	; select bank1
	movf	(main@power1)^080h,w
	movlb 0	; select bank0
	movwf	(set_halfbridge_duty@power)
	movlw	low(01h)
	fcall	_set_halfbridge_duty
	movlb 0	; select bank0
	movf	(1+(?_set_halfbridge_duty)),w
	movlb 1	; select bank1
	movwf	(main@power1_dd+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_set_halfbridge_duty)),w
	movlb 1	; select bank1
	movwf	(main@power1_dd)^080h
	line	275
	
l3687:	
;newmain.c: 275: power2 = ((((((power2)) > ((1023)) ? ((1023)):((power2)))) > ((1)) ? ((((power2)) > ((1023)) ? ((1023)):((power2)))):((1))));
	movf	(main@power2+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(04h)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3415
	movlw	0
	movlb 1	; select bank1
	subwf	(main@power2)^080h,w
u3415:

	skipnc
	goto	u3411
	goto	u3410
u3411:
	goto	l3691
u3410:
	
l3689:	
	movlb 1	; select bank1
	movf	(main@power2+1)^080h,w
	movwf	(_main$770+1)^080h
	movf	(main@power2)^080h,w
	movwf	(_main$770)^080h
	goto	l401
	
l399:	
	
l3691:	
	movlw	0FFh
	movlb 1	; select bank1
	movwf	(_main$770)^080h
	movlw	03h
	movwf	((_main$770)^080h)+1
	
l401:	
	movf	(_main$770+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(0)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3425
	movlw	02h
	movlb 1	; select bank1
	subwf	(_main$770)^080h,w
u3425:

	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l3695
u3420:
	
l3693:	
	movlw	01h
	movlb 1	; select bank1
	movwf	(main@power2)^080h
	movlw	0
	movwf	((main@power2)^080h)+1
	goto	l3701
	
l395:	
	
l3695:	
	movlb 1	; select bank1
	movf	(main@power2+1)^080h,w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_main+0)+0
	movlw	(04h)^80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3435
	movlw	0
	movlb 1	; select bank1
	subwf	(main@power2)^080h,w
u3435:

	skipnc
	goto	u3431
	goto	u3430
u3431:
	goto	l3699
u3430:
	
l3697:	
	movlb 1	; select bank1
	movf	(main@power2+1)^080h,w
	movwf	(_main$771+1)^080h
	movf	(main@power2)^080h,w
	movwf	(_main$771)^080h
	goto	l405
	
l403:	
	
l3699:	
	movlw	0FFh
	movlb 1	; select bank1
	movwf	(_main$771)^080h
	movlw	03h
	movwf	((_main$771)^080h)+1
	
l405:	
	movf	(_main$771+1)^080h,w
	movwf	(main@power2+1)^080h
	movf	(_main$771)^080h,w
	movwf	(main@power2)^080h
	goto	l3701
	
l397:	
	line	277
	
l3701:	
;newmain.c: 277: power2_dd = set_halfbridge_duty(2, power2);
	movf	(main@power2+1)^080h,w
	movlb 0	; select bank0
	movwf	(set_halfbridge_duty@power+1)
	movlb 1	; select bank1
	movf	(main@power2)^080h,w
	movlb 0	; select bank0
	movwf	(set_halfbridge_duty@power)
	movlw	low(02h)
	fcall	_set_halfbridge_duty
	movlb 0	; select bank0
	movf	(1+(?_set_halfbridge_duty)),w
	movlb 1	; select bank1
	movwf	(main@power2_dd+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_set_halfbridge_duty)),w
	movlb 1	; select bank1
	movwf	(main@power2_dd)^080h
	line	283
	
l3703:	
;newmain.c: 283: if(mode != MODE2){
		movlw	3
	xorwf	((main@mode)^080h),w
iorwf	((main@mode+1)^080h),w
	btfsc	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3731
u3440:
	line	285
	
l3705:	
;newmain.c: 285: cnt++;
	movlw	01h
	addwf	(main@cnt)^080h,f
	movlw	0
	addwfc	(main@cnt+1)^080h,f
	line	286
;newmain.c: 286: switch(cnt){
	goto	l3729
	line	287
;newmain.c: 287: case 0:
	
l408:	
	line	288
;newmain.c: 288: break;
	goto	l3731
	line	289
;newmain.c: 289: case 1:
	
l410:	
	line	291
	
l3707:	
;newmain.c: 291: putdec_UARTb(power1);
	movf	(main@power1+1)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec+1)
	movlb 1	; select bank1
	movf	(main@power1)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec)
	fcall	_putdec_UARTb
	line	292
;newmain.c: 292: break;
	goto	l3731
	line	293
;newmain.c: 293: case 2:
	
l411:	
	line	294
	
l3709:	
;newmain.c: 294: puts_UARTb("|");
	movlw	low(((STR_2)|8000h))
	movlb 0	; select bank0
	movwf	(puts_UARTb@str)
	movlw	high(((STR_2)|8000h))
	movwf	((puts_UARTb@str))+1
	fcall	_puts_UARTb
	line	295
;newmain.c: 295: break;
	goto	l3731
	line	296
;newmain.c: 296: case 3:
	
l412:	
	line	297
	
l3711:	
;newmain.c: 297: putdec_UARTb(power1_dd);
	movlb 1	; select bank1
	movf	(main@power1_dd+1)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec+1)
	movlb 1	; select bank1
	movf	(main@power1_dd)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec)
	fcall	_putdec_UARTb
	line	299
;newmain.c: 299: break;
	goto	l3731
	line	300
;newmain.c: 300: case 4:
	
l413:	
	line	301
	
l3713:	
;newmain.c: 301: puts_UARTb(" ");
	movlw	low(((STR_3)|8000h))
	movlb 0	; select bank0
	movwf	(puts_UARTb@str)
	movlw	high(((STR_3)|8000h))
	movwf	((puts_UARTb@str))+1
	fcall	_puts_UARTb
	line	302
;newmain.c: 302: putdec_UARTb(power2);
	movlb 1	; select bank1
	movf	(main@power2+1)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec+1)
	movlb 1	; select bank1
	movf	(main@power2)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec)
	fcall	_putdec_UARTb
	line	307
;newmain.c: 307: break;
	goto	l3731
	line	308
;newmain.c: 308: case 5:
	
l414:	
	line	309
	
l3715:	
;newmain.c: 309: puts_UARTb(" ");
	movlw	low(((STR_4)|8000h))
	movlb 0	; select bank0
	movwf	(puts_UARTb@str)
	movlw	high(((STR_4)|8000h))
	movwf	((puts_UARTb@str))+1
	fcall	_puts_UARTb
	line	310
;newmain.c: 310: putdec_UARTb(power2_dd);
	movlb 1	; select bank1
	movf	(main@power2_dd+1)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec+1)
	movlb 1	; select bank1
	movf	(main@power2_dd)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec)
	fcall	_putdec_UARTb
	line	311
;newmain.c: 311: break;
	goto	l3731
	line	312
;newmain.c: 312: case 6:
	
l415:	
	line	313
	
l3717:	
;newmain.c: 313: puts_UARTb(" ");
	movlw	low(((STR_5)|8000h))
	movlb 0	; select bank0
	movwf	(puts_UARTb@str)
	movlw	high(((STR_5)|8000h))
	movwf	((puts_UARTb@str))+1
	fcall	_puts_UARTb
	line	314
;newmain.c: 314: putdec_UARTb(output_voltage);
	movlb 1	; select bank1
	movf	(main@output_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec+1)
	movlb 1	; select bank1
	movf	(main@output_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec)
	fcall	_putdec_UARTb
	line	315
;newmain.c: 315: break;
	goto	l3731
	line	317
;newmain.c: 317: case 7:
	
l416:	
	line	318
	
l3719:	
;newmain.c: 318: puts_UARTb(" ");
	movlw	low(((STR_6)|8000h))
	movlb 0	; select bank0
	movwf	(puts_UARTb@str)
	movlw	high(((STR_6)|8000h))
	movwf	((puts_UARTb@str))+1
	fcall	_puts_UARTb
	line	319
;newmain.c: 319: putdec_UARTb(input_voltage);
	movlb 1	; select bank1
	movf	(main@input_voltage+1)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec+1)
	movlb 1	; select bank1
	movf	(main@input_voltage)^080h,w
	movlb 0	; select bank0
	movwf	(putdec_UARTb@dec)
	fcall	_putdec_UARTb
	line	320
;newmain.c: 320: break;
	goto	l3731
	line	322
;newmain.c: 322: case 8:
	
l417:	
	line	323
	
l3721:	
;newmain.c: 323: puts_UARTb("\r\n");
	movlw	low(((STR_7)|8000h))
	movlb 0	; select bank0
	movwf	(puts_UARTb@str)
	movlw	high(((STR_7)|8000h))
	movwf	((puts_UARTb@str))+1
	fcall	_puts_UARTb
	line	324
	
l3723:	
;newmain.c: 324: cnt = 0;
	movlb 1	; select bank1
	clrf	(main@cnt)^080h
	clrf	(main@cnt+1)^080h
	line	325
;newmain.c: 325: break;
	goto	l3731
	line	326
;newmain.c: 326: default:
	
l418:	
	line	327
	
l3725:	
;newmain.c: 327: cnt = 0;
	clrf	(main@cnt)^080h
	clrf	(main@cnt+1)^080h
	line	328
;newmain.c: 328: break;
	goto	l3731
	line	329
	
l3727:	
;newmain.c: 329: }
	goto	l3731
	line	286
	
l407:	
	
l3729:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@cnt+1)^080h,w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3851
	goto	l3725
	opt asmopt_on
	
l3851:	
; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 0 to 8
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           24     6 (fixed)
; simple_byte           28    15 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movf (main@cnt)^080h,w
	movwf fsr0l
	movlw	9
	subwf	fsr0l,w
skipnc
goto l3725
movlp high(S3853)
	lslf fsr0l,w
	addlw low(S3853)
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S3853:
	ljmp	l3731
	ljmp	l3707
	ljmp	l3709
	ljmp	l3711
	ljmp	l3713
	ljmp	l3715
	ljmp	l3717
	ljmp	l3719
	ljmp	l3721
psect	maintext

	line	329
	
l409:	
	goto	l3731
	line	330
	
l406:	
	line	331
	
l3731:	
;newmain.c: 330: }
;newmain.c: 331: busy = 0;
	movlb 0	; select bank0
	clrf	(_busy)
	goto	l3555
	line	332
	
l345:	
	goto	l3555
	line	334
	
l419:	
	line	111
	goto	l3555
	
l420:	
	line	337
;newmain.c: 332: }
;newmain.c: 334: }
;newmain.c: 336: return (0);
;	Return value of _main is never used
	
l421:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_system_halt

;; *************** function _system_halt *****************
;; Defined at:
;;		line 486 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ioc_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	486
global __ptext1
__ptext1:	;psect for function _system_halt
psect	text1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	486
	global	__size_of_system_halt
	__size_of_system_halt	equ	__end_of_system_halt-_system_halt
	
_system_halt:	
;incstack = 0
	opt	stack 12
; Regs used in _system_halt: [wreg+status,2+status,0+pclath+cstack]
	line	487
	
l3419:	
;newmain.c: 487: LATA3 = 0;
	movlb 2	; select bank2
	bcf	(2147/8)^0100h,(2147)&7	;volatile
	line	488
	
l3421:	
;newmain.c: 488: TRISA = 0xff;
	movlw	low(0FFh)
	movlb 1	; select bank1
	movwf	(140)^080h	;volatile
	line	489
;newmain.c: 489: TRISB = 0xff;
	movlw	low(0FFh)
	movwf	(141)^080h	;volatile
	line	490
	
l3423:	
;newmain.c: 490: ioc_init();
	fcall	_ioc_init
	line	491
	
l3425:	
;newmain.c: 491: INTCONbits.IOCIE = 1;
	bsf	(11),3	;volatile
	line	492
# 492 "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
sleep ;# 
psect	text1
	line	493
	
l3427:	
;newmain.c: 493: INTCONbits.IOCIE = 0;
	bcf	(11),3	;volatile
	line	494
# 494 "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
reset ;# 
psect	text1
	line	495
	
l464:	
	return
	opt stack 0
GLOBAL	__end_of_system_halt
	__end_of_system_halt:
	signat	_system_halt,88
	global	_ioc_init

;; *************** function _ioc_init *****************
;; Defined at:
;;		line 10 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ioc.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_system_halt
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ioc.c"
	line	10
global __ptext2
__ptext2:	;psect for function _ioc_init
psect	text2
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ioc.c"
	line	10
	global	__size_of_ioc_init
	__size_of_ioc_init	equ	__end_of_ioc_init-_ioc_init
	
_ioc_init:	
;incstack = 0
	opt	stack 12
; Regs used in _ioc_init: [wreg+status,2]
	line	12
	
l3119:	
;ioc.c: 12: IOCBP = 0b00000000;
	movlb 7	; select bank7
	clrf	(916)^0380h	;volatile
	line	13
	
l3121:	
;ioc.c: 13: IOCBN = 0b00000010;
	movlw	low(02h)
	movwf	(917)^0380h	;volatile
	line	15
	
l219:	
	return
	opt stack 0
GLOBAL	__end_of_ioc_init
	__end_of_ioc_init:
	signat	_ioc_init,88
	global	_stop_PWM

;; *************** function _stop_PWM *****************
;; Defined at:
;;		line 28 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\control_h_bridge.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_set_PWM_duty
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\control_h_bridge.c"
	line	28
global __ptext3
__ptext3:	;psect for function _stop_PWM
psect	text3
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\control_h_bridge.c"
	line	28
	global	__size_of_stop_PWM
	__size_of_stop_PWM	equ	__end_of_stop_PWM-_stop_PWM
	
_stop_PWM:	
;incstack = 0
	opt	stack 12
; Regs used in _stop_PWM: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l3367:	
;control_h_bridge.c: 29: set_PWM_duty(1, 0);
	movlw	0
	movwf	(set_PWM_duty@duty)
	movwf	(set_PWM_duty@duty+1)
	movlw	low(01h)
	fcall	_set_PWM_duty
	line	30
;control_h_bridge.c: 30: set_PWM_duty(2, 0);
	movlw	0
	movwf	(set_PWM_duty@duty)
	movwf	(set_PWM_duty@duty+1)
	movlw	low(02h)
	fcall	_set_PWM_duty
	line	31
	
l137:	
	return
	opt stack 0
GLOBAL	__end_of_stop_PWM
	__end_of_stop_PWM:
	signat	_stop_PWM,88
	global	_set_halfbridge_duty

;; *************** function _set_halfbridge_duty *****************
;; Defined at:
;;		line 9 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\boost_con.c"
;; Parameters:    Size  Location     Type
;;  id              1    wreg     unsigned char 
;;  power           2    7[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  id              1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       2       0       0       0       0
;;      Locals:         0      23       0       0       0       0
;;      Temps:          0       5       0       0       0       0
;;      Totals:         0      30       0       0       0       0
;;Total ram usage:       30 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_set_PWM_duty
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\boost_con.c"
	line	9
global __ptext4
__ptext4:	;psect for function _set_halfbridge_duty
psect	text4
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\boost_con.c"
	line	9
	global	__size_of_set_halfbridge_duty
	__size_of_set_halfbridge_duty	equ	__end_of_set_halfbridge_duty-_set_halfbridge_duty
	
_set_halfbridge_duty:	
;incstack = 0
	opt	stack 12
; Regs used in _set_halfbridge_duty: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;set_halfbridge_duty@id stored from wreg
	movlb 0	; select bank0
	movwf	(set_halfbridge_duty@id)
	line	11
	
l3295:	
;boost_con.c: 10: static int16_t power_dd[2] = {479, 32};
;boost_con.c: 11: power = ((((((power)) > ((1023)) ? ((1023)):((power)))) > ((0)) ? ((((power)) > ((1023)) ? ((1023)):((power)))):((0))));
	movf	(set_halfbridge_duty@power+1),w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+0)+0
	movlw	(04h)^80h
	subwf	(??_set_halfbridge_duty+0)+0,w
	skipz
	goto	u2925
	movlw	0
	subwf	(set_halfbridge_duty@power),w
u2925:

	skipnc
	goto	u2921
	goto	u2920
u2921:
	goto	l3299
u2920:
	
l3297:	
	movlb 0	; select bank0
	movf	(set_halfbridge_duty@power+1),w
	movwf	(_set_halfbridge_duty$127+1)
	movf	(set_halfbridge_duty@power),w
	movwf	(_set_halfbridge_duty$127)
	goto	l33
	
l31:	
	
l3299:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$127)
	movlw	03h
	movwf	((_set_halfbridge_duty$127))+1
	
l33:	
	movf	(_set_halfbridge_duty$127+1),w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+0)+0
	movlw	(0)^80h
	subwf	(??_set_halfbridge_duty+0)+0,w
	skipz
	goto	u2935
	movlw	01h
	subwf	(_set_halfbridge_duty$127),w
u2935:

	skipnc
	goto	u2931
	goto	u2930
u2931:
	goto	l3303
u2930:
	
l3301:	
	movlb 0	; select bank0
	clrf	(set_halfbridge_duty@power)
	clrf	(set_halfbridge_duty@power+1)
	goto	l3309
	
l27:	
	
l3303:	
	movlb 0	; select bank0
	movf	(set_halfbridge_duty@power+1),w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+0)+0
	movlw	(04h)^80h
	subwf	(??_set_halfbridge_duty+0)+0,w
	skipz
	goto	u2945
	movlw	0
	subwf	(set_halfbridge_duty@power),w
u2945:

	skipnc
	goto	u2941
	goto	u2940
u2941:
	goto	l3307
u2940:
	
l3305:	
	movlb 0	; select bank0
	movf	(set_halfbridge_duty@power+1),w
	movwf	(_set_halfbridge_duty$128+1)
	movf	(set_halfbridge_duty@power),w
	movwf	(_set_halfbridge_duty$128)
	goto	l37
	
l35:	
	
l3307:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$128)
	movlw	03h
	movwf	((_set_halfbridge_duty$128))+1
	
l37:	
	movf	(_set_halfbridge_duty$128+1),w
	movwf	(set_halfbridge_duty@power+1)
	movf	(_set_halfbridge_duty$128),w
	movwf	(set_halfbridge_duty@power)
	goto	l3309
	
l29:	
	line	12
	
l3309:	
;boost_con.c: 12: power_dd[id-1] += ((((((power - power_dd[id-1])) > ((5)) ? ((5)):((power - power_dd[id-1])))) > ((-5)) ? ((((power - power_dd[id-1])) > ((5)) ? ((5)):((power - power_dd[id-1])))):((-5))));
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_set_halfbridge_duty+0)+0
	moviw	[1]fsr1
	movwf	(??_set_halfbridge_duty+0)+0+1
	comf	(??_set_halfbridge_duty+0)+0,f
	comf	(??_set_halfbridge_duty+0)+1,f
	incf	(??_set_halfbridge_duty+0)+0,f
	skipnz
	incf	(??_set_halfbridge_duty+0)+1,f
	movf	(set_halfbridge_duty@power),w
	addwf	0+(??_set_halfbridge_duty+0)+0,w
	movwf	(??_set_halfbridge_duty+2)+0
	movf	(set_halfbridge_duty@power+1),w
	addwfc	1+(??_set_halfbridge_duty+0)+0,w
	movwf	1+(??_set_halfbridge_duty+2)+0
	movf	1+(??_set_halfbridge_duty+2)+0,w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+4)+0
	movlw	(0)^80h
	subwf	(??_set_halfbridge_duty+4)+0,w
	skipz
	goto	u2955
	movlw	06h
	subwf	0+(??_set_halfbridge_duty+2)+0,w
u2955:

	skipnc
	goto	u2951
	goto	u2950
u2951:
	goto	l3313
u2950:
	
l3311:	
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_set_halfbridge_duty+0)+0
	moviw	[1]fsr1
	movwf	(??_set_halfbridge_duty+0)+0+1
	comf	(??_set_halfbridge_duty+0)+0,f
	comf	(??_set_halfbridge_duty+0)+1,f
	incf	(??_set_halfbridge_duty+0)+0,f
	skipnz
	incf	(??_set_halfbridge_duty+0)+1,f
	movf	(set_halfbridge_duty@power),w
	addwf	0+(??_set_halfbridge_duty+0)+0,w
	movwf	(_set_halfbridge_duty$130)
	movf	(set_halfbridge_duty@power+1),w
	addwfc	1+(??_set_halfbridge_duty+0)+0,w
	movwf	1+(_set_halfbridge_duty$130)
	goto	l45
	
l43:	
	
l3313:	
	movlw	05h
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$130)
	movlw	0
	movwf	((_set_halfbridge_duty$130))+1
	
l45:	
	movf	(_set_halfbridge_duty$130+1),w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+0)+0
	movlw	(0FFh)^80h
	subwf	(??_set_halfbridge_duty+0)+0,w
	skipz
	goto	u2965
	movlw	0FCh
	subwf	(_set_halfbridge_duty$130),w
u2965:

	skipnc
	goto	u2961
	goto	u2960
u2961:
	goto	l3317
u2960:
	
l3315:	
	movlw	0FBh
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$129)
	movlw	0FFh
	movwf	((_set_halfbridge_duty$129))+1
	goto	l3323
	
l39:	
	
l3317:	
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_set_halfbridge_duty+0)+0
	moviw	[1]fsr1
	movwf	(??_set_halfbridge_duty+0)+0+1
	comf	(??_set_halfbridge_duty+0)+0,f
	comf	(??_set_halfbridge_duty+0)+1,f
	incf	(??_set_halfbridge_duty+0)+0,f
	skipnz
	incf	(??_set_halfbridge_duty+0)+1,f
	movf	(set_halfbridge_duty@power),w
	addwf	0+(??_set_halfbridge_duty+0)+0,w
	movwf	(??_set_halfbridge_duty+2)+0
	movf	(set_halfbridge_duty@power+1),w
	addwfc	1+(??_set_halfbridge_duty+0)+0,w
	movwf	1+(??_set_halfbridge_duty+2)+0
	movf	1+(??_set_halfbridge_duty+2)+0,w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+4)+0
	movlw	(0)^80h
	subwf	(??_set_halfbridge_duty+4)+0,w
	skipz
	goto	u2975
	movlw	06h
	subwf	0+(??_set_halfbridge_duty+2)+0,w
u2975:

	skipnc
	goto	u2971
	goto	u2970
u2971:
	goto	l3321
u2970:
	
l3319:	
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_set_halfbridge_duty+0)+0
	moviw	[1]fsr1
	movwf	(??_set_halfbridge_duty+0)+0+1
	comf	(??_set_halfbridge_duty+0)+0,f
	comf	(??_set_halfbridge_duty+0)+1,f
	incf	(??_set_halfbridge_duty+0)+0,f
	skipnz
	incf	(??_set_halfbridge_duty+0)+1,f
	movf	(set_halfbridge_duty@power),w
	addwf	0+(??_set_halfbridge_duty+0)+0,w
	movwf	(_set_halfbridge_duty$131)
	movf	(set_halfbridge_duty@power+1),w
	addwfc	1+(??_set_halfbridge_duty+0)+0,w
	movwf	1+(_set_halfbridge_duty$131)
	goto	l49
	
l47:	
	
l3321:	
	movlw	05h
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$131)
	movlw	0
	movwf	((_set_halfbridge_duty$131))+1
	
l49:	
	movf	(_set_halfbridge_duty$131+1),w
	movwf	(_set_halfbridge_duty$129+1)
	movf	(_set_halfbridge_duty$131),w
	movwf	(_set_halfbridge_duty$129)
	goto	l3323
	
l41:	
	
l3323:	
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_set_halfbridge_duty$129),w
	addwf	indf1,f
	addfsr	fsr1,1
	movf	(_set_halfbridge_duty$129+1),w
	addwfc	indf1,f
	addfsr	fsr1,-1
	line	16
	
l3325:	
;boost_con.c: 16: if(id == 1){
		decf	((set_halfbridge_duty@id)),w
	btfss	status,2
	goto	u2981
	goto	u2980
u2981:
	goto	l3343
u2980:
	line	17
	
l3327:	
;boost_con.c: 17: power_dd[id-1] = ((((((power_dd[id-1])) > ((479)) ? ((479)):((power_dd[id-1])))) > ((255)) ? ((((power_dd[id-1])) > ((479)) ? ((479)):((power_dd[id-1])))):((255))));
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_set_halfbridge_duty+0)+0
	moviw	[1]fsr1
	movwf	(??_set_halfbridge_duty+0)+0+1
	movf	1+(??_set_halfbridge_duty+0)+0,w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+2)+0
	movlw	(01h)^80h
	subwf	(??_set_halfbridge_duty+2)+0,w
	skipz
	goto	u2995
	movlw	0E0h
	subwf	0+(??_set_halfbridge_duty+0)+0,w
u2995:

	skipnc
	goto	u2991
	goto	u2990
u2991:
	goto	l3331
u2990:
	
l3329:	
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(_set_halfbridge_duty$133)
	moviw	[1]fsr1
	movwf	(_set_halfbridge_duty$133+1)
	goto	l58
	
l56:	
	
l3331:	
	movlw	0DFh
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$133)
	movlw	01h
	movwf	((_set_halfbridge_duty$133))+1
	
l58:	
	movf	(_set_halfbridge_duty$133+1),w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+0)+0
	movlw	(01h)^80h
	subwf	(??_set_halfbridge_duty+0)+0,w
	skipz
	goto	u3005
	movlw	0
	subwf	(_set_halfbridge_duty$133),w
u3005:

	skipnc
	goto	u3001
	goto	u3000
u3001:
	goto	l3335
u3000:
	
l3333:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$132)
	movlw	0
	movwf	((_set_halfbridge_duty$132))+1
	goto	l3341
	
l52:	
	
l3335:	
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_set_halfbridge_duty+0)+0
	moviw	[1]fsr1
	movwf	(??_set_halfbridge_duty+0)+0+1
	movf	1+(??_set_halfbridge_duty+0)+0,w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+2)+0
	movlw	(01h)^80h
	subwf	(??_set_halfbridge_duty+2)+0,w
	skipz
	goto	u3015
	movlw	0E0h
	subwf	0+(??_set_halfbridge_duty+0)+0,w
u3015:

	skipnc
	goto	u3011
	goto	u3010
u3011:
	goto	l3339
u3010:
	
l3337:	
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(_set_halfbridge_duty$134)
	moviw	[1]fsr1
	movwf	(_set_halfbridge_duty$134+1)
	goto	l62
	
l60:	
	
l3339:	
	movlw	0DFh
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$134)
	movlw	01h
	movwf	((_set_halfbridge_duty$134))+1
	
l62:	
	movf	(_set_halfbridge_duty$134+1),w
	movwf	(_set_halfbridge_duty$132+1)
	movf	(_set_halfbridge_duty$134),w
	movwf	(_set_halfbridge_duty$132)
	goto	l3341
	
l54:	
	
l3341:	
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_set_halfbridge_duty$132),w
	movwi	[0]fsr1
	movf	(_set_halfbridge_duty$132+1),w
	movwi	[1]fsr1
	line	18
;boost_con.c: 18: }
	goto	l3361
	line	19
	
l50:	
	
l3343:	
;boost_con.c: 19: else if(id == 2){
		movlw	2
	xorwf	((set_halfbridge_duty@id)),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l3361
u3020:
	line	20
	
l3345:	
;boost_con.c: 20: power_dd[id-1] = ((((((power_dd[id-1])) > ((256)) ? ((256)):((power_dd[id-1])))) > ((32)) ? ((((power_dd[id-1])) > ((256)) ? ((256)):((power_dd[id-1])))):((32))));
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_set_halfbridge_duty+0)+0
	moviw	[1]fsr1
	movwf	(??_set_halfbridge_duty+0)+0+1
	movf	1+(??_set_halfbridge_duty+0)+0,w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+2)+0
	movlw	(01h)^80h
	subwf	(??_set_halfbridge_duty+2)+0,w
	skipz
	goto	u3035
	movlw	01h
	subwf	0+(??_set_halfbridge_duty+0)+0,w
u3035:

	skipnc
	goto	u3031
	goto	u3030
u3031:
	goto	l3349
u3030:
	
l3347:	
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(_set_halfbridge_duty$136)
	moviw	[1]fsr1
	movwf	(_set_halfbridge_duty$136+1)
	goto	l72
	
l70:	
	
l3349:	
	movlw	0
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$136)
	movlw	01h
	movwf	((_set_halfbridge_duty$136))+1
	
l72:	
	movf	(_set_halfbridge_duty$136+1),w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+0)+0
	movlw	(0)^80h
	subwf	(??_set_halfbridge_duty+0)+0,w
	skipz
	goto	u3045
	movlw	021h
	subwf	(_set_halfbridge_duty$136),w
u3045:

	skipnc
	goto	u3041
	goto	u3040
u3041:
	goto	l3353
u3040:
	
l3351:	
	movlw	020h
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$135)
	movlw	0
	movwf	((_set_halfbridge_duty$135))+1
	goto	l3359
	
l66:	
	
l3353:	
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(??_set_halfbridge_duty+0)+0
	moviw	[1]fsr1
	movwf	(??_set_halfbridge_duty+0)+0+1
	movf	1+(??_set_halfbridge_duty+0)+0,w
	xorlw	80h
	movwf	(??_set_halfbridge_duty+2)+0
	movlw	(01h)^80h
	subwf	(??_set_halfbridge_duty+2)+0,w
	skipz
	goto	u3055
	movlw	01h
	subwf	0+(??_set_halfbridge_duty+0)+0,w
u3055:

	skipnc
	goto	u3051
	goto	u3050
u3051:
	goto	l3357
u3050:
	
l3355:	
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(_set_halfbridge_duty$137)
	moviw	[1]fsr1
	movwf	(_set_halfbridge_duty$137+1)
	goto	l76
	
l74:	
	
l3357:	
	movlw	0
	movlb 0	; select bank0
	movwf	(_set_halfbridge_duty$137)
	movlw	01h
	movwf	((_set_halfbridge_duty$137))+1
	
l76:	
	movf	(_set_halfbridge_duty$137+1),w
	movwf	(_set_halfbridge_duty$135+1)
	movf	(_set_halfbridge_duty$137),w
	movwf	(_set_halfbridge_duty$135)
	goto	l3359
	
l68:	
	
l3359:	
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(_set_halfbridge_duty$135),w
	movwi	[0]fsr1
	movf	(_set_halfbridge_duty$135+1),w
	movwi	[1]fsr1
	goto	l3361
	line	21
	
l64:	
	goto	l3361
	line	22
	
l63:	
	
l3361:	
;boost_con.c: 21: }
;boost_con.c: 22: set_PWM_duty(id, power_dd[id-1]);
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(set_PWM_duty@duty)
	moviw	[1]fsr1
	movwf	(set_PWM_duty@duty+1)
	movf	(set_halfbridge_duty@id),w
	fcall	_set_PWM_duty
	line	23
	
l3363:	
;boost_con.c: 23: return power_dd[id-1];
	movlb 0	; select bank0
	lslf	(set_halfbridge_duty@id),w
	addlw	0FEh
	addlw	low(set_halfbridge_duty@power_dd|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	moviw	[0]fsr1
	movwf	(?_set_halfbridge_duty)
	moviw	[1]fsr1
	movwf	(?_set_halfbridge_duty+1)
	goto	l77
	
l3365:	
	line	24
	
l77:	
	return
	opt stack 0
GLOBAL	__end_of_set_halfbridge_duty
	__end_of_set_halfbridge_duty:
	signat	_set_halfbridge_duty,8314
	global	_puts_UARTb

;; *************** function _puts_UARTb *****************
;; Defined at:
;;		line 89 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
;; Parameters:    Size  Location     Type
;;  str             2    5[BANK0 ] PTR unsigned char 
;;		 -> STR_7(3), STR_6(2), STR_5(2), STR_4(2), 
;;		 -> STR_3(2), STR_2(2), STR_1(36), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       2       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_set_data_buff
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	89
global __ptext5
__ptext5:	;psect for function _puts_UARTb
psect	text5
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	89
	global	__size_of_puts_UARTb
	__size_of_puts_UARTb	equ	__end_of_puts_UARTb-_puts_UARTb
	
_puts_UARTb:	
;incstack = 0
	opt	stack 10
; Regs used in _puts_UARTb: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	91
	
l3411:	
;uart_16f1827.c: 91: while(*str != 0){
	goto	l3417
	
l572:	
	line	92
	
l3413:	
;uart_16f1827.c: 92: set_data_buff(*str);
	movlb 0	; select bank0
	movf	(puts_UARTb@str),w
	movwf	fsr0l
	movf	((puts_UARTb@str+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_set_data_buff
	line	93
	
l3415:	
;uart_16f1827.c: 93: str++;
	movlw	01h
	movlb 0	; select bank0
	addwf	(puts_UARTb@str),f
	movlw	0
	addwfc	(puts_UARTb@str+1),f
	goto	l3417
	line	94
	
l571:	
	line	91
	
l3417:	
	movlb 0	; select bank0
	movf	(puts_UARTb@str),w
	movwf	fsr0l
	movf	((puts_UARTb@str+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u3061
	goto	u3060
u3061:
	goto	l3413
u3060:
	
l573:	
	line	95
;uart_16f1827.c: 94: }
;uart_16f1827.c: 95: TXIE = 1;
	movlb 1	; select bank1
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	97
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of_puts_UARTb
	__end_of_puts_UARTb:
	signat	_puts_UARTb,4216
	global	_putdec_UARTb

;; *************** function _putdec_UARTb *****************
;; Defined at:
;;		line 127 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
;; Parameters:    Size  Location     Type
;;  dec             2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  dec_buff       10   11[BANK0 ] unsigned char [10]
;;  i               2   23[BANK0 ] int 
;;  cnt             2   21[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       2       0       0       0       0
;;      Locals:         0      14       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0      17       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___wmul
;;		_set_data_buff
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	127
global __ptext6
__ptext6:	;psect for function _putdec_UARTb
psect	text6
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	127
	global	__size_of_putdec_UARTb
	__size_of_putdec_UARTb	equ	__end_of_putdec_UARTb-_putdec_UARTb
	
_putdec_UARTb:	
;incstack = 0
	opt	stack 10
; Regs used in _putdec_UARTb: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	130
	
l3429:	
;uart_16f1827.c: 130: unsigned int cnt = 0;
	movlb 0	; select bank0
	clrf	(putdec_UARTb@cnt)
	clrf	(putdec_UARTb@cnt+1)
	line	132
	
l3431:	
;uart_16f1827.c: 131: int i;
;uart_16f1827.c: 132: unsigned char dec_buff[10] = {0};
	movlw	low(putdec_UARTb@F2797)
	movwf	fsr1l
	movlw	high(putdec_UARTb@F2797)
	movwf	fsr1h
	movlw	low(putdec_UARTb@dec_buff)
	movwf	fsr0l
	movlw	high(putdec_UARTb@dec_buff)
	movwf	fsr0h
	movlw	10
	movwf	(??_putdec_UARTb+0)+0
u3070:
	moviw	fsr1++
	movwi	fsr0++
	decfsz	(??_putdec_UARTb+0)+0,f
	goto	u3070
	line	133
	
l3433:	
;uart_16f1827.c: 133: if(dec < 0){
	btfss	(putdec_UARTb@dec+1),7
	goto	u3081
	goto	u3080
u3081:
	goto	l3439
u3080:
	line	134
	
l3435:	
;uart_16f1827.c: 134: set_data_buff('-');
	movlw	low(02Dh)
	fcall	_set_data_buff
	line	135
	
l3437:	
;uart_16f1827.c: 135: dec *= -1;
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	movlw	0FFh
	movwf	((___wmul@multiplier))+1
	movf	(putdec_UARTb@dec+1),w
	movwf	(___wmul@multiplicand+1)
	movf	(putdec_UARTb@dec),w
	movwf	(___wmul@multiplicand)
	fcall	___wmul
	movlb 0	; select bank0
	movf	(1+(?___wmul)),w
	movwf	(putdec_UARTb@dec+1)
	movf	(0+(?___wmul)),w
	movwf	(putdec_UARTb@dec)
	goto	l3439
	line	136
	
l584:	
	line	147
	
l3439:	
;uart_16f1827.c: 136: }
;uart_16f1827.c: 147: if(dec == 0){
	movf	((putdec_UARTb@dec)),w
iorwf	((putdec_UARTb@dec+1)),w
	btfss	status,2
	goto	u3091
	goto	u3090
u3091:
	goto	l3449
u3090:
	line	148
	
l3441:	
;uart_16f1827.c: 148: set_data_buff('0');
	movlw	low(030h)
	fcall	_set_data_buff
	goto	l3449
	line	149
	
l585:	
	line	150
;uart_16f1827.c: 149: }
;uart_16f1827.c: 150: while(dec != 0){
	goto	l3449
	
l587:	
	line	151
	
l3443:	
;uart_16f1827.c: 151: dec_buff[cnt] = dec % 10;
	movlw	0Ah
	movlb 0	; select bank0
	movwf	(___awmod@divisor)
	movlw	0
	movwf	((___awmod@divisor))+1
	movf	(putdec_UARTb@dec+1),w
	movwf	(___awmod@dividend+1)
	movf	(putdec_UARTb@dec),w
	movwf	(___awmod@dividend)
	fcall	___awmod
	movlb 0	; select bank0
	movf	(0+(?___awmod)),w
	movwf	(??_putdec_UARTb+0)+0
	movf	(putdec_UARTb@cnt),w
	addlw	low(putdec_UARTb@dec_buff|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_putdec_UARTb+0)+0,w
	movwf	indf1
	line	152
	
l3445:	
;uart_16f1827.c: 152: dec /= 10;
	movlw	0Ah
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(putdec_UARTb@dec+1),w
	movwf	(___awdiv@dividend+1)
	movf	(putdec_UARTb@dec),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	movlb 0	; select bank0
	movf	(1+(?___awdiv)),w
	movwf	(putdec_UARTb@dec+1)
	movf	(0+(?___awdiv)),w
	movwf	(putdec_UARTb@dec)
	line	153
	
l3447:	
;uart_16f1827.c: 153: cnt++;
	movlw	01h
	addwf	(putdec_UARTb@cnt),f
	movlw	0
	addwfc	(putdec_UARTb@cnt+1),f
	goto	l3449
	line	154
	
l586:	
	line	150
	
l3449:	
	movlb 0	; select bank0
	movf	((putdec_UARTb@dec)),w
iorwf	((putdec_UARTb@dec+1)),w
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l3443
u3100:
	goto	l3451
	
l588:	
	line	155
	
l3451:	
;uart_16f1827.c: 154: }
;uart_16f1827.c: 155: for(i = cnt - 1; i >= 0; i--){
	movf	(putdec_UARTb@cnt),w
	addlw	0FFh
	movwf	(putdec_UARTb@i)
	movlw	0FFh
	addwfc	(putdec_UARTb@cnt+1),w
	movwf	1+(putdec_UARTb@i)
	
l3453:	
	btfss	(putdec_UARTb@i+1),7
	goto	u3111
	goto	u3110
u3111:
	goto	l3457
u3110:
	goto	l590
	
l3455:	
	goto	l590
	
l589:	
	line	156
	
l3457:	
;uart_16f1827.c: 156: set_data_buff(dec_buff[i] + 48);
	movf	(putdec_UARTb@i),w
	addlw	low(putdec_UARTb@dec_buff|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	addlw	030h
	fcall	_set_data_buff
	line	155
	
l3459:	
	movlw	0FFh
	movlb 0	; select bank0
	addwf	(putdec_UARTb@i),f
	movlw	0FFh
	addwfc	(putdec_UARTb@i+1),f
	
l3461:	
	btfss	(putdec_UARTb@i+1),7
	goto	u3121
	goto	u3120
u3121:
	goto	l3457
u3120:
	
l590:	
	line	158
;uart_16f1827.c: 157: }
;uart_16f1827.c: 158: TXIE = 1;
	movlb 1	; select bank1
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	160
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_putdec_UARTb
	__end_of_putdec_UARTb:
	signat	_putdec_UARTb,4216
	global	_set_data_buff

;; *************** function _set_data_buff *****************
;; Defined at:
;;		line 106 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_puts_UART
;; This function is called by:
;;		_puts_UARTb
;;		_putdec_UARTb
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	106
global __ptext7
__ptext7:	;psect for function _set_data_buff
psect	text7
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	106
	global	__size_of_set_data_buff
	__size_of_set_data_buff	equ	__end_of_set_data_buff-_set_data_buff
	
_set_data_buff:	
;incstack = 0
	opt	stack 10
; Regs used in _set_data_buff: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;set_data_buff@data stored from wreg
	movlb 0	; select bank0
	movwf	(set_data_buff@data)
	line	107
	
l3173:	
;uart_16f1827.c: 107: TXIE = 0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	108
	
l3175:	
;uart_16f1827.c: 108: u1txbuff.txdata[u1txbuff.end] = data;
	movlb 0	; select bank0
	movf	(set_data_buff@data),w
	movwf	(??_set_data_buff+0)+0
	movlb 2	; select bank2
	movf	0+(_u1txbuff)^0100h+033h,w
	addlw	low(_u1txbuff|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(??_set_data_buff+0)+0,w
	movwf	indf1
	line	110
	
l3177:	
;uart_16f1827.c: 110: u1txbuff.end++;
	movlw	low(01h)
	movwf	(??_set_data_buff+0)+0
	movf	(??_set_data_buff+0)+0,w
	movlb 2	; select bank2
	addwf	0+(_u1txbuff)^0100h+033h,f
	line	111
	
l3179:	
;uart_16f1827.c: 111: if(u1txbuff.end >= 50){
	movlw	low(032h)
	subwf	0+(_u1txbuff)^0100h+033h,w
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l3183
u2660:
	line	112
	
l3181:	
;uart_16f1827.c: 112: u1txbuff.end = 0;
	clrf	0+(_u1txbuff)^0100h+033h
	goto	l3183
	line	113
	
l577:	
	line	114
	
l3183:	
;uart_16f1827.c: 113: }
;uart_16f1827.c: 114: if(u1txbuff.end == u1txbuff.head){
	movf	0+(_u1txbuff)^0100h+033h,w
	xorwf	0+(_u1txbuff)^0100h+032h,w
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l579
u2670:
	line	117
	
l3185:	
;uart_16f1827.c: 117: puts_UART("\r\nTX speed over!\r\n");
	movlw	low(((STR_8)|8000h))
	movlb 0	; select bank0
	movwf	(puts_UART@str)
	movlw	high(((STR_8)|8000h))
	movwf	((puts_UART@str))+1
	fcall	_puts_UART
	line	118
	
l3187:	
;uart_16f1827.c: 118: u1txbuff.end--;
	movlw	01h
	movlb 2	; select bank2
	subwf	0+(_u1txbuff)^0100h+033h,f
	goto	l579
	line	123
	
l578:	
	line	125
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_set_data_buff
	__end_of_set_data_buff:
	signat	_set_data_buff,4216
	global	_puts_UART

;; *************** function _puts_UART *****************
;; Defined at:
;;		line 73 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
;; Parameters:    Size  Location     Type
;;  str             2    0[BANK0 ] PTR unsigned char 
;;		 -> STR_8(19), 
;; Auto vars:     Size  Location     Type
;;  txie            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       2       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       3       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_putc_UART
;; This function is called by:
;;		_set_data_buff
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	73
global __ptext8
__ptext8:	;psect for function _puts_UART
psect	text8
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	73
	global	__size_of_puts_UART
	__size_of_puts_UART	equ	__end_of_puts_UART-_puts_UART
	
_puts_UART:	
;incstack = 0
	opt	stack 10
; Regs used in _puts_UART: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	75
	
l3053:	
;uart_16f1827.c: 74: unsigned char txie;
;uart_16f1827.c: 75: txie = TXIE;
	movlw	0
	movlb 1	; select bank1
	btfsc	(1164/8)^080h,(1164)&7	;volatile
	movlw	1
	movlb 0	; select bank0
	movwf	(puts_UART@txie)
	line	76
	
l3055:	
;uart_16f1827.c: 76: TXIE = 0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	77
;uart_16f1827.c: 77: while(*str != 0){
	goto	l3061
	
l566:	
	line	78
	
l3057:	
;uart_16f1827.c: 78: putc_UART(*str);
	movlb 0	; select bank0
	movf	(puts_UART@str),w
	movwf	fsr0l
	movf	((puts_UART@str+1)),w
	movwf	fsr0h
	movf	indf0,w ;code access
	fcall	_putc_UART
	line	79
	
l3059:	
;uart_16f1827.c: 79: str++;
	movlw	01h
	movlb 0	; select bank0
	addwf	(puts_UART@str),f
	movlw	0
	addwfc	(puts_UART@str+1),f
	goto	l3061
	line	80
	
l565:	
	line	77
	
l3061:	
	movlb 0	; select bank0
	movf	(puts_UART@str),w
	movwf	fsr0l
	movf	((puts_UART@str+1)),w
	movwf	fsr0h
	moviw	fsr0++
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l3057
u2610:
	
l567:	
	line	81
;uart_16f1827.c: 80: }
;uart_16f1827.c: 81: TXIE = txie;
	btfsc	(puts_UART@txie),0
	goto	u2621
	goto	u2620
	
u2621:
	movlb 1	; select bank1
	bsf	(1164/8)^080h,(1164)&7	;volatile
	goto	u2634
u2620:
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
u2634:
	line	82
	
l568:	
	return
	opt stack 0
GLOBAL	__end_of_puts_UART
	__end_of_puts_UART:
	signat	_puts_UART,4216
	global	_putc_UART

;; *************** function _putc_UART *****************
;; Defined at:
;;		line 59 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_puts_UART
;;		_data_send
;;		_putdec_UART
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	59
global __ptext9
__ptext9:	;psect for function _putc_UART
psect	text9
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	59
	global	__size_of_putc_UART
	__size_of_putc_UART	equ	__end_of_putc_UART-_putc_UART
	
_putc_UART:	
;incstack = 0
	opt	stack 10
; Regs used in _putc_UART: [wreg]
;putc_UART@data stored from wreg
	movwf	(putc_UART@data)
	line	61
	
l3009:	
;uart_16f1827.c: 61: TXIE = 0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	63
;uart_16f1827.c: 63: while(!TXIF);
	goto	l559
	
l560:	
	
l559:	
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u2521
	goto	u2520
u2521:
	goto	l559
u2520:
	goto	l3011
	
l561:	
	line	65
	
l3011:	
;uart_16f1827.c: 65: TXREG = data;
	movf	(putc_UART@data),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	66
	
l562:	
	return
	opt stack 0
GLOBAL	__end_of_putc_UART
	__end_of_putc_UART:
	signat	_putc_UART,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       4       0       0       0       0
;;      Locals:         2       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         2       4       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_putdec_UARTb
;;		_putdec_UART
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul16.c"
	line	15
global __ptext10
__ptext10:	;psect for function ___wmul
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 12
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l3189:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l3191
	line	44
	
l686:	
	line	45
	
l3191:	
	movlb 0	; select bank0
	btfss	(___wmul@multiplier),(0)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l687
u2680:
	line	46
	
l3193:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	
l687:	
	line	47
	movlw	01h
	
u2695:
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	decfsz	wreg,f
	goto	u2695
	line	48
	
l3195:	
	movlw	01h
	
u2705:
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	decfsz	wreg,f
	goto	u2705
	line	49
	
l3197:	
	movf	((___wmul@multiplier)),w
iorwf	((___wmul@multiplier+1)),w
	btfss	status,2
	goto	u2711
	goto	u2710
u2711:
	goto	l3191
u2710:
	goto	l3199
	
l688:	
	line	52
	
l3199:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	goto	l689
	
l3201:	
	line	53
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awmod.c"
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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       4       0       0       0       0
;;      Locals:         0       2       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       6       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_putdec_UARTb
;;		_putdec_UART
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awmod.c"
	line	6
global __ptext11
__ptext11:	;psect for function ___awmod
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 12
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l3247:	
	movlb 0	; select bank0
	clrf	(___awmod@sign)
	line	14
	
l3249:	
	btfss	(___awmod@dividend+1),7
	goto	u2821
	goto	u2820
u2821:
	goto	l3255
u2820:
	line	15
	
l3251:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l3253:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l3255
	line	17
	
l822:	
	line	18
	
l3255:	
	btfss	(___awmod@divisor+1),7
	goto	u2831
	goto	u2830
u2831:
	goto	l3259
u2830:
	line	19
	
l3257:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3259
	
l823:	
	line	20
	
l3259:	
	movf	((___awmod@divisor)),w
iorwf	((___awmod@divisor+1)),w
	btfsc	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l3277
u2840:
	line	21
	
l3261:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l3267
	
l826:	
	line	23
	
l3263:	
	movlw	01h
	
u2855:
	lslf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	decfsz	wreg,f
	goto	u2855
	line	24
	
l3265:	
	movlw	low(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3267
	line	25
	
l825:	
	line	22
	
l3267:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l3263
u2860:
	goto	l3269
	
l827:	
	goto	l3269
	line	26
	
l828:	
	line	27
	
l3269:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2875
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2875:
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l3273
u2870:
	line	28
	
l3271:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	subwfb	(___awmod@dividend+1),f
	goto	l3273
	
l829:	
	line	29
	
l3273:	
	movlw	01h
	
u2885:
	lsrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	decfsz	wreg,f
	goto	u2885
	line	30
	
l3275:	
	movlw	01h
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2891
	goto	u2890
u2891:
	goto	l3269
u2890:
	goto	l3277
	
l830:	
	goto	l3277
	line	31
	
l824:	
	line	32
	
l3277:	
	movf	((___awmod@sign)),w
	btfsc	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l3281
u2900:
	line	33
	
l3279:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3281
	
l831:	
	line	34
	
l3281:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	goto	l832
	
l3283:	
	line	35
	
l832:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awdiv.c"
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
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       4       0       0       0       0
;;      Locals:         0       4       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         1       8       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_putdec_UARTb
;;		_putdec_UART
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awdiv.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___awdiv
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 12
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l3203:	
	movlb 0	; select bank0
	clrf	(___awdiv@sign)
	line	15
	
l3205:	
	btfss	(___awdiv@divisor+1),7
	goto	u2721
	goto	u2720
u2721:
	goto	l3211
u2720:
	line	16
	
l3207:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l3209:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l3211
	line	18
	
l809:	
	line	19
	
l3211:	
	btfss	(___awdiv@dividend+1),7
	goto	u2731
	goto	u2730
u2731:
	goto	l3217
u2730:
	line	20
	
l3213:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l3215:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3217
	line	22
	
l810:	
	line	23
	
l3217:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l3219:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u2741
	goto	u2740
u2741:
	goto	l3239
u2740:
	line	25
	
l3221:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l3227
	
l813:	
	line	27
	
l3223:	
	movlw	01h
	
u2755:
	lslf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	decfsz	wreg,f
	goto	u2755
	line	28
	
l3225:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3227
	line	29
	
l812:	
	line	26
	
l3227:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l3223
u2760:
	goto	l3229
	
l814:	
	goto	l3229
	line	30
	
l815:	
	line	31
	
l3229:	
	movlw	01h
	
u2775:
	lslf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	decfsz	wreg,f
	goto	u2775
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2785
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2785:
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l3235
u2780:
	line	33
	
l3231:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	subwfb	(___awdiv@dividend+1),f
	line	34
	
l3233:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3235
	line	35
	
l816:	
	line	36
	
l3235:	
	movlw	01h
	
u2795:
	lsrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	decfsz	wreg,f
	goto	u2795
	line	37
	
l3237:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l3229
u2800:
	goto	l3239
	
l817:	
	goto	l3239
	line	38
	
l811:	
	line	39
	
l3239:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u2811
	goto	u2810
u2811:
	goto	l3243
u2810:
	line	40
	
l3241:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3243
	
l818:	
	line	41
	
l3243:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	goto	l819
	
l3245:	
	line	42
	
l819:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_Init

;; *************** function _Init *****************
;; Defined at:
;;		line 339 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  eccp_config     3   10[BANK0 ] struct _eccp_config_st
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_AD_Init
;;		_ECCP1_Init
;;		_ECCP2_Init
;;		_TMR4_Interrupt_set
;;		_UART_Init
;;		_eccp_config_param_init
;;		_tmr0_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	339
global __ptext13
__ptext13:	;psect for function _Init
psect	text13
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	339
	global	__size_of_Init
	__size_of_Init	equ	__end_of_Init-_Init
	
_Init:	
;incstack = 0
	opt	stack 11
; Regs used in _Init: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	340
	
l3369:	
;newmain.c: 340: OSCCONbits.IRCF = 0b1110;
	movlb 1	; select bank1
	movf	(153)^080h,w	;volatile
	andlw	not (((1<<4)-1)<<3)
	iorlw	(0Eh & ((1<<4)-1))<<3
	movwf	(153)^080h	;volatile
	line	345
	
l3371:	
;newmain.c: 345: TRISA = 0b11110011;
	movlw	low(0F3h)
	movwf	(140)^080h	;volatile
	line	346
	
l3373:	
;newmain.c: 346: TRISB = 0b11111111;
	movlw	low(0FFh)
	movwf	(141)^080h	;volatile
	line	347
	
l3375:	
;newmain.c: 347: ANSELA = 0b00010011;
	movlw	low(013h)
	movlb 3	; select bank3
	movwf	(396)^0180h	;volatile
	line	349
	
l3377:	
;newmain.c: 349: LATA = 0b11111011;
	movlw	low(0FBh)
	movlb 2	; select bank2
	movwf	(268)^0100h	;volatile
	line	350
	
l3379:	
;newmain.c: 350: LATB = 0b11111111;
	movlw	low(0FFh)
	movwf	(269)^0100h	;volatile
	line	353
	
l3381:	
;newmain.c: 352: struct _eccp_config_st eccp_config;
;newmain.c: 353: eccp_config_param_init(&eccp_config);
	movlw	(low(Init@eccp_config|((0x0)<<8)))&0ffh
	fcall	_eccp_config_param_init
	line	354
	
l3383:	
;newmain.c: 354: eccp_config.PR_Value = 0xff/2;
	movlw	low(07Fh)
	movlb 0	; select bank0
	movwf	(??_Init+0)+0
	movf	(??_Init+0)+0,w
	movwf	(Init@eccp_config)
	line	355
	
l3385:	
;newmain.c: 355: eccp_config.CCPnM = 0b1111;
	movlw	low(0Fh)
	movwf	(??_Init+0)+0
	movf	(??_Init+0)+0,w
	movwf	0+(Init@eccp_config)+01h
	line	356
	
l3387:	
;newmain.c: 356: eccp_config.PnM = 0b10;
	movlw	low(02h)
	movwf	(??_Init+0)+0
	movf	(??_Init+0)+0,w
	movwf	0+(Init@eccp_config)+02h
	line	357
	
l3389:	
;newmain.c: 357: ECCP2_Init(&eccp_config);
	movlw	(low(Init@eccp_config|((0x0)<<8)))&0ffh
	fcall	_ECCP2_Init
	line	358
	
l3391:	
;newmain.c: 358: ECCP1_Init(&eccp_config);
	movlw	(low(Init@eccp_config|((0x0)<<8)))&0ffh
	fcall	_ECCP1_Init
	line	359
	
l3393:	
;newmain.c: 359: TMR4_Interrupt_set(0b1001);
	movlw	low(09h)
	fcall	_TMR4_Interrupt_set
	line	361
	
l3395:	
;newmain.c: 361: TRISAbits.TRISA1 = 1;
	movlb 1	; select bank1
	bsf	(140)^080h,1	;volatile
	line	362
	
l3397:	
;newmain.c: 362: ANSELAbits.ANSA1 = 1;
	movlb 3	; select bank3
	bsf	(396)^0180h,1	;volatile
	line	365
	
l3399:	
;newmain.c: 365: AD_Init();
	fcall	_AD_Init
	line	368
	
l3401:	
;newmain.c: 368: OSCTUNEbits.TUN = 0;
	movlw	((0 & ((1<<6)-1))<<0)|not (((1<<6)-1)<<0)
	movlb 1	; select bank1
	andwf	(152)^080h,f	;volatile
	line	369
	
l3403:	
;newmain.c: 369: tmr0_Init();
	fcall	_tmr0_Init
	line	371
	
l3405:	
;newmain.c: 371: UART_Init();
	fcall	_UART_Init
	line	372
	
l3407:	
;newmain.c: 372: LATA2 = 1;
	movlb 2	; select bank2
	bsf	(2146/8)^0100h,(2146)&7	;volatile
	line	373
	
l3409:	
;newmain.c: 373: LATA3 = 0;
	bcf	(2147/8)^0100h,(2147)&7	;volatile
	line	374
	
l424:	
	return
	opt stack 0
GLOBAL	__end_of_Init
	__end_of_Init:
	signat	_Init,88
	global	_tmr0_Init

;; *************** function _tmr0_Init *****************
;; Defined at:
;;		line 5 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\tmr0.c"
;; Parameters:    Size  Location     Type
;;		None
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\tmr0.c"
	line	5
global __ptext14
__ptext14:	;psect for function _tmr0_Init
psect	text14
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\tmr0.c"
	line	5
	global	__size_of_tmr0_Init
	__size_of_tmr0_Init	equ	__end_of_tmr0_Init-_tmr0_Init
	
_tmr0_Init:	
;incstack = 0
	opt	stack 12
; Regs used in _tmr0_Init: [wreg+status,2+status,0]
	line	6
	
l3123:	
;tmr0.c: 6: TMR0CS = 0;
	movlb 1	; select bank1
	bcf	(1197/8)^080h,(1197)&7	;volatile
	line	7
;tmr0.c: 7: PSA = 0;
	bcf	(1195/8)^080h,(1195)&7	;volatile
	line	8
	
l3125:	
;tmr0.c: 8: OPTION_REGbits.PS = 0b111;
	movlw	(07h & ((1<<3)-1))<<0
	iorwf	(149)^080h,f	;volatile
	line	10
	
l3127:	
;tmr0.c: 10: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	11
	
l3129:	
;tmr0.c: 11: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	12
	
l3131:	
;tmr0.c: 12: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	13
	
l496:	
	return
	opt stack 0
GLOBAL	__end_of_tmr0_Init
	__end_of_tmr0_Init:
	signat	_tmr0_Init,88
	global	_eccp_config_param_init

;; *************** function _eccp_config_param_init *****************
;; Defined at:
;;		line 125 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
;; Parameters:    Size  Location     Type
;;  eccp_config     1    wreg     PTR struct _eccp_config_
;;		 -> Init@eccp_config(3), 
;; Auto vars:     Size  Location     Type
;;  eccp_config     1    5[COMMON] PTR struct _eccp_config_
;;		 -> Init@eccp_config(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
	line	125
global __ptext15
__ptext15:	;psect for function _eccp_config_param_init
psect	text15
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
	line	125
	global	__size_of_eccp_config_param_init
	__size_of_eccp_config_param_init	equ	__end_of_eccp_config_param_init-_eccp_config_param_init
	
_eccp_config_param_init:	
;incstack = 0
	opt	stack 12
; Regs used in _eccp_config_param_init: [wreg+fsr1l+fsr1h+status,2+status,0]
;eccp_config_param_init@eccp_config stored from wreg
	movwf	(eccp_config_param_init@eccp_config)
	line	126
	
l3115:	
;ECCP.c: 126: eccp_config->PR_Value = 0xff;
	movlw	low(0FFh)
	movwf	(??_eccp_config_param_init+0)+0
	movf	(eccp_config_param_init@eccp_config),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_eccp_config_param_init+0)+0,w
	movwf	indf1
	line	127
;ECCP.c: 127: eccp_config->CCPnM = 0b1100;
	movlw	low(0Ch)
	movwf	(??_eccp_config_param_init+0)+0
	incf	(eccp_config_param_init@eccp_config),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??_eccp_config_param_init+0)+0,w
	movwf	indf1
	line	128
	
l3117:	
;ECCP.c: 128: eccp_config->PnM = 0b00;
	movf	(eccp_config_param_init@eccp_config),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	clrf	indf1
	line	129
	
l212:	
	return
	opt stack 0
GLOBAL	__end_of_eccp_config_param_init
	__end_of_eccp_config_param_init:
	signat	_eccp_config_param_init,4216
	global	_UART_Init

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 20 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	20
global __ptext16
__ptext16:	;psect for function _UART_Init
psect	text16
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	20
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:	
;incstack = 0
	opt	stack 12
; Regs used in _UART_Init: [wreg+status,2]
	line	22
	
l3133:	
;uart_16f1827.c: 22: BRGH = 1;
	movlb 3	; select bank3
	bsf	(3314/8)^0180h,(3314)&7	;volatile
	line	23
	
l3135:	
;uart_16f1827.c: 23: SPBRGH = 0;
	clrf	(412)^0180h	;volatile
	line	24
	
l3137:	
;uart_16f1827.c: 24: SPBRGL = 103;
	movlw	low(067h)
	movwf	(411)^0180h	;volatile
	line	30
	
l3139:	
;uart_16f1827.c: 30: BRG16 = 0;
	bcf	(3323/8)^0180h,(3323)&7	;volatile
	line	31
	
l3141:	
;uart_16f1827.c: 31: SYNC = 0;
	bcf	(3316/8)^0180h,(3316)&7	;volatile
	line	32
	
l3143:	
;uart_16f1827.c: 32: SPEN = 1;
	bsf	(3311/8)^0180h,(3311)&7	;volatile
	line	33
	
l3145:	
;uart_16f1827.c: 33: TX9 = 0;
	bcf	(3318/8)^0180h,(3318)&7	;volatile
	line	34
	
l3147:	
;uart_16f1827.c: 34: TXEN = 1;
	bsf	(3317/8)^0180h,(3317)&7	;volatile
	line	35
	
l3149:	
;uart_16f1827.c: 35: SENDB = 0;
	bcf	(3315/8)^0180h,(3315)&7	;volatile
	line	37
	
l3151:	
;uart_16f1827.c: 37: APFCON1bits.TXCKSEL = 0;
	movlb 2	; select bank2
	bcf	(286)^0100h,0	;volatile
	line	38
	
l3153:	
;uart_16f1827.c: 38: TRISBbits.TRISB2 = 1;
	movlb 1	; select bank1
	bsf	(141)^080h,2	;volatile
	line	41
	
l3155:	
;uart_16f1827.c: 41: APFCON0bits.RXDTSEL = 0;
	movlb 2	; select bank2
	bcf	(285)^0100h,7	;volatile
	line	42
	
l3157:	
;uart_16f1827.c: 42: TRISBbits.TRISB1 = 1;
	movlb 1	; select bank1
	bsf	(141)^080h,1	;volatile
	line	43
	
l3159:	
;uart_16f1827.c: 43: ANSELBbits.ANSB1 = 0;
	movlb 3	; select bank3
	bcf	(397)^0180h,1	;volatile
	line	44
	
l3161:	
;uart_16f1827.c: 44: CREN = 1;
	bsf	(3308/8)^0180h,(3308)&7	;volatile
	line	48
	
l3163:	
;uart_16f1827.c: 48: RCIE = 1;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	49
	
l3165:	
;uart_16f1827.c: 49: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	50
	
l3167:	
;uart_16f1827.c: 50: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	53
	
l3169:	
;uart_16f1827.c: 53: u1txbuff.head = 0;
	movlb 2	; select bank2
	clrf	0+(_u1txbuff)^0100h+032h
	line	54
	
l3171:	
;uart_16f1827.c: 54: u1txbuff.end = 0;
	clrf	0+(_u1txbuff)^0100h+033h
	line	57
	
l556:	
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
	signat	_UART_Init,88
	global	_TMR4_Interrupt_set

;; *************** function _TMR4_Interrupt_set *****************
;; Defined at:
;;		line 88 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
;; Parameters:    Size  Location     Type
;;  ps              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ps              1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
	line	88
global __ptext17
__ptext17:	;psect for function _TMR4_Interrupt_set
psect	text17
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
	line	88
	global	__size_of_TMR4_Interrupt_set
	__size_of_TMR4_Interrupt_set	equ	__end_of_TMR4_Interrupt_set-_TMR4_Interrupt_set
	
_TMR4_Interrupt_set:	
;incstack = 0
	opt	stack 12
; Regs used in _TMR4_Interrupt_set: [wreg+status,2+status,0]
;TMR4_Interrupt_set@ps stored from wreg
	movwf	(TMR4_Interrupt_set@ps)
	line	91
	
l3111:	
;ECCP.c: 91: T4CONbits.T4OUTPS = ps;
	movf	(TMR4_Interrupt_set@ps),w
	movwf	(??_TMR4_Interrupt_set+0)+0
	rlf	(??_TMR4_Interrupt_set+0)+0,f
	rlf	(??_TMR4_Interrupt_set+0)+0,f
	rlf	(??_TMR4_Interrupt_set+0)+0,f
	movlb 8	; select bank8
	movf	(1047)^0400h,w	;volatile
	xorwf	(??_TMR4_Interrupt_set+0)+0,w
	andlw	not (((1<<4)-1)<<3)
	xorwf	(??_TMR4_Interrupt_set+0)+0,w
	movwf	(1047)^0400h	;volatile
	line	92
	
l3113:	
;ECCP.c: 92: TMR4IE = 1;
	movlb 1	; select bank1
	bsf	(1177/8)^080h,(1177)&7	;volatile
	line	93
	
l186:	
	return
	opt stack 0
GLOBAL	__end_of_TMR4_Interrupt_set
	__end_of_TMR4_Interrupt_set:
	signat	_TMR4_Interrupt_set,4216
	global	_ECCP2_Init

;; *************** function _ECCP2_Init *****************
;; Defined at:
;;		line 59 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
;; Parameters:    Size  Location     Type
;;  eccp_config     1    wreg     PTR struct _eccp_config_
;;		 -> Init@eccp_config(3), 
;; Auto vars:     Size  Location     Type
;;  eccp_config     1    8[BANK0 ] PTR struct _eccp_config_
;;		 -> Init@eccp_config(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_set_PWM_duty
;; This function is called by:
;;		_Init
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	59
global __ptext18
__ptext18:	;psect for function _ECCP2_Init
psect	text18
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
	line	59
	global	__size_of_ECCP2_Init
	__size_of_ECCP2_Init	equ	__end_of_ECCP2_Init-_ECCP2_Init
	
_ECCP2_Init:	
;incstack = 0
	opt	stack 11
; Regs used in _ECCP2_Init: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;ECCP2_Init@eccp_config stored from wreg
	movlb 0	; select bank0
	movwf	(ECCP2_Init@eccp_config)
	line	60
	
l3091:	
;ECCP.c: 60: APFCON0bits.CCP2SEL = 1;
	movlb 2	; select bank2
	bsf	(285)^0100h,3	;volatile
	line	61
;ECCP.c: 61: APFCON0bits.P2BSEL = 1;
	bsf	(285)^0100h,4	;volatile
	line	65
;ECCP.c: 65: TRISAbits.TRISA7 = 1;
	movlb 1	; select bank1
	bsf	(140)^080h,7	;volatile
	line	66
;ECCP.c: 66: TRISAbits.TRISA6 = 1;
	bsf	(140)^080h,6	;volatile
	line	68
	
l3093:	
;ECCP.c: 68: PR4 = eccp_config->PR_Value;
	movlb 0	; select bank0
	movf	(ECCP2_Init@eccp_config),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 8	; select bank8
	movwf	(1046)^0400h	;volatile
	line	70
	
l3095:	
;ECCP.c: 70: CCP2CONbits.CCP2M = eccp_config->CCPnM;
	movlb 0	; select bank0
	incf	(ECCP2_Init@eccp_config),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 5	; select bank5
	movf	(666)^0280h,w	;volatile
	xorwf	indf1,w
	andlw	not ((1<<4)-1)
	xorwf	indf1,w
	movwf	(666)^0280h	;volatile
	line	71
	
l3097:	
;ECCP.c: 71: CCP2CONbits.P2M = eccp_config->PnM;
	movlb 0	; select bank0
	movf	(ECCP2_Init@eccp_config),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_ECCP2_Init+0)+0
	swapf	(??_ECCP2_Init+0)+0,f
	rlf	(??_ECCP2_Init+0)+0,f
	rlf	(??_ECCP2_Init+0)+0,f
	movlb 5	; select bank5
	movf	(666)^0280h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_ECCP2_Init+0)+0,w
	andlw	not (((1<<2)-1)<<6)
	xorwf	(??_ECCP2_Init+0)+0,w
	movlb 5	; select bank5
	movwf	(666)^0280h	;volatile
	line	72
	
l3099:	
;ECCP.c: 72: CCP2ASbits.CCP2AS = 0b000;
	movlw	((0 & ((1<<3)-1))<<4)|not (((1<<3)-1)<<4)
	andwf	(668)^0280h,f	;volatile
	line	73
	
l3101:	
;ECCP.c: 73: PWM2CONbits.P2DC = 2;
	movf	(667)^0280h,w	;volatile
	andlw	not (((1<<7)-1)<<0)
	iorlw	(02h & ((1<<7)-1))<<0
	movwf	(667)^0280h	;volatile
	line	75
	
l3103:	
;ECCP.c: 75: set_PWM_duty(2, 32);
	movlw	020h
	movwf	(set_PWM_duty@duty)
	movlw	0
	movwf	((set_PWM_duty@duty))+1
	movlw	low(02h)
	fcall	_set_PWM_duty
	line	77
	
l3105:	
;ECCP.c: 77: CCPTMRSbits.C2TSEL = 01;
	movlb 5	; select bank5
	movf	(670)^0280h,w	;volatile
	andlw	not (((1<<2)-1)<<2)
	iorlw	(01h & ((1<<2)-1))<<2
	movwf	(670)^0280h	;volatile
	line	78
	
l3107:	
;ECCP.c: 78: T4CONbits.T4CKPS = 0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	movlb 8	; select bank8
	andwf	(1047)^0400h,f	;volatile
	line	79
	
l3109:	
;ECCP.c: 79: T4CONbits.TMR4ON = 1;
	bsf	(1047)^0400h,2	;volatile
	line	81
;ECCP.c: 81: while(TMR4IF == 0);
	goto	l180
	
l181:	
	
l180:	
	movlb 0	; select bank0
	btfss	(153/8),(153)&7	;volatile
	goto	u2651
	goto	u2650
u2651:
	goto	l180
u2650:
	goto	l183
	
l182:	
	line	85
	
l183:	
	return
	opt stack 0
GLOBAL	__end_of_ECCP2_Init
	__end_of_ECCP2_Init:
	signat	_ECCP2_Init,4216
	global	_ECCP1_Init

;; *************** function _ECCP1_Init *****************
;; Defined at:
;;		line 29 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
;; Parameters:    Size  Location     Type
;;  eccp_config     1    wreg     PTR struct _eccp_config_
;;		 -> Init@eccp_config(3), 
;; Auto vars:     Size  Location     Type
;;  eccp_config     1    8[BANK0 ] PTR struct _eccp_config_
;;		 -> Init@eccp_config(3), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0
;;      Temps:          0       1       0       0       0       0
;;      Totals:         0       2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_set_PWM_duty
;; This function is called by:
;;		_Init
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	29
global __ptext19
__ptext19:	;psect for function _ECCP1_Init
psect	text19
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
	line	29
	global	__size_of_ECCP1_Init
	__size_of_ECCP1_Init	equ	__end_of_ECCP1_Init-_ECCP1_Init
	
_ECCP1_Init:	
;incstack = 0
	opt	stack 11
; Regs used in _ECCP1_Init: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
;ECCP1_Init@eccp_config stored from wreg
	movlb 0	; select bank0
	movwf	(ECCP1_Init@eccp_config)
	line	30
	
l3071:	
;ECCP.c: 30: APFCON0bits.CCP1SEL = 0;
	movlb 2	; select bank2
	bcf	(285)^0100h,0	;volatile
	line	34
;ECCP.c: 34: TRISBbits.TRISB3 = 1;
	movlb 1	; select bank1
	bsf	(141)^080h,3	;volatile
	line	35
;ECCP.c: 35: TRISBbits.TRISB5 = 1;
	bsf	(141)^080h,5	;volatile
	line	37
	
l3073:	
;ECCP.c: 37: PR4 = eccp_config->PR_Value;
	movlb 0	; select bank0
	movf	(ECCP1_Init@eccp_config),w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 8	; select bank8
	movwf	(1046)^0400h	;volatile
	line	40
	
l3075:	
;ECCP.c: 40: CCP1CONbits.CCP1M = eccp_config->CCPnM;
	movlb 0	; select bank0
	incf	(ECCP1_Init@eccp_config),w
	movwf	fsr1l
	clrf fsr1h	
	
	movlb 5	; select bank5
	movf	(659)^0280h,w	;volatile
	xorwf	indf1,w
	andlw	not ((1<<4)-1)
	xorwf	indf1,w
	movwf	(659)^0280h	;volatile
	line	41
	
l3077:	
;ECCP.c: 41: CCP1CONbits.P1M = eccp_config->PnM;
	movlb 0	; select bank0
	movf	(ECCP1_Init@eccp_config),w
	addlw	02h
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movwf	(??_ECCP1_Init+0)+0
	swapf	(??_ECCP1_Init+0)+0,f
	rlf	(??_ECCP1_Init+0)+0,f
	rlf	(??_ECCP1_Init+0)+0,f
	movlb 5	; select bank5
	movf	(659)^0280h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_ECCP1_Init+0)+0,w
	andlw	not (((1<<2)-1)<<6)
	xorwf	(??_ECCP1_Init+0)+0,w
	movlb 5	; select bank5
	movwf	(659)^0280h	;volatile
	line	42
	
l3079:	
;ECCP.c: 42: CCP1ASbits.CCP1AS = 0b000;
	movlw	((0 & ((1<<3)-1))<<4)|not (((1<<3)-1)<<4)
	andwf	(661)^0280h,f	;volatile
	line	43
	
l3081:	
;ECCP.c: 43: PWM1CONbits.P1DC = 2;
	movf	(660)^0280h,w	;volatile
	andlw	not (((1<<7)-1)<<0)
	iorlw	(02h & ((1<<7)-1))<<0
	movwf	(660)^0280h	;volatile
	line	45
	
l3083:	
;ECCP.c: 45: set_PWM_duty(1, 479);
	movlw	0DFh
	movwf	(set_PWM_duty@duty)
	movlw	01h
	movwf	((set_PWM_duty@duty))+1
	movlw	low(01h)
	fcall	_set_PWM_duty
	line	47
	
l3085:	
;ECCP.c: 47: CCPTMRSbits.C1TSEL = 01;
	movlb 5	; select bank5
	movf	(670)^0280h,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	(670)^0280h	;volatile
	line	48
	
l3087:	
;ECCP.c: 48: T4CONbits.T4CKPS = 0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	movlb 8	; select bank8
	andwf	(1047)^0400h,f	;volatile
	line	49
	
l3089:	
;ECCP.c: 49: T4CONbits.TMR4ON = 1;
	bsf	(1047)^0400h,2	;volatile
	line	51
;ECCP.c: 51: while(TMR4IF == 0);
	goto	l174
	
l175:	
	
l174:	
	movlb 0	; select bank0
	btfss	(153/8),(153)&7	;volatile
	goto	u2641
	goto	u2640
u2641:
	goto	l174
u2640:
	goto	l177
	
l176:	
	line	55
	
l177:	
	return
	opt stack 0
GLOBAL	__end_of_ECCP1_Init
	__end_of_ECCP1_Init:
	signat	_ECCP1_Init,4216
	global	_set_PWM_duty

;; *************** function _set_PWM_duty *****************
;; Defined at:
;;		line 96 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
;; Parameters:    Size  Location     Type
;;  id              1    wreg     unsigned char 
;;  duty            2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  id              1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         2       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0
;;      Temps:          0       2       0       0       0       0
;;      Totals:         2       7       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_halfbridge_duty
;;		_stop_PWM
;;		_ECCP1_Init
;;		_ECCP2_Init
;;		_set_motor_power
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	96
global __ptext20
__ptext20:	;psect for function _set_PWM_duty
psect	text20
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ECCP.c"
	line	96
	global	__size_of_set_PWM_duty
	__size_of_set_PWM_duty	equ	__end_of_set_PWM_duty-_set_PWM_duty
	
_set_PWM_duty:	
;incstack = 0
	opt	stack 12
; Regs used in _set_PWM_duty: [wreg+status,2+status,0]
;set_PWM_duty@id stored from wreg
	movlb 0	; select bank0
	movwf	(set_PWM_duty@id)
	line	97
	
l3013:	
;ECCP.c: 97: duty = ((((((duty)) > ((1023)) ? ((1023)):((duty)))) > ((0)) ? ((((duty)) > ((1023)) ? ((1023)):((duty)))):((0))));
	movf	(set_PWM_duty@duty+1),w
	xorlw	80h
	movwf	(??_set_PWM_duty+0)+0
	movlw	(04h)^80h
	subwf	(??_set_PWM_duty+0)+0,w
	skipz
	goto	u2535
	movlw	0
	subwf	(set_PWM_duty@duty),w
u2535:

	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l3017
u2530:
	
l3015:	
	movf	(set_PWM_duty@duty+1),w
	movlb 0	; select bank0
	movwf	(_set_PWM_duty$524+1)
	movf	(set_PWM_duty@duty),w
	movwf	(_set_PWM_duty$524)
	goto	l196
	
l194:	
	
l3017:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(_set_PWM_duty$524)
	movlw	03h
	movwf	((_set_PWM_duty$524))+1
	
l196:	
	movf	(_set_PWM_duty$524+1),w
	xorlw	80h
	movwf	(??_set_PWM_duty+0)+0
	movlw	(0)^80h
	subwf	(??_set_PWM_duty+0)+0,w
	skipz
	goto	u2545
	movlw	01h
	subwf	(_set_PWM_duty$524),w
u2545:

	skipnc
	goto	u2541
	goto	u2540
u2541:
	goto	l3021
u2540:
	
l3019:	
	clrf	(set_PWM_duty@duty)
	clrf	(set_PWM_duty@duty+1)
	goto	l192
	
l190:	
	
l3021:	
	movf	(set_PWM_duty@duty+1),w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_set_PWM_duty+0)+0
	movlw	(04h)^80h
	subwf	(??_set_PWM_duty+0)+0,w
	skipz
	goto	u2555
	movlw	0
	subwf	(set_PWM_duty@duty),w
u2555:

	skipnc
	goto	u2551
	goto	u2550
u2551:
	goto	l3025
u2550:
	
l3023:	
	movf	(set_PWM_duty@duty+1),w
	movlb 0	; select bank0
	movwf	(_set_PWM_duty$525+1)
	movf	(set_PWM_duty@duty),w
	movwf	(_set_PWM_duty$525)
	goto	l200
	
l198:	
	
l3025:	
	movlw	0FFh
	movlb 0	; select bank0
	movwf	(_set_PWM_duty$525)
	movlw	03h
	movwf	((_set_PWM_duty$525))+1
	
l200:	
	movf	(_set_PWM_duty$525+1),w
	movwf	(set_PWM_duty@duty+1)
	movf	(_set_PWM_duty$525),w
	movwf	(set_PWM_duty@duty)
	
l192:	
	line	99
;ECCP.c: 99: if(duty < 14){
	movf	(set_PWM_duty@duty+1),w
	xorlw	80h
	movlb 0	; select bank0
	movwf	(??_set_PWM_duty+0)+0
	movlw	(0)^80h
	subwf	(??_set_PWM_duty+0)+0,w
	skipz
	goto	u2565
	movlw	0Eh
	subwf	(set_PWM_duty@duty),w
u2565:

	skipnc
	goto	u2561
	goto	u2560
u2561:
	goto	l3029
u2560:
	line	100
	
l3027:	
;ECCP.c: 100: duty = 0;
	clrf	(set_PWM_duty@duty)
	clrf	(set_PWM_duty@duty+1)
	goto	l3029
	line	101
	
l201:	
	line	103
	
l3029:	
;ECCP.c: 101: }
;ECCP.c: 103: if(id == 1){
	movlb 0	; select bank0
		decf	((set_PWM_duty@id)),w
	btfss	status,2
	goto	u2571
	goto	u2570
u2571:
	goto	l3041
u2570:
	line	104
	
l3031:	
;ECCP.c: 104: CCPR1L = (duty >> 2);
	movf	(set_PWM_duty@duty+1),w
	movwf	(??_set_PWM_duty+0)+0+1
	movf	(set_PWM_duty@duty),w
	movwf	(??_set_PWM_duty+0)+0
	rlf	(??_set_PWM_duty+0)+1,w
	rrf	(??_set_PWM_duty+0)+1,f
	rrf	(??_set_PWM_duty+0)+0,f
	rlf	(??_set_PWM_duty+0)+1,w
	rrf	(??_set_PWM_duty+0)+1,f
	rrf	(??_set_PWM_duty+0)+0,f
	movf	0+(??_set_PWM_duty+0)+0,w
	movlb 5	; select bank5
	movwf	(657)^0280h	;volatile
	line	105
	
l3033:	
;ECCP.c: 105: CCP1CONbits.DC1B = (duty & 0x03);
	movf	(set_PWM_duty@duty),w
	andlw	03h
	movlb 0	; select bank0
	movwf	(??_set_PWM_duty+0)+0
	swapf	(??_set_PWM_duty+0)+0,f
	movlb 5	; select bank5
	movf	(659)^0280h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_set_PWM_duty+0)+0,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_set_PWM_duty+0)+0,w
	movlb 5	; select bank5
	movwf	(659)^0280h	;volatile
	line	106
	
l3035:	
;ECCP.c: 106: if(duty == 0){
	movf	((set_PWM_duty@duty)),w
iorwf	((set_PWM_duty@duty+1)),w
	btfss	status,2
	goto	u2581
	goto	u2580
u2581:
	goto	l3039
u2580:
	line	107
	
l3037:	
;ECCP.c: 107: PWM1CONbits.P1DC = 0;
	movlw	((0 & ((1<<7)-1))<<0)|not (((1<<7)-1)<<0)
	andwf	(660)^0280h,f	;volatile
	line	108
;ECCP.c: 108: }
	goto	l209
	line	109
	
l203:	
	line	110
	
l3039:	
;ECCP.c: 109: else{
;ECCP.c: 110: PWM1CONbits.P1DC = 2;
	movf	(660)^0280h,w	;volatile
	andlw	not (((1<<7)-1)<<0)
	iorlw	(02h & ((1<<7)-1))<<0
	movwf	(660)^0280h	;volatile
	goto	l209
	line	111
	
l204:	
	line	112
;ECCP.c: 111: }
;ECCP.c: 112: }
	goto	l209
	line	113
	
l202:	
	
l3041:	
;ECCP.c: 113: else if(id == 2){
		movlw	2
	movlb 0	; select bank0
	xorwf	((set_PWM_duty@id)),w
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l209
u2590:
	line	114
	
l3043:	
;ECCP.c: 114: CCPR2L = (duty >> 2);
	movf	(set_PWM_duty@duty+1),w
	movwf	(??_set_PWM_duty+0)+0+1
	movf	(set_PWM_duty@duty),w
	movwf	(??_set_PWM_duty+0)+0
	rlf	(??_set_PWM_duty+0)+1,w
	rrf	(??_set_PWM_duty+0)+1,f
	rrf	(??_set_PWM_duty+0)+0,f
	rlf	(??_set_PWM_duty+0)+1,w
	rrf	(??_set_PWM_duty+0)+1,f
	rrf	(??_set_PWM_duty+0)+0,f
	movf	0+(??_set_PWM_duty+0)+0,w
	movlb 5	; select bank5
	movwf	(664)^0280h	;volatile
	line	115
	
l3045:	
;ECCP.c: 115: CCP2CONbits.DC2B = (duty & 0x03);
	movf	(set_PWM_duty@duty),w
	andlw	03h
	movlb 0	; select bank0
	movwf	(??_set_PWM_duty+0)+0
	swapf	(??_set_PWM_duty+0)+0,f
	movlb 5	; select bank5
	movf	(666)^0280h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_set_PWM_duty+0)+0,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_set_PWM_duty+0)+0,w
	movlb 5	; select bank5
	movwf	(666)^0280h	;volatile
	line	116
	
l3047:	
;ECCP.c: 116: if(duty == 0){
	movf	((set_PWM_duty@duty)),w
iorwf	((set_PWM_duty@duty+1)),w
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l3051
u2600:
	line	117
	
l3049:	
;ECCP.c: 117: PWM2CONbits.P2DC = 0;
	movlw	((0 & ((1<<7)-1))<<0)|not (((1<<7)-1)<<0)
	andwf	(667)^0280h,f	;volatile
	line	118
;ECCP.c: 118: }
	goto	l209
	line	119
	
l207:	
	line	120
	
l3051:	
;ECCP.c: 119: else{
;ECCP.c: 120: PWM2CONbits.P2DC = 2;
	movf	(667)^0280h,w	;volatile
	andlw	not (((1<<7)-1)<<0)
	iorlw	(02h & ((1<<7)-1))<<0
	movwf	(667)^0280h	;volatile
	goto	l209
	line	121
	
l208:	
	goto	l209
	line	122
	
l206:	
	goto	l209
	line	123
	
l205:	
	
l209:	
	return
	opt stack 0
GLOBAL	__end_of_set_PWM_duty
	__end_of_set_PWM_duty:
	signat	_set_PWM_duty,8312
	global	_AD_Init

;; *************** function _AD_Init *****************
;; Defined at:
;;		line 13 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ADC.c"
;; Parameters:    Size  Location     Type
;;		None
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Init
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ADC.c"
	line	13
global __ptext21
__ptext21:	;psect for function _AD_Init
psect	text21
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ADC.c"
	line	13
	global	__size_of_AD_Init
	__size_of_AD_Init	equ	__end_of_AD_Init-_AD_Init
	
_AD_Init:	
;incstack = 0
	opt	stack 12
; Regs used in _AD_Init: [wreg+status,2+status,0]
	line	14
	
l3063:	
;ADC.c: 14: ADCON1bits.ADCS = 0b101;
	movlb 1	; select bank1
	movf	(158)^080h,w	;volatile
	andlw	not (((1<<3)-1)<<4)
	iorlw	(05h & ((1<<3)-1))<<4
	movwf	(158)^080h	;volatile
	line	15
	
l3065:	
;ADC.c: 15: ADCON1bits.ADNREF = 0;
	bcf	(158)^080h,2	;volatile
	line	16
;ADC.c: 16: ADCON1bits.ADPREF = 0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(158)^080h,f	;volatile
	line	17
	
l3067:	
;ADC.c: 17: ADCON1bits.ADFM = 1;
	bsf	(158)^080h,7	;volatile
	line	18
	
l3069:	
;ADC.c: 18: ADCON0bits.ADON = 1;
	bsf	(157)^080h,0	;volatile
	line	19
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_AD_Init
	__end_of_AD_Init:
	signat	_AD_Init,88
	global	_Get_AD_data

;; *************** function _Get_AD_data *****************
;; Defined at:
;;		line 22 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ADC.c"
;; Parameters:    Size  Location     Type
;;  chs             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  chs             1    3[BANK0 ] unsigned char 
;;  data            2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         2       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0
;;      Temps:          0       3       0       0       0       0
;;      Totals:         2       6       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	22
global __ptext22
__ptext22:	;psect for function _Get_AD_data
psect	text22
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\ADC.c"
	line	22
	global	__size_of_Get_AD_data
	__size_of_Get_AD_data	equ	__end_of_Get_AD_data-_Get_AD_data
	
_Get_AD_data:	
;incstack = 0
	opt	stack 13
; Regs used in _Get_AD_data: [wreg+status,2+status,0]
;Get_AD_data@chs stored from wreg
	movlb 0	; select bank0
	movwf	(Get_AD_data@chs)
	line	24
	
l3285:	
;ADC.c: 23: unsigned int data;
;ADC.c: 24: ADCON0bits.CHS = chs;
	movf	(Get_AD_data@chs),w
	movwf	(??_Get_AD_data+0)+0
	rlf	(??_Get_AD_data+0)+0,f
	rlf	(??_Get_AD_data+0)+0,f
	movlb 1	; select bank1
	movf	(157)^080h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_Get_AD_data+0)+0,w
	andlw	not (((1<<5)-1)<<2)
	xorwf	(??_Get_AD_data+0)+0,w
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	25
	
l3287:	
;ADC.c: 25: _delay((unsigned long)((20)*(32000000/4000000.0)));
	opt asmopt_off
movlw	53
	movlb 0	; select bank0
movwf	(??_Get_AD_data+0)+0,f
u3547:
decfsz	(??_Get_AD_data+0)+0,f
	goto	u3547
opt asmopt_on

	line	26
	
l3289:	
;ADC.c: 26: ADCON0bits.GO_nDONE = 1;
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	27
;ADC.c: 27: while(ADCON0bits.GO_nDONE);
	goto	l16
	
l17:	
	
l16:	
	btfsc	(157)^080h,1	;volatile
	goto	u2911
	goto	u2910
u2911:
	goto	l16
u2910:
	goto	l3291
	
l18:	
	line	28
	
l3291:	
;ADC.c: 28: data = ADRESL;
	movf	(155)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Get_AD_data+0)+0
	clrf	(??_Get_AD_data+0)+0+1
	movf	0+(??_Get_AD_data+0)+0,w
	movwf	(Get_AD_data@data)
	movf	1+(??_Get_AD_data+0)+0,w
	movwf	(Get_AD_data@data+1)
	line	29
;ADC.c: 29: data += (ADRESH << 8);
	movlb 1	; select bank1
	movf	(156)^080h,w	;volatile
	movlb 0	; select bank0
	movwf	(??_Get_AD_data+0)+0
	clrf	(??_Get_AD_data+0)+0+1
	movf	(??_Get_AD_data+0)+0,w
	movwf	(??_Get_AD_data+0)+1
	clrf	(??_Get_AD_data+0)+0
	movf	0+(??_Get_AD_data+0)+0,w
	addwf	(Get_AD_data@data),f
	movf	1+(??_Get_AD_data+0)+0,w
	addwfc	(Get_AD_data@data+1),f
	line	30
;ADC.c: 30: return data;
	movf	(Get_AD_data@data+1),w
	movwf	(?_Get_AD_data+1)
	movf	(Get_AD_data@data),w
	movwf	(?_Get_AD_data)
	goto	l19
	
l3293:	
	line	31
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_Get_AD_data
	__end_of_Get_AD_data:
	signat	_Get_AD_data,4218
	global	__ISR

;; *************** function __ISR *****************
;; Defined at:
;;		line 376 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  sum             1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_roop_manager
;;		i1_putc_UART
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	376
	global	__size_of__ISR
	__size_of__ISR	equ	__end_of__ISR-__ISR
	
__ISR:	
;incstack = 0
	opt	stack 10
; Regs used in __ISR: [wreg-fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	movlb 0	; select bank0
	movf	btemp+1,w
	movwf	(??__ISR+1)
	line	380
	
i1l2815:	
;newmain.c: 377: static uint8_t rc_count = 0;
;newmain.c: 378: static uint8_t rc_busy = 0;
;newmain.c: 379: static uint8_t rc_t_count = 0;
;newmain.c: 380: if(TMR0IE && TMR0IF){
	btfss	(93/8),(93)&7	;volatile
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l2823
u221_20:
	
i1l2817:	
	btfss	(90/8),(90)&7	;volatile
	goto	u222_21
	goto	u222_20
u222_21:
	goto	i1l2823
u222_20:
	line	381
	
i1l2819:	
;newmain.c: 381: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	383
	
i1l2821:	
;newmain.c: 383: TMR0 = 56;
	movlw	low(038h)
	movwf	(21)	;volatile
	goto	i1l2823
	line	387
	
i1l433:	
	line	390
	
i1l2823:	
;newmain.c: 387: }
;newmain.c: 388: static uint16_t count = 0;
;newmain.c: 389: static uint16_t comm_error_count = 0;
;newmain.c: 390: if(TMR4IE && TMR4IF){
	movlb 1	; select bank1
	btfss	(1177/8)^080h,(1177)&7	;volatile
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l2851
u223_20:
	
i1l2825:	
	movlb 0	; select bank0
	btfss	(153/8),(153)&7	;volatile
	goto	u224_21
	goto	u224_20
u224_21:
	goto	i1l2851
u224_20:
	line	391
	
i1l2827:	
;newmain.c: 391: TMR4IF = 0;
	bcf	(153/8),(153)&7	;volatile
	line	392
	
i1l2829:	
;newmain.c: 392: count++;
	movlw	01h
	movlb 1	; select bank1
	addwf	(__ISR@count)^080h,f
	movlw	0
	addwfc	(__ISR@count+1)^080h,f
	line	393
;newmain.c: 393: if(count > 5){
	movlw	0
	subwf	(__ISR@count+1)^080h,w
	movlw	06h
	skipnz
	subwf	(__ISR@count)^080h,w
	skipc
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l2835
u225_20:
	line	394
	
i1l2831:	
;newmain.c: 394: count = 0;
	clrf	(__ISR@count)^080h
	clrf	(__ISR@count+1)^080h
	line	395
	
i1l2833:	
;newmain.c: 395: roop_manager();
	fcall	_roop_manager
	goto	i1l2835
	line	396
	
i1l439:	
	line	397
	
i1l2835:	
;newmain.c: 396: }
;newmain.c: 397: if(rc_busy){
	movlb 0	; select bank0
	movf	((__ISR@rc_busy)),w
	btfsc	status,2
	goto	u226_21
	goto	u226_20
u226_21:
	goto	i1l2843
u226_20:
	line	398
	
i1l2837:	
;newmain.c: 398: rc_t_count++;
	movlw	low(01h)
	movwf	(??__ISR+0)+0
	movf	(??__ISR+0)+0,w
	addwf	(__ISR@rc_t_count),f
	line	399
	
i1l2839:	
;newmain.c: 399: if(rc_t_count > 10){
	movlw	low(0Bh)
	subwf	(__ISR@rc_t_count),w
	skipc
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l2843
u227_20:
	line	400
	
i1l2841:	
;newmain.c: 400: rc_count = 0;
	clrf	(__ISR@rc_count)
	line	401
;newmain.c: 401: rc_success = 0;
	clrf	(_rc_success)
	goto	i1l2843
	line	402
	
i1l441:	
	goto	i1l2843
	line	403
	
i1l440:	
	line	404
	
i1l2843:	
;newmain.c: 402: }
;newmain.c: 403: }
;newmain.c: 404: if(rc_success == 0){
	movf	((_rc_success)),w
	btfss	status,2
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l2849
u228_20:
	line	405
	
i1l2845:	
;newmain.c: 405: comm_error_count++;
	movlw	01h
	movlb 1	; select bank1
	addwf	(__ISR@comm_error_count)^080h,f
	movlw	0
	addwfc	(__ISR@comm_error_count+1)^080h,f
	line	406
;newmain.c: 406: if(comm_error_count > 1000){
	movlw	03h
	subwf	(__ISR@comm_error_count+1)^080h,w
	movlw	0E9h
	skipnz
	subwf	(__ISR@comm_error_count)^080h,w
	skipc
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l2851
u229_20:
	line	407
	
i1l2847:	
;newmain.c: 407: output = DISABLE;
	clrf	(_output)^080h
	clrf	(_output+1)^080h
	goto	i1l2851
	line	408
	
i1l443:	
	line	409
;newmain.c: 408: }
;newmain.c: 409: }
	goto	i1l2851
	line	410
	
i1l442:	
	line	411
	
i1l2849:	
;newmain.c: 410: else{
;newmain.c: 411: comm_error_count = 0;
	movlb 1	; select bank1
	clrf	(__ISR@comm_error_count)^080h
	clrf	(__ISR@comm_error_count+1)^080h
	goto	i1l2851
	line	412
	
i1l444:	
	goto	i1l2851
	line	414
	
i1l438:	
	line	416
	
i1l2851:	
;newmain.c: 412: }
;newmain.c: 414: }
;newmain.c: 415: uint8_t sum;
;newmain.c: 416: if(RCIE && RCIF){
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l445
u230_20:
	
i1l2853:	
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l445
u231_20:
	line	417
	
i1l2855:	
;newmain.c: 417: RCIF = 0;
	bcf	(141/8),(141)&7	;volatile
	line	419
;newmain.c: 419: switch(rcmode){
	goto	i1l2885
	line	420
;newmain.c: 420: case KEY:
	
i1l447:	
	line	421
	
i1l2857:	
;newmain.c: 421: key = RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	movwf	(??__ISR+0)+0
	movf	(??__ISR+0)+0,w
	movlb 0	; select bank0
	movwf	(_key)
	line	422
	
i1l2859:	
;newmain.c: 422: putc_UART(key);
	movf	(_key),w
	fcall	i1_putc_UART
	line	424
;newmain.c: 424: break;
	goto	i1l445
	line	425
;newmain.c: 425: case COMM:
	
i1l449:	
	line	426
	
i1l2861:	
;newmain.c: 426: if(rc_complete == 0){
	movlb 0	; select bank0
	movf	((_rc_complete)),w
	btfss	status,2
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l445
u232_20:
	line	427
	
i1l2863:	
;newmain.c: 427: rc_busy = 1;
	clrf	(__ISR@rc_busy)
	incf	(__ISR@rc_busy),f
	line	428
	
i1l2865:	
;newmain.c: 428: rcbuff[rc_count] = RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	movwf	(??__ISR+0)+0
	movf	(__ISR@rc_count),w
	addlw	low(_rcbuff|((0x0)<<8))&0ffh
	movwf	fsr1l
	clrf fsr1h	
	
	movf	(??__ISR+0)+0,w
	movwf	indf1
	line	429
	
i1l2867:	
;newmain.c: 429: if(rc_count < (2-1)){
	movf	((__ISR@rc_count)),w
	btfss	status,2
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l451
u233_20:
	line	430
	
i1l2869:	
;newmain.c: 430: sum+=RCREG;
	movf	(409)^0180h,w	;volatile
	movwf	(??__ISR+0)+0
	movf	(??__ISR+0)+0,w
	addwf	(__ISR@sum),f
	line	431
	
i1l451:	
	line	432
;newmain.c: 431: }
;newmain.c: 432: rc_count++;
	movlw	low(01h)
	movwf	(??__ISR+0)+0
	movf	(??__ISR+0)+0,w
	addwf	(__ISR@rc_count),f
	line	434
	
i1l2871:	
;newmain.c: 434: if(rc_count >= 2){
	movlw	low(02h)
	subwf	(__ISR@rc_count),w
	skipc
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l445
u234_20:
	line	435
	
i1l2873:	
;newmain.c: 435: rc_count = 0;
	clrf	(__ISR@rc_count)
	line	436
;newmain.c: 436: rc_busy = 0;
	movlb 0	; select bank0
	clrf	(__ISR@rc_busy)
	line	437
;newmain.c: 437: rc_t_count = 0;
	clrf	(__ISR@rc_t_count)
	line	438
	
i1l2875:	
;newmain.c: 438: if(sum == rcbuff[2-1]){
	movlb 1	; select bank1
	movf	0+(_rcbuff)^080h+01h,w
	xorwf	(__ISR@sum),w
	skipz
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l2879
u235_20:
	line	439
	
i1l2877:	
;newmain.c: 439: rc_complete = 1;
	movlb 0	; select bank0
	clrf	(_rc_complete)
	incf	(_rc_complete),f
	line	440
;newmain.c: 440: LATA2 =1;
	movlb 2	; select bank2
	bsf	(2146/8)^0100h,(2146)&7	;volatile
	line	441
;newmain.c: 441: rc_success = 1;
	movlb 0	; select bank0
	clrf	(_rc_success)
	incf	(_rc_success),f
	line	442
;newmain.c: 442: }
	goto	i1l454
	line	443
	
i1l453:	
	line	444
	
i1l2879:	
;newmain.c: 443: else{
;newmain.c: 444: rc_complete = 0;
	movlb 0	; select bank0
	clrf	(_rc_complete)
	line	445
	
i1l2881:	
;newmain.c: 445: LATA2 =0;
	movlb 2	; select bank2
	bcf	(2146/8)^0100h,(2146)&7	;volatile
	line	446
;newmain.c: 446: rc_success = 0;
	movlb 0	; select bank0
	clrf	(_rc_success)
	line	447
	
i1l454:	
	line	448
;newmain.c: 447: }
;newmain.c: 448: sum = 0;
	clrf	(__ISR@sum)
	goto	i1l445
	line	450
	
i1l452:	
	goto	i1l445
	line	451
	
i1l450:	
	line	452
;newmain.c: 450: }
;newmain.c: 451: }
;newmain.c: 452: break;
	goto	i1l445
	line	453
	
i1l2883:	
;newmain.c: 453: }
	goto	i1l445
	line	419
	
i1l446:	
	
i1l2885:	
	movf	(_rcmode),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; direct_byte           10     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	i1l2857
	xorlw	1^0	; case 1
	skipnz
	goto	i1l2861
	goto	i1l445
	opt asmopt_on

	line	453
	
i1l448:	
	line	455
	
i1l445:	
	line	456
;newmain.c: 455: }
;newmain.c: 456: if(TXIE && TXIF){
	movlb 1	; select bank1
	btfss	(1164/8)^080h,(1164)&7	;volatile
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l455
u236_20:
	
i1l2887:	
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l455
u237_20:
	line	461
	
i1l2889:	
;newmain.c: 461: TXREG = u1txbuff.txdata[u1txbuff.head];
	movlb 2	; select bank2
	movf	0+(_u1txbuff)^0100h+032h,w
	addlw	low(_u1txbuff|((0x1)<<8))&0ffh
	movwf	fsr1l
	movlw 1	; select bank2/3
	movwf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	462
	
i1l2891:	
;newmain.c: 462: u1txbuff.head++;
	movlw	low(01h)
	movwf	(??__ISR+0)+0
	movf	(??__ISR+0)+0,w
	movlb 2	; select bank2
	addwf	0+(_u1txbuff)^0100h+032h,f
	line	463
	
i1l2893:	
;newmain.c: 463: if(u1txbuff.head >= 50){
	movlw	low(032h)
	subwf	0+(_u1txbuff)^0100h+032h,w
	skipc
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l2897
u238_20:
	line	464
	
i1l2895:	
;newmain.c: 464: u1txbuff.head = 0;
	clrf	0+(_u1txbuff)^0100h+032h
	goto	i1l2897
	line	465
	
i1l456:	
	line	466
	
i1l2897:	
;newmain.c: 465: }
;newmain.c: 466: if(u1txbuff.end == u1txbuff.head || u1txbuff.end == 0){
	movf	0+(_u1txbuff)^0100h+033h,w
	xorwf	0+(_u1txbuff)^0100h+032h,w
	skipnz
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l459
u239_20:
	
i1l2899:	
	movf	(0+(_u1txbuff)^0100h+033h),w
	btfss	status,2
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l455
u240_20:
	
i1l459:	
	line	467
;newmain.c: 467: TXIE = 0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	goto	i1l455
	line	471
	
i1l457:	
	line	479
	
i1l455:	
	line	480
;newmain.c: 471: }
;newmain.c: 479: }
;newmain.c: 480: if(IOCIE && IOCIF){
	btfss	(91/8),(91)&7	;volatile
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l461
u241_20:
	
i1l2901:	
	btfss	(88/8),(88)&7	;volatile
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l461
u242_20:
	line	481
	
i1l2903:	
;newmain.c: 481: IOCIF = 0;
	bcf	(88/8),(88)&7	;volatile
	goto	i1l461
	line	483
	
i1l460:	
	line	484
	
i1l461:	
	movf	(??__ISR+1),w
	movlb 0	; select bank0
	movwf	btemp+1
	retfie
	opt stack 0
GLOBAL	__end_of__ISR
	__end_of__ISR:
	signat	__ISR,88
	global	i1_putc_UART

;; *************** function i1_putc_UART *****************
;; Defined at:
;;		line 59 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__ISR
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	59
global __ptext24
__ptext24:	;psect for function i1_putc_UART
psect	text24
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\uart_16f1827.c"
	line	59
	global	__size_ofi1_putc_UART
	__size_ofi1_putc_UART	equ	__end_ofi1_putc_UART-i1_putc_UART
	
i1_putc_UART:	
;incstack = 0
	opt	stack 10
; Regs used in i1_putc_UART: [wreg]
;i1putc_UART@data stored from wreg
	movwf	(i1putc_UART@data)
	line	61
	
i1l2529:	
;uart_16f1827.c: 61: TXIE = 0;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	63
;uart_16f1827.c: 63: while(!TXIF);
	goto	i1l559
	
i1l560:	
	
i1l559:	
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l559
u188_20:
	goto	i1l2531
	
i1l561:	
	line	65
	
i1l2531:	
;uart_16f1827.c: 65: TXREG = data;
	movf	(i1putc_UART@data),w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	66
	
i1l562:	
	return
	opt stack 0
GLOBAL	__end_ofi1_putc_UART
	__end_ofi1_putc_UART:
	signat	i1_putc_UART,88
	global	_roop_manager

;; *************** function _roop_manager *****************
;; Defined at:
;;		line 499 in file "D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4
;;      Params:         0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__ISR
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1,inline
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	499
global __ptext25
__ptext25:	;psect for function _roop_manager
psect	text25
	file	"D:\Users\Yosuke\Videos\Users\Yosuke\Documents\MPLAB 8 Projects\boost_con_2016-07-24\src\newmain.c"
	line	499
	global	__size_of_roop_manager
	__size_of_roop_manager	equ	__end_of_roop_manager-_roop_manager
	
_roop_manager:	
;incstack = 0
	opt	stack 10
; Regs used in _roop_manager: [wreg+status,2+status,0]
	line	500
	
i1l2521:	
;newmain.c: 500: roop_f = 1;
	movlb 0	; select bank0
	clrf	(_roop_f)
	incf	(_roop_f),f
	goto	i1l468
	line	501
	
i1l2523:	
	goto	i1l468
	line	506
	
i1l2525:	
;newmain.c: 506: return 1;
;	Return value of _roop_manager is never used
	goto	i1l468
	line	507
	
i1l2527:	
;newmain.c: 507: }
	goto	i1l468
	line	508
	
i1l467:	
	line	511
;newmain.c: 508: else{
;newmain.c: 511: return 0;
;	Return value of _roop_manager is never used
	goto	i1l468
	line	512
	
i1l469:	
	line	513
	
i1l468:	
	return
	opt stack 0
GLOBAL	__end_of_roop_manager
	__end_of_roop_manager:
	signat	_roop_manager,89
global	___latbits
___latbits	equ	1
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
