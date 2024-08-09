#include "uart.h"

uint8_t txBuffer[BUFFER_SIZE];
uint8_t rxBuffer[BUFFER_SIZE];
volatile uint16_t txWriteIndex = 0, txReadIndex = 0;
volatile uint16_t rxWriteIndex = 0, rxReadIndex = 0;


UsartDataConfig Usart1Connfig = {0, 0, BUFFER_SIZE};
UsartDataConfig Usart2Connfig = {0, 0, BUFFER_SIZE};
UsartDataConfig Usart3Connfig = {0, 0, BUFFER_SIZE};

uint8_t usart_recv_data_flag = 0;	//接收到数据的标志，串口1收到数据bit0 = 1 串口2收到数据bit1 = 1 以此类推
USART_TypeDef* usart_num[5] = {USART1, USART2, USART3, UART4, UART5,};

uint16_t CMD_FLAG = 0;

/*name:  usart1Init
@brief:  usart1初始化 PA9-USART2_TX PA10-USART2_RX
@param:  
@return: 
*/
bool usart1Init(void)
{
    GPIO_InitTypeDef GPIO_InitStructure;	
    USART_InitTypeDef USART_InitStructure;

    // 时钟GPIOA, AFIO, USART1使能
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO | RCC_APB2Periph_USART1, ENABLE);

    // 配置USART1 Tx (PA.9)
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    // 配置USART1 Rx (PA.10)
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING; // 浮空输入
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    // 配置USART1
    USART_InitStructure.USART_BaudRate = 115200;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART1, &USART_InitStructure);

    // 使能USART1
    USART_Cmd(USART1, ENABLE);

    // 使能USART1中断
    USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);

    // 配置NVIC
    NVIC_InitTypeDef NVIC_InitStructure;
    NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
    NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
    NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
    NVIC_Init(&NVIC_InitStructure);

    return true;
}



/*name:  usart2Init
@brief:  usart2初始化 PA2-USART2_TX PA3-USART2_RX
@param:  
@return: 
*/
bool usart2Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure ;	
    USART_InitTypeDef USART_InitStructure;

	//时钟GPIOA,AFIO,USART2使能
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_AFIO, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2 , ENABLE);
 
	//配置USART2 Tx (PA.2)
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
	GPIO_Init(GPIOA, &GPIO_InitStructure);

    // 配置USART2 Rx (PA.3)
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING; // 浮空输入
    GPIO_Init(GPIOA, &GPIO_InitStructure);

    // 配置USART2
    USART_InitStructure.USART_BaudRate = 115200;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART2, &USART_InitStructure);

    // 使能USART2
    USART_Cmd(USART2, ENABLE);
	
	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);

	return true;
}

/*name:  usart3Init
@brief:  usart3初始化 PB10 USART3_TX     PB11 USART3_RX
@param:  
@return: 
*/
bool usart3Init(void)
{
	GPIO_InitTypeDef GPIO_InitStructure ;	
    USART_InitTypeDef USART_InitStructure;

	//时钟GPIOA,AFIO,USART2使能
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3 , ENABLE);
 
	//配置USART3 Tx (PB.10)
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStructure.GPIO_Mode  = GPIO_Mode_AF_PP;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

    // 配置USART3 Rx (PB.11)
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING; // 浮空输入
    GPIO_Init(GPIOB, &GPIO_InitStructure);

    // 配置USART3
    USART_InitStructure.USART_BaudRate = 115200;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_Init(USART3, &USART_InitStructure);

    // 使能USART2
    USART_Cmd(USART3, ENABLE);
	USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
	return true;
}

