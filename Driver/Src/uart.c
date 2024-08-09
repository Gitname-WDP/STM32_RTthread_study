#include "uart.h"

uint8_t txBuffer[BUFFER_SIZE];
uint8_t rxBuffer[BUFFER_SIZE];
volatile uint16_t txWriteIndex = 0, txReadIndex = 0;
volatile uint16_t rxWriteIndex = 0, rxReadIndex = 0;


UsartDataConfig Usart1Connfig = {0, 0, BUFFER_SIZE};
UsartDataConfig Usart2Connfig = {0, 0, BUFFER_SIZE};
UsartDataConfig Usart3Connfig = {0, 0, BUFFER_SIZE};

uint8_t usart_recv_data_flag = 0;	//���յ����ݵı�־������1�յ�����bit0 = 1 ����2�յ�����bit1 = 1 �Դ�����
USART_TypeDef* usart_num[5] = {USART1, USART2, USART3, UART4, UART5,};

uint16_t CMD_FLAG = 0;

/*name:  usart1Init
@brief:  usart1��ʼ�� PA9-USART2_TX PA10-USART2_RX
@param:  
@return: 
*/
bool usart1Init(void)
{
    GPIO_InitTypeDef GPIO_InitStructure;	
    USART_InitTypeDef USART_InitStructure;

    // ʱ��GPIOA, AFIO, USART1ʹ��
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO | RCC_APB2Periph_USART1, ENABLE);

    // ����USART1 Tx (PA.9)
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    // ����USART1 Rx (PA.10)
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING; // ��������
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    // ����USART1
    USART_InitStructure.USART_BaudRate = 115200;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART1, &USART_InitStructure);

    // ʹ��USART1
    USART_Cmd(USART1, ENABLE);

    // ʹ��USART1�ж�
    USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);

    // ����NVIC
    NVIC_InitTypeDef NVIC_InitStructure;
    NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    return true;
}



/*name:  usart2Init
@brief:  usart2��ʼ�� PA2-USART2_TX PA3-USART2_RX
@param:  
@return: 
*/
bool usart2Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure ;	
    USART_InitTypeDef USART_InitStructure;

	//ʱ��GPIOA,AFIO,USART2ʹ��
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2 , ENABLE);
 
	//����USART2 Tx (PA.2)
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

    // ����USART2 Rx (PA.3)
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING; // ��������
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    // ����USART2
    USART_InitStructure.USART_BaudRate = 115200;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART2, &USART_InitStructure);

    // ʹ��USART2
    USART_Cmd(USART2, ENABLE);
	
	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);

	return true;
}

/*name:  usart3Init
@brief:  usart3��ʼ�� PB10 USART3_TX     PB11 USART3_RX
@param:  
@return: 
*/
bool usart3Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure ;	
    USART_InitTypeDef USART_InitStructure;

	//ʱ��GPIOA,AFIO,USART2ʹ��
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3 , ENABLE);
 
	//����USART3 Tx (PB.10)
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

    // ����USART3 Rx (PB.11)
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING; // ��������
    GPIO_Init(GPIOB, &GPIO_InitStructure);

    // ����USART3
    USART_InitStructure.USART_BaudRate = 115200;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART3, &USART_InitStructure);

    // ʹ��USART2
    USART_Cmd(USART3, ENABLE);
	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
	return true;
}

void usart1SendData(uint8_t data)
{
    uint16_t nextWriteIndex = (txWriteIndex + 1) % BUFFER_SIZE;
    
    // ��黺�����Ƿ����
    if (nextWriteIndex == txReadIndex)
    {
        // �����������ȴ����ߴ���������
        return;
    }
    
    txBuffer[txWriteIndex] = data;
    txWriteIndex = nextWriteIndex;
    
    // ʹ�ܷ����ж�
    USART_ITConfig(USART1, USART_IT_TXE, ENABLE);// ʹ�ܷ����ж�
}

void usart1SendString(const char* str)
{
    while (*str)
    {
        usart1SendData(*str++);
    }
}

