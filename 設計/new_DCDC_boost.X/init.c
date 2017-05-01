/*
 * File:   init.c
 * Author: GERMANY
 *
 * Created on 2017/05/01, 13:32
 */


#include <xc.h>

#include "init.h"
#include "I2Cslave.h"
#include "ECCPpwmout.h"

void init(void) {
    OSCCON = 0b01111010;        //Fosc = 16MHz,PLL4x disabled
    PORTA = 0x00;               //A pins init
    PORTB = 0x00;               //B pins init
    ANSELA = 0x00;              //all of pins digital mode
    TRISA = 0x00;               //all of A pins output mode
    TRISB = 0b00010010;         //RB1(SDA1) and RB4(SCL1) input mode, others output mode
    
    init_I2C_slave(ADDR);       //slave address 0x04
    init_ECCP();
    
    GIE = 1;                    //all interrupt allowed
    PEIE = 1;                   //peripheral equipment interrupt allowed
}
