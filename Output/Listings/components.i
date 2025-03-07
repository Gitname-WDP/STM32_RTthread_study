# 1 "..\\rtthread\\src\\components.c"






























 

# 1 "..\\rtthread\\include\\rthw.h"


























 




# 1 "..\\rtthread\\include\\rtthread.h"





























 




# 1 "..\\rtthread\\rtconfig.h"
 






































































































































# 160 "..\\rtthread\\rtconfig.h"







# 36 "..\\rtthread\\include\\rtthread.h"
# 1 "..\\rtthread\\include\\rtdebug.h"


















 




# 25 "..\\rtthread\\include\\rtdebug.h"

 
# 41 "..\\rtthread\\include\\rtdebug.h"







 
# 152 "..\\rtthread\\include\\rtdebug.h"








# 37 "..\\rtthread\\include\\rtthread.h"
# 1 "..\\rtthread\\include\\rtdef.h"




































 




 
# 44 "..\\rtthread\\include\\rtdef.h"







 

 

 




 



 
typedef signed   char                   rt_int8_t;       
typedef signed   short                  rt_int16_t;      
typedef signed   long                   rt_int32_t;      
typedef unsigned char                   rt_uint8_t;      
typedef unsigned short                  rt_uint16_t;     
typedef unsigned long                   rt_uint32_t;     
typedef int                             rt_bool_t;       

 
typedef long                            rt_base_t;       
typedef unsigned long                   rt_ubase_t;      

typedef rt_base_t                       rt_err_t;        
typedef rt_uint32_t                     rt_time_t;       
typedef rt_uint32_t                     rt_tick_t;       
typedef rt_base_t                       rt_flag_t;       
typedef rt_ubase_t                      rt_size_t;       
typedef rt_ubase_t                      rt_dev_t;        
typedef rt_base_t                       rt_off_t;        

 



 

 





 
# 1 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










# 27 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
# 57 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 








      
     typedef  va_list __gnuc_va_list;






# 147 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

# 100 "..\\rtthread\\include\\rtdef.h"
# 106 "..\\rtthread\\include\\rtdef.h"
     






# 177 "..\\rtthread\\include\\rtdef.h"

 

typedef int (*init_fn_t)(void);
# 202 "..\\rtthread\\include\\rtdef.h"

 


 
 

 

 

 

 



 










 


 




 














 

 

 
# 269 "..\\rtthread\\include\\rtdef.h"

 







 








 







 




 
struct rt_list_node
{
    struct rt_list_node *next;                           
    struct rt_list_node *prev;                           
};
typedef struct rt_list_node rt_list_t;                   



 
struct rt_slist_node
{
    struct rt_slist_node *next;                          
};
typedef struct rt_slist_node rt_slist_t;                 



 

 



 




 
struct rt_object
{
    char       name[8];                        
    rt_uint8_t type;                                     
    rt_uint8_t flag;                                     




    rt_list_t  list;                                     
};
typedef struct rt_object *rt_object_t;                   

















 
enum rt_object_class_type
{
    RT_Object_Class_Thread = 0,                          
    RT_Object_Class_Semaphore,                           
    RT_Object_Class_Mutex,                               
    RT_Object_Class_Event,                               
    RT_Object_Class_MailBox,                             
    RT_Object_Class_MessageQueue,                        
    RT_Object_Class_MemHeap,                             
    RT_Object_Class_MemPool,                             
    RT_Object_Class_Device,                              
    RT_Object_Class_Timer,                               
    RT_Object_Class_Module,                              
    RT_Object_Class_Unknown,                             
    RT_Object_Class_Static = 0x80                        
};



 
struct rt_object_information
{
    enum rt_object_class_type type;                      
    rt_list_t                 object_list;               
    rt_size_t                 object_size;               
};



 
# 397 "..\\rtthread\\include\\rtdef.h"

 



 

 



 

















 






 
struct rt_timer
{
    struct rt_object parent;                             

    rt_list_t        row[1];

    void (*timeout_func)(void *parameter);               
    void            *parameter;                          

    rt_tick_t        init_tick;                          
    rt_tick_t        timeout_tick;                       
};
typedef struct rt_timer *rt_timer_t;

 



 
# 461 "..\\rtthread\\include\\rtdef.h"
 



 

 



 



 
# 483 "..\\rtthread\\include\\rtdef.h"








 







 
struct rt_thread
{
     
    char        name[8];                       
    rt_uint8_t  type;                                    
    rt_uint8_t  flags;                                   





