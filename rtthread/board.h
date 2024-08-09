
#ifndef __BOARD_H__
#define __BOARD_H__
#include "stm32f10x.h"
#include "driver.h"
 
void rt_hw_board_init(void);
 
void SysTick_Handler(void);
int uart_init(void);
void rt_hw_console_output(const char *str);
#endif


