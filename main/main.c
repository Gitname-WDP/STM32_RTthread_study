#include "rtthread.h"
#include "board.h"
#include "rtthread.h"

rt_thread_t root_thread = NULL;
rt_err_t thread_result;
rt_thread_t LOW_THREAD_ID = NULL;


// SystemInit 复位函数
void run_entry()
{
	while(1)
	{
		Buzzer(0);
		rt_thread_sleep(500);
		Buzzer(0);
		rt_thread_sleep(500);
	}

}

void LOW_ENTRY()
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
	rt_kprintf("开始执行程序！！！！\r\n");
	
	root_thread = rt_thread_create("run", run_entry, NULL, 256, RT_THREAD_PRIORITY_MAX-12, 20) ;
	LOW_THREAD_ID = rt_thread_create("LOW", LOW_ENTRY, NULL, 256, RT_THREAD_PRIORITY_MAX-1, 20) ;
	thread_result = rt_thread_startup(root_thread);
	if(thread_result != RT_EOK)
	{
		rt_kprintf("run线程创建失败！！！\r\n");
	}
	else
	{
		rt_kprintf("run线程创建成功！！！\r\n");
	}
	thread_result = rt_thread_startup(LOW_THREAD_ID);
	if(thread_result != RT_EOK)
	{
		rt_kprintf("LOW线程创建失败！！！\r\n");
	}
	else
	{
		rt_kprintf("LOW线程创建成功！！！\r\n");
	}

	rt_kprintf("所有线程创建完毕！！！\r\n");

	return 0;
	
}


































