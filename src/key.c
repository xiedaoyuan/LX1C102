#include "key.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
void KEY_Init(void)
{   
    gpio_pin_remap(KEY1,GPIO_FUNC_GPIO);
    gpio_pin_remap(KEY2,GPIO_FUNC_GPIO);
    gpio_pin_remap(KEY3,GPIO_FUNC_GPIO);
    gpio_pin_remap(KEY4,GPIO_FUNC_GPIO);
    gpio_pin_remap(KEY5,GPIO_FUNC_GPIO);
    gpio_set_direction(KEY1, GPIO_Mode_In);
    gpio_set_direction(KEY2, GPIO_Mode_In);
    gpio_set_direction(KEY3, GPIO_Mode_In);
    gpio_set_direction(KEY4, GPIO_Mode_In);
    gpio_set_direction(KEY5, GPIO_Mode_In);
}


uint8_t KEY_Scan(void)
{
    uint8_t key_Flag;
    if (gpio_get_pin(KEY1))
    {
        delay_ms(10);
        if (gpio_get_pin(KEY1))
            key_Flag = 1;
        while (gpio_get_pin(KEY1))
            ;
    }
    else if (gpio_get_pin(KEY2))
    {
        delay_ms(10);
        if (gpio_get_pin(KEY2))
            key_Flag = 2;
        while (gpio_get_pin(KEY2))
            ;
    }
    else if (gpio_get_pin(KEY3))
    {
        delay_ms(10);
        if (gpio_get_pin(KEY3))
            key_Flag = 3;
        while (gpio_get_pin(KEY3))
            ;
    }
    else if (gpio_get_pin(KEY4))
    {
        delay_ms(10);
        if (gpio_get_pin(KEY4))
            key_Flag = 4;
        while (gpio_get_pin(KEY4))
            ;
    }
    else if (gpio_get_pin(KEY5))
    {
        delay_ms(10);
        if (gpio_get_pin(KEY5))
            key_Flag = 5;
        while (gpio_get_pin(KEY5))
            ;
    }
    return key_Flag;
}