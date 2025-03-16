#ifndef _FUMES_H_
#define _FUMES_H_

#include "ls1x.h"


// 变量宏定义
#define _ADCX_R 510		//稳定状态下的采样均值，用于多个同类传感器之间的数据校准
#define R0 		58769	//这是在纯净空气下久置至少一小时后计算获得的MQ2电阻值


void Smoke_Init(void);
int Median_Read_Data(int* arr, int len);
void Smoke_Read_Data(int* smoke_temp);
#endif