    rt_list_t   list;                                    
    rt_list_t   tlist;                                   

     
    void       *sp;                                      
    void       *entry;                                   
    void       *parameter;                               
    void       *stack_addr;                              
    rt_uint32_t stack_size;                              

     
    rt_err_t    error;                                   

    rt_uint8_t  stat;                                    

     
    rt_uint8_t  current_priority;                        
    rt_uint8_t  init_priority;                           




    rt_uint32_t number_mask;







# 549 "..\\rtthread\\include\\rtdef.h"

    rt_ubase_t  init_tick;                               
    rt_ubase_t  remaining_tick;                          

    struct rt_timer thread_timer;                        

    void (*cleanup)(struct rt_thread *tid);              

    rt_uint32_t user_data;                               
};
typedef struct rt_thread *rt_thread_t;

 



 

 



 











 
struct rt_ipc_object
{
    struct rt_object parent;                             

    rt_list_t        suspend_thread;                     
};




 
struct rt_semaphore
{
    struct rt_ipc_object parent;                         

    rt_uint16_t          value;                          
};
typedef struct rt_semaphore *rt_sem_t;


# 621 "..\\rtthread\\include\\rtdef.h"

# 641 "..\\rtthread\\include\\rtdef.h"




 
struct rt_mailbox
{
    struct rt_ipc_object parent;                         

    rt_uint32_t         *msg_pool;                       

    rt_uint16_t          size;                           

    rt_uint16_t          entry;                          
    rt_uint16_t          in_offset;                      
    rt_uint16_t          out_offset;                     

    rt_list_t            suspend_sender_thread;          
};
typedef struct rt_mailbox *rt_mailbox_t;


# 684 "..\\rtthread\\include\\rtdef.h"

 



 

 




 

# 735 "..\\rtthread\\include\\rtdef.h"

# 758 "..\\rtthread\\include\\rtdef.h"

 




 

 



 
enum rt_device_class_type
{
    RT_Device_Class_Char = 0,                            
    RT_Device_Class_Block,                               
    RT_Device_Class_NetIf,                               
    RT_Device_Class_MTD,                                 
    RT_Device_Class_CAN,                                 
    RT_Device_Class_RTC,                                 
    RT_Device_Class_Sound,                               
    RT_Device_Class_Graphic,                             
    RT_Device_Class_I2CBUS,                              
    RT_Device_Class_USBDevice,                           
    RT_Device_Class_USBHost,                             
    RT_Device_Class_SPIBUS,                              
    RT_Device_Class_SPIDevice,                           
    RT_Device_Class_SDIO,                                
    RT_Device_Class_PM,                                  
    RT_Device_Class_Pipe,                                
    RT_Device_Class_Portal,                              
    RT_Device_Class_Timer,                               
    RT_Device_Class_Miscellaneous,                       
    RT_Device_Class_Unknown                              
};



 

















# 821 "..\\rtthread\\include\\rtdef.h"



 










 
# 847 "..\\rtthread\\include\\rtdef.h"

typedef struct rt_device *rt_device_t;


 
struct rt_device
{
    struct rt_object          parent;                    

    enum rt_device_class_type type;                      
    rt_uint16_t               flag;                      
    rt_uint16_t               open_flag;                 

    rt_uint8_t                ref_count;                 
    rt_uint8_t                device_id;                 

     
    rt_err_t (*rx_indicate)(rt_device_t dev, rt_size_t size);
    rt_err_t (*tx_complete)(rt_device_t dev, void *buffer);

     
    rt_err_t  (*init)   (rt_device_t dev);
    rt_err_t  (*open)   (rt_device_t dev, rt_uint16_t oflag);
    rt_err_t  (*close)  (rt_device_t dev);
    rt_size_t (*read)   (rt_device_t dev, rt_off_t pos, void *buffer, rt_size_t size);
    rt_size_t (*write)  (rt_device_t dev, rt_off_t pos, const void *buffer, rt_size_t size);
    rt_err_t  (*control)(rt_device_t dev, int cmd, void *args);






