//H�u���b�W����֐�

#include "ECCP.h"
#include "control_h_bridge.h"
#include "integer.h"
#include "clip.h"

int16_t set_motor_power(uint8_t id, int16_t power){
    static int16_t power_dd = 0;    //�O��̃p���[��ۑ����Ă���
    power = CLIP(-1023, power, 1023);
    power_dd += CLIP(-5, power - power_dd, 5);    //�Ȃ߂炩�ω� �ω��ʂ��N���b�v
    
    //power_dd = CLIP(-1023, power_dd, 1023);
    
    if(power_dd >= 0){  //���[�^���] or 0
        power_dd = CLIP(0, power_dd, DUTY_MAX);
        set_PWM_duty(1, power_dd);
        set_PWM_duty(2, 0);
    }
    else{   //���[�^�t�]
        power_dd = CLIP(-DUTY_MAX, power_dd, 0);
        set_PWM_duty(1, 0);
        set_PWM_duty(2, -power_dd); //���ɂ��đ��
    }
    return power_dd;
}

void stop_PWM(void){
    set_PWM_duty(1, 0);
    set_PWM_duty(2, 0);
}
