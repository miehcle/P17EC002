
/* AD???????????
 * 
 * 
 */
#include <xc.h>
//#include <pic16f1827.h>
#include "system_config.h"

/*AD????????
 * AD?????????????1?????
 * 
 */
void AD_Init(){
    ADCON1bits.ADCS = 0b101;    //Focs/32
    ADCON1bits.ADNREF = 0;
    ADCON1bits.ADPREF = 0b00;
    ADCON1bits.ADFM = 1;    //?????
    ADCON0bits.ADON = 1;
}

//
unsigned int Get_AD_data(unsigned char chs){
    unsigned int data;
    ADCON0bits.CHS = chs;
    __delay_us(20);
    ADCON0bits.GO_nDONE = 1;
    while(ADCON0bits.GO_nDONE);
    data = ADRESL;
    data += (ADRESH << 8);
    return data;
}
