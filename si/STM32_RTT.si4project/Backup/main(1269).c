#include "driver.h"
#include "rtthread.h"
#include "board.h"
#include "rtthread.h"

rt_thread_t root_thread = NULL;
rt_err_t main_thread_result;

void main_task()
{
	while(1)
	{
		
		rgbRedOn();
		rt_thread_sleep(500);
		rgbRedOff();
		rt_thread_sleep(500);
	}

}

int main(void)
{

    uint8_t* data = NULL;
	uint8_t red_led_flag = 0;
	//SystemCoreClock = 72000000;
	NVIC_SetPriorityGrouping(NVIC_PriorityGroup_2);		//�ж����ȼ�����
	
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB |
                         RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD |
                         RCC_APB2Periph_GPIOE | RCC_APB2Periph_AFIO, ENABLE );

/*	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB |
                         RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD |
                         RCC_APB2Periph_GPIOE | RCC_APB2Periph_AFIO, DISABLE);*/
	rgbInit();
	usart1Init();
	usart2Init();
	BuzzerInit();
	rt_kprintf("��ʼִ�г��򣡣�����\r\n");
//	myprintf("��ʼִ�г��򣡣�����\r\n");
	root_thread = rt_thread_create("root", main_task, NULL, 256, RT_THREAD_PRIORITY_MAX-12, 20) ;
	root_thread = rt_thread_startup(root_thread);
	if(root_thread != RT_EOK)
	{
	rt_kprintf("root�̴߳���ʧ�ܣ�����\r\n");
	;
//		myprintf("root�̴߳���ʧ�ܣ�����\r\n");
	}
	else
	{
	;
//		myprintf("root�̴߳����ɹ�!!!\r\n");
	}

//	myprintf("��������ִ��ERROR!!!!!\r\n");

	return 0;
	
}


































