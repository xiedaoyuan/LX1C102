#ifndef _RGBLED_H_
#define _RGBLED_H_

#include "ls1x.h"

#define RED_PIN GPIO_PIN_29
#define GREEN_PIN GPIO_PIN_30
#define BLUE_PIN GPIO_PIN_31

#define RED_CTRL(X) gpio_write_pin(RED_PIN,X);
#define GREEN_CTRL(X) gpio_write_pin(GREEN_PIN,X);
#define BLUE_CTRL(X) gpio_write_pin(BLUE_PIN,X);

void RGB_LED_Init(void);
#endif