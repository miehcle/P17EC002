/*
 * File:   I2C_slave.c
 * Author: GERMANY
 *
 * Created on 2017/05/01, 13:11
 */


#include <xc.h>
#include "I2Cslave.h"

void init_I2C_slave(char addr) {
    SSP1STAT = 0b10000000;      //I2C 100kbps mode
    SSP1CON1 = 0b00100110;      //I2C slave mode
    SSP1CON2bits.SEN = 1;       //I2C clock stretch enabled
    SSP1ADD = addr << 1;        //I2C address setting
    SSP1IE = 1;                 //I2C interrupt enabled
    BCL1IE = 1;                 //I2C bus clash interrupt enabled
    SSP1IF = 0;                 //I2C interrupt flag cleared
    BCL1IF = 0;                 //I2C bus clash interrupt flag cleared
}

void interrupt_I2C_receive(char received_data) {
    char x;
    if(SSP1STATbits.R_nW == 0) {
        /* write mode */
        if(SSP1STATbits.D_nA == 0) {
            /* address received */
            x = SSP1BUF;
        } else {
            /* data received */
            received_data = SSP1BUF;
        }
    }
    SSP1IF = 0;             //clear interrupt flag
    SSP1CON1bits.CKP = 1;   //open SCL line
}