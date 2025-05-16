#ifndef _BEEP_H_
#define _BEEP_H
#include "ls1x_gpio.h"

#define BEEP GPIO_PIN_62
void BEEP_Init(void);
void BEEP_on(uint8_t beep_sta);
#endif