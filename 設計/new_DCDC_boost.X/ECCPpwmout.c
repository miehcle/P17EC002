/*
 * File:   ECCPpwmout.c
 * Author: GERMANY
 *
 * Created on 2017/05/01, 13:37
 */


#include <xc.h>
#include "ECCPpwmout.h"

void init_ECCP(void) {
    CCPTMRS = 0b00000000;       //all CCP modules based on TMR2
    CCP1CON = 0b10001100;       //half-bridge mode, P1A and P1B active-high
    CCP2CON = 0b10001100;       //half-bridge mode, P2A and P2B active-high
    T2CON = 0b00000000;         //1:1 postscaler, Timer2 off, prescaler is 1
    PR2 = 127;                  //PWM resolution 512
    CCPR1L = 0x00;
    CCPR1H = 0x00;
    CCPR2L = 0x00;
    CCPR2H = 0x00;
    CCP1AS = 0x00;
    CCP2AS = 0x00;
    PWM1CONbits.P1DC = DELAY;   //set dead time
}

void start_pwm(void) {
    TMR2ON = 1;                 //Timer2 on
}