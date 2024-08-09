/*  Copyright (s) 2019 深圳百问网科技有限公司
 *  All rights reserved
 * 
 * 文件名称：Buzzer.c
=
 *--------------------------------------------------
*/
#include "buzzer.h"


uint8_t BUZZER_INTERVAL = BUZZER_PERIOD;
uint8_t BUZZER_ACTIVE_FLAG = 0;


/*
 *  函数名：void BuzzerInit(void)
 *  输入参数：无
 *  输出参数：无
 *  返回值：无
 *  函数作用：初始化蜂鸣器的引脚
*/
void BuzzerInit(void)
{
    // 定义GPIO的结构体变量
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    // 使能蜂鸣器的GPIO对应的时钟
    Buzzer_GPIO_CLK_EN();
    
    GPIO_InitStruct.GPIO_Pin = Buzzer_GPIO_PIN;         // 选择蜂鸣器的引脚
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_Out_PP;    	// 设置为推挽输出模式
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;  	// 引脚反转速度设置为快
    
    // 初始化引脚配置
    GPIO_Init(Buzzer_GPIO_PORT, &GPIO_InitStruct);
    
    // 关闭蜂鸣器
    Buzzer(0);
}

/*
 *  函数名：void ControlBuzzerRang(uint16_t period)
 *  输入参数：控制蜂鸣器响或不响
 *  输出参数：无
 *  返回值：无
 *  函数作用：输出方波
*/
void ControlBuzzerRang(uint8_t ctrl)
{
	if(ctrl == 0)
	{
		BUZZER_ACTIVE_FLAG = 0;
	}
	else
	{
		BUZZER_ACTIVE_FLAG = 1;
	}

}

void buzzer_active(void)
{
	if(BUZZER_ACTIVE_FLAG == 0)
	{
		Buzzer(0);
	}
	else
	{
		if(0 < BUZZER_INTERVAL <= (BUZZER_PERIOD/2))
			{Buzzer(1);}
		else if((BUZZER_PERIOD/2) < BUZZER_INTERVAL <= BUZZER_PERIOD)
			{Buzzer(0);}

	}

}



























