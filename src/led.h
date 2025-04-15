#ifndef _LED_H_
#define _LED_H_

#include "ls1x_gpio.h"

#define LED1 GPIO_PIN_20
#define LED1_ON gpio_write_pin(LED1,GPIO_HIGH)
#define LED1_OFF gpio_write_pin(LED1,GPIO_LOW)

void LED_Init(void);
void LED_ON(uint8_t LED,uint8_t LED_Sta);



#endif