void USART1_IRQHandler(void)
{
     // �����ж�
    if (USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
    {
        uint8_t data = USART_ReceiveData(USART1);
        uint16_t nextWriteIndex = (rxWriteIndex + 1) % BUFFER_SIZE;
        
        if (nextWriteIndex != rxReadIndex)
        {
            rxBuffer[rxWriteIndex] = data;
            rxWriteIndex = nextWriteIndex;
        }
        // ���򣬽��ջ����������������ݻ���������
    }

    // �����ж�
    if (USART_GetITStatus(USART1, USART_IT_TXE) != RESET)
    {
        if (txReadIndex != txWriteIndex)
        {
            USART_SendData(USART1, txBuffer[txReadIndex]);
            txReadIndex = (txReadIndex + 1) % BUFFER_SIZE;
        }
        else
        {
            // ���÷����ж�
            USART_ITConfig(USART1, USART_IT_TXE, DISABLE);
        }
    }
}


void USART2_IRQHandler(void)
{
	 // �����ж�
    if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
    {
        uint8_t data = USART_ReceiveData(USART2);
        uint16_t nextWriteIndex = (rxWriteIndex + 1) % BUFFER_SIZE;
        
        if (nextWriteIndex != rxReadIndex)
        {
            rxBuffer[rxWriteIndex] = data;
            rxWriteIndex = nextWriteIndex;
        }
        // ���򣬽��ջ����������������ݻ���������
    }

    // �����ж�
    if (USART_GetITStatus(USART2, USART_IT_TXE) != RESET)
    {
        if (txReadIndex != txWriteIndex)
        {
            USART_SendData(USART2, txBuffer[txReadIndex]);
            txReadIndex = (txReadIndex + 1) % BUFFER_SIZE;
        }
        else
        {
            // ���÷����ж�
            USART_ITConfig(USART2, USART_IT_TXE, DISABLE);
        }
    }

}

void USART3_IRQHandler(void)
{
		// �����ж�
	   if (USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)
	   {
		   uint8_t data = USART_ReceiveData(USART3);
		   uint16_t nextWriteIndex = (rxWriteIndex + 1) % BUFFER_SIZE;
		   
		   if (nextWriteIndex != rxReadIndex)
		   {
			   rxBuffer[rxWriteIndex] = data;
			   rxWriteIndex = nextWriteIndex;
		   }
		   // ���򣬽��ջ����������������ݻ���������
	   }
	
	   // �����ж�
	   if (USART_GetITStatus(USART3, USART_IT_TXE) != RESET)
	   {
		   if (txReadIndex != txWriteIndex)
		   {
			   USART_SendData(USART3, txBuffer[txReadIndex]);
			   txReadIndex = (txReadIndex + 1) % BUFFER_SIZE;
		   }
		   else
		   {
			   // ���÷����ж�
			   USART_ITConfig(USART3, USART_IT_TXE, DISABLE);
		   }
	   }


}

void USART4_IRQHandler(void)
{

}

void USART5_IRQHandler(void)
{

}


void myprintf(const char *format, ...)
{
	// ����һ���ַ�������Ϊ�����������ڴ洢��ʽ������ַ���
    char buffer[BUFFER_SIZE];
    
    // ����һ�� va_list ���͵ı��� args�����ڴ洢�ɱ�����б�
    va_list args;
    
    // ��ʼ�� args��ʹ��ָ��ɱ�����б����ʼλ��
    va_start(args, format);
    
    // ����ʽ������ַ���д�뻺���� buffer �У����д�� BUFFER_SIZE-1 ���ַ�
    // vsnprintf �������� format �еĸ�ʽ��ָ���ʽ���ɱ�����б� args����������洢�� buffer ��
    vsnprintf(buffer, BUFFER_SIZE, format, args);
    
    // ���� args ��ʹ��
    va_end(args);
    
    // ���� usart1SendString �������� buffer �е�����ͨ�� USART1 ���ͳ�ȥ
    usart1SendString(buffer);
}


void usartCyclicCheck(void)
{
	return;

}



