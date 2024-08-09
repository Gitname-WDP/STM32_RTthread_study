/*  Copyright (s) 2019 ���ڰ������Ƽ����޹�˾
 *  All rights reserved
 * 
 * �ļ����ƣ�Buzzer.c
=
 *--------------------------------------------------
*/
#include "buzzer.h"


uint8_t BUZZER_INTERVAL = BUZZER_PERIOD;
uint8_t BUZZER_ACTIVE_FLAG = 0;


/*
 *  ��������void BuzzerInit(void)
 *  �����������
 *  �����������
 *  ����ֵ����
 *  �������ã���ʼ��������������
*/
void BuzzerInit(void)
{
    // ����GPIO�Ľṹ�����
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    // ʹ�ܷ�������GPIO��Ӧ��ʱ��
    Buzzer_GPIO_CLK_EN();
    
    GPIO_InitStruct.GPIO_Pin = Buzzer_GPIO_PIN;         // ѡ�������������
    GPIO_InitStruct.GPIO_Mode = GPIO_Mode_Out_PP;    	// ����Ϊ�������ģʽ
    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;  	// ���ŷ�ת�ٶ�����Ϊ��
    
    // ��ʼ����������
    GPIO_Init(Buzzer_GPIO_PORT, &GPIO_InitStruct);
    
    // �رշ�����
    Buzzer(0);
}