void usart1SendData(uint8_t data)
{
    uint16_t nextWriteIndex = (txWriteIndex + 1) % BUFFER_SIZE;
    
    // 检查缓冲区是否溢出
    if (nextWriteIndex == txReadIndex)
    {
        // 缓冲区满，等待或者处理溢出情况
        return;
    }
    
    txBuffer[txWriteIndex] = data;
    txWriteIndex = nextWriteIndex;
    
    // 使能发送中断
    USART_ITConfig(USART1, USART_IT_TXE, ENABLE);// 使能发送中断
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
     // 接收中断
    if (USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
    {
        uint8_t data = USART_ReceiveData(USART1);
        uint16_t nextWriteIndex = (rxWriteIndex + 1) % BUFFER_SIZE;
        
        if (nextWriteIndex != rxReadIndex)
        {
            rxBuffer[rxWriteIndex] = data;
            rxWriteIndex = nextWriteIndex;
        }
        // 否则，接收缓冲区满，丢弃数据或处理溢出情况
    }

    // 发送中断
    if (USART_GetITStatus(USART1, USART_IT_TXE) != RESET)
    {
        if (txReadIndex != txWriteIndex)
        {
            USART_SendData(USART1, txBuffer[txReadIndex]);
            txReadIndex = (txReadIndex + 1) % BUFFER_SIZE;
        }
        else
        {
            // 禁用发送中断
            USART_ITConfig(USART1, USART_IT_TXE, DISABLE);
        }
    }
}


void USART2_IRQHandler(void)
{
	 // 接收中断
    if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
    {
        uint8_t data = USART_ReceiveData(USART2);
        uint16_t nextWriteIndex = (rxWriteIndex + 1) % BUFFER_SIZE;
        
        if (nextWriteIndex != rxReadIndex)
        {
            rxBuffer[rxWriteIndex] = data;
            rxWriteIndex = nextWriteIndex;
        }
        // 否则，接收缓冲区满，丢弃数据或处理溢出情况
    }

    // 发送中断
    if (USART_GetITStatus(USART2, USART_IT_TXE) != RESET)
    {
        if (txReadIndex != txWriteIndex)
        {
            USART_SendData(USART2, txBuffer[txReadIndex]);
            txReadIndex = (txReadIndex + 1) % BUFFER_SIZE;
        }
        else
        {
            // 禁用发送中断
            USART_ITConfig(USART2, USART_IT_TXE, DISABLE);
        }
    }

}

void USART3_IRQHandler(void)
{
		// 接收中断
	   if (USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)
	   {
		   uint8_t data = USART_ReceiveData(USART3);
		   uint16_t nextWriteIndex = (rxWriteIndex + 1) % BUFFER_SIZE;
		   
		   if (nextWriteIndex != rxReadIndex)
		   {
			   rxBuffer[rxWriteIndex] = data;
			   rxWriteIndex = nextWriteIndex;
		   }
		   // 否则，接收缓冲区满，丢弃数据或处理溢出情况
	   }
	
	   // 发送中断
	   if (USART_GetITStatus(USART3, USART_IT_TXE) != RESET)
	   {
		   if (txReadIndex != txWriteIndex)
		   {
			   USART_SendData(USART3, txBuffer[txReadIndex]);
			   txReadIndex = (txReadIndex + 1) % BUFFER_SIZE;
		   }
		   else
		   {
			   // 禁用发送中断
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
	// 声明一个字符数组作为缓冲区，用于存储格式化后的字符串
    char buffer[BUFFER_SIZE];
    
    // 声明一个 va_list 类型的变量 args，用于存储可变参数列表
    va_list args;
    
    // 初始化 args，使其指向可变参数列表的起始位置
    va_start(args, format);
    
    // 将格式化后的字符串写入缓冲区 buffer 中，最多写入 BUFFER_SIZE-1 个字符
    // vsnprintf 函数按照 format 中的格式化指令，格式化可变参数列表 args，并将结果存储在 buffer 中
    vsnprintf(buffer, BUFFER_SIZE, format, args);
    
    // 结束 args 的使用
    va_end(args);
    
    // 调用 usart1SendString 函数，将 buffer 中的内容通过 USART1 发送出去
    usart1SendString(buffer);
}


void usartCyclicCheck(void)
{
	return;

}



