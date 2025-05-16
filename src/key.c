#include "key.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
void KEY_Init(void)
{   
    gpio_set_direction(KEY1, GPIO_Mode_In);
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
    return key_Flag;
}