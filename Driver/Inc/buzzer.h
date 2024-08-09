/*
 filename: buzzer.h
 brief:	f蜂鸣器驱动程序	

author: 王东鹏


*/
#ifndef BUZZER_H
#define BUZZER_H

#include "driver.h"
#define BUZZER_PERIOD 50*2
extern uint8_t BUZZER_INTERVAL;
extern uint8_t BUZZER_ACTIVE_FLAG;


/*********************
 * 引脚宏定义
**********************/
#define Buzzer_GPIO_PIN           GPIO_Pin_8
#define Buzzer_GPIO_PORT          GPIOA
#define Buzzer_GPIO_CLK_EN()      RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE)

/*********************
 * 函数宏定义
**********************/
#define Buzzer(flag)              GPIO_WriteBit(Buzzer_GPIO_PORT, Buzzer_GPIO_PIN, flag?Bit_SET:Bit_RESET)  

/*
 *  函数名：void BuzzerInit(void)
 *  输入参数：无
 *  输出参数：无
 *  返回值：无
 *  函数作用：初始化蜂鸣器的引脚
*/
extern void BuzzerInit(void);

/*
 *  函数名：void ControlBuzzerRang(uint16_t period)
 *  输入参数：period-蜂鸣器发出响声的周期，f=1/(2*period)
 *  输出参数：无
 *  返回值：无
 *  函数作用：初始化系统滴答时钟的频率和中断优先级
*/
extern void ControlBuzzerRang(uint8_t ctrl);

void buzzer_active(void);



#endif

