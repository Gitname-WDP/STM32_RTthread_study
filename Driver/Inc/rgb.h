/*
 @filename: rgb.h
 @brief:	   RGB驱动程序头文件

 @author: 王东鹏


*/
#ifndef RGB_H
#define RGB_H

#include "rgb.h"
#include "driver.h"

#define RGB_RCC		RCC_APB2Periph_GPIOB
#define RGB_GPIO 	GPIOB
#define RGB_R_PIN 	GPIO_Pin_0
#define RGB_G_PIN 	GPIO_Pin_1
#define RGB_B_PIN 	GPIO_Pin_5


void rgbInit(void);

void rgbRedOn(void);
void rgbRedOff(void);

void rgbGreenOn(void);
void rgbGreenOff(void);

void rgbBlueOn(void);
void rgbBlueOff(void);

void rgbWhiteOn(void);
void rgbWhiteOff(void);

void rgbPurpleOn(void);
void rgbPurpleOff(void);

void rgbCyanOn(void);
void rgbCyanOff(void);

void rgbYellowOn(void);
void rgbYellowOff(void);















#endif





































