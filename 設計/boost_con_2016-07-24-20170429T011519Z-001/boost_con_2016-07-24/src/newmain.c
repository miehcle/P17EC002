/* 
 * File:   newmain.c
 * Author: Yosuke
 *
 * Created on 2015/08/09, 19:32
 */

#include <stdio.h>
#include <stdlib.h>
#include "integer.h"
#include "system_config.h"
#include "clip.h"
#include "boost_con.h"

#include "ECCP.h"
#include "ADC.h"
#include "uart_16f1827.h"
#include "control_h_bridge.h"
#include "ioc.h"
#include "tmr0.h"


#define GD_ENABLE LATA3
//#define DUTY_HALF 511
//#define DUTY_MAX 1011	//max - 12くらい?
#define DUTY_HALF 255
#define DUTY_MAX 500	//max - 12くらい?

//デバッグ用
//#define ALWAYS_OUT
//#define FORCE_MODE1	//強制MODE1
#define FORCE_MODE2	//強制MODE2

// PIC16F1827 Configuration Bit Settings

// 'C' source line config statements

#include <xc.h>

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

// CONFIG1
#pragma config FOSC = INTOSC    // Oscillator Selection (INTOSC oscillator: I/O function on CLKIN pin)
#pragma config WDTE = OFF       // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = ON       // Power-up Timer Enable (PWRT enabled)
#pragma config MCLRE = OFF       // MCLR Pin Function Select (MCLR/VPP pin function is MCLR)
#pragma config CP = OFF         // Flash Program Memory Code Protection (Program memory code protection is disabled)
#pragma config CPD = OFF        // Data Memory Code Protection (Data memory code protection is disabled)
#pragma config BOREN = OFF       // Brown-out Reset Enable (Brown-out Reset enabled)
#pragma config CLKOUTEN = OFF   // Clock Out Enable (CLKOUT function is disabled. I/O or oscillator function on the CLKOUT pin)
#pragma config IESO = ON        // Internal/External Switchover (Internal/External Switchover mode is enabled)
#pragma config FCMEN = ON       // Fail-Safe Clock Monitor Enable (Fail-Safe Clock Monitor is enabled)

// CONFIG2
#pragma config WRT = OFF        // Flash Memory Self-Write Protection (Write protection off)
#pragma config PLLEN = ON       // PLL Enable (4x PLL enabled)
#pragma config STVREN = ON      // Stack Overflow/Underflow Reset Enable (Stack Overflow or Underflow will cause a Reset)
#pragma config BORV = LO        // Brown-out Reset Voltage Selection (Brown-out Reset Voltage (Vbor), low trip point selected.)
#pragma config LVP = OFF        // Low-Voltage Programming Enable (High-voltage on MCLR/VPP must be used for programming)


void Init(void);
void system_halt();
inline uint8_t roop_manager(void);
void data_send(int *txdata, int length);
uint8_t calc_checksum(int *data, int data_length);

//グローバル変数
uint8_t roop_f = 0;
uint8_t busy = 0;
uint8_t key;
enum{KEY, COMM};
uint8_t rcmode = COMM;
#define RC_LENGTH 2
uint8_t rcbuff[RC_LENGTH] = {0};
uint8_t rc_complete = 0;
#define TX_LENGTH 3
uint8_t txdata[TX_LENGTH] = {0};
uint8_t rc_success = 0;

enum {DISABLE = 0, ENABLE = 1};
uint16_t output = DISABLE;

extern struct txbuffer u1txbuff;	//u1txbuffが実際に使用する変数

/*
 * 
 */
