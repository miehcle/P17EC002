
//???????????

#include "ECCP.h"
#include "control_h_bridge.h"
#include "integer.h"
#include "clip.h"
#include "boost_con.h"

int16_t set_halfbridge_duty(uint8_t id, int16_t power){
    static int16_t power_dd[2] = {479, 32};    //?????????????
    power = CLIP(0, power, 1023);
    power_dd[id-1] += CLIP(-5, power - power_dd[id-1], 5);    //?????? ????????
    
    //power_dd = CLIP(-1023, power_dd, 1023);
    
    if(id == 1){
		power_dd[id-1] = CLIP(255, power_dd[id-1], 479);
	}
	else if(id == 2){
		power_dd[id-1] = CLIP(32, power_dd[id-1], 256);
	}
    set_PWM_duty(id, power_dd[id-1]);
    return power_dd[id-1];
}