    void                     *user_data;                 
};



 
struct rt_device_blk_geometry
{
    rt_uint32_t sector_count;                            
    rt_uint32_t bytes_per_sector;                        
    rt_uint32_t block_size;                              
};



 
struct rt_device_blk_sectors
{
    rt_uint32_t sector_begin;                            
    rt_uint32_t sector_end;                              
};



 





 
# 917 "..\\rtthread\\include\\rtdef.h"

 
enum
{
    RTGRAPHIC_PIXEL_FORMAT_MONO = 0,
    RTGRAPHIC_PIXEL_FORMAT_GRAY4,
    RTGRAPHIC_PIXEL_FORMAT_GRAY16,
    RTGRAPHIC_PIXEL_FORMAT_RGB332,
    RTGRAPHIC_PIXEL_FORMAT_RGB444,
    RTGRAPHIC_PIXEL_FORMAT_RGB565,
    RTGRAPHIC_PIXEL_FORMAT_RGB565P,
    RTGRAPHIC_PIXEL_FORMAT_BGR565 = RTGRAPHIC_PIXEL_FORMAT_RGB565P,
    RTGRAPHIC_PIXEL_FORMAT_RGB666,
    RTGRAPHIC_PIXEL_FORMAT_RGB888,
    RTGRAPHIC_PIXEL_FORMAT_ARGB888,
    RTGRAPHIC_PIXEL_FORMAT_ABGR888,
    RTGRAPHIC_PIXEL_FORMAT_ARGB565,
    RTGRAPHIC_PIXEL_FORMAT_ALPHA,
};



 




 
struct rt_device_graphic_info
{
    rt_uint8_t  pixel_format;                            
    rt_uint8_t  bits_per_pixel;                          
    rt_uint16_t reserved;                                

    rt_uint16_t width;                                   
    rt_uint16_t height;                                  

    rt_uint8_t *framebuffer;                             
};



 
struct rt_device_rect_info
{
    rt_uint16_t x;                                       
    rt_uint16_t y;                                       
    rt_uint16_t width;                                   
    rt_uint16_t height;                                  
};



 
struct rt_device_graphic_ops
{
    void (*set_pixel) (const char *pixel, int x, int y);
    void (*get_pixel) (char *pixel, int x, int y);

    void (*draw_hline)(const char *pixel, int x1, int x2, int y);
    void (*draw_vline)(const char *pixel, int x, int y1, int y2);

    void (*blit_line) (const char *pixel, int x, int y, rt_size_t size);
};


 


# 1038 "..\\rtthread\\include\\rtdef.h"

 
# 1 "..\\rtthread\\include\\rtlibc.h"






















 




 
# 1 "..\\rtthread\\include\\libc/libc_stat.h"



# 5 "..\\rtthread\\include\\libc/libc_stat.h"

# 50 "..\\rtthread\\include\\libc/libc_stat.h"

# 58 "..\\rtthread\\include\\libc/libc_stat.h"
















 
# 1 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
# 27 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











# 46 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
# 216 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



# 241 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











# 305 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
# 76 "..\\rtthread\\include\\libc/libc_stat.h"
# 1 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"
 
 
 
 









 





 













# 41 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"


  



    typedef unsigned int size_t;    
# 57 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"




    
 
# 73 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"





typedef unsigned int clock_t;     
typedef unsigned int time_t;      

#pragma push
#pragma anon_unions

struct tm {
    int tm_sec;   
 
    int tm_min;    
    int tm_hour;   
    int tm_mday;   
    int tm_mon;    
    int tm_year;   
    int tm_wday;   
    int tm_yday;   
    int tm_isdst;  
    union {        
        struct {
            int __extra_1, __extra_2;
        };
        struct {
            long __extra_1_long, __extra_2_long;
        };
        struct {
            char *__extra_1_cptr, *__extra_2_cptr;
        };
        struct {
            void *__extra_1_vptr, *__extra_2_vptr;
        };
    };
};

#pragma pop

   



 

extern __declspec(__nothrow) clock_t clock(void);
   





 
extern __declspec(__nothrow) double difftime(time_t  , time_t  );
   


 
extern __declspec(__nothrow) time_t mktime(struct tm *  ) __attribute__((__nonnull__(1)));
   













 
extern __declspec(__nothrow) time_t time(time_t *  );
   






 

extern __declspec(__nothrow) char *asctime(const struct tm *  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) char *_asctime_r(const struct tm *  ,
                                char * __restrict  ) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) char *asctime_r(const struct tm *  ,
                               char * __restrict  ) __attribute__((__nonnull__(1,2)));

   



 
extern __declspec(__nothrow) char *ctime(const time_t *  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) struct tm *gmtime(const time_t *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) struct tm *localtime(const time_t *  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) struct tm *_localtime_r(const time_t * __restrict  ,
                                       struct tm * __restrict  ) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) struct tm *localtime_r(const time_t * __restrict  ,
                                      struct tm * __restrict  ) __attribute__((__nonnull__(1,2)));

   



 
