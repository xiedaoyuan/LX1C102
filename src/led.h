#ifndef _LED_H_
#define _LED_H_

#include "ls1x_gpio.h"

#define LED1 GPIO_PIN_20
#define LED2 GPIO_PIN_28
#define LED3 GPIO_PIN_27
#define LED4 GPIO_PIN_26
#define LED1_ON gpio_write_pin(LED1,GPIO_HIGH)
#define LED2_ON gpio_write_pin(LED2,GPIO_HIGH)
#define LED3_ON gpio_write_pin(LED3,GPIO_HIGH)
#define LED4_ON gpio_write_pin(LED4,GPIO_HIGH)
#define LED1_OFF gpio_write_pin(LED1,GPIO_LOW)
#define LED2_OFF gpio_write_pin(LED2,GPIO_LOW)
#define LED3_OFF gpio_write_pin(LED3,GPIO_LOW)
#define LED4_OFF gpio_write_pin(LED4,GPIO_LOW)

void LED_Init(void);
void LED_ON(uint8_t LED,uint8_t LED_Sta);



#endif