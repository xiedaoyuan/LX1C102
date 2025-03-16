#include "fumes.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_adc.h"
#include "iic.h"
#include "oled.h"
#include "math.h"
#include "stdlib.h"
#include "string.h"

// 烟雾传感器变量定义
int cvalue = 0;
int found = 0;
int tolerance = 5;
int diff;
     FP32 t = 610.45;
     FP32 V = 3.3;

     #define m  t + V

static char str[50];
/*
*功  能：烟雾传感器节点初始化
*参  数：无
*返回值：无
*/
void Smoke_Init(void)
{
    uint16_t adcx[5] = { 0 };
    uint16_t adcx_temp = 0;
    uint8_t i = 0;
	uint8_t t = 0;

    // AFIO_RemapConfig(AFIOB, 16, GPIO_FUNC_GPIO);        // 初始化ADC通道4引脚
    // // gpio_pin_remap(GPIO_PIN_16, GPIO_FUNC_GPIO);
    // Adc_powerOn();                                  // 打开ADC电源
    Adc_open(ADC_CHANNEL_I6);                       // 开启ADC通道4
    // 无限循环，用于持续读取和校准 ADC 值
    while (1)
    {
        // 读取并计算 ADC 的平均值，然后乘以 2 以调整量程并显示
        adcx_temp = Adc_getVoltage(ADC_CHANNEL_I6);        // ADC电压采集  单位：毫伏

       // 如果新读取的 ADC 值与数组中的某个值相似(+,-tolerance)，则退出循环
        for (t = 0; t < 5; t++)
        {
            diff = (int)adcx_temp - (int)adcx[t];  // 将两个无符号数都强制转换为有符号数
            
            if (diff >= -(int)tolerance && diff <= (int)tolerance)
            {
                found = 1;  // 如果找到相似的值，将 found 设为 1
                break;      // 跳出 for 循环
            }
        }
        // 找到相似值，跳出 while(1) 循环
        if (found)
        {
            OLED_Show_Str(65, 4, "456", 16);              // OLED显示字符串
            break;
        }
        else
        {
            // 未找到相似值，将新的 ADC 值存入数组
            adcx[i] = adcx_temp;
            i++;
            // 保持数组索引在0到4之间循环
            i %= 5;
        }
        delay_ms(500);
    }
    // 计算并存储烟雾浓度的校准值
    cvalue = _ADCX_R - adcx_temp;
}

/*
*功  能：获取中位数值
*参  数：中位数数组，中位数长度
*返回值：无
*/
int Median_Read_Data(int* arr, int len)
{
    // 对数组进行排序
    // qsort(arr, len, sizeof(int), (int(*)(const void*, const void*))strcmp);

    // 获取中位数
    if (len % 2 == 0)
    {
        // 数组长度是偶数，返回中间两个数的平均值
        return (arr[len / 2 - 1] + arr[len / 2]) / 2;
    } else
    {
        // 数组长度是奇数，返回中间的数
        return arr[len / 2];
    }
}

/*
功  能：计算烟雾浓度
参  数: * adcx_temp		电压值
		* smoke_temp	烟雾浓度值
返回值: 无
*/
void Smoke_Read_Data(int* smoke_temp)
{
    // 存储数据
    int adcx_data1[5] = { 0 };
    uint8_t i = 0;
    // 采集5次ADC数据并存入数组
    for (i = 0; i < 5; i++)
    {
        adcx_data1[i] = Adc_getVoltage(ADC_CHANNEL_I6) * 2;        // ADC电压采集  单位：毫伏
        delay_ms(100);
    }

    // 获取ADC数据的中位数
    *smoke_temp = Median_Read_Data(adcx_data1, 5);
    *smoke_temp /= 25;
}
