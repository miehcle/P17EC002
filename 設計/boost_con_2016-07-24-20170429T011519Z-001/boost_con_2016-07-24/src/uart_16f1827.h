/*
 *
 *
 */
 
#ifndef UART_16F1827_H
#define UART_16F1827_H
 
#ifdef	__cplusplus
extern "C" {
#endif

void UART_Init(void);
void putc_UART(unsigned char data); //�o�C�g���M
void puts_UART(char *str);  //�����񑗐M�i���荞�ݎg��Ȃ��^�j
void puts_UARTb(char *str); //�����񑗐M�i���荞�ݗ��p�j�@�ʏ�͂�����
void set_data_buff(unsigned char data); //�o�b�t�@�Ƀf�[�^���Z�b�g����֐�
void putdec_UARTb(int dec); //�������M
void putdec_UART(int dec);  //�������M�i���荞�ݖ��g�p�j

#define BUFF_SIZE 50
//���M�o�b�t�@�\����
struct txbuffer{
    unsigned char txdata[BUFF_SIZE];
    unsigned char head, end;
};


#ifdef	__cplusplus
}
#endif

#endif	/* UART_16F1827_H */
