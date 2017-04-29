/* uart_16f1827.c
 * UART���g�����߂̊֐���
 *
 * Auther : TSUCHIYA Yosuke
 * Created on : 2015/06/23 0:18
 */

//#include <xc.h>

#include "uart_16f1827.h"
#include "system_config.h"

struct txbuffer u1txbuff;	//u1txbuff�����ۂɎg�p����ϐ�


/*UART�ʐM�̏������֐�
 *
 *
 */
void UART_Init(void){
	//�{�[���[�g�֘A
	BRGH = 1;	//0:�ᑬ���[�h 1:�������[�h
	SPBRGH = 0;	//
	SPBRGL = 103;
	//SPBRGL = 64;
	//SPBRGL = 32;	//Fosc = 32MHz, 57600bps
	//SPBRGL = 16;	//Fosc = 32MHz,115200bps
	//SPBRGL = 8;	//Fosc = 16MHz,115200bps
	//���M���[�h�֘A
	BRG16 = 0;	//16bit���M���[�h����
	SYNC = 0;	//�񓯊��ʐM(UART)
	SPEN = 1;	//�V���A���|�[�g�L����
	TX9 = 0;	//8bit���M���[�h
	TXEN = 1;	//���M�̗L����
	SENDB = 0;	//�u���[�N�����񑗐M�i�ʏ�j
    //�s���ݒ�
    APFCON1bits.TXCKSEL = 0;    //TX�s���̐ݒ� 0:RB2, 1:RB5
	TRISBbits.TRISB2 = 1;	//�o�͐ݒ�
    
	//��M
    APFCON0bits.RXDTSEL = 0;    //RX�s���̐ݒ� 0:RB1, 1:RB2
	TRISBbits.TRISB1 = 1;	//RX�s������͂ɐݒ�
    ANSELBbits.ANSB1 = 0;   //�f�W�^���ɐݒ�    ANSEL�̐ݒ肪�ATRIS�ݒ���D�悳���݂����B���ӂ��Ȃ��ẮB
	CREN = 1;	//��M�L����
    
    //���荞�݊֘A
    //TXIE = 1;   //���M���荞�ݗL����
    RCIE = 1;   //��M���荞�ݗL����
    PEIE = 1;   //�y���t�F�������荞�݋���
    GIE = 1;    //�O���o�[�����荞�݋���
    
    //���M�o�b�t�@�֘A
    u1txbuff.head = 0;
    u1txbuff.end = 0;


}

void putc_UART(unsigned char data){
	//RB3 = 1;
    TXIE = 0;   //���荞�ݖ�����
    //while(!TRMT);	//���M�o�b�t�@����ɂȂ�̂�҂� TRMT = 1�ŋ�������@�܂�����24F�n�Ƙ_�����t
    while(!TXIF);
    //RB3 = 0;
	TXREG = data;	//���M�o�b�t�@�Ƀf�[�^���Z�b�g
}


/* ���M�o�b�t�@�i���荞�݁j���g�p���Ȃ����M�֐�
 *
 * 
 */
void puts_UART(char *str){
    unsigned char txie;
    txie = TXIE;
    TXIE = 0;
    while(*str != 0){
        putc_UART(*str);    //�ꕶ�����Z�b�g
        str++;  //���炷
    }
    TXIE = txie;
}


/* ���M�o�b�t�@(���荞��)���p�^�̑��M�֐�
 * 
 * 
 */
void puts_UARTb(char *str){
    //RB3 = 1;
    while(*str != 0){
        set_data_buff(*str);    //�ꕶ�����Z�b�g
        str++;  //���炷
    }
    TXIE = 1;
    //RB3 = 0;
}



/*
 *
 *
 */

void set_data_buff(unsigned char data){
    TXIE = 0;
	u1txbuff.txdata[u1txbuff.end] = data;   //�o�b�t�@�̍Ō���ɒǉ�
    
    u1txbuff.end++; //�Ō�������炷
    if(u1txbuff.end >= BUFF_SIZE){
        u1txbuff.end = 0;
    }
    if(u1txbuff.end == u1txbuff.head){
    //if(u1txbuff.end >= BUFF_SIZE){  //�o�b�t�@�T�C�Y�ȏ�ɂȂ�����G���[
    //if(u1txbuff.end == 255){  //�擪�ƍŌ�����ꏏ = ���M�o�b�t�@��������Ă���
        puts_UART("\r\nTX speed over!\r\n");
        u1txbuff.end--;
        //puts_UART(" head:");
        //putdec_UART(u1txbuff.head);
        //puts_UART("end:");
        //putdec_UART(u1txbuff.end);
    }
    //TXIE = 1;   //���M���荞�ݗL���� = ���M�̊J�n
}

void putdec_UARTb(int dec){
    
    //unsigned int _dec;
    unsigned int cnt = 0;   //������\��
    int i;
    unsigned char dec_buff[10] = {0};
    if(dec < 0){    //����������}�C�i�X��\��
        set_data_buff('-');
        dec *= -1;
    }
    
    /*
    while((unsigned int)dec/(cnt * 10)  > 0){   //�����𐔂���
        cnt++;
    }
    
    for(i = cnt; i > 0; i--){
        dec_buff[i] = dec/(i * );
    }
    */
    if(dec == 0){
        set_data_buff('0');
    }
    while(dec != 0){ //���������ɒl���i�[
        dec_buff[cnt] = dec % 10;   //�ŏ����̒l���i�[
        dec /= 10;
        cnt++;
    }
    for(i = cnt - 1; i >= 0; i--){
        set_data_buff(dec_buff[i] + 48); //�傫�����ɑ��M�o�b�t�@�ɃZ�b�g
    }
    TXIE = 1;
    //RB3 = 1;
}

//���荞�ݖ��g�p�^�������M�֐�
void putdec_UART(int dec){
    unsigned char txie;
    txie = TXIE;
    TXIE = 0;
    //unsigned int _dec;
    unsigned int cnt = 0;   //������\��
    int i;
    unsigned char dec_buff[10] = {0};
    if(dec < 0){    //����������}�C�i�X��\��
        putc_UART('-');
        dec *= -1;
    }
    
    /*
    while((unsigned int)dec/(cnt * 10)  > 0){   //�����𐔂���
        cnt++;
    }
    
    for(i = cnt; i > 0; i--){
        dec_buff[i] = dec/(i * );
    }
    */
    if(dec == 0){
        putc_UART('0');
    }
    while(dec != 0){ //���������ɒl���i�[
        dec_buff[cnt] = dec % 10;   //�ŏ����̒l���i�[
        dec /= 10;
        cnt++;
    }
    for(i = cnt - 1; i >= 0; i--){
        putc_UART(dec_buff[i] + 48); //�傫�����ɑ��M
    }
    TXIE = txie;
    //RB3 = 1;
}