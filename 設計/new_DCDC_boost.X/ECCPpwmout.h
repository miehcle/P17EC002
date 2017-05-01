/* 
 * File:   ECCPpwmout.h
 * Author: GERMANY
 *
 * Created on 2017/05/01, 13:37
 */

#ifndef ECCPPWMOUT_H
#define	ECCPPWMOUT_H

#ifdef	__cplusplus
extern "C" {
#endif
    
#define DELAY 0b100000
    
    void init_ECCP(void);
    void start_pwm(void);


#ifdef	__cplusplus
}
#endif

#endif	/* ECCPPWMOUT_H */

