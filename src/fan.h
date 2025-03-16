#ifndef _FAN_H_
#define _FAN_H_
#include "ls1x_gpio.h"

#define FAN GPIO_PIN_34
#define FAN_CTRL(X) gpio_write_pin(FAN,X);
void FAN_Ctrl(uint8_t sta);
void FAN_Init(void);
#endif
