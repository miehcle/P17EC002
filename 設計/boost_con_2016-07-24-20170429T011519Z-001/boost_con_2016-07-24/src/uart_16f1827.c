/* uart_16f1827.c
 * UARTを使うための関数類
 *
 * Auther : TSUCHIYA Yosuke
 * Created on : 2015/06/23 0:18
 */

//#include <xc.h>

#include "uart_16f1827.h"
#include "system_config.h"

struct txbuffer u1txbuff;	//u1txbuffが実際に使用する変数


/*UART通信の初期化関数
 *
 *
 */
void UART_Init(void){
	//ボーレート関連
	BRGH = 1;	//0:低速モード 1:高速モード
	SPBRGH = 0;	//
	SPBRGL = 103;
	//SPBRGL = 64;
	//SPBRGL = 32;	//Fosc = 32MHz, 57600bps
	//SPBRGL = 16;	//Fosc = 32MHz,115200bps
	//SPBRGL = 8;	//Fosc = 16MHz,115200bps
	//送信モード関連
	BRG16 = 0;	//16bit送信モード無効
	SYNC = 0;	//非同期通信(UART)
	SPEN = 1;	//シリアルポート有効化
	TX9 = 0;	//8bit送信モード
	TXEN = 1;	//送信の有効化
	SENDB = 0;	//ブレーク文字非送信（通常）
    //ピン設定
    APFCON1bits.TXCKSEL = 0;    //TXピンの設定 0:RB2, 1:RB5
	TRISBbits.TRISB2 = 1;	//出力設定
    
	//受信
    APFCON0bits.RXDTSEL = 0;    //RXピンの設定 0:RB1, 1:RB2
	TRISBbits.TRISB1 = 1;	//RXピンを入力に設定
    ANSELBbits.ANSB1 = 0;   //デジタルに設定    ANSELの設定が、TRIS設定より優先されるみたい。注意しなくては。
	CREN = 1;	//受信有効化
    
    //割り込み関連
    //TXIE = 1;   //送信割り込み有効化
    RCIE = 1;   //受信割り込み有効化
    PEIE = 1;   //ペリフェラル割り込み許可
    GIE = 1;    //グロバール割り込み許可
    
    //送信バッファ関連
    u1txbuff.head = 0;
    u1txbuff.end = 0;


}

void putc_UART(unsigned char data){
	//RB3 = 1;
    TXIE = 0;   //割り込み無効化
    //while(!TRMT);	//送信バッファが空になるのを待つ TRMT = 1で空を示す　まさかの24F系と論理が逆
    while(!TXIF);
    //RB3 = 0;
	TXREG = data;	//送信バッファにデータをセット
}


/* 送信バッファ（割り込み）を使用しない送信関数
 *
 * 
 */
void puts_UART(char *str){
    unsigned char txie;
    txie = TXIE;
    TXIE = 0;
    while(*str != 0){
        putc_UART(*str);    //一文字分セット
        str++;  //ずらす
    }
    TXIE = txie;
}


/* 送信バッファ(割り込み)利用型の送信関数
 * 
 * 
 */
void puts_UARTb(char *str){
    //RB3 = 1;
    while(*str != 0){
        set_data_buff(*str);    //一文字分セット
        str++;  //ずらす
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
	u1txbuff.txdata[u1txbuff.end] = data;   //バッファの最後尾に追加
    
    u1txbuff.end++; //最後尾をずらす
    if(u1txbuff.end >= BUFF_SIZE){
        u1txbuff.end = 0;
    }
    if(u1txbuff.end == u1txbuff.head){
    //if(u1txbuff.end >= BUFF_SIZE){  //バッファサイズ以上になったらエラー
    //if(u1txbuff.end == 255){  //先頭と最後尾が一緒 = 送信バッファが一周している
        puts_UART("\r\nTX speed over!\r\n");
        u1txbuff.end--;
        //puts_UART(" head:");
        //putdec_UART(u1txbuff.head);
        //puts_UART("end:");
        //putdec_UART(u1txbuff.end);
    }
    //TXIE = 1;   //送信割り込み有効化 = 送信の開始
}

void putdec_UARTb(int dec){
    
    //unsigned int _dec;
    unsigned int cnt = 0;   //桁数を表す
    int i;
    unsigned char dec_buff[10] = {0};
    if(dec < 0){    //負だったらマイナスを表示
        set_data_buff('-');
        dec *= -1;
    }
    
    /*
    while((unsigned int)dec/(cnt * 10)  > 0){   //桁数を数える
        cnt++;
    }
    
    for(i = cnt; i > 0; i--){
        dec_buff[i] = dec/(i * );
    }
    */
    if(dec == 0){
        set_data_buff('0');
    }
    while(dec != 0){ //小さい順に値を格納
        dec_buff[cnt] = dec % 10;   //最小桁の値を格納
        dec /= 10;
        cnt++;
    }
    for(i = cnt - 1; i >= 0; i--){
        set_data_buff(dec_buff[i] + 48); //大きい順に送信バッファにセット
    }
    TXIE = 1;
    //RB3 = 1;
}

//割り込み未使用型数字送信関数
void putdec_UART(int dec){
    unsigned char txie;
    txie = TXIE;
    TXIE = 0;
    //unsigned int _dec;
    unsigned int cnt = 0;   //桁数を表す
    int i;
    unsigned char dec_buff[10] = {0};
    if(dec < 0){    //負だったらマイナスを表示
        putc_UART('-');
        dec *= -1;
    }
    
    /*
    while((unsigned int)dec/(cnt * 10)  > 0){   //桁数を数える
        cnt++;
    }
    
    for(i = cnt; i > 0; i--){
        dec_buff[i] = dec/(i * );
    }
    */
    if(dec == 0){
        putc_UART('0');
    }
    while(dec != 0){ //小さい順に値を格納
        dec_buff[cnt] = dec % 10;   //最小桁の値を格納
        dec /= 10;
        cnt++;
    }
    for(i = cnt - 1; i >= 0; i--){
        putc_UART(dec_buff[i] + 48); //大きい順に送信
    }
    TXIE = txie;
    //RB3 = 1;
}