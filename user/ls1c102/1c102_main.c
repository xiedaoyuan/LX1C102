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
#include "yuyin.h"
#include "fumes.h"

uint8_t received_data=0;
uint16_t temp,humi;
uint16_t smoke;
uint16_t temp_warn=0x13;
uint16_t humi_warn=0x14;
uint8_t FAN_FLAG;
uint8_t ADC_Value;
uint8_t temp_threshold = 60;
uint8_t humi_threshold = 15;
uint8_t smoke_threshold = 10;
uint8_t SEND_DATA[4]={0xF4,0xF5,0x00,0xFB};
uint8_t Read_Buffer[255];
uint8_t Read_length;
uint8_t send_temp_flag;
uint8_t send_humi_flag;
uint8_t current_interface = 0;
uint8_t abnormal_count = 0;
char str[30];
static uint8_t last_temp = 0, last_humi = 0, last_smoke = 0;
static uint8_t first_run = 1; // 首次运行标志
void ProcessUartCommand(uint8_t *data, uint8_t length)
{
    // 添加调试信息
    printf("Received command: ");
    for(int i = 0; i < length; i++) {
        printf("%c", data[i]);
    }
    printf("\n");

    // 命令格式：TxxHxxSxx (T:温度, H:湿度, S:烟雾)
    if (length == 9 && data[0] == 'T' && data[3] == 'H' && data[6] == 'S') {
        uint8_t new_temp = (data[1] - '0') * 10 + (data[2] - '0');
        uint8_t new_humi = (data[4] - '0') * 10 + (data[5] - '0');
        uint8_t new_smoke = (data[7] - '0') * 10 + (data[8] - '0');
        
        if (new_temp > 0 && new_temp <= 99) temp_threshold = new_temp;
        if (new_humi > 0 && new_humi <= 99) humi_threshold = new_humi;
        if (new_smoke > 0 && new_smoke <= 99) smoke_threshold = new_smoke;
        
        printf("New thresholds set: T=%d, H=%d, S=%d\n", temp_threshold, humi_threshold, smoke_threshold);
    } else {
        printf("Invalid command format!\n");
    }
}
int main(int arg, char *args[])
{
    SystemClockInit();
    GPIOInit();
    RGB_LED_Init();
    LED_Init();
    KEY_Init();
    BEEP_Init();
    OLED_Init();
    FAN_Init();
    EnableInt();
    Smoke_Init();
    Queue_Init(&Circular_queue);
    Uart1_init(115200);
    Adc_powerOn();
    Adc_open(ADC_CHANNEL_I6);
    YUYIN_Init();
    //  ESP8266_Init();
    while(DHT11_Init());
    while (1)
    {   
        if (UART_GetFlagStatus(UART1, UART_LSR_FLAG_RXNE)) {
            uint8_t buffer[10];
            uint8_t len = 0;
            
            // 等待完整命令接收（最多等待100ms）
            uint32_t timeout = 100; // 100ms超时
            while (len < 9 && timeout > 0) {
                if (UART_GetFlagStatus(UART1, UART_LSR_FLAG_RXNE)) {
                    buffer[len++] = UART_ReceiveData(UART1);
                }
                delay_ms(1);
                timeout--;
            }
            
            // 如果接收到完整命令
            if (len == 9) {
                ProcessUartCommand(buffer, len);
            } else {
                printf("Command incomplete or timeout!\n");
            }
        }
        DHT11_Read_Data(&temp,&humi);
        Smoke_Read_Data(&smoke);
        temp /= 10;
        humi /= 10;
        printf("TEMP: %d, HUMI: %d%%RH, SMOKE: %dppm\n", temp, humi, smoke);
        abnormal_count = 0;
      if (first_run) {
        OLED_Clear(); // 仅首次清屏
        OLED_Show_Str(35, 0, "CURRENT", 8); // 显示标题
        
        // 显示初始数据
        sprintf(str, "TEMP:%2d℃", temp);
        OLED_Show_Str(4, 2, str, 8);
        
        sprintf(str, "HUMI:%2d%%RH", humi);
        OLED_Show_Str(4, 4, str, 8);
        
        sprintf(str, "SMOKE:%2dppm", smoke);
        OLED_Show_Str(4, 6, str, 8);
        
        // 初始化历史数据
        last_temp = temp;
        last_humi = humi;
        last_smoke = smoke;
        first_run = 0;
    } 
    else {
        // ====================== 温度显示更新 ======================
        if (temp != last_temp) {
            // 清除旧温度显示区域
            OLED_Show_Str(4, 2, "                ", 8);
            // 显示新温度
            sprintf(str, "TEMP:%2d℃", temp);
            OLED_Show_Str(4, 2, str, 8);
            last_temp = temp;
        }

        // ====================== 湿度显示更新 ======================
        if (humi != last_humi) {
            OLED_Show_Str(4, 4, "                ", 8);
            sprintf(str, "HUMI:%2d%%RH", humi);
            OLED_Show_Str(4, 4, str, 8);
            last_humi = humi;
        }

        // ====================== 烟雾显示更新 ======================
        if (smoke != last_smoke) {
            OLED_Show_Str(4, 6, "                ", 8);
            sprintf(str, "SMOKE:%2dppm", smoke);
            OLED_Show_Str(4, 6, str, 8);
            last_smoke = smoke;
        }
    }
    if(temp > temp_threshold) abnormal_count++;
    if(humi < humi_threshold) abnormal_count++;
    if(smoke > smoke_threshold) abnormal_count++;

        if(abnormal_count == 0) {
            // 无异常，绿灯
            GREEN_CTRL(1);
            RED_CTRL(0);
            LED1_OFF;
            YUYIN_Ctrl(5);
        } else if(abnormal_count == 1) {
            // 单数据或双数据异常，黄灯（红+绿）
            RED_CTRL(1);
            GREEN_CTRL(1);
            LED1_ON;
        } else if(abnormal_count == 2||abnormal_count == 3) {
            // 三数据异常，红灯
            RED_CTRL(1);
            GREEN_CTRL(0);
            LED1_ON;
            YUYIN_Ctrl(4);
        }else if(abnormal_count ==3){
            BEEP_on(1);
            YUYIN_Ctrl(4);
        }
        if (temp > temp_threshold)
        {
            FAN_CTRL(0);
        }
        
        if(temp>=temp_threshold && humi>=humi_threshold && smoke<=smoke_threshold)
        {
            FAN_CTRL(0);
            YUYIN_Ctrl(1);
        }
        if(temp<temp_threshold)
        {
            FAN_CTRL(1);
            BEEP_on(0);
        }
        if(humi<=humi_threshold && temp<=temp_threshold && smoke<=smoke_threshold)
        {
            LED1_ON;
            YUYIN_Ctrl(2);
        }
        if(humi>humi_threshold)
        {
            BEEP_on(0);
        }
        if (smoke > smoke_threshold)
        {
            FAN_CTRL(0);
        }
        
        if(smoke>=smoke_threshold && temp<=temp_threshold && humi>=humi_threshold)
        {
            LED1_ON;
            YUYIN_Ctrl(3);
        }
        if(smoke<smoke_threshold)
        {
            BEEP_on(0);
        }
        if(temp <= temp_threshold && humi >= humi_threshold && smoke <= smoke_threshold)
        {
            BEEP_on(0);
            GREEN_CTRL(1);
            RED_CTRL(0);
            LED1_OFF;
        }
    }
    return 0;
}
