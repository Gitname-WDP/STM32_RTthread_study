/*
 filename: buzzer.h
 brief:	f��������������	

author: ������


*/
#ifndef BUZZER_H
#define BUZZER_H

#include "driver.h"
#define BUZZER_PERIOD 50*2
extern uint8_t BUZZER_INTERVAL;
extern uint8_t BUZZER_ACTIVE_FLAG;


/*********************
 * ���ź궨��
**********************/
#define Buzzer_GPIO_PIN           GPIO_Pin_8
#define Buzzer_GPIO_PORT          GPIOA
#define Buzzer_GPIO_CLK_EN()      RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE)

/*********************
 * �����궨��
**********************/
#define Buzzer(flag)              GPIO_WriteBit(Buzzer_GPIO_PORT, Buzzer_GPIO_PIN, flag?Bit_SET:Bit_RESET)  

/*
 *  ��������void BuzzerInit(void)
 *  �����������
 *  �����������
 *  ����ֵ����
 *  �������ã���ʼ��������������
*/
extern void BuzzerInit(void);

/*
 *  ��������void ControlBuzzerRang(uint16_t period)
 *  ���������period-�������������������ڣ�f=1/(2*period)
 *  �����������
 *  ����ֵ����
 *  �������ã���ʼ��ϵͳ�δ�ʱ�ӵ�Ƶ�ʺ��ж����ȼ�
*/
extern void ControlBuzzerRang(uint8_t ctrl);

void buzzer_active(void);



#endif

