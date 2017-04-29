//タイマ1を使うための関数類
#include "system_config.h"

//初期化
void timer1_init(void){
    T1CONbits.TMR1CS = 0b00;   //Fosc/4を選択
    T1CONbits.T1CKPS = 0b11;    //プリスケール値 1/8
    T1CONbits.T1OSCEN = 0;
    
    //割り込み関連
    TMR1IE = 1;
    PEIE = 1;
    GIE = 1;
    
    T1GCONbits.TMR1GE = 0;  //ゲート機能無効
    T1CONbits.TMR1ON = 1;   //タイマ有効
    
}
