#include "ls1x.h"
#include "ls1x_gpio.h"
#include "UserGpio.h"
#include "Config.h"
#include "led.h"
#include "key.h"
#include "beep.h"
#include "oled.h"
#include "iic.h"
#include "oledpic.h"
#include "dht11.h"
#include "RGBLED.h"
#include "ls1x_uart.h"
#include "ls1x_common.h"
#include "fan.h"
#include "queue.h"
#include "ls1c102_adc.h"

uint8_t received_data=0;
uint16_t temp,humi;
uint16_t temp_warn=0x13;
uint16_t humi_warn=0x14;
uint8_t FAN_FLAG;
uint8_t ADC_Value;
uint8_t temp_threshold = 30;
uint8_t humi_threshold = 65;
uint8_t SEND_DATA[4]={0xF4,0xF5,0x00,0xFB};
uint8_t First[6]={0x7E,0x04,0x03,0x00,0X01,0xEF};
uint8_t Read_Buffer[255];
uint8_t Read_length;
uint8_t MQTT_UP_DATA[8]={0x55,0xAA,0x00,0x00,0x00,0x00,0x00,0xBB};
uint8_t send_temp_flag;
uint8_t send_humi_flag;
char str[30];
char temp_str[30];
char humi_str[30];
int main(int arg, char *args[])
{    
     SystemClockInit();
     GPIOInit();
    //  RGB_LED_Init();
     LED_Init();
    //  KEY_Init();
    //  BEEP_Init();
     OLED_Init();   
    //  FAN_Init();
     EnableInt();
    //  Queue_Init(&Circular_queue);
    //  Uart0_init(9600);
    //  Uart1_init(9600);
     Adc_powerOn();
     Adc_open(ADC_CHANNEL_I6);
    while(DHT11_Init());
    while (1)
    {
        DHT11_Read_Data(&temp,&humi);

        temp /= 10;
        humi /= 10;

        // sprintf(str,"TEMP: %2d℃",temp);
        // OLED_Show_Str(10,0,str,16);

        // sprintf(str,"HUMI: %2d%%RH",humi);
        // OLED_Show_Str(10,2,str,16);

        // sprintf(str,"TEMP_WARN: %2d℃",temp_threshold);
        // OLED_Show_Str(0,4,str,16);

        // sprintf(str,"HUMI_WARN: %2d%%RH",humi_threshold);
        // OLED_Show_Str(0,6,str,16);
        sprintf(temp_str,"TEMP: %2d℃",temp);
        OLED_Show_Str(0,0,temp_str,8);
        sprintf(humi_str,"HUMI: %2d%%RH",humi);
        OLED_Show_Str(0,2,humi_str,8);
    //     MQTT_UP_DATA[2] = temp;
    //     MQTT_UP_DATA[3] = humi;
    //     UART_SendDataALL(UART1, MQTT_UP_DATA, 8);

    //     if(KEY_Scan()==1)
    //     temp_threshold+=1;
    //     if(KEY_Scan()==2)
    //     temp_threshold-=1;
    //     if(KEY_Scan()==3)
    //     humi_threshold+=5;
    //     if(KEY_Scan()==4)
    //     humi_threshold-=5;

    //     if(temp>temp_threshold)
    //     {
    //         BEEP_on(1);
    //         FAN_Ctrl(3);
    //         RED_CTRL(1);
    //         SEND_DATA[2]=temp_warn;
    //         send_temp_flag++;
    //         if(send_temp_flag>=3)
    //         {
    //         UART_SendDataALL(UART0,SEND_DATA,4);
    //         send_temp_flag=0;
    //         }
    //     }
    //     else
    //     {
    //         FAN_Ctrl(4);
    //         RED_CTRL(0);
    //         BEEP_on(0);
    //         send_temp_flag=0;
    //     }
    //     if(humi>humi_threshold)
    //     {
    //         BEEP_on(1);
    //         BLUE_CTRL(1);
    //         SEND_DATA[2]=humi_warn;
    //         BEEP_on(0);
    //         send_humi_flag++;
    //         if(send_humi_flag>=3)
    //         {
    //         UART_SendDataALL(UART0,SEND_DATA,4);
    //         send_humi_flag=0;
    //         }
    //     }
    //     else
    //     {
    //         BLUE_CTRL(0);
    //         send_humi_flag=0;
    //     }
    // }
    // OLED_Show_Str(0,0,"HELLO WORLD",8);
    return 0;
    }
}
