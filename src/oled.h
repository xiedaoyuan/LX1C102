#ifndef __OLED_H_
#define __OLED_H_

// #include "ch32v30x.h"

#define I2C_OLED        0x78
#define IIC_OLED_CMD    0x00    //写命令
#define IIC_OLED_DATA   0x40    //写数据    


//OLED控制用函数
void OLED_Hardware_Init(void);
void OLED_WR_Byte(uint8_t dat, uint8_t cmd_or_data);
void OLED_Display_On(void);
void OLED_Display_Off(void);
void OLED_Init(void);
void OLED_Clear(void);
void OLED_Draw(uint8_t byte);
void OLED_DrawBMP(unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1, unsigned char BMP[]);
void OLED_ShowChar(uint16_t x, uint16_t y, uint8_t num, uint8_t wsize);
void OLED_ShowString(uint16_t x, uint16_t y, char *p, uint8_t wsize);
void OLED_ShowInt32Num(uint16_t x, uint16_t y, int32_t num, uint8_t len, uint8_t wsize);
void OLED_DrawFont16(uint16_t x, uint16_t y, unsigned char *s);
void OLED_DrawFont32(uint16_t x, uint16_t y, char *s);
void OLED_Show_Str(uint16_t x, uint16_t y, char *str, uint8_t wsize);

#endif

