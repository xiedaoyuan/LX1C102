#include "beep.h"
#include "ls1x_gpio.h"

void BEEP_Init(void)
{
gpio_set_direction(BEEP,GPIO_Mode_Out);
gpio_write_pin(BEEP,1);
}

void BEEP_on(uint8_t beep_sta)
{
    if(beep_sta==1)
    gpio_write_pin(BEEP,0);
    if(beep_sta==0)
    gpio_write_pin(BEEP,1);
}