int main(void) {
    Init();
    //int16_t power = DUTY_MAX;
    //int16_t power_dd = DUTY_MAX;
	int16_t power1 = 1023, power2 = 1023;
	int16_t power1_dd = 1023, power2_dd = 1023;
    int16_t cnt = 0;
    enum {NONE, TESTMODE, MODE1, MODE2};	//MODE1:アナログ入力モード,MODE2:シリアル通信モード
    //uint16_t mode = NONE;
	uint16_t mode = MODE2;

	uint16_t boost_duty = 0;	// 0~511
	uint16_t output_voltage, input_voltage;
	uint16_t i;
    
	if(mode != MODE2){
    	puts_UARTb("\r\nmotor_driver_test_program Ver.0\r\n");
	}

    //while(Get_AD_data(0) < 450);	//出力電圧が上昇するまで待機
    
	while(1){
        //__delay_ms(10);
		if(mode == MODE2){		//MODE2のときのみ
			if(rc_complete){	//受信正常終了時，送信処理を行う
				boost_duty = CLIP(0, rcbuff[0], 255);
				//txdata[0] = ;
				txdata[0] = output_voltage >> 2;	//85
				txdata[1] = input_voltage >> 2;	//170
				//data_send(txdata, TX_LENGTH);
				//txdata[TX_LENGTH - 1] = calc_checksum(txdata, TX_LENGTH-1);	//最後のデータはチェックサム
				txdata[2] = txdata[0] + txdata[1];
				for(i = 0; i < TX_LENGTH; i++){
					putc_UART(txdata[i]);
				}
				output = ENABLE;
				rc_complete = 0;
			}
			else{
				//output = DISABLE;
			}
		}
        if(roop_f){
            roop_f = 0; //フラグクリア
            busy = 1;   //メインループの処理が終わるまで1を立てておく
            
            //メインループ処理　ここから
			
			output_voltage = Get_AD_data(0);
			input_voltage = Get_AD_data(4);
			//txdata[0] = output_voltage >> 2;
			//tadata[1] = input_voltage >> 2;

            //キー処理
            switch(key){
                case 'u':
                    boost_duty += 10;
                    break;
                case 'U':
                    boost_duty += 50;
                    break;
                
                case 'd':
                    boost_duty -= 10;
                    break;
                case 'D':
                    boost_duty -= 50;
                    break;
                
                case 'g':
                    //power = 0;
                    break;
                    
                case 'r':
                    RESET();
                    break;
                
                case 'z':
                    boost_duty = 0;
                    stop_PWM();
                    system_halt();
                    break;
                    
                case 'k':
                    boost_duty = DUTY_MAX;
                    mode = TESTMODE;
                    output = ENABLE;
                    break;
                    
                case 'a':
                    mode = MODE1;
                    output = DISABLE;
                    break;
                    
                case 'o':
                    output ^= 1;
                    break;

				case 'i':
					boost_duty += 1;
					break;
				case 'p':
					boost_duty -= 1;
					break;
                    
                default:
                    break;
            }
            key = 0;
            //キー関連処理ここまで
            #ifdef FORCE_MODE2
				mode = MODE2;
			#endif
            
            //LATA0 ^= 1;
            //duty = (int16_t)Get_AD_data(1);
            //set_PWM_duty(1, duty);
            //動作モード選択
            switch(mode){
                case NONE:
                    //power = DUTY_MAX;
                    break;
                    
                case TESTMODE:
                    //キーでやるので、ココでは何もしません
                    break;
                    
                case MODE1:
                    //power = (int16_t)Get_AD_data(1) - 511;
                    //power *= 2;
                    boost_duty = (int16_t)Get_AD_data(1);
					boost_duty /= 4;
                    break;
                    
				case MODE2:
					break;

                default:
					boost_duty = 0;
                    break;            
            }
            
            //power = CLIP(-1023, power, 1023);
			//boost_duty = 14;
			boost_duty = CLIP(32, boost_duty, 256);
			/*
			//電圧降下時にFET駆動を停止させる 242=36V(理論値,未調整)
			if(output_voltage > 250){
				output = ENABLE;
			}
			else{
				output = DISABLE;
			}
			*/
			#ifdef ALWAYS_OUT
				if(mode == MODE1){
					output = ENABLE;	//デバッグ用
				}
			#endif

            if(output == ENABLE){
                GD_ENABLE = 1;
                //power_dd = set_motor_power(1, power);
				power1 = 511 - boost_duty;
				power2 = boost_duty;
				//power2 = power1;
				TRISA7 = 0;
				TRISA6 = 0;
				TRISB3 = 0;
				TRISB5 = 0;
            }
            else{
                GD_ENABLE = 0;
                //power_dd = set_motor_power(1, DUTY_MAX);
				//power1 = 0;
				//power2 = 0;
				//boost_duty = 0;
				TRISA7 = 1;
				TRISA6 = 1;
				TRISB3 = 1;
				TRISB5 = 1;
            }
			power1 = CLIP(1, power1, 1023);	//昇圧チョッパ用
			power1_dd = set_halfbridge_duty(1, power1);
			//set_PWM_duty(1, power1);
			power2 = CLIP(1, power2, 1023);	//昇圧チョッパ用
			//set_PWM_duty(2, power2);
			power2_dd = set_halfbridge_duty(2, power2);
            //duty++;
            //if(duty > 2000){
            //    duty = -100;
            //}
            //putdec_UART(cnt);
	        if(mode != MODE2){
			    //デバッグ用表示
	            cnt++;
	            switch(cnt){
	                case 0:
	                    break;
	                case 1:
	                    //putdec_UARTb(power);
						putdec_UARTb(power1);
	                    break;
	                case 2:
	                    puts_UARTb("|");
	                    break;
	                case 3:
	                    putdec_UARTb(power1_dd);
						//putdec_UARTb(boost_duty);
	                    break;
	                case 4:
						puts_UARTb(" ");
						putdec_UARTb(power2);
						//puts_UARTb(" ");
						//putdec_UARTb(boost_duty);
	                    //puts_UARTb("\r\n");
	                    //cnt = 0;
	                    break;
					case 5:
						puts_UARTb(" ");
						putdec_UARTb(power2_dd);
						break;
					case 6:
						puts_UARTb(" ");
						putdec_UARTb(output_voltage);
						break;
	
					case 7:
						puts_UARTb(" ");
						putdec_UARTb(input_voltage);
						break;
	
					case 8:
						puts_UARTb("\r\n");
						cnt = 0;
						break;
	                default:
	                    cnt = 0;
	                    break;
	            }           
        	}    
            busy = 0;   //メインループの処理終了
        }
        
    }
       
    return (EXIT_SUCCESS);
}

