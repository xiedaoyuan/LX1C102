#include "iic.h"

// MPU IIC 延时函数
//  #define IIC_Delay()  delay_us(1)

void IIC_Delay(void)
{
	int i=1;
	while (i)
	{
		i--;
	}
}

// 初始化IIC
void IIC_Init(void)
{ 
	gpio_pin_remap(GPIO_PIN_1, GPIO_FUNC_GPIO);
	gpio_pin_remap(GPIO_PIN_57, GPIO_FUNC_GPIO);

	gpio_set_direction(GPIO_PIN_1, GPIO_Mode_Out);  
	gpio_set_direction(GPIO_PIN_57, GPIO_Mode_Out); 

	// 初始上拉，I2C默认空闲状态
	I2C_SCL_HIGH;
	I2C_SDA_HIGH;
}

// IO方向设置
void SDA_IN(void)
{
	gpio_set_direction(I2C_Soft_SDA, GPIO_Mode_In); // 配置输入模式
}

void SDA_OUT(void)
{
	gpio_set_direction(I2C_Soft_SDA, GPIO_Mode_Out); // 配置输出模式
	I2C_SDA_HIGH;
}

// 产生IIC起始信号
void IIC_Start(void)
{
	SDA_OUT(); // sda线输出
	I2C_SDA_HIGH;
	I2C_SCL_HIGH;
    IIC_Delay();
	I2C_SDA_LOW; // START:when CLK is high,DATA change form high to low
	IIC_Delay();
	I2C_SCL_LOW; // 钳住I2C总线，准备发送或接收数据
}
// 产生IIC停止信号
void IIC_Stop(void)
{
	SDA_OUT(); // sda线输出
	I2C_SCL_LOW;
	I2C_SDA_LOW; // STOP:when CLK is high DATA change form low to high
	IIC_Delay();
	I2C_SCL_HIGH;
	I2C_SDA_HIGH; // 发送I2C总线结束信号
	IIC_Delay();
}
// 等待应答信号到来
// 返回值：1，接收应答失败
//         0，接收应答成功
uint8_t IIC_Wait_Ack(void)
{
	uint8_t ucErrTime = 0;
	SDA_IN(); // SDA设置为输入
	I2C_SDA_HIGH;
	IIC_Delay();
	I2C_SCL_HIGH;
	IIC_Delay();
	while (I2C_SDA_READ)
	{
		ucErrTime++;
		if (ucErrTime > 250)
		{
			IIC_Stop();
			return 1;
		}
	}
	I2C_SCL_LOW; // 时钟输出0
	return 0;
}
// 产生ACK应答
void IIC_Ack(void)
{
	I2C_SCL_LOW;
	SDA_OUT();
	I2C_SDA_LOW;
	IIC_Delay();
	I2C_SCL_HIGH;
	IIC_Delay();
	I2C_SCL_LOW;
}
// 不产生ACK应答
void IIC_NAck(void)
{
	I2C_SCL_LOW;
	SDA_OUT();
	I2C_SDA_HIGH;
	IIC_Delay();
	I2C_SCL_HIGH;
	IIC_Delay();
	I2C_SCL_LOW;
}
// IIC发送一个字节
// 返回从机有无应答
// 1，有应答
// 0，无应答
void IIC_Send_Byte(uint8_t txd)
{
	uint8_t t;
	SDA_OUT();
	I2C_SCL_LOW; // 拉低时钟开始数据传输
	for (t = 0; t < 8; t++)
	{
		if ((txd & 0x80) >> 7)
		{
			I2C_SDA_HIGH;
		}
		else
		{
			I2C_SDA_LOW;
		}

		txd <<= 1;

		I2C_SCL_HIGH;
		IIC_Delay();
		I2C_SCL_LOW;
		IIC_Delay();
	}
}
// 读1个字节，ack=1时，发送ACK，ack=0，发送nACK
uint8_t IIC_Read_Byte(unsigned char ack)
{
	unsigned char i, receive = 0;
	SDA_IN(); // SDA设置为输入
	for (i = 0; i < 8; i++)
	{
		I2C_SCL_LOW;
		IIC_Delay();
		I2C_SCL_HIGH;
		receive <<= 1;
		if (I2C_SDA_READ)
			receive++;
		IIC_Delay();
	}
	if (!ack)
		IIC_NAck(); // 发送nACK
	else
		IIC_Ack(); // 发送ACK
	return receive;
}
