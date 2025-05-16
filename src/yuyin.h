#ifndef _YUYIN_H_
#define _YUYIN_H

#include "ls1x_gpio.h"
#define YUYIN_PIN_1 GPIO_PIN_35
#define YUYIN_PIN_2 GPIO_PIN_36
#define YUYIN_PIN_3 GPIO_PIN_33
#define YUYIN_PIN_4 GPIO_PIN_28
void YUYIN_Init(void);
void YUYIN_Ctrl(uint8_t flag);
#endif