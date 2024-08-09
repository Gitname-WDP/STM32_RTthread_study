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
	NVIC_SetPriorityGrouping(NVIC_PriorityGroup_2);		//中断优先级设置
	
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
	rt_kprintf("开始执行程序！！！！\r\n");
//	myprintf("开始执行程序！！！！\r\n");
	root_thread = rt_thread_create("root", main_task, NULL, 256, RT_THREAD_PRIORITY_MAX-12, 20) ;
	root_thread = rt_thread_startup(root_thread);
	if(root_thread != RT_EOK)
	{
	rt_kprintf("root线程创建失败！！！\r\n");
	;
//		myprintf("root线程创建失败！！！\r\n");
	}
	else
	{
	;
//		myprintf("root线程创建成功!!!\r\n");
	}

//	myprintf("结束程序执行ERROR!!!!!\r\n");

	return 0;
	
}


































