//�^�C�}1���g�����߂̊֐���
#include "system_config.h"

//������
void timer1_init(void){
    T1CONbits.TMR1CS = 0b00;   //Fosc/4��I��
    T1CONbits.T1CKPS = 0b11;    //�v���X�P�[���l 1/8
    T1CONbits.T1OSCEN = 0;
    
    //���荞�݊֘A
    TMR1IE = 1;
    PEIE = 1;
    GIE = 1;
    
    T1GCONbits.TMR1GE = 0;  //�Q�[�g�@�\����
    T1CONbits.TMR1ON = 1;   //�^�C�}�L��
    
}
