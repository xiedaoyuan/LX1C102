#ifndef _KEY_H_
#define _KEY_H_

#include "ls1x_gpio.h"

#define KEY1 GPIO_PIN_22

void KEY_Init(void);
uint8_t KEY_Scan(void);

#endif