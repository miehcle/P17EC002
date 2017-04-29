//
#include "system_config.h"

//初期化関数
void tmr0_Init(void){
    TMR0CS = 0; //TMR0 clock source selection bit 0:internal clock 1:external
    PSA = 0;    //プリスケーラ 0:有効 1:無効
    OPTION_REGbits.PS = 0b111;  //プリスケーラ選択
    //interrupt
    TMR0IE = 1; //Interrupt enable
    PEIE = 1;
    GIE = 1;
}
