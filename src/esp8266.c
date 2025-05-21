#include "ls1x_gpio.h"
#include "esp8266.h"
#include "ls1x_uart.h"
#include "Config.h"

void ESP8266_Init(void) {
    Uart1_send("AT\r\n");
    delay_ms(200);
    Uart1_send("AT+CWMODE=1\r\n"); // 设置为STA模式
    delay_ms(200);
    Uart1_send("AT+CWJAP=\"source\",\"88888888\"\r\n"); // 连接WiFi
    delay_ms(200);
    Uart1_send("AT+ATKCLDSTA=\"02775691350334333304\",\"12345678\"\r\n"); // 连接云平台
}