void Init(void){
    OSCCONbits.IRCF = 0b1110;   //internal oscillator freq. selsct (8MHz or 32MHz)
	//OSCCONbits.SCS = 0b11;	//
	//OSCCONbits.SPLLEN = 0b1;
	
    //入出力設定 0:output 1:input
    TRISA = 0b11110011;
    TRISB = 0b11111111;
	ANSELA = 0b00010011;
	//LATA = 0b11111111;
	LATA = 0b11111011;	//デバッグ用
	LATB = 0b11111111;
    //ECCP関連
    struct _eccp_config_st eccp_config;
    eccp_config_param_init(&eccp_config);   //初期設定　構造体のメンバに初期設定をする
    eccp_config.PR_Value = 0xff/2;
    eccp_config.CCPnM = ECCP_MODE_ALL_ACTIVE_LOW;
    eccp_config.PnM = PWM_MODE_HALF_B;
    ECCP2_Init(&eccp_config);
    ECCP1_Init(&eccp_config);
    TMR4_Interrupt_set(0b1001);
    //RA1をアナログ入力に設定
    TRISAbits.TRISA1 = 1;
    ANSELAbits.ANSA1 = 1;
    //各モジュールの初期化関数は基本的にTRISやANSELを設定した後に呼ぶ。
    //モジュール初期化関数はTRISやANSELをいじっていることがあるので。
    AD_Init();
    
    
    OSCTUNEbits.TUN = 0;    //クロック調整
    tmr0_Init();
    
    UART_Init();
    LATA2 = 1;
    GD_ENABLE = 0;
}

