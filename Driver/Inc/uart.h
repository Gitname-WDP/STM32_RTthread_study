/*
 filename: uart.h
 brief:	uart驱动程序

author: 王东鹏


*/
#ifndef UART_H
#define UART_H

#include "driver.h"

#define BUFFER_SIZE 256

#define BUFFER_SIZE 1024
#define CMD_LEN 20
extern uint8_t usart_recv_data_flag;	//接收到数据的标志，串口1收到数据bit0 = 1 串口2收到数据bit1 = 1 以此类推

extern uint8_t txBuffer[BUFFER_SIZE];
extern uint8_t rxBuffer[BUFFER_SIZE];
extern volatile  uint16_t txReadIndex;
extern volatile  uint16_t rxReadIndex;
extern volatile  uint16_t txWriteIndex;
extern volatile  uint16_t rxWriteIndex;
extern uint16_t CMD_FLAG;	//16位对应16个命令



typedef struct 
{
	uint16_t  write_offset;
	uint16_t  read_offset;
	uint16_t  freelength;

}UsartDataConfig;


bool usart1Init(void);
bool usart2Init(void);
bool usart3Init(void);

void usart1SendData(uint8_t data);

void usart1SendString(const char* str);

uint8_t* usart2Receive(uint16_t len);
void usart3Send(uint8_t* sendbuf ,uint16_t len);
uint8_t* usart3Receive(uint16_t len);

void usartSendRecv(void);

void USART1_IRQHandler(void);


void USART2_IRQHandler(void);


void USART3_IRQHandler(void);


void USART4_IRQHandler(void);


void USART5_IRQHandler(void);

void usartCyclicCheck(void);
void myprintf(const char *format, ...);


#endif






































