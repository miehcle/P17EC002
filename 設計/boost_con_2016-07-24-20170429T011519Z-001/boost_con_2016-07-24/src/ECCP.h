/* 
 * File:   ECCP.h
 * Author: Yosuke
 *
 * Created on 2015/08/09, 19:39
 */

#ifndef ECCP_H
#define	ECCP_H

#ifdef	__cplusplus
extern "C" {
#endif
    
#include "integer.h"
    #define ECCP_MODE_ALL_ACTIVE_HIGH 0b1100
    #define ECCP_MODE_ALL_ACTIVE_LOW 0b1111
    #define PWM_MODE_SINGLE 0b00
    #define PWM_MODE_HALF_B 0b10
    typedef struct _eccp_config_st {
        //unsigned char PR_Value = 0xFF;
        unsigned char PR_Value;
        //unsigned char CCPnM = ECCP_MODE_ALL_ACTIVE_HIGH;
        unsigned char CCPnM;    //CCPxM (p.226) アクティブハイかローか等
        //unsigned char PnM = PWM_MODE_SINGLE;
        unsigned char PnM;    //PxM (p.226) シングルPWMか相補PWMか等
    } eccp_config_t;

    
    
    
    void ECCP1_Init(struct _eccp_config_st *eccp_config);
    void set_PWM_duty(unsigned char id, int duty);
    void ECCP2_Init(struct _eccp_config_st *eccp_config);
    void TMR4_Interrupt_set(uint8_t ps);    
    void eccp_config_param_init(eccp_config_t *eccp_config);  //構造体の初期値を設定する関数


#ifdef	__cplusplus
}
#endif

#endif	/* ECCP_H */

