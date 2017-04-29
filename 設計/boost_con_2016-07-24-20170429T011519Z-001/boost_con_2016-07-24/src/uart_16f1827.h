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
void putc_UART(unsigned char data); //バイト送信
void puts_UART(char *str);  //文字列送信（割り込み使わない型）
void puts_UARTb(char *str); //文字列送信（割り込み利用）　通常はこっち
void set_data_buff(unsigned char data); //バッファにデータをセットする関数
void putdec_UARTb(int dec); //数字送信
void putdec_UART(int dec);  //数字送信（割り込み未使用）

#define BUFF_SIZE 50
//送信バッファ構造体
struct txbuffer{
    unsigned char txdata[BUFF_SIZE];
    unsigned char head, end;
};


#ifdef	__cplusplus
}
#endif

#endif	/* UART_16F1827_H */
