#ifndef _KEY_H_
#define _KEY_H_

#include "ls1x_gpio.h"

#define KEY1 GPIO_PIN_22
#define KEY2 GPIO_PIN_23
#define KEY3 GPIO_PIN_24
#define KEY4 GPIO_PIN_25

void KEY_Init(void);
uint8_t KEY_Scan(void);

#endif