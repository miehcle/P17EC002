//
#include "system_config.h"

//�������֐�
void tmr0_Init(void){
    TMR0CS = 0; //TMR0 clock source selection bit 0:internal clock 1:external
    PSA = 0;    //�v���X�P�[�� 0:�L�� 1:����
    OPTION_REGbits.PS = 0b111;  //�v���X�P�[���I��
    //interrupt
    TMR0IE = 1; //Interrupt enable
    PEIE = 1;
    GIE = 1;
}
