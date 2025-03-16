#ifndef __IIC_H
#define __IIC_H



#include "ls1x_gpio.h"
#include "ls1x_latimer.h"

 
#define I2C_Soft_SCL GPIO_PIN_57
#define I2C_Soft_SDA GPIO_PIN_1

#define I2C_SCL_LOW     gpio_write_pin(I2C_Soft_SCL, 0);
#define I2C_SCL_HIGH 	gpio_write_pin(I2C_Soft_SCL, 1);
#define I2C_SDA_LOW  	gpio_write_pin(I2C_Soft_SDA, 0);
#define I2C_SDA_HIGH	gpio_write_pin(I2C_Soft_SDA, 1);
#define I2C_SDA_READ	gpio_get_pin(I2C_Soft_SDA)



//IIC所有操作函数
void IIC_Delay(void);				        //MPU IIC延时函数
void IIC_Init(void);                        //初始化IIC的IO口				 
void IIC_Start(void);				        //发送IIC开始信号
void IIC_Stop(void);	  			        //发送IIC停止信号
void IIC_Send_Byte(uint8_t txd);			//IIC发送一个字节
uint8_t IIC_Read_Byte(unsigned char ack);   //IIC读取一个字节
uint8_t IIC_Wait_Ack(void); 				//IIC等待ACK信号
void IIC_Ack(void);					        //IIC发送ACK信号
void IIC_NAck(void);				        //IIC不发送ACK信号



#endif 
