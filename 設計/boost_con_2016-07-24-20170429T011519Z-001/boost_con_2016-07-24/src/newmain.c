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
//#define DUTY_MAX 1011	//max - 12���炢?
#define DUTY_HALF 255
#define DUTY_MAX 500	//max - 12���炢?

//�f�o�b�O�p
//#define ALWAYS_OUT
//#define FORCE_MODE1	//����MODE1
#define FORCE_MODE2	//����MODE2

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

//�O���[�o���ϐ�
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

extern struct txbuffer u1txbuff;	//u1txbuff�����ۂɎg�p����ϐ�

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
    enum {NONE, TESTMODE, MODE1, MODE2};	//MODE1:�A�i���O���̓��[�h,MODE2:�V���A���ʐM���[�h
    //uint16_t mode = NONE;
	uint16_t mode = MODE2;

	uint16_t boost_duty = 0;	// 0~511
	uint16_t output_voltage, input_voltage;
	uint16_t i;
    
	if(mode != MODE2){
    	puts_UARTb("\r\nmotor_driver_test_program Ver.0\r\n");
	}

    //while(Get_AD_data(0) < 450);	//�o�͓d�����㏸����܂őҋ@
    
	while(1){
        //__delay_ms(10);
		if(mode == MODE2){		//MODE2�̂Ƃ��̂�
			if(rc_complete){	//��M����I�����C���M�������s��
				boost_duty = CLIP(0, rcbuff[0], 255);
				//txdata[0] = ;
				txdata[0] = output_voltage >> 2;	//85
				txdata[1] = input_voltage >> 2;	//170
				//data_send(txdata, TX_LENGTH);
				//txdata[TX_LENGTH - 1] = calc_checksum(txdata, TX_LENGTH-1);	//�Ō�̃f�[�^�̓`�F�b�N�T��
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
            roop_f = 0; //�t���O�N���A
            busy = 1;   //���C�����[�v�̏������I���܂�1�𗧂ĂĂ���
            
            //���C�����[�v�����@��������
			
			output_voltage = Get_AD_data(0);
			input_voltage = Get_AD_data(4);
			//txdata[0] = output_voltage >> 2;
			//tadata[1] = input_voltage >> 2;

            //�L�[����
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
            //�L�[�֘A���������܂�
            #ifdef FORCE_MODE2
				mode = MODE2;
			#endif
            
            //LATA0 ^= 1;
            //duty = (int16_t)Get_AD_data(1);
            //set_PWM_duty(1, duty);
            //���샂�[�h�I��
            switch(mode){
                case NONE:
                    //power = DUTY_MAX;
                    break;
                    
                case TESTMODE:
                    //�L�[�ł��̂ŁA�R�R�ł͉������܂���
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
			//�d���~������FET�쓮���~������ 242=36V(���_�l,������)
			if(output_voltage > 250){
				output = ENABLE;
			}
			else{
				output = DISABLE;
			}
			*/
			#ifdef ALWAYS_OUT
				if(mode == MODE1){
					output = ENABLE;	//�f�o�b�O�p
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
			power1 = CLIP(1, power1, 1023);	//�����`���b�p�p
			power1_dd = set_halfbridge_duty(1, power1);
			//set_PWM_duty(1, power1);
			power2 = CLIP(1, power2, 1023);	//�����`���b�p�p
			//set_PWM_duty(2, power2);
			power2_dd = set_halfbridge_duty(2, power2);
            //duty++;
            //if(duty > 2000){
            //    duty = -100;
            //}
            //putdec_UART(cnt);
	        if(mode != MODE2){
			    //�f�o�b�O�p�\��
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
            busy = 0;   //���C�����[�v�̏����I��
        }
        
    }
       
    return (EXIT_SUCCESS);
}

void Init(void){
    OSCCONbits.IRCF = 0b1110;   //internal oscillator freq. selsct (8MHz or 32MHz)
	//OSCCONbits.SCS = 0b11;	//
	//OSCCONbits.SPLLEN = 0b1;
	
    //���o�͐ݒ� 0:output 1:input
    TRISA = 0b11110011;
    TRISB = 0b11111111;
	ANSELA = 0b00010011;
	//LATA = 0b11111111;
	LATA = 0b11111011;	//�f�o�b�O�p
	LATB = 0b11111111;
    //ECCP�֘A
    struct _eccp_config_st eccp_config;
    eccp_config_param_init(&eccp_config);   //�����ݒ�@�\���̂̃����o�ɏ����ݒ������
    eccp_config.PR_Value = 0xff/2;
    eccp_config.CCPnM = ECCP_MODE_ALL_ACTIVE_LOW;
    eccp_config.PnM = PWM_MODE_HALF_B;
    ECCP2_Init(&eccp_config);
    ECCP1_Init(&eccp_config);
    TMR4_Interrupt_set(0b1001);
    //RA1���A�i���O���͂ɐݒ�
    TRISAbits.TRISA1 = 1;
    ANSELAbits.ANSA1 = 1;
    //�e���W���[���̏������֐��͊�{�I��TRIS��ANSEL��ݒ肵����ɌĂԁB
    //���W���[���������֐���TRIS��ANSEL���������Ă��邱�Ƃ�����̂ŁB
    AD_Init();
    
    
    OSCTUNEbits.TUN = 0;    //�N���b�N����
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
        //TMR0 = 109; //20us���ƂɊ��荞�� ���_�l:96 �����l:109 ��������N���b�N��29.4MHz?
        TMR0 = 56;
        //LATB3 ^= 1;
        //roop_manager();
        
    }
    static uint16_t count = 0;
	static uint16_t comm_error_count = 0;
    if(TMR4IE && TMR4IF){
        TMR4IF = 0;
        count++;
        if(count > 5){	//PR=0xff�̂Ƃ�2
            count = 0;
            roop_manager();
        }
		if(rc_busy){
			rc_t_count++;
			if(rc_t_count > 10){	//�^�C���I�[�o
				rc_count = 0;	//��M�J�E���^��0�N���A(�ŏ������M)
				rc_success = 0;
			}
		}
		if(rc_success == 0){	//��M���s���Ԃ��v��
			comm_error_count++;
			if(comm_error_count > 1000){
				output = DISABLE;	//�o�̖͂�����
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
        		//LATA2 ^= 1; //�f�o�b�O�p
				break;
			case COMM:
				if(rc_complete == 0){
					rc_busy = 1;	//��M���t���O�𗧂Ă�(�^�C���I�[�o�p)
					rcbuff[rc_count] = RCREG;
					if(rc_count < (RC_LENGTH-1)){
						sum+=RCREG;	//�`�F�b�N�T���v�Z�p
					}
					rc_count++;		//��M�f�[�^�J�E���^
					//LATA2 ^= 1;
					if(rc_count >= RC_LENGTH){
						rc_count = 0;	//����I�����C�J�E���^���[���ɖ߂�
						rc_busy = 0;	//��M�I��
						rc_t_count = 0;	//�^�C�}�ŌĂ΂��J�E���^���N���A
						if(sum == rcbuff[RC_LENGTH-1]){	//�Ō�̃f�[�^�̓`�F�b�N�T��
							rc_complete = 1;
							LATA2 =1;
							rc_success = 1;
						}
						else{			//�ʐM�����s
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
    if(TXIE && TXIF){   //���荞�ݖ����ɂ��Ă��Ă��A�ʂ̊��荞�ݗv���ŌĂ΂ꂽ���ɒ��ɓ����Ă��܂��̂ŁB
        //���M���荞��
        //TXIF = 0; //�\�t�g����N���A�ł��Ȃ��炵��


        TXREG = u1txbuff.txdata[u1txbuff.head];	//���M�o�b�t�@�Ƀf�[�^���Z�b�g
        u1txbuff.head++;    //���炷
        if(u1txbuff.head >= BUFF_SIZE){
            u1txbuff.head = 0;
        }
        if(u1txbuff.end == u1txbuff.head || u1txbuff.end == 0){  //head��end����v = ���M�I��
            TXIE = 0;   //���荞�݂̖����� = ���M��~
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
    TRISB = 0xff;   //GPIO�����ׂăn�C�C���s�[�_���X�ɂ���
    ioc_init();
    INTCONbits.IOCIE = 1;
    SLEEP();
    INTCONbits.IOCIE = 0;
    RESET();
}

//�^�C�}���荞�݂ň������ŌĂ�
//
inline uint8_t roop_manager(void){
    roop_f = 1;
    if(busy){   //���[�v������ĂȂ�
        //��������G���[����
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

/*�f�[�^���M�֐�
 *����  : ���M�f�[�^�z��C���M�f�[�^��
 *�Ԃ�l : ����
 */
void data_send(int *txdata, int length){
	uint8_t i;
	for(i = 0; i < length; i++){
		//set_data_buff(txdata[i]);
		putc_UART(txdata[i]);
	}
	//TXIE = 1;	//���M���荞�ݗL����(��̃��[�v���ɓ��ꂽ��ق�̂�����Ǝ��ԒZ�k�ɂȂ�͂������ǂ܂��ǂ���)
}

/*�`�F�b�N�T���v�Z�֐�
 * �����@�@�F �f�[�^�z��C�f�[�^��(���M�f�[�^ - 1)
 * �Ԃ�l�@�F �`�F�b�N�T��
 */
uint8_t calc_checksum(int *data, int data_length){
	uint8_t checksum = 0;
	uint8_t i;
	for(i = 0; i < data_length; i++){
		checksum += data[i];
	}
	return checksum;
}