#include "fan.h"
#include "ls1x_gpio.h"

void FAN_Init(void)
{
gpio_set_direction(FAN,GPIO_Mode_Out);  //设置引脚为输出
gpio_write_pin(FAN,1);
}

void FAN_Ctrl(uint8_t sta)
{
    if(sta==1)
    {
        FAN_CTRL(1);
        delay_ms(10);
        FAN_CTRL(0);
        delay_ms(10);

    }
    if(sta==2)
    {
        FAN_CTRL(1);
        delay_ms(50);
        FAN_CTRL(0);
        delay_ms(50);
        
    }
    if(sta==3)
    {
        FAN_CTRL(1);
    }
    if(sta==4)
    {
        FAN_CTRL(0);
    }

}