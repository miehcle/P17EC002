/* 
 * File:   ADC.h
 * Author: Yosuke
 *
 * Created on 2015/10/04, 0:54
 */

#ifndef ADC_H
#define	ADC_H

#ifdef	__cplusplus
extern "C" {
#endif
    
    void AD_Init();
    int Get_AD_data(unsigned char chs);

#ifdef	__cplusplus
}
#endif

#endif	/* ADC_H */


