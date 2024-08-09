/*
 @filename: rgb.c
 @brief:	rgb驱动程序源文件

 @author: 王东鹏

*/


#include "rgb.h"

/*
 @name:   rgbInit
 @brief:  初始化rgb的IO设置，使能时钟
 @param:  无
 @return: 无
*/
void rgbInit(void)
{
 
 	GPIO_InitTypeDef RgbGpioInitStructure;
	
	RCC_APB2PeriphClockCmd(RGB_RCC , ENABLE);		//GPIOB时钟使能
	RgbGpioInitStructure.GPIO_Pin   = RGB_R_PIN | RGB_G_PIN | RGB_B_PIN;
	RgbGpioInitStructure.GPIO_Speed = GPIO_Speed_10MHz;
	RgbGpioInitStructure.GPIO_Mode  = GPIO_Mode_Out_PP;
	
	GPIO_Init(GPIOB, &RgbGpioInitStructure);
	rgbRedOff();
	rgbGreenOff();
	rgbBlueOff();
	return ;
}

/*
 @name:   rgbRedOn
 @brief:  点亮红灯
 @param:  无
 @return: 无
*/
void rgbRedOn(void)
{
 	GPIO_ResetBits(GPIOB , GPIO_Pin_0);
	
	return ;
}

/*
 @name:   rgbRedOff
 @brief:  关闭红灯
 @param:  无
 @return: 无
*/
void rgbRedOff(void)
{
 	GPIO_SetBits(GPIOB , GPIO_Pin_0);
	
	return ;
}

/*
 @name:   rgbGreenOn
 @brief:  点亮绿灯
 @param:  无
 @return: 无
*/
void rgbGreenOn(void)
{
 	GPIO_ResetBits(GPIOB , GPIO_Pin_1);
	
	return ;
}


/*
 @name:   rgbGreenOff
 @brief:  关闭绿灯
 @param:  无
 @return: 无
*/
void rgbGreenOff(void)
{
 	GPIO_SetBits(GPIOB , GPIO_Pin_1);
	
	return ;
}

/*
 @name:   rgbBlueOn
 @brief:  点亮蓝灯
 @param:  无
 @return: 无
*/
void rgbBlueOn(void)
{
 	GPIO_ResetBits(GPIOB , GPIO_Pin_5);
	
	return ;
}

/*
 @name:   rgbBlueOff
 @brief:  关闭蓝灯
 @param:  无
 @return: 无
*/
void rgbBlueOff(void)
{
 	GPIO_SetBits(GPIOB , GPIO_Pin_5);
	
	return ;
}

/*
 @name:   rgbWhiteOn
 @brief:  点亮白灯
 @param:  无
 @return: 无
*/
void rgbWhiteOn(void)
{
	rgbRedOn();
 	rgbGreenOn();
	rgbBlueOn();
	return ;
}

/*
 @name:   rgbWhiteOff
 @brief:  关闭白灯
 @param:  无
 @return: 无
*/
void rgbWhiteOff(void)
{
 	rgbRedOff();
 	rgbGreenOff();
	rgbBlueOff();
	return ;
}

/*
 @name:   rgbPurpleOn
 @brief:  点亮紫灯
 @param:  无
 @return: 无
*/
void rgbPurpleOn(void)
{
	rgbRedOn();
	rgbBlueOn();
	return ;
}

/*
 @name:   rgbPurpleOff
 @brief:  关闭紫灯
 @param:  无
 @return: 无
*/
void rgbPurpleOff(void)
{
 	rgbRedOff();
	rgbBlueOff();
	return ;
}

/*
 @name:   rgbCyanOn
 @brief:  点亮青灯
 @param:  无
 @return: 无
*/
void rgbCyanOn(void)
{
 	rgbGreenOn();
	rgbBlueOn();
	return ;
}

/*
 @name:   rgbCyanOff
 @brief:  关闭青灯
 @param:  无
 @return: 无
*/
void rgbCyanOff(void)
{
 	rgbGreenOff();
	rgbBlueOff();
	return ;
}

/*
 @name:   rgbYellowOn
 @brief:  点亮黄灯
 @param:  无
 @return: 无
*/
void rgbYellowOn(void)
{
	rgbRedOn();
 	rgbGreenOn();
	return ;
}

/*
 @name:   rgbYellowOff
 @brief:  关闭黄灯
 @param:  无
 @return: 无
*/
void rgbYellowOff(void)
{
 	rgbRedOff();
 	rgbGreenOff();
	return ;
}



















































