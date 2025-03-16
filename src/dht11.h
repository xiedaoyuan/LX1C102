#ifndef __DHT11_H
#define __DHT11_H 

#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_ptimer.h"
#include "ls1x_common.h"
#include "ls1x_gpio.h"
#include "ls1x_exti.h"
#include "ls1x_latimer.h"
#include "ls1x_rtc.h"
#include "ls1c102_touch.h"
#include "ls1x_string.h"
#include "ls1x_wdg.h"
#include "ls1x_uart.h"
#include "ls1x_spi.h"
#include "ls1c102_i2c.h"
#include "Config.h"

/******    DHT11端口宏定义  *******/

/*************************************************************
** IO操作函数
*************************************************************/											   
#define	DHT11_DQ_OUT(X)   	gpio_write_pin(GPIO_PIN_17,X)//GPIO_WriteBit( DHT11_GPIO,DHT11_PIN,(BitAction)X )// 数据端口输出 
#define	DHT11_DQ_IN    		gpio_get_pin(GPIO_PIN_17)//GPIO_ReadInputDataBit( DHT11_GPIO,DHT11_PIN )	   // 数据端口输入

unsigned char DHT11_Init(void);//初始化DHT11
uint8_t DHT11_Read_Data(uint16_t *temp,uint16_t *humi);    
unsigned char DHT11_Read_Byte(void);//读出一个字节
unsigned char DHT11_Read_Bit(void);//读出一个位
unsigned char DHT11_Check(void);//检测是否存在DHT11
void DHT11_Rst(void);//复位DHT11    

void DHT11_IO_Out(void);
void DHT11_IO_In(void);

#endif















