#include "rtthread.h"
#include "board.h"
#include "rtthread.h"

rt_thread_t root_thread = NULL;
rt_err_t thread_result;
rt_thread_t LOW_THREAD_ID = NULL;


// SystemInit ��λ����
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
	rt_kprintf("��ʼִ�г��򣡣�����\r\n");
	
	root_thread = rt_thread_create("run", run_entry, NULL, 256, RT_THREAD_PRIORITY_MAX-12, 20) ;
	LOW_THREAD_ID = rt_thread_create("LOW", LOW_ENTRY, NULL, 256, RT_THREAD_PRIORITY_MAX-1, 20) ;
	thread_result = rt_thread_startup(root_thread);
	if(thread_result != RT_EOK)
	{
		rt_kprintf("run�̴߳���ʧ�ܣ�����\r\n");
	}
	else
	{
		rt_kprintf("run�̴߳����ɹ�������\r\n");
	}
	thread_result = rt_thread_startup(LOW_THREAD_ID);
	if(thread_result != RT_EOK)
	{
		rt_kprintf("LOW�̴߳���ʧ�ܣ�����\r\n");
	}
	else
	{
		rt_kprintf("LOW�̴߳����ɹ�������\r\n");
	}

	rt_kprintf("�����̴߳�����ϣ�����\r\n");

	return 0;
	
}


































