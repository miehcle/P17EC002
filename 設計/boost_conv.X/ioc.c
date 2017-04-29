/* IOC(Interrupt on change?????????)?????????
 *
 * Created on : 2015-12-26 12:28
 * Auther : TSUCHIYA Yosuke
 */

#include <xc.h>
#include "ioc.h"

void ioc_init(void){
    
    IOCBP = 0b00000000;
    IOCBN = 0b00000010;
    //INTCONbits.IOCIE = 1;
}