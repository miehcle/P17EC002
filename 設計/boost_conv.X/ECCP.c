/*ECCP?????????
 * Created on: 2015/08/09
 * Auther : TSUCHIYA Yosuke
 *
 * 2016-06-19
 * ????????duty???????
 *
 * 2015-01-08
 * ??PWM?????????????????duty = 0???????????????????
 * set_PWM_duty???????????????PxDC?0?????????? 
 *
 * 2015-12-23
 * ???????IC??????PWM???????ECCP1_Init????????????????
 *
 */

#include <xc.h>
#include "ECCP.h"
#include "clip.h"

#include "system_config.h"

//???????2016-01-09 Fosc = 16MHz??DEAD_TIME = 1 ??580us
#define DEAD_TIME 2    //0~63

/* ECCP1?????
 * ?????????????
 */
void ECCP1_Init(struct _eccp_config_st *eccp_config){
    APFCON0bits.CCP1SEL = 0;    //P1A?PB3???
    
    //refere to the datasheet on page 209
    //1. disable output driver
    TRISBbits.TRISB3 = 1;
    TRISBbits.TRISB5 = 1;
    //2. Load the PRx reg with the PWM period
    PR4 = eccp_config->PR_Value;
    //3. Configure the CCP module for the PWM mode
    //CCP1CONbits.CCP1M = 0b1111; //PWM mode(refer to page 226)
    CCP1CONbits.CCP1M = eccp_config->CCPnM; //PWM mode(refer to page 226)
    CCP1CONbits.P1M = eccp_config->PnM; //Half bridge mode
    CCP1ASbits.CCP1AS = 0b000;  //Auto shut down is disable(p.228)
    PWM1CONbits.P1DC = DEAD_TIME;
    //4. Setting duty cycle value
    set_PWM_duty(1, 479);	//?????????????????
    //5. Configure and start Timer2/4/6
    CCPTMRSbits.C1TSEL = 01;    //Timer4
    T4CONbits.T4CKPS = 0b00;    //prescaler (p.191)
    T4CONbits.TMR4ON = 1;   //enable timer
    //6. Enable PWM output pin
    while(TMR4IF == 0);
	//???????????????????????????
    //TRISBbits.TRISB3 = 0;
    //TRISBbits.TRISB5 = 0;            
}

//ECCP2?????
//P2A -> RA7, P2B -> RA6
void ECCP2_Init(struct _eccp_config_st *eccp_config){
    APFCON0bits.CCP2SEL = 1;    //P2A?RA7???(p.119)
    APFCON0bits.P2BSEL = 1; //P2B?RA6???
    
    //refere to the datasheet on page 209
    //1. disable output driver
    TRISAbits.TRISA7 = 1;
    TRISAbits.TRISA6 = 1;
    //2. Load the PRx reg with the PWM period
    PR4 = eccp_config->PR_Value;
    //3. Configure the CCP module for the PWM mode
    CCP2CONbits.CCP2M = eccp_config->CCPnM; //PWM mode(refer to page 226)
    CCP2CONbits.P2M = eccp_config->PnM; //Half bridge mode
    CCP2ASbits.CCP2AS = 0b000;  //Auto shut down is disable(p.228)
    PWM2CONbits.P2DC = DEAD_TIME;
    //4. Setting duty cycle value
    set_PWM_duty(2, 32);
    //5. Configure and start Timer2/4/6
    CCPTMRSbits.C2TSEL = 01;    //Timer4
    T4CONbits.T4CKPS = 0b00;    //prescaler (p.191)
    T4CONbits.TMR4ON = 1;   //enable timer
    //6. Enable PWM output pin
    while(TMR4IF == 0);
    //???????????????????????????
	//TRISAbits.TRISA7 = 0;
    //TRISAbits.TRISA6 = 0;            
}

//???4??????
void TMR4_Interrupt_set(uint8_t ps){
    //interrupt
    //T4CONbits.T4OUTPS = 0b1001;  //???????
    T4CONbits.T4OUTPS = ps;  //???????
    TMR4IE = 1;
}


void set_PWM_duty(unsigned char id, int duty){
    duty = CLIP(0, duty, 1023);
	//duty??????
	if(duty < 14){
		duty = 0;
	}
    
    if(id == 1){
        CCPR1L = (duty >> 2); //???????8bit??
        CCP1CONbits.DC1B = (duty & 0x03); //??2bits
		if(duty == 0){
			PWM1CONbits.P1DC = 0;
		}
		else{
			PWM1CONbits.P1DC = DEAD_TIME;
		}
    }
    else if(id == 2){
        CCPR2L = (duty >> 2);   //???????8bit??
        CCP2CONbits.DC2B = (duty & 0x03); //??2bits
		if(duty == 0){
			PWM2CONbits.P2DC = 0;
		}
		else{
			PWM2CONbits.P2DC = DEAD_TIME;
		}
    }
}

void eccp_config_param_init(eccp_config_t *eccp_config){
    eccp_config->PR_Value = 0xff;
    eccp_config->CCPnM = ECCP_MODE_ALL_ACTIVE_HIGH;
    eccp_config->PnM = PWM_MODE_SINGLE;
}



