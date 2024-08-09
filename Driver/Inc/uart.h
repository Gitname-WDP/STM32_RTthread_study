/*
 filename: uart.h
 brief:	uart��������

author: ������


*/
#ifndef UART_H
#define UART_H

#include "driver.h"

#define BUFFER_SIZE 256

#define BUFFER_SIZE 1024
#define CMD_LEN 20
extern uint8_t usart_recv_data_flag;	//���յ����ݵı�־������1�յ�����bit0 = 1 ����2�յ�����bit1 = 1 �Դ�����

extern uint8_t txBuffer[BUFFER_SIZE];
extern uint8_t rxBuffer[BUFFER_SIZE];
extern volatile  uint16_t txReadIndex;
extern volatile  uint16_t rxReadIndex;
extern volatile  uint16_t txWriteIndex;
extern volatile  uint16_t rxWriteIndex;
extern uint16_t CMD_FLAG;	//16λ��Ӧ16������



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






































