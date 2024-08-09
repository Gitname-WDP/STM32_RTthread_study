/*
 @filename: rgb.c
 @brief:	rgb��������Դ�ļ�

 @author: ������

*/


#include "rgb.h"

/*
 @name:   rgbInit
 @brief:  ��ʼ��rgb��IO���ã�ʹ��ʱ��
 @param:  ��
 @return: ��
*/
void rgbInit(void)
{
 
 	GPIO_InitTypeDef RgbGpioInitStructure;
	
	RCC_APB2PeriphClockCmd(RGB_RCC , ENABLE);		//GPIOBʱ��ʹ��
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
 @brief:  �������
 @param:  ��
 @return: ��
*/
void rgbRedOn(void)
{
 	GPIO_ResetBits(GPIOB , GPIO_Pin_0);
	
	return ;
}

/*
 @name:   rgbRedOff
 @brief:  �رպ��
 @param:  ��
 @return: ��
*/
void rgbRedOff(void)
{
 	GPIO_SetBits(GPIOB , GPIO_Pin_0);
	
	return ;
}

/*
 @name:   rgbGreenOn
 @brief:  �����̵�
 @param:  ��
 @return: ��
*/
void rgbGreenOn(void)
{
 	GPIO_ResetBits(GPIOB , GPIO_Pin_1);
	
	return ;
}


/*
 @name:   rgbGreenOff
 @brief:  �ر��̵�
 @param:  ��
 @return: ��
*/
void rgbGreenOff(void)
{
 	GPIO_SetBits(GPIOB , GPIO_Pin_1);
	
	return ;
}

/*
 @name:   rgbBlueOn
 @brief:  ��������
 @param:  ��
 @return: ��
*/
void rgbBlueOn(void)
{
 	GPIO_ResetBits(GPIOB , GPIO_Pin_5);
	
	return ;
}

/*
 @name:   rgbBlueOff
 @brief:  �ر�����
 @param:  ��
 @return: ��
*/
void rgbBlueOff(void)
{
 	GPIO_SetBits(GPIOB , GPIO_Pin_5);
	
	return ;
}

/*
 @name:   rgbWhiteOn
 @brief:  �����׵�
 @param:  ��
 @return: ��
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
 @brief:  �رհ׵�
 @param:  ��
 @return: ��
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
 @brief:  �����ϵ�
 @param:  ��
 @return: ��
*/
void rgbPurpleOn(void)
{
	rgbRedOn();
	rgbBlueOn();
	return ;
}

/*
 @name:   rgbPurpleOff
 @brief:  �ر��ϵ�
 @param:  ��
 @return: ��
*/
void rgbPurpleOff(void)
{
 	rgbRedOff();
	rgbBlueOff();
	return ;
}

/*
 @name:   rgbCyanOn
 @brief:  �������
 @param:  ��
 @return: ��
*/
void rgbCyanOn(void)
{
 	rgbGreenOn();
	rgbBlueOn();
	return ;
}

/*
 @name:   rgbCyanOff
 @brief:  �ر����
 @param:  ��
 @return: ��
*/
void rgbCyanOff(void)
{
 	rgbGreenOff();
	rgbBlueOff();
	return ;
}

/*
 @name:   rgbYellowOn
 @brief:  �����Ƶ�
 @param:  ��
 @return: ��
*/
void rgbYellowOn(void)
{
	rgbRedOn();
 	rgbGreenOn();
	return ;
}

/*
 @name:   rgbYellowOff
 @brief:  �رջƵ�
 @param:  ��
 @return: ��
*/
void rgbYellowOff(void)
{
 	rgbRedOff();
 	rgbGreenOff();
	return ;
}



















































