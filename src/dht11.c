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
#include "dht11.h"
// 复位DHT11
void DHT11_Rst(void)
{
	DHT11_IO_Out();	 // SET OUTPUT
	DHT11_DQ_OUT(0); // 拉低DQ
	delay_ms(20);	 // 拉低至少18ms
	DHT11_DQ_OUT(1); // DQ=1
	delay_us(30);	 // 主机拉高20~40us
}
// IO设置为输入模式
void DHT11_IO_In(void)
{

	gpio_set_direction(GPIO_PIN_17, GPIO_Mode_In);
}

// IO设置为输出模式
void DHT11_IO_Out(void)
{
	gpio_set_direction(GPIO_PIN_17, GPIO_Mode_Out);
}

// 等待DHT11的回应
// 返回1:未检测到DHT11的存在
// 返回0:存在
uint8_t DHT11_Check(void)
{
	uint8_t retry = 0;
	DHT11_IO_In();					   // SET INPUT
	while (DHT11_DQ_IN && retry < 100) // DHT11会拉低40~80us
	{
		retry++;
		//delay_us(1);
	}
	if (retry >= 100)
		return 1;
	else
		retry = 0;
	while (!DHT11_DQ_IN && retry < 100) // DHT11拉低后会再次拉高40~80us
	{
		retry++;
		//delay_us(1);
	};
	if (retry >= 100)
		return 1;
	return 0;
}

// 从DHT11读取一个位
// 返回值：1/0
uint8_t DHT11_Read_Bit(void)
{
	uint8_t retry = 0;
	while (DHT11_DQ_IN && retry < 100) // 等待变为低电平
	{
		retry++;
		//delay_us(1);
	}
	retry = 0;
	while (!DHT11_DQ_IN && retry < 100) // 等待变高电平
	{
		retry++;
		//delay_us(1);
	}
	delay_us(40); // 等待40us
	if (DHT11_DQ_IN)
		return 1;
	else
		return 0;
}

// 从DHT11读取一个字节
// 返回值：读到的数据
uint8_t DHT11_Read_Byte(void)
{
	uint8_t i, dat;
	dat = 0;
	for (i = 0; i < 8; i++)
	{
		dat <<= 1;
		dat |= DHT11_Read_Bit();
	}
	return dat;
}

// 从DHT11读取一次数据
// temp:温度值(范围:0~50°)
// humi:湿度值(范围:20%~90%)
// 返回值：0,正常;1,读取失败
uint8_t DHT11_Read_Data(uint16_t *temp,uint16_t *humi)    
{        
 	uint8_t buf[5];
	uint8_t i;
	DHT11_Rst();
	if(DHT11_Check()==0)
	{
		for(i=0;i<5;i++)	//读取40位数据
		{
			buf[i]=DHT11_Read_Byte();
		}
		if((buf[0]+buf[1]+buf[2]+buf[3])==buf[4])
		{
			*humi = buf[0] * 10 + buf[1];
			*temp = buf[2] * 10 + buf[3];
		}
	}
	else 
		return 1;
	return 0;	    
}


// 初始化DHT11的IO口 DQ 同时检测DHT11的存在
// 返回1:不存在
// 返回0:存在
uint8_t DHT11_Init(void)
{
	gpio_pin_remap(GPIO_PIN_17, GPIO_FUNC_GPIO);
	DHT11_IO_Out();
	DHT11_Rst();
	return DHT11_Check();
}