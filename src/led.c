#include "led.h"
#include "ls1x_gpio.h"

void LED_Init(void)
{
gpio_set_direction(LED1,GPIO_Mode_Out);  //设置引脚为输出
// gpio_set_direction(LED2,GPIO_Mode_Out);  //设置引脚为输出
// gpio_set_direction(LED3,GPIO_Mode_Out);  //设置引脚为输出
// gpio_set_direction(LED4,GPIO_Mode_Out);  //设置引脚为输出
}

void LED_ON(uint8_t LED,uint8_t LED_Sta)
{
    if(LED==1)
    {
        if(LED_Sta==1)
        LED1_ON;
        else
        LED1_OFF;
    }
    //  if(LED==2)
    // {
    //     if(LED_Sta==1)
    //     LED2_ON;
    //     else
    //     LED2_OFF;
    // }
    //  if(LED==3)
    // {
    //     if(LED_Sta==1)
    //     LED3_ON;
    //     else
    //     LED3_OFF;
    // }
    //  if(LED==4)
    // {
    //     if(LED_Sta==1)
    //     LED4_ON;
    //     else
    //     LED4_OFF;
    // }

}