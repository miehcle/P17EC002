/* 
 * File:   I2Cslave.h
 * Author: GERMANY
 *
 * Created on 2017/04/23, 20:31
 */

#ifndef I2CSLAVE_H
#define	I2CSLAVE_H

#ifdef	__cplusplus
extern "C" {
#endif

void init_I2C_slave(char addr);
void interrupt_I2C_receive(char received_data);

#ifdef	__cplusplus
}
#endif

#endif	/* I2CSLAVE_H */