void interrupt _ISR(){
	static uint8_t rc_count = 0;
	static uint8_t rc_busy = 0;
	static uint8_t rc_t_count = 0;
    if(TMR0IE && TMR0IF){
        TMR0IF = 0;
        //TMR0 = 109; //20usごとに割り込み 理論値:96 実測値:109 ここからクロックは29.4MHz?
        TMR0 = 56;
        //LATB3 ^= 1;
        //roop_manager();
        
    }
    static uint16_t count = 0;
	static uint16_t comm_error_count = 0;
    if(TMR4IE && TMR4IF){
        TMR4IF = 0;
        count++;
        if(count > 5){	//PR=0xffのとき2
            count = 0;
            roop_manager();
        }
		if(rc_busy){
			rc_t_count++;
			if(rc_t_count > 10){	//タイムオーバ
				rc_count = 0;	//受信カウンタを0クリア(最初から受信)
				rc_success = 0;
			}
		}
		if(rc_success == 0){	//受信失敗時間を計測
			comm_error_count++;
			if(comm_error_count > 1000){
				output = DISABLE;	//出力の無効化
			}
		}
		else{
			comm_error_count = 0;
		}
		//LATA2 ^= 1;
    }
	uint8_t sum;
    if(RCIE && RCIF){
        RCIF = 0;
		//LATA2^=1;
        switch(rcmode){
			case KEY:
				key = RCREG;
        		putc_UART(key);
        		//LATA2 ^= 1; //デバッグ用
				break;
			case COMM:
				if(rc_complete == 0){
					rc_busy = 1;	//受信中フラグを立てる(タイムオーバ用)
					rcbuff[rc_count] = RCREG;
					if(rc_count < (RC_LENGTH-1)){
						sum+=RCREG;	//チェックサム計算用
					}
					rc_count++;		//受信データカウンタ
					//LATA2 ^= 1;
					if(rc_count >= RC_LENGTH){
						rc_count = 0;	//正常終了時，カウンタをゼロに戻す
						rc_busy = 0;	//受信終了
						rc_t_count = 0;	//タイマで呼ばれるカウンタをクリア
						if(sum == rcbuff[RC_LENGTH-1]){	//最後のデータはチェックサム
							rc_complete = 1;
							LATA2 =1;
							rc_success = 1;
						}
						else{			//通信が失敗
							rc_complete = 0;
							LATA2 =0;
							rc_success = 0;
						}
						sum = 0;
						//LATA2 ^= 1;
					}
				}
				break;
		}
		
    }
    if(TXIE && TXIF){   //割り込み無効にしていても、別の割り込み要因で呼ばれた時に中に入ってしまうので。
        //送信割り込み
        //TXIF = 0; //ソフトからクリアできないらしい


        TXREG = u1txbuff.txdata[u1txbuff.head];	//送信バッファにデータをセット
        u1txbuff.head++;    //ずらす
        if(u1txbuff.head >= BUFF_SIZE){
            u1txbuff.head = 0;
        }
        if(u1txbuff.end == u1txbuff.head || u1txbuff.end == 0){  //headとendが一致 = 送信終了
            TXIE = 0;   //割り込みの無効化 = 送信停止
            //RB3 = 0;
            
            //u1txbuff.end = 0;
        }
        //putdec_UART(u1txbuff.head);
        //puts_UART(":");
        //putdec_UART(u1txbuff.end);
        //puts_UART("\r\n");
        //LATBbits.LATB3 = 1;
        
        
    }
    if(IOCIE && IOCIF){
        IOCIF = 0;
        //RESET();
    }
}

void system_halt(){
    GD_ENABLE = 0;
    TRISA = 0xff;
    TRISB = 0xff;   //GPIOをすべてハイインピーダンスにする
    ioc_init();
    INTCONbits.IOCIE = 1;
    SLEEP();
    INTCONbits.IOCIE = 0;
    RESET();
}

//タイマ割り込みで一定周期で呼ぶ
//
inline uint8_t roop_manager(void){
    roop_f = 1;
    if(busy){   //ループが回ってない
        //何かしらエラー処理
        //LATA4 ^= 1;
        //puts_UART("LOOP!\r\n");
		//LATA2 = 0;
        return EXIT_FAILURE;
    }
    else{
        //LATA4 = 0;
		//LATA2 = 1;
        return EXIT_SUCCESS;
    }    
}

/*データ送信関数
 *引数  : 送信データ配列，送信データ長
 *返り値 : 無し
 */
void data_send(int *txdata, int length){
	uint8_t i;
	for(i = 0; i < length; i++){
		//set_data_buff(txdata[i]);
		putc_UART(txdata[i]);
	}
	//TXIE = 1;	//送信割り込み有効化(上のループ内に入れたらほんのちょっと時間短縮になるはずだけどまあ良いか)
}

/*チェックサム計算関数
 * 引数　　： データ配列，データ長(送信データ - 1)
 * 返り値　： チェックサム
 */
uint8_t calc_checksum(int *data, int data_length){
	uint8_t checksum = 0;
	uint8_t i;
	for(i = 0; i < data_length; i++){
		checksum += data[i];
	}
	return checksum;
}