#include "RGBLED.h"
#include "ls1x_gpio.h"

void RGB_LED_Init(void)
{
    gpio_pin_remap(RED_PIN,GPIO_FUNC_GPIO);
    gpio_pin_remap(GREEN_PIN,GPIO_FUNC_GPIO);
    gpio_pin_remap(BLUE_PIN,GPIO_FUNC_GPIO);
    gpio_set_direction(RED_PIN,GPIO_Mode_Out);
    gpio_set_direction(GREEN_PIN,GPIO_Mode_Out);  
    gpio_set_direction(BLUE_PIN,GPIO_Mode_Out);  
}