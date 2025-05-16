#include "ls1x_gpio.h"
#include "yuyin.h"

void YUYIN_Init(void)
{
    gpio_set_direction(YUYIN_PIN_1, GPIO_Mode_Out);
    gpio_set_direction(YUYIN_PIN_2, GPIO_Mode_Out);
    gpio_set_direction(YUYIN_PIN_3, GPIO_Mode_Out);
    gpio_set_direction(YUYIN_PIN_4, GPIO_Mode_Out);
    gpio_write_pin(YUYIN_PIN_1, 1);
    gpio_write_pin(YUYIN_PIN_2, 1);
    gpio_write_pin(YUYIN_PIN_3, 1);
    gpio_write_pin(YUYIN_PIN_4, 1);
}

void YUYIN_Ctrl(uint8_t flag)
{
    if (flag == 1)
    {
        gpio_write_pin(YUYIN_PIN_1, 0);
        gpio_write_pin(YUYIN_PIN_2, 1);
        gpio_write_pin(YUYIN_PIN_3, 1);
        gpio_write_pin(YUYIN_PIN_4, 1);
    } 
    if (flag == 2)
    {
        gpio_write_pin(YUYIN_PIN_1, 1);
        gpio_write_pin(YUYIN_PIN_2, 0);
        gpio_write_pin(YUYIN_PIN_3, 1);
        gpio_write_pin(YUYIN_PIN_4, 1);
    }
    if (flag == 3)
    {
        gpio_write_pin(YUYIN_PIN_1, 1);
        gpio_write_pin(YUYIN_PIN_2, 1);
        gpio_write_pin(YUYIN_PIN_3, 0);
        gpio_write_pin(YUYIN_PIN_4, 1);
    }
    if (flag == 4)
    {
        gpio_write_pin(YUYIN_PIN_1, 1);
        gpio_write_pin(YUYIN_PIN_2, 1);
        gpio_write_pin(YUYIN_PIN_3, 1); 
        gpio_write_pin(YUYIN_PIN_4, 0);
    }
}