extern __declspec(__nothrow) size_t strftime(char * __restrict  , size_t  ,
                       const char * __restrict  ,
                       const struct tm * __restrict  ) __attribute__((__nonnull__(1,3,4)));
   











































 











# 280 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\time.h"



 

# 77 "..\\rtthread\\include\\libc/libc_stat.h"

struct stat
{
    struct rt_device* st_dev;
    uint16_t st_mode;
    uint32_t st_size;
    time_t   st_mtime;
    uint32_t st_blksize;
};



# 30 "..\\rtthread\\include\\rtlibc.h"
# 1 "..\\rtthread\\include\\libc/libc_errno.h"






















 




# 29 "..\\rtthread\\include\\libc/libc_errno.h"





 
# 170 "..\\rtthread\\include\\libc/libc_errno.h"

# 31 "..\\rtthread\\include\\rtlibc.h"

# 1 "..\\rtthread\\include\\libc/libc_fcntl.h"























 




# 63 "..\\rtthread\\include\\libc/libc_fcntl.h"

# 77 "..\\rtthread\\include\\libc/libc_fcntl.h"

# 85 "..\\rtthread\\include\\libc/libc_fcntl.h"



























# 33 "..\\rtthread\\include\\rtlibc.h"
# 1 "..\\rtthread\\include\\libc/libc_ioctl.h"






















 





















# 71 "..\\rtthread\\include\\libc/libc_ioctl.h"

# 78 "..\\rtthread\\include\\libc/libc_ioctl.h"

# 100 "..\\rtthread\\include\\libc/libc_ioctl.h"








# 117 "..\\rtthread\\include\\libc/libc_ioctl.h"





# 130 "..\\rtthread\\include\\libc/libc_ioctl.h"



struct winsize {
	unsigned short ws_row;
	unsigned short ws_col;
	unsigned short ws_xpixel;
	unsigned short ws_ypixel;
};

# 154 "..\\rtthread\\include\\libc/libc_ioctl.h"

# 171 "..\\rtthread\\include\\libc/libc_ioctl.h"













# 219 "..\\rtthread\\include\\libc/libc_ioctl.h"


























# 34 "..\\rtthread\\include\\rtlibc.h"
# 1 "..\\rtthread\\include\\libc/libc_dirent.h"







# 35 "..\\rtthread\\include\\rtlibc.h"
# 1 "..\\rtthread\\include\\libc/libc_signal.h"






















 












 

union sigval 
{
    int    sival_int;     
    void  *sival_ptr;     
};

struct sigevent
{
    int          sigev_notify;                
    int          sigev_signo;                 
    union sigval sigev_value;                 
    void         (*sigev_notify_function)( union sigval );
                                              
    void         *sigev_notify_attributes;    
};

struct siginfo
{
    rt_uint8_t si_signo;
    rt_uint8_t si_code;
    rt_int16_t si_errno;

    union sigval si_value;
};
typedef struct siginfo siginfo_t;


# 73 "..\\rtthread\\include\\libc/libc_signal.h"





# 1 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\signal.h"








 





 










# 33 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\signal.h"


typedef int sig_atomic_t;
    
    





# 66 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\signal.h"

   





 
typedef void(*__ARM_sigh_t)(int);




   



 
# 91 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\signal.h"

   

 



 





 
 

extern void (*signal (int  , void (*   )(int)))(int) __attribute__((__nonnull__(2)));
   



























 

extern int raise(int  );
    
    












# 160 "D:\\Software\\Keil\\ARM\\ARMCC\\Bin\\..\\include\\signal.h"



 

# 80 "..\\rtthread\\include\\libc/libc_signal.h"
typedef unsigned long sigset_t;
















# 106 "..\\rtthread\\include\\libc/libc_signal.h"










typedef void (*_sig_func_ptr)(int);

struct sigaction 
{
    _sig_func_ptr sa_handler;
    sigset_t sa_mask;
    int sa_flags;
};







int sigprocmask (int how, const sigset_t *set, sigset_t *oset);
int sigaction(int signum, const struct sigaction *act, struct sigaction *oldact);

# 190 "..\\rtthread\\include\\libc/libc_signal.h"







# 36 "..\\rtthread\\include\\rtlibc.h"
# 1 "..\\rtthread\\include\\libc/libc_fdset.h"






















 




