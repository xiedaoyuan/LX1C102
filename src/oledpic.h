#ifndef _OLEDPIC_H_
#define _OLEDPIC_H_ 

//图片取模：阴码，列行式，逆向（低位在前）
unsigned char BKRC[500] = {
0x00,0x00,0x80,0xC0,0xE0,0xE0,0xF0,0xF8,0xF8,0xFC,0xFC,0xFE,0xFF,0xFF,0xFF,0xFE,
0xFC,0xF8,0xF8,0xF0,0xE0,0xE0,0xC0,0xC0,0x80,0x80,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0xFE,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x07,0x07,0x07,0x01,
0x01,0x00,0x81,0xC1,0xC1,0xE3,0xF7,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0x7F,0x7F,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,
0x00,0x00,0x00,0x00,0x00,0x00,0x7F,0x7F,0xFF,0xFF,0xFF,0xFF,0xF3,0xF3,0xE1,0xE1,
0xC0,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x3F,0x3F,0x1F,0x07,
0x07,0x07,0x03,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x03,
0x03,0x03,0x07,0x1F,0x1F,0x1F,0x1F,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

};

unsigned char DHT11P[500] = {
0x00,0x00,0x00,0xE0,0xF0,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,
0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,
0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0xF8,0xF0,0x00,0x00,0x00,
0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x80,0xC0,0xE0,0x70,0x38,0x1C,
0x0C,0x0E,0x06,0x06,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x03,0x06,0x06,0x0E,0x0C,
0x1C,0x38,0x70,0xE0,0xC0,0x80,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,
0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,0xF0,0xFE,0x0F,0x03,0x00,0x38,0xFE,0xCE,
0x87,0x1E,0x3C,0x70,0xE0,0xC0,0x80,0x80,0xF8,0xFC,0x6E,0x63,0x73,0x33,0x31,0x33,
0x37,0x3E,0x3C,0x00,0x03,0x0F,0xFE,0xF0,0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,
0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,0x0F,0x7F,0xF0,0xC0,0x00,0x00,0x00,0x01,
0x03,0x03,0x03,0x03,0x03,0x03,0x03,0xE1,0xFF,0x1F,0x06,0x9E,0xF8,0xE0,0x00,0x00,
0x00,0x00,0x00,0x00,0xC0,0xF0,0x7F,0x0F,0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,
0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,0x00,0x00,0x01,0x03,0x07,0x0E,0x1C,0x38,
0x30,0x70,0x60,0x60,0xC0,0xC4,0xCF,0xCF,0xCC,0xCC,0xC6,0xC7,0x63,0x60,0x70,0x30,
0x38,0x1C,0x0E,0x07,0x03,0x01,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0x00,0x00,0x00,
0x00,0x00,0x00,0x07,0x0F,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,
0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,
0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x18,0x1F,0x0F,0x00,0x00,0x00
};

unsigned char picture[500]={
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xE0,0xF0,0x38,0x18,0x98,0x98,0xB8,0x38,
0xF8,0xF0,0xC0,0x00,0x80,0xC0,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0xFF,0xFF,0x00,0xFF,0xFF,0xFF,0xFF,0x00,
0xFF,0xFF,0xFF,0x3E,0x0F,0x07,0x0F,0x1F,0x7E,0xFC,0xF0,0xC0,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0xF8,0xFE,0x0F,0x07,0xF8,0xFF,0xFF,0xFF,0xFF,0xF8,
0x73,0x0F,0xFF,0xFC,0xF0,0xE0,0xE0,0x70,0x78,0x3F,0x3F,0x0F,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x03,0x07,0x0F,0x1E,0x1C,0x19,0x19,0x19,0x19,0x1D,
0x1C,0x0E,0x07,0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
    };
#endif