# 29 "..\\rtthread\\include\\libc/libc_fdset.h"

# 37 "..\\rtthread\\include\\libc/libc_fdset.h"

# 46 "..\\rtthread\\include\\libc/libc_fdset.h"







typedef long    fd_mask;






 
typedef struct _types_fd_set {
    fd_mask fds_bits[(((32)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;










# 37 "..\\rtthread\\include\\rtlibc.h"


typedef signed long off_t;
typedef int mode_t;









# 1041 "..\\rtthread\\include\\rtdef.h"





# 1058 "..\\rtthread\\include\\rtdef.h"

# 38 "..\\rtthread\\include\\rtthread.h"
# 1 "..\\rtthread\\include\\rtservice.h"



























 










 

 




 






 






 
static __inline void rt_list_init(rt_list_t *l)
{
    l->next = l->prev = l;
}






 
static __inline void rt_list_insert_after(rt_list_t *l, rt_list_t *n)
{
    l->next->prev = n;
    n->next = l->next;

    l->next = n;
    n->prev = l;
}






 
static __inline void rt_list_insert_before(rt_list_t *l, rt_list_t *n)
{
    l->prev->next = n;
    n->prev = l->prev;

    l->prev = n;
    n->next = l;
}




 
static __inline void rt_list_remove(rt_list_t *n)
{
    n->next->prev = n->prev;
    n->prev->next = n->next;

    n->next = n->prev = n;
}




 
static __inline int rt_list_isempty(const rt_list_t *l)
{
    return l->next == l;
}




 
static __inline unsigned int rt_list_len(const rt_list_t *l)
{
    unsigned int len = 0;
    const rt_list_t *p = l;
    while (p->next != l)
    {
        p = p->next;
        len ++;
    }

    return len;
}






 








 











 













 









 
static __inline void rt_slist_init(rt_slist_t *l)
{
    l->next = (0);
}

static __inline void rt_slist_append(rt_slist_t *l, rt_slist_t *n)
{
    struct rt_slist_node *node;

    node = l;
    while (node->next) node = node->next;

     
    node->next = n;
    n->next = (0);
}

static __inline void rt_slist_insert(rt_slist_t *l, rt_slist_t *n)
{
    n->next = l->next;
    l->next = n;
}

static __inline unsigned int rt_slist_len(const rt_slist_t *l)
{
    unsigned int len = 0;
    const rt_slist_t *list = l->next;
    while (list != (0))
    {
        list = list->next;
        len ++;
    }

    return len;
}

static __inline rt_slist_t *rt_slist_remove(rt_slist_t *l, rt_slist_t *n)
{
     
    struct rt_slist_node *node = l;
    while (node->next && node->next != n) node = node->next;

     
    if (node->next != (rt_slist_t *)0) node->next = node->next->next;

    return l;
}

static __inline int rt_slist_isempty(rt_slist_t *l)
{
    return l->next == (0);
}






 








 












 



 





# 39 "..\\rtthread\\include\\rtthread.h"
# 1 "..\\rtthread\\include\\rtm.h"


















 




# 25 "..\\rtthread\\include\\rtm.h"
# 1 "..\\rtthread\\include\\rtthread.h"





























 

# 26 "..\\rtthread\\include\\rtm.h"

# 56 "..\\rtthread\\include\\rtm.h"

# 40 "..\\rtthread\\include\\rtthread.h"







 

 



 
void rt_system_object_init(void);
struct rt_object_information *
rt_object_get_information(enum rt_object_class_type type);
void rt_object_init(struct rt_object         *object,
                    enum rt_object_class_type type,
                    const char               *name);
void rt_object_detach(rt_object_t object);
rt_object_t rt_object_allocate(enum rt_object_class_type type,
                               const char               *name);
void rt_object_delete(rt_object_t object);
rt_bool_t rt_object_is_systemobject(rt_object_t object);
rt_object_t rt_object_find(const char *name, rt_uint8_t type);

# 74 "..\\rtthread\\include\\rtthread.h"

 



 

 



 
void rt_system_tick_init(void);
rt_tick_t rt_tick_get(void);
void rt_tick_set(rt_tick_t tick);
void rt_tick_increase(void);
int  rt_tick_from_millisecond(rt_int32_t ms);

void rt_system_timer_init(void);
void rt_system_timer_thread_init(void);

void rt_timer_init(rt_timer_t  timer,
                   const char *name,
                   void (*timeout)(void *parameter),
                   void       *parameter,
                   rt_tick_t   time,
                   rt_uint8_t  flag);
rt_err_t rt_timer_detach(rt_timer_t timer);
rt_timer_t rt_timer_create(const char *name,
                           void (*timeout)(void *parameter),
                           void       *parameter,
                           rt_tick_t   time,
                           rt_uint8_t  flag);
rt_err_t rt_timer_delete(rt_timer_t timer);
rt_err_t rt_timer_start(rt_timer_t timer);
rt_err_t rt_timer_stop(rt_timer_t timer);
rt_err_t rt_timer_control(rt_timer_t timer, int cmd, void *arg);

rt_tick_t rt_timer_next_timeout_tick(void);
void rt_timer_check(void);





 



 

 



 
rt_err_t rt_thread_init(struct rt_thread *thread,
                        const char       *name,
                        void (*entry)(void *parameter),
                        void             *parameter,
                        void             *stack_start,
                        rt_uint32_t       stack_size,
                        rt_uint8_t        priority,
                        rt_uint32_t       tick);
rt_err_t rt_thread_detach(rt_thread_t thread);
rt_thread_t rt_thread_create(const char *name,
                             void (*entry)(void *parameter),
                             void       *parameter,
                             rt_uint32_t stack_size,
                             rt_uint8_t  priority,
                             rt_uint32_t tick);
rt_thread_t rt_thread_self(void);
rt_thread_t rt_thread_find(char *name);
rt_err_t rt_thread_startup(rt_thread_t thread);
rt_err_t rt_thread_delete(rt_thread_t thread);

rt_err_t rt_thread_yield(void);
rt_err_t rt_thread_delay(rt_tick_t tick);
rt_err_t rt_thread_control(rt_thread_t thread, int cmd, void *arg);
rt_err_t rt_thread_suspend(rt_thread_t thread);
rt_err_t rt_thread_resume(rt_thread_t thread);
void rt_thread_timeout(void *parameter);















 
void rt_thread_idle_init(void);



void rt_thread_idle_excute(void);
rt_thread_t rt_thread_idle_gethandler(void);



 
void rt_system_scheduler_init(void);
void rt_system_scheduler_start(void);

void rt_schedule(void);
void rt_schedule_insert_thread(struct rt_thread *thread);
void rt_schedule_remove_thread(struct rt_thread *thread);

void rt_enter_critical(void);
void rt_exit_critical(void);
rt_uint16_t rt_critical_level(void);





 




 
# 211 "..\\rtthread\\include\\rtthread.h"
 



 

 



 
# 246 "..\\rtthread\\include\\rtthread.h"




 
void rt_system_heap_init(void *begin_addr, void *end_addr);

void *rt_malloc(rt_size_t nbytes);
void rt_free(void *ptr);
void *rt_realloc(void *ptr, rt_size_t nbytes);
void *rt_calloc(rt_size_t count, rt_size_t size);
void *rt_malloc_align(rt_size_t size, rt_size_t align);
void rt_free_align(void *ptr);

void rt_memory_info(rt_uint32_t *total,
                    rt_uint32_t *used,
                    rt_uint32_t *max_used);













# 289 "..\\rtthread\\include\\rtthread.h"

 



 

 




 
rt_err_t rt_sem_init(rt_sem_t    sem,
                     const char *name,
                     rt_uint32_t value,
                     rt_uint8_t  flag);
rt_err_t rt_sem_detach(rt_sem_t sem);
rt_sem_t rt_sem_create(const char *name, rt_uint32_t value, rt_uint8_t flag);
rt_err_t rt_sem_delete(rt_sem_t sem);

rt_err_t rt_sem_take(rt_sem_t sem, rt_int32_t time);
rt_err_t rt_sem_trytake(rt_sem_t sem);
rt_err_t rt_sem_release(rt_sem_t sem);
rt_err_t rt_sem_control(rt_sem_t sem, int cmd, void *arg);


# 329 "..\\rtthread\\include\\rtthread.h"

# 347 "..\\rtthread\\include\\rtthread.h"




 
rt_err_t rt_mb_init(rt_mailbox_t mb,
                    const char  *name,
                    void        *msgpool,
                    rt_size_t    size,
                    rt_uint8_t   flag);
rt_err_t rt_mb_detach(rt_mailbox_t mb);
rt_mailbox_t rt_mb_create(const char *name, rt_size_t size, rt_uint8_t flag);
rt_err_t rt_mb_delete(rt_mailbox_t mb);

rt_err_t rt_mb_send(rt_mailbox_t mb, rt_uint32_t value);
rt_err_t rt_mb_send_wait(rt_mailbox_t mb,
                         rt_uint32_t  value,
                         rt_int32_t   timeout);
rt_err_t rt_mb_recv(rt_mailbox_t mb, rt_uint32_t *value, rt_int32_t timeout);
rt_err_t rt_mb_control(rt_mailbox_t mb, int cmd, void *arg);


# 394 "..\\rtthread\\include\\rtthread.h"

 




 

 



 
rt_device_t rt_device_find(const char *name);

rt_err_t rt_device_register(rt_device_t dev,
                            const char *name,
                            rt_uint16_t flags);
rt_err_t rt_device_unregister(rt_device_t dev);

rt_device_t rt_device_create(int type, int attach_size);
void rt_device_destroy(rt_device_t device);

rt_err_t rt_device_init_all(void);

rt_err_t
rt_device_set_rx_indicate(rt_device_t dev,
                          rt_err_t (*rx_ind)(rt_device_t dev, rt_size_t size));
rt_err_t
rt_device_set_tx_complete(rt_device_t dev,
                          rt_err_t (*tx_done)(rt_device_t dev, void *buffer));

rt_err_t  rt_device_init (rt_device_t dev);
rt_err_t  rt_device_open (rt_device_t dev, rt_uint16_t oflag);
rt_err_t  rt_device_close(rt_device_t dev);
rt_size_t rt_device_read (rt_device_t dev,
                          rt_off_t    pos,
                          void       *buffer,
                          rt_size_t   size);
rt_size_t rt_device_write(rt_device_t dev,
                          rt_off_t    pos,
                          const void *buffer,
                          rt_size_t   size);
rt_err_t  rt_device_control(rt_device_t dev, int cmd, void *arg);

 


# 479 "..\\rtthread\\include\\rtthread.h"



 



 
void rt_interrupt_enter(void);
void rt_interrupt_leave(void);



 
rt_uint8_t rt_interrupt_get_nest(void);







void rt_components_init(void);
void rt_components_board_init(void);




 

 



 




void rt_kprintf(const char *fmt, ...);
void rt_kputs(const char *str);

rt_int32_t rt_vsprintf(char *dest, const char *format, va_list arg_ptr);
rt_int32_t rt_vsnprintf(char *buf, rt_size_t size, const char *fmt, va_list args);
rt_int32_t rt_sprintf(char *buf, const char *format, ...);
rt_int32_t rt_snprintf(char *buf, rt_size_t size, const char *format, ...);


rt_device_t rt_console_set_device(const char *name);
rt_device_t rt_console_get_device(void);


rt_err_t rt_get_errno(void);
void rt_set_errno(rt_err_t no);
int *_rt_errno(void);






int __rt_ffs(int value);

void *rt_memset(void *src, int c, rt_ubase_t n);
void *rt_memcpy(void *dest, const void *src, rt_ubase_t n);

rt_int32_t rt_strncmp(const char *cs, const char *ct, rt_ubase_t count);
rt_int32_t rt_strcmp(const char *cs, const char *ct);
rt_size_t rt_strlen(const char *src);
char *rt_strdup(const char *s);

char *rt_strstr(const char *str1, const char *str2);
rt_int32_t rt_sscanf(const char *buf, const char *fmt, ...);
char *rt_strncpy(char *dest, const char *src, rt_ubase_t n);
void *rt_memmove(void *dest, const void *src, rt_ubase_t n);
rt_int32_t rt_memcmp(const void *cs, const void *ct, rt_ubase_t count);
rt_uint32_t rt_strcasecmp(const char *a, const char *b);

void rt_show_version(void);

# 565 "..\\rtthread\\include\\rtthread.h"





 





# 33 "..\\rtthread\\include\\rthw.h"







 
# 50 "..\\rtthread\\include\\rthw.h"





enum RT_HW_CACHE_OPS
{
    RT_HW_CACHE_FLUSH      = 0x01,
    RT_HW_CACHE_INVALIDATE = 0x02,
};



 
void rt_hw_cpu_icache_enable(void);
void rt_hw_cpu_icache_disable(void);
rt_base_t rt_hw_cpu_icache_status(void);
void rt_hw_cpu_icache_ops(int ops, void* addr, int size);

void rt_hw_cpu_dcache_enable(void);
void rt_hw_cpu_dcache_disable(void);
rt_base_t rt_hw_cpu_dcache_status(void);
void rt_hw_cpu_dcache_ops(int ops, void* addr, int size);

void rt_hw_cpu_reset(void);
void rt_hw_cpu_shutdown(void);

rt_uint8_t *rt_hw_stack_init(void       *entry,
                             void       *parameter,
                             rt_uint8_t *stack_addr,
                             void       *exit);



 
typedef void (*rt_isr_handler_t)(int vector, void *param);

struct rt_irq_desc
{
    rt_isr_handler_t handler;
    void            *param;





};



 
void rt_hw_interrupt_init(void);
void rt_hw_interrupt_mask(int vector);
void rt_hw_interrupt_umask(int vector);
rt_isr_handler_t rt_hw_interrupt_install(int              vector,
                                         rt_isr_handler_t handler,
                                         void            *param,
                                         char            *name);

rt_base_t rt_hw_interrupt_disable(void);
void rt_hw_interrupt_enable(rt_base_t level);



 
void rt_hw_context_switch(rt_uint32_t from, rt_uint32_t to);
void rt_hw_context_switch_to(rt_uint32_t to);
void rt_hw_context_switch_interrupt(rt_uint32_t from, rt_uint32_t to);

void rt_hw_console_output(const char *str);

void rt_hw_backtrace(rt_uint32_t *fp, rt_uint32_t thread_entry);
void rt_hw_show_memory(rt_uint32_t addr, rt_uint32_t size);



 
void rt_hw_exception_install(rt_err_t (*exception_handle)(void *context));



 
void rt_hw_us_delay(rt_uint32_t us);





# 34 "..\\rtthread\\src\\components.c"
# 35 "..\\rtthread\\src\\components.c"






























 
static int rti_start(void)
{
    return 0;
}
__attribute__((used)) const init_fn_t __rt_init_rti_start __attribute__((section(".rti_fn." "0"))) = rti_start;

static int rti_board_start(void)
{
    return 0;
}
__attribute__((used)) const init_fn_t __rt_init_rti_board_start __attribute__((section(".rti_fn." "0.end"))) = rti_board_start;

static int rti_board_end(void)
{
    return 0;
}
__attribute__((used)) const init_fn_t __rt_init_rti_board_end __attribute__((section(".rti_fn." "1.end"))) = rti_board_end;

static int rti_end(void)
{
    return 0;
}
__attribute__((used)) const init_fn_t __rt_init_rti_end __attribute__((section(".rti_fn." "6.end"))) = rti_end;



 
void rt_components_board_init(void)
{
# 105 "..\\rtthread\\src\\components.c"
    const init_fn_t *fn_ptr;

    for (fn_ptr = &__rt_init_rti_board_start; fn_ptr < &__rt_init_rti_board_end; fn_ptr++)
    {
        (*fn_ptr)();
    }

}



 
void rt_components_init(void)
{
# 131 "..\\rtthread\\src\\components.c"
    const init_fn_t *fn_ptr;

    for (fn_ptr = &__rt_init_rti_board_end; fn_ptr < &__rt_init_rti_end; fn_ptr ++)
    {
        (*fn_ptr)();
    }

}



void rt_application_init(void);
void rt_hw_board_init(void);
int rtthread_startup(void);


extern int $Super$$main(void);
 
int $Sub$$main(void)
{
    rt_hw_interrupt_disable();
    rtthread_startup();
    return 0;
}
int mymain(void)
{
	rt_hw_interrupt_disable();
    rtthread_startup();
    return 0;
}
# 183 "..\\rtthread\\src\\components.c"

# 190 "..\\rtthread\\src\\components.c"

 
void main_thread_entry(void *parameter)
{
    extern int main(void);
    extern int $Super$$main(void);

     
    rt_components_init();

     

    $Super$$main();  



}

void rt_application_init(void)
{
    rt_thread_t tid;


    tid = rt_thread_create("main", main_thread_entry, (0),
                           512, 32 / 3, 20);
    ;
# 227 "..\\rtthread\\src\\components.c"

    rt_thread_startup(tid);
}

int rtthread_startup(void)
{
    rt_hw_interrupt_disable();

    

 
    rt_hw_board_init();

     
    rt_show_version();

     
    rt_system_timer_init();

     
    rt_system_scheduler_init();






     
    rt_application_init();

     
    rt_system_timer_thread_init();

     
    rt_thread_idle_init();

     
    rt_system_scheduler_start();

     
    return 0;
}
