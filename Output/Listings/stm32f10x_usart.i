# 1 "..\\Driver\\Src\\stm32f10x_usart.c"


















 

 
# 1 "..\\Driver\\Inc\\stm32f10x_usart.h"



















 

 







 
# 1 "..\\Core\\Inc\\stm32f10x.h"







































 



 



 
    






  


 
  


 

# 75 "..\\Core\\Inc\\stm32f10x.h"


















 





# 112 "..\\Core\\Inc\\stm32f10x.h"







            
# 127 "..\\Core\\Inc\\stm32f10x.h"





 






 
# 148 "..\\Core\\Inc\\stm32f10x.h"



 



 



 
# 167 "..\\Core\\Inc\\stm32f10x.h"




 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMPER_IRQn                 = 2,       
  RTC_IRQn                    = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Channel1_IRQn          = 11,      
  DMA1_Channel2_IRQn          = 12,      
  DMA1_Channel3_IRQn          = 13,      
  DMA1_Channel4_IRQn          = 14,      
  DMA1_Channel5_IRQn          = 15,      
  DMA1_Channel6_IRQn          = 16,      
  DMA1_Channel7_IRQn          = 17,      

# 226 "..\\Core\\Inc\\stm32f10x.h"

# 247 "..\\Core\\Inc\\stm32f10x.h"

# 275 "..\\Core\\Inc\\stm32f10x.h"

# 301 "..\\Core\\Inc\\stm32f10x.h"


  ADC1_2_IRQn                 = 18,      
  USB_HP_CAN1_TX_IRQn         = 19,      
  USB_LP_CAN1_RX0_IRQn        = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_IRQn               = 24,      
  TIM1_UP_IRQn                = 25,      
  TIM1_TRG_COM_IRQn           = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTCAlarm_IRQn               = 41,      
  USBWakeUp_IRQn              = 42,      
  TIM8_BRK_IRQn               = 43,      
  TIM8_UP_IRQn                = 44,      
  TIM8_TRG_COM_IRQn           = 45,      
  TIM8_CC_IRQn                = 46,      
  ADC3_IRQn                   = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_IRQn                   = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Channel1_IRQn          = 56,      
  DMA2_Channel2_IRQn          = 57,      
  DMA2_Channel3_IRQn          = 58,      
  DMA2_Channel4_5_IRQn        = 59       


# 386 "..\\Core\\Inc\\stm32f10x.h"

# 431 "..\\Core\\Inc\\stm32f10x.h"

# 477 "..\\Core\\Inc\\stm32f10x.h"
} IRQn_Type;



 

# 1 "..\\Core\\Inc\\core_cm3.h"
 




 
















 










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






 
# 35 "..\\Core\\Inc\\core_cm3.h"

















 




 



 

# 1 "..\\Core\\Inc\\cmsis_version.h"
 




 
















 










 
# 64 "..\\Core\\Inc\\core_cm3.h"

 









 







# 114 "..\\Core\\Inc\\core_cm3.h"

# 1 "..\\Core\\Inc\\cmsis_compiler.h"
 




 
















 




# 29 "..\\Core\\Inc\\cmsis_compiler.h"



 
# 1 "..\\Core\\Inc\\cmsis_armcc.h"
 




 
















 









 













   
   


 
# 103 "..\\Core\\Inc\\cmsis_armcc.h"

 



 





 
 






 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}









 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1U);
}









 
static __inline uint32_t __get_FPSCR(void)
{





   return(0U);

}






 
static __inline void __set_FPSCR(uint32_t fpscr)
{





  (void)fpscr;

}


 


 



 




 






 







 






 








 










 










 






                  





 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int16_t __REVSH(int16_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
# 532 "..\\Core\\Inc\\cmsis_armcc.h"







 











 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 


# 780 "..\\Core\\Inc\\cmsis_armcc.h"

   


 



 

# 862 "..\\Core\\Inc\\cmsis_armcc.h"
 


# 35 "..\\Core\\Inc\\cmsis_compiler.h"




 
# 263 "..\\Core\\Inc\\cmsis_compiler.h"




# 116 "..\\Core\\Inc\\core_cm3.h"

















 
# 155 "..\\Core\\Inc\\core_cm3.h"

 






 
# 171 "..\\Core\\Inc\\core_cm3.h"

 




 












 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:27;               
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 


















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:1;                
    uint32_t ICI_IT_1:6;                  
    uint32_t _reserved1:8;                
    uint32_t T:1;                         
    uint32_t ICI_IT_2:2;                  
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 






























 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t _reserved1:30;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 



 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 















 






























 
# 457 "..\\Core\\Inc\\core_cm3.h"

 





















 









 


















 










































 









 















 


















 


















 









 















 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    



        uint32_t RESERVED1[1U];

} SCnSCB_Type;

 



 










 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[29U];
  volatile  uint32_t IWR;                     
  volatile const  uint32_t IRR;                     
  volatile uint32_t IMCR;                    
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 



 



























 



 



 



 









   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   







 



 
typedef struct
{
  volatile const  uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 



 



 












 






 



 





















 






 





















 






 



 


















 






   


# 1242 "..\\Core\\Inc\\core_cm3.h"







 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 




































 






 







































 







 






 







 


 







 

 
# 1391 "..\\Core\\Inc\\core_cm3.h"

# 1400 "..\\Core\\Inc\\core_cm3.h"






 










 


 



 





 

# 1451 "..\\Core\\Inc\\core_cm3.h"

# 1461 "..\\Core\\Inc\\core_cm3.h"




 













 
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U) );                
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







 
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);
    do { __schedule_barrier(); __isb(0xF); __schedule_barrier(); } while (0U);
  }
}









 
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}







 
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}










 
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
}










 
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               >> (8U - 4)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4)));
  }
}












 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}










 
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;
}









 
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];
}





 
__declspec(noreturn) static __inline void __NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 

 







 





 








 
static __inline uint32_t SCB_GetFPUType(void)
{
    return 0U;            
}


 



 





 















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 





 

extern volatile int32_t ITM_RxBuffer;                               










 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);        
  }

  return (ch);
}







 
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 










# 484 "..\\Core\\Inc\\stm32f10x.h"
# 1 "..\\Core\\Inc\\system_stm32f10x.h"



















 



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
# 485 "..\\Core\\Inc\\stm32f10x.h"
# 486 "..\\Core\\Inc\\stm32f10x.h"



   

 
typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;   
typedef const int16_t sc16;   
typedef const int8_t sc8;    

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;   
typedef volatile const int16_t vsc16;   
typedef volatile const int8_t vsc8;    

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;   
typedef const uint16_t uc16;   
typedef const uint8_t uc8;    

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;   
typedef volatile const uint16_t vuc16;   
typedef volatile const uint8_t vuc8;    

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus;

typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

 





 



    



 

typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;



 

typedef struct
{
  uint32_t  RESERVED0;
  volatile uint16_t DR1;
  uint16_t  RESERVED1;
  volatile uint16_t DR2;
  uint16_t  RESERVED2;
  volatile uint16_t DR3;
  uint16_t  RESERVED3;
  volatile uint16_t DR4;
  uint16_t  RESERVED4;
  volatile uint16_t DR5;
  uint16_t  RESERVED5;
  volatile uint16_t DR6;
  uint16_t  RESERVED6;
  volatile uint16_t DR7;
  uint16_t  RESERVED7;
  volatile uint16_t DR8;
  uint16_t  RESERVED8;
  volatile uint16_t DR9;
  uint16_t  RESERVED9;
  volatile uint16_t DR10;
  uint16_t  RESERVED10; 
  volatile uint16_t RTCCR;
  uint16_t  RESERVED11;
  volatile uint16_t CR;
  uint16_t  RESERVED12;
  volatile uint16_t CSR;
  uint16_t  RESERVED13[5];
  volatile uint16_t DR11;
  uint16_t  RESERVED14;
  volatile uint16_t DR12;
  uint16_t  RESERVED15;
  volatile uint16_t DR13;
  uint16_t  RESERVED16;
  volatile uint16_t DR14;
  uint16_t  RESERVED17;
  volatile uint16_t DR15;
  uint16_t  RESERVED18;
  volatile uint16_t DR16;
  uint16_t  RESERVED19;
  volatile uint16_t DR17;
  uint16_t  RESERVED20;
  volatile uint16_t DR18;
  uint16_t  RESERVED21;
  volatile uint16_t DR19;
  uint16_t  RESERVED22;
  volatile uint16_t DR20;
  uint16_t  RESERVED23;
  volatile uint16_t DR21;
  uint16_t  RESERVED24;
  volatile uint16_t DR22;
  uint16_t  RESERVED25;
  volatile uint16_t DR23;
  uint16_t  RESERVED26;
  volatile uint16_t DR24;
  uint16_t  RESERVED27;
  volatile uint16_t DR25;
  uint16_t  RESERVED28;
  volatile uint16_t DR26;
  uint16_t  RESERVED29;
  volatile uint16_t DR27;
  uint16_t  RESERVED30;
  volatile uint16_t DR28;
  uint16_t  RESERVED31;
  volatile uint16_t DR29;
  uint16_t  RESERVED32;
  volatile uint16_t DR30;
  uint16_t  RESERVED33; 
  volatile uint16_t DR31;
  uint16_t  RESERVED34;
  volatile uint16_t DR32;
  uint16_t  RESERVED35;
  volatile uint16_t DR33;
  uint16_t  RESERVED36;
  volatile uint16_t DR34;
  uint16_t  RESERVED37;
  volatile uint16_t DR35;
  uint16_t  RESERVED38;
  volatile uint16_t DR36;
  uint16_t  RESERVED39;
  volatile uint16_t DR37;
  uint16_t  RESERVED40;
  volatile uint16_t DR38;
  uint16_t  RESERVED41;
  volatile uint16_t DR39;
  uint16_t  RESERVED42;
  volatile uint16_t DR40;
  uint16_t  RESERVED43;
  volatile uint16_t DR41;
  uint16_t  RESERVED44;
  volatile uint16_t DR42;
  uint16_t  RESERVED45;    
} BKP_TypeDef;
  


 

typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t  RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t  RESERVED2;
  volatile uint32_t FS1R;
  uint32_t  RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t  RESERVED4;
  volatile uint32_t FA1R;
  uint32_t  RESERVED5[8];

  CAN_FilterRegister_TypeDef sFilterRegister[14];



} CAN_TypeDef;



 
typedef struct
{
  volatile uint32_t CFGR;
  volatile uint32_t OAR;
  volatile uint32_t PRES;
  volatile uint32_t ESR;
  volatile uint32_t CSR;
  volatile uint32_t TXD;
  volatile uint32_t RXD;  
} CEC_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;
  volatile uint8_t  IDR;
  uint8_t   RESERVED0;
  uint16_t  RESERVED1;
  volatile uint32_t CR;
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t SWTRIGR;
  volatile uint32_t DHR12R1;
  volatile uint32_t DHR12L1;
  volatile uint32_t DHR8R1;
  volatile uint32_t DHR12R2;
  volatile uint32_t DHR12L2;
  volatile uint32_t DHR8R2;
  volatile uint32_t DHR12RD;
  volatile uint32_t DHR12LD;
  volatile uint32_t DHR8RD;
  volatile uint32_t DOR1;
  volatile uint32_t DOR2;



} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;	
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
       uint32_t RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
       uint32_t RESERVED1[2];
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
       uint32_t RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
       uint32_t RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
       uint32_t RESERVED4[5];
  volatile uint32_t MMCTGFCR;
       uint32_t RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
       uint32_t RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
       uint32_t RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
       uint32_t RESERVED8[567];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
       uint32_t RESERVED9[9];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;
# 925 "..\\Core\\Inc\\stm32f10x.h"
} FLASH_TypeDef;



 
  
typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;



 

typedef struct
{
  volatile uint32_t BTCR[8];   
} FSMC_Bank1_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t BWTR[7];
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;
  volatile uint32_t SR2;
  volatile uint32_t PMEM2;
  volatile uint32_t PATT2;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR2; 
} FSMC_Bank2_TypeDef;  



 
  
typedef struct
{
  volatile uint32_t PCR3;
  volatile uint32_t SR3;
  volatile uint32_t PMEM3;
  volatile uint32_t PATT3;
  uint32_t  RESERVED0;   
  volatile uint32_t ECCR3; 
} FSMC_Bank3_TypeDef; 



 
  
typedef struct
{
  volatile uint32_t PCR4;
  volatile uint32_t SR4;
  volatile uint32_t PMEM4;
  volatile uint32_t PATT4;
  volatile uint32_t PIO4; 
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;  
} AFIO_TypeDef;


 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t OAR1;
  uint16_t  RESERVED2;
  volatile uint16_t OAR2;
  uint16_t  RESERVED3;
  volatile uint16_t DR;
  uint16_t  RESERVED4;
  volatile uint16_t SR1;
  uint16_t  RESERVED5;
  volatile uint16_t SR2;
  uint16_t  RESERVED6;
  volatile uint16_t CCR;
  uint16_t  RESERVED7;
  volatile uint16_t TRISE;
  uint16_t  RESERVED8;
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;










} RCC_TypeDef;



 

typedef struct
{
  volatile uint16_t CRH;
  uint16_t  RESERVED0;
  volatile uint16_t CRL;
  uint16_t  RESERVED1;
  volatile uint16_t PRLH;
  uint16_t  RESERVED2;
  volatile uint16_t PRLL;
  uint16_t  RESERVED3;
  volatile uint16_t DIVH;
  uint16_t  RESERVED4;
  volatile uint16_t DIVL;
  uint16_t  RESERVED5;
  volatile uint16_t CNTH;
  uint16_t  RESERVED6;
  volatile uint16_t CNTL;
  uint16_t  RESERVED7;
  volatile uint16_t ALRH;
  uint16_t  RESERVED8;
  volatile uint16_t ALRL;
  uint16_t  RESERVED9;
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  uint32_t  RESERVED0[2];
  volatile const uint32_t FIFOCNT;
  uint32_t  RESERVED1[13];
  volatile uint32_t FIFO;
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SR;
  uint16_t  RESERVED2;
  volatile uint16_t DR;
  uint16_t  RESERVED3;
  volatile uint16_t CRCPR;
  uint16_t  RESERVED4;
  volatile uint16_t RXCRCR;
  uint16_t  RESERVED5;
  volatile uint16_t TXCRCR;
  uint16_t  RESERVED6;
  volatile uint16_t I2SCFGR;
  uint16_t  RESERVED7;
  volatile uint16_t I2SPR;
  uint16_t  RESERVED8;  
} SPI_TypeDef;



 

typedef struct
{
  volatile uint16_t CR1;
  uint16_t  RESERVED0;
  volatile uint16_t CR2;
  uint16_t  RESERVED1;
  volatile uint16_t SMCR;
  uint16_t  RESERVED2;
  volatile uint16_t DIER;
  uint16_t  RESERVED3;
  volatile uint16_t SR;
  uint16_t  RESERVED4;
  volatile uint16_t EGR;
  uint16_t  RESERVED5;
  volatile uint16_t CCMR1;
  uint16_t  RESERVED6;
  volatile uint16_t CCMR2;
  uint16_t  RESERVED7;
  volatile uint16_t CCER;
  uint16_t  RESERVED8;
  volatile uint16_t CNT;
  uint16_t  RESERVED9;
  volatile uint16_t PSC;
  uint16_t  RESERVED10;
  volatile uint16_t ARR;
  uint16_t  RESERVED11;
  volatile uint16_t RCR;
  uint16_t  RESERVED12;
  volatile uint16_t CCR1;
  uint16_t  RESERVED13;
  volatile uint16_t CCR2;
  uint16_t  RESERVED14;
  volatile uint16_t CCR3;
  uint16_t  RESERVED15;
  volatile uint16_t CCR4;
  uint16_t  RESERVED16;
  volatile uint16_t BDTR;
  uint16_t  RESERVED17;
  volatile uint16_t DCR;
  uint16_t  RESERVED18;
  volatile uint16_t DMAR;
  uint16_t  RESERVED19;
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t SR;
  uint16_t  RESERVED0;
  volatile uint16_t DR;
  uint16_t  RESERVED1;
  volatile uint16_t BRR;
  uint16_t  RESERVED2;
  volatile uint16_t CR1;
  uint16_t  RESERVED3;
  volatile uint16_t CR2;
  uint16_t  RESERVED4;
  volatile uint16_t CR3;
  uint16_t  RESERVED5;
  volatile uint16_t GTPR;
  uint16_t  RESERVED6;
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
} WWDG_TypeDef;



 
  


 











 




# 1317 "..\\Core\\Inc\\stm32f10x.h"

# 1340 "..\\Core\\Inc\\stm32f10x.h"



# 1359 "..\\Core\\Inc\\stm32f10x.h"




















 
  


   

# 1459 "..\\Core\\Inc\\stm32f10x.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 

 



 



 


 
 
 
 
 

 











 
# 1520 "..\\Core\\Inc\\stm32f10x.h"




 





 
 
 
 
 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 





 



 






 
 
 
 
 

 
# 1696 "..\\Core\\Inc\\stm32f10x.h"

# 1703 "..\\Core\\Inc\\stm32f10x.h"

 
 








 








 






# 1739 "..\\Core\\Inc\\stm32f10x.h"

 











 











 













 






# 1855 "..\\Core\\Inc\\stm32f10x.h"




# 1875 "..\\Core\\Inc\\stm32f10x.h"

 





# 1888 "..\\Core\\Inc\\stm32f10x.h"

 
# 1907 "..\\Core\\Inc\\stm32f10x.h"

# 1916 "..\\Core\\Inc\\stm32f10x.h"

 
# 1924 "..\\Core\\Inc\\stm32f10x.h"



















# 1949 "..\\Core\\Inc\\stm32f10x.h"












 













# 1981 "..\\Core\\Inc\\stm32f10x.h"





# 1995 "..\\Core\\Inc\\stm32f10x.h"

# 2002 "..\\Core\\Inc\\stm32f10x.h"

# 2012 "..\\Core\\Inc\\stm32f10x.h"











 


















# 2048 "..\\Core\\Inc\\stm32f10x.h"

 
# 2056 "..\\Core\\Inc\\stm32f10x.h"



















# 2081 "..\\Core\\Inc\\stm32f10x.h"












 













# 2113 "..\\Core\\Inc\\stm32f10x.h"





# 2127 "..\\Core\\Inc\\stm32f10x.h"

# 2134 "..\\Core\\Inc\\stm32f10x.h"

# 2144 "..\\Core\\Inc\\stm32f10x.h"











 








 








   
# 2183 "..\\Core\\Inc\\stm32f10x.h"

# 2278 "..\\Core\\Inc\\stm32f10x.h"

# 2305 "..\\Core\\Inc\\stm32f10x.h"
 
 
 
 
 
 

 




































































 




































































 
# 2467 "..\\Core\\Inc\\stm32f10x.h"

 
# 2485 "..\\Core\\Inc\\stm32f10x.h"

 
# 2503 "..\\Core\\Inc\\stm32f10x.h"

# 2520 "..\\Core\\Inc\\stm32f10x.h"

 
# 2538 "..\\Core\\Inc\\stm32f10x.h"

 
# 2557 "..\\Core\\Inc\\stm32f10x.h"

 

 






 
# 2584 "..\\Core\\Inc\\stm32f10x.h"






 








 









 








 








 









 










 




# 2659 "..\\Core\\Inc\\stm32f10x.h"

 










# 2690 "..\\Core\\Inc\\stm32f10x.h"

 





 
# 2705 "..\\Core\\Inc\\stm32f10x.h"

 
# 2714 "..\\Core\\Inc\\stm32f10x.h"

   
# 2723 "..\\Core\\Inc\\stm32f10x.h"

 
# 2732 "..\\Core\\Inc\\stm32f10x.h"

 





 
# 2747 "..\\Core\\Inc\\stm32f10x.h"

 
# 2756 "..\\Core\\Inc\\stm32f10x.h"

   
# 2765 "..\\Core\\Inc\\stm32f10x.h"

 
# 2774 "..\\Core\\Inc\\stm32f10x.h"

 





 
# 2789 "..\\Core\\Inc\\stm32f10x.h"

 
# 2798 "..\\Core\\Inc\\stm32f10x.h"

   
# 2807 "..\\Core\\Inc\\stm32f10x.h"

 
# 2816 "..\\Core\\Inc\\stm32f10x.h"

 





 
# 2831 "..\\Core\\Inc\\stm32f10x.h"

 
# 2840 "..\\Core\\Inc\\stm32f10x.h"

   
# 2849 "..\\Core\\Inc\\stm32f10x.h"

 
# 2858 "..\\Core\\Inc\\stm32f10x.h"

# 2867 "..\\Core\\Inc\\stm32f10x.h"

# 2876 "..\\Core\\Inc\\stm32f10x.h"

# 2886 "..\\Core\\Inc\\stm32f10x.h"

 
 
 
 
 

 





 


 


 




 
 
 
 
 

 
# 2950 "..\\Core\\Inc\\stm32f10x.h"

 
# 2985 "..\\Core\\Inc\\stm32f10x.h"

 
# 3020 "..\\Core\\Inc\\stm32f10x.h"

 
# 3055 "..\\Core\\Inc\\stm32f10x.h"

 
# 3090 "..\\Core\\Inc\\stm32f10x.h"

 





 





 





 





 





 





 





 





 






 
# 3157 "..\\Core\\Inc\\stm32f10x.h"

 



 









 
# 3181 "..\\Core\\Inc\\stm32f10x.h"




 




 
# 3197 "..\\Core\\Inc\\stm32f10x.h"

 





 
# 3219 "..\\Core\\Inc\\stm32f10x.h"

 
 





 
# 3234 "..\\Core\\Inc\\stm32f10x.h"
 
# 3241 "..\\Core\\Inc\\stm32f10x.h"

 




 






 


 


 


 
 
 
 
 

 
# 3290 "..\\Core\\Inc\\stm32f10x.h"

 
# 3312 "..\\Core\\Inc\\stm32f10x.h"

 
# 3334 "..\\Core\\Inc\\stm32f10x.h"

 
# 3356 "..\\Core\\Inc\\stm32f10x.h"

 
# 3378 "..\\Core\\Inc\\stm32f10x.h"

 
# 3400 "..\\Core\\Inc\\stm32f10x.h"

 
 
 
 
 

 
# 3436 "..\\Core\\Inc\\stm32f10x.h"

 
# 3466 "..\\Core\\Inc\\stm32f10x.h"

 
# 3476 "..\\Core\\Inc\\stm32f10x.h"















 
# 3500 "..\\Core\\Inc\\stm32f10x.h"















 
# 3524 "..\\Core\\Inc\\stm32f10x.h"















 
# 3548 "..\\Core\\Inc\\stm32f10x.h"















 
# 3572 "..\\Core\\Inc\\stm32f10x.h"















 
# 3596 "..\\Core\\Inc\\stm32f10x.h"















 
# 3620 "..\\Core\\Inc\\stm32f10x.h"















 


 


 


 


 


 


 


 


 


 



 


 


 



 


 


 


 



 


 


 


 


 
 
 
 
 

 






 
# 3721 "..\\Core\\Inc\\stm32f10x.h"

# 3730 "..\\Core\\Inc\\stm32f10x.h"















  
 
# 3753 "..\\Core\\Inc\\stm32f10x.h"


















 








































 


















































 


 


 


 


 


 


 
# 3888 "..\\Core\\Inc\\stm32f10x.h"

# 3895 "..\\Core\\Inc\\stm32f10x.h"

# 3902 "..\\Core\\Inc\\stm32f10x.h"

# 3909 "..\\Core\\Inc\\stm32f10x.h"







 
# 3923 "..\\Core\\Inc\\stm32f10x.h"

# 3930 "..\\Core\\Inc\\stm32f10x.h"

# 3937 "..\\Core\\Inc\\stm32f10x.h"

# 3944 "..\\Core\\Inc\\stm32f10x.h"

# 3951 "..\\Core\\Inc\\stm32f10x.h"

# 3958 "..\\Core\\Inc\\stm32f10x.h"

 
# 3966 "..\\Core\\Inc\\stm32f10x.h"

# 3973 "..\\Core\\Inc\\stm32f10x.h"

# 3980 "..\\Core\\Inc\\stm32f10x.h"

# 3987 "..\\Core\\Inc\\stm32f10x.h"

# 3994 "..\\Core\\Inc\\stm32f10x.h"

# 4001 "..\\Core\\Inc\\stm32f10x.h"

 
# 4009 "..\\Core\\Inc\\stm32f10x.h"

# 4016 "..\\Core\\Inc\\stm32f10x.h"

# 4023 "..\\Core\\Inc\\stm32f10x.h"

# 4030 "..\\Core\\Inc\\stm32f10x.h"





 


 


 


 


 



 
 
 
 
 

 









































 



 


 


 


 


 


 


 



 



 



 


 


 



 
 
 
 
 
 





 






 


 
# 4172 "..\\Core\\Inc\\stm32f10x.h"

 
# 4182 "..\\Core\\Inc\\stm32f10x.h"

 


 


 
 
 
 
 

 
















 









# 4230 "..\\Core\\Inc\\stm32f10x.h"

 

























 
# 4273 "..\\Core\\Inc\\stm32f10x.h"

 
# 4287 "..\\Core\\Inc\\stm32f10x.h"

 
# 4297 "..\\Core\\Inc\\stm32f10x.h"

 




























 





















 




























 





















 
# 4416 "..\\Core\\Inc\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
# 4451 "..\\Core\\Inc\\stm32f10x.h"





# 4462 "..\\Core\\Inc\\stm32f10x.h"

 
# 4470 "..\\Core\\Inc\\stm32f10x.h"

# 4477 "..\\Core\\Inc\\stm32f10x.h"

 


 
 
 
 
 

 




 
# 4499 "..\\Core\\Inc\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
 
 
 
 

 


 





 


 



 
 
 
 
 

 
# 4561 "..\\Core\\Inc\\stm32f10x.h"



 
# 4573 "..\\Core\\Inc\\stm32f10x.h"







 


 
 
 
 
 

 











# 4611 "..\\Core\\Inc\\stm32f10x.h"

 











# 4634 "..\\Core\\Inc\\stm32f10x.h"

 











# 4657 "..\\Core\\Inc\\stm32f10x.h"

 











# 4680 "..\\Core\\Inc\\stm32f10x.h"

 








































 








































 








































 








































 


































 


































 


































 


































 



























 



























 



























 
# 5077 "..\\Core\\Inc\\stm32f10x.h"

 
# 5086 "..\\Core\\Inc\\stm32f10x.h"

 
# 5095 "..\\Core\\Inc\\stm32f10x.h"

 
# 5106 "..\\Core\\Inc\\stm32f10x.h"

# 5116 "..\\Core\\Inc\\stm32f10x.h"

# 5126 "..\\Core\\Inc\\stm32f10x.h"

# 5136 "..\\Core\\Inc\\stm32f10x.h"

 
# 5147 "..\\Core\\Inc\\stm32f10x.h"

# 5157 "..\\Core\\Inc\\stm32f10x.h"

# 5167 "..\\Core\\Inc\\stm32f10x.h"

# 5177 "..\\Core\\Inc\\stm32f10x.h"

 
# 5188 "..\\Core\\Inc\\stm32f10x.h"

# 5198 "..\\Core\\Inc\\stm32f10x.h"

# 5208 "..\\Core\\Inc\\stm32f10x.h"

# 5218 "..\\Core\\Inc\\stm32f10x.h"

 
# 5229 "..\\Core\\Inc\\stm32f10x.h"

# 5239 "..\\Core\\Inc\\stm32f10x.h"

# 5249 "..\\Core\\Inc\\stm32f10x.h"

# 5259 "..\\Core\\Inc\\stm32f10x.h"

 
# 5270 "..\\Core\\Inc\\stm32f10x.h"

# 5280 "..\\Core\\Inc\\stm32f10x.h"

# 5290 "..\\Core\\Inc\\stm32f10x.h"

# 5300 "..\\Core\\Inc\\stm32f10x.h"

 
# 5311 "..\\Core\\Inc\\stm32f10x.h"

# 5321 "..\\Core\\Inc\\stm32f10x.h"

# 5331 "..\\Core\\Inc\\stm32f10x.h"

# 5341 "..\\Core\\Inc\\stm32f10x.h"

 
# 5352 "..\\Core\\Inc\\stm32f10x.h"

# 5362 "..\\Core\\Inc\\stm32f10x.h"

# 5372 "..\\Core\\Inc\\stm32f10x.h"

# 5382 "..\\Core\\Inc\\stm32f10x.h"

 


 


 
 
 
 
 

 




 












 


 






# 5430 "..\\Core\\Inc\\stm32f10x.h"

 


 


 


 


 


 


 


 


 
















 


 
# 5500 "..\\Core\\Inc\\stm32f10x.h"

 
# 5515 "..\\Core\\Inc\\stm32f10x.h"

 
# 5541 "..\\Core\\Inc\\stm32f10x.h"

 


 


 
 
 
 
 

 
 























 























 























 























 























 























 























 























 
 
# 5762 "..\\Core\\Inc\\stm32f10x.h"

 
# 5774 "..\\Core\\Inc\\stm32f10x.h"

 






 
# 5791 "..\\Core\\Inc\\stm32f10x.h"



     


 
 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

 


 


 


 


 


 


 


 


 

 


# 5935 "..\\Core\\Inc\\stm32f10x.h"



 


# 5947 "..\\Core\\Inc\\stm32f10x.h"



 


# 5959 "..\\Core\\Inc\\stm32f10x.h"



 


# 5971 "..\\Core\\Inc\\stm32f10x.h"



 


# 5983 "..\\Core\\Inc\\stm32f10x.h"



 


# 5995 "..\\Core\\Inc\\stm32f10x.h"



 


# 6007 "..\\Core\\Inc\\stm32f10x.h"



 


# 6019 "..\\Core\\Inc\\stm32f10x.h"



 

 


# 6033 "..\\Core\\Inc\\stm32f10x.h"



 


# 6045 "..\\Core\\Inc\\stm32f10x.h"



 


# 6057 "..\\Core\\Inc\\stm32f10x.h"



 


# 6069 "..\\Core\\Inc\\stm32f10x.h"



 


# 6081 "..\\Core\\Inc\\stm32f10x.h"



 


# 6093 "..\\Core\\Inc\\stm32f10x.h"



 


# 6105 "..\\Core\\Inc\\stm32f10x.h"



 


# 6117 "..\\Core\\Inc\\stm32f10x.h"



 


# 6129 "..\\Core\\Inc\\stm32f10x.h"



 


# 6141 "..\\Core\\Inc\\stm32f10x.h"



 


# 6153 "..\\Core\\Inc\\stm32f10x.h"



 


# 6165 "..\\Core\\Inc\\stm32f10x.h"



 


# 6177 "..\\Core\\Inc\\stm32f10x.h"



 


# 6189 "..\\Core\\Inc\\stm32f10x.h"



 


# 6201 "..\\Core\\Inc\\stm32f10x.h"



 


# 6213 "..\\Core\\Inc\\stm32f10x.h"



 
 
 
 
 

 
 
# 6233 "..\\Core\\Inc\\stm32f10x.h"

 
# 6244 "..\\Core\\Inc\\stm32f10x.h"

 
# 6262 "..\\Core\\Inc\\stm32f10x.h"











 





 





 
# 6300 "..\\Core\\Inc\\stm32f10x.h"

 












 
# 6321 "..\\Core\\Inc\\stm32f10x.h"

 
 






 




 





 





 






 




 





 





 






   




 





 





 





 




 





 





 





 




 





 





 
 


 
# 6461 "..\\Core\\Inc\\stm32f10x.h"

 
# 6478 "..\\Core\\Inc\\stm32f10x.h"

 
# 6495 "..\\Core\\Inc\\stm32f10x.h"

 
# 6512 "..\\Core\\Inc\\stm32f10x.h"

 
# 6546 "..\\Core\\Inc\\stm32f10x.h"

 
# 6580 "..\\Core\\Inc\\stm32f10x.h"

 
# 6614 "..\\Core\\Inc\\stm32f10x.h"

 
# 6648 "..\\Core\\Inc\\stm32f10x.h"

 
# 6682 "..\\Core\\Inc\\stm32f10x.h"

 
# 6716 "..\\Core\\Inc\\stm32f10x.h"

 
# 6750 "..\\Core\\Inc\\stm32f10x.h"

 
# 6784 "..\\Core\\Inc\\stm32f10x.h"

 
# 6818 "..\\Core\\Inc\\stm32f10x.h"

 
# 6852 "..\\Core\\Inc\\stm32f10x.h"

 
# 6886 "..\\Core\\Inc\\stm32f10x.h"

 
# 6920 "..\\Core\\Inc\\stm32f10x.h"

 
# 6954 "..\\Core\\Inc\\stm32f10x.h"

 
# 6988 "..\\Core\\Inc\\stm32f10x.h"

 
# 7022 "..\\Core\\Inc\\stm32f10x.h"

 
# 7056 "..\\Core\\Inc\\stm32f10x.h"

 
# 7090 "..\\Core\\Inc\\stm32f10x.h"

 
# 7124 "..\\Core\\Inc\\stm32f10x.h"

 
# 7158 "..\\Core\\Inc\\stm32f10x.h"

 
# 7192 "..\\Core\\Inc\\stm32f10x.h"

 
# 7226 "..\\Core\\Inc\\stm32f10x.h"

 
# 7260 "..\\Core\\Inc\\stm32f10x.h"

 
# 7294 "..\\Core\\Inc\\stm32f10x.h"

 
# 7328 "..\\Core\\Inc\\stm32f10x.h"

 
# 7362 "..\\Core\\Inc\\stm32f10x.h"

 
# 7396 "..\\Core\\Inc\\stm32f10x.h"

 
# 7430 "..\\Core\\Inc\\stm32f10x.h"

 
# 7464 "..\\Core\\Inc\\stm32f10x.h"

 
 
 
 
 

 









# 7491 "..\\Core\\Inc\\stm32f10x.h"

 
# 7499 "..\\Core\\Inc\\stm32f10x.h"

 
# 7509 "..\\Core\\Inc\\stm32f10x.h"

 


 


 


 


 





















 




 
 
 
 
 

 
# 7570 "..\\Core\\Inc\\stm32f10x.h"

 
# 7579 "..\\Core\\Inc\\stm32f10x.h"







 



# 7600 "..\\Core\\Inc\\stm32f10x.h"



 



 


 
# 7625 "..\\Core\\Inc\\stm32f10x.h"

 
# 7635 "..\\Core\\Inc\\stm32f10x.h"

 




 


 
 
 
 
 

 
# 7661 "..\\Core\\Inc\\stm32f10x.h"

 


 



 
# 7685 "..\\Core\\Inc\\stm32f10x.h"

 
# 7694 "..\\Core\\Inc\\stm32f10x.h"







 
# 7714 "..\\Core\\Inc\\stm32f10x.h"

 
# 7725 "..\\Core\\Inc\\stm32f10x.h"



 
 
 
 
 

 


# 7754 "..\\Core\\Inc\\stm32f10x.h"

 









# 7788 "..\\Core\\Inc\\stm32f10x.h"

 
 
 
 
 

 









 


 


 





 
# 7828 "..\\Core\\Inc\\stm32f10x.h"

 


 









 


 

 



 



 



 



 



 



 



 



# 8292 "..\\Core\\Inc\\stm32f10x.h"



 

 

  

# 1 "..\\Core\\Inc\\stm32f10x_conf.h"


















 

 



 
 
# 1 "..\\Driver\\Inc\\stm32f10x_adc.h"



















 

 







 
# 1 "..\\Core\\Inc\\stm32f10x.h"







































 



 



 
    
# 8332 "..\\Core\\Inc\\stm32f10x.h"



 

  

 

 
# 32 "..\\Driver\\Inc\\stm32f10x_adc.h"



 



 



 



 

typedef struct
{
  uint32_t ADC_Mode;                      

 

  FunctionalState ADC_ScanConvMode;       

 

  FunctionalState ADC_ContinuousConvMode; 

 

  uint32_t ADC_ExternalTrigConv;          

 

  uint32_t ADC_DataAlign;                 
 

  uint8_t ADC_NbrOfChannel;               

 
}ADC_InitTypeDef;


 



 










 

# 103 "..\\Driver\\Inc\\stm32f10x_adc.h"

# 114 "..\\Driver\\Inc\\stm32f10x_adc.h"


 



 

# 128 "..\\Driver\\Inc\\stm32f10x_adc.h"




# 138 "..\\Driver\\Inc\\stm32f10x_adc.h"

# 153 "..\\Driver\\Inc\\stm32f10x_adc.h"


 



 







 



 

# 191 "..\\Driver\\Inc\\stm32f10x_adc.h"




# 204 "..\\Driver\\Inc\\stm32f10x_adc.h"


 



 

# 228 "..\\Driver\\Inc\\stm32f10x_adc.h"


 



 

















# 265 "..\\Driver\\Inc\\stm32f10x_adc.h"


 



 

# 281 "..\\Driver\\Inc\\stm32f10x_adc.h"


 



 

# 296 "..\\Driver\\Inc\\stm32f10x_adc.h"

# 304 "..\\Driver\\Inc\\stm32f10x_adc.h"


 



 











 



 

# 337 "..\\Driver\\Inc\\stm32f10x_adc.h"


 



 





 



 





 



 





 



 





  




 




 



 





 



 





 



 



 



 



 

void ADC_DeInit(ADC_TypeDef* ADCx);
void ADC_Init(ADC_TypeDef* ADCx, ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);
void ADC_Cmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_DMACmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ITConfig(ADC_TypeDef* ADCx, uint16_t ADC_IT, FunctionalState NewState);
void ADC_ResetCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetResetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_StartCalibration(ADC_TypeDef* ADCx);
FlagStatus ADC_GetCalibrationStatus(ADC_TypeDef* ADCx);
void ADC_SoftwareStartConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartConvStatus(ADC_TypeDef* ADCx);
void ADC_DiscModeChannelCountConfig(ADC_TypeDef* ADCx, uint8_t Number);
void ADC_DiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_RegularChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_ExternalTrigConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
uint16_t ADC_GetConversionValue(ADC_TypeDef* ADCx);
uint32_t ADC_GetDualModeConversionValue(void);
void ADC_AutoInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_InjectedDiscModeCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_ExternalTrigInjectedConvConfig(ADC_TypeDef* ADCx, uint32_t ADC_ExternalTrigInjecConv);
void ADC_ExternalTrigInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
void ADC_SoftwareStartInjectedConvCmd(ADC_TypeDef* ADCx, FunctionalState NewState);
FlagStatus ADC_GetSoftwareStartInjectedConvCmdStatus(ADC_TypeDef* ADCx);
void ADC_InjectedChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel, uint8_t Rank, uint8_t ADC_SampleTime);
void ADC_InjectedSequencerLengthConfig(ADC_TypeDef* ADCx, uint8_t Length);
void ADC_SetInjectedOffset(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel, uint16_t Offset);
uint16_t ADC_GetInjectedConversionValue(ADC_TypeDef* ADCx, uint8_t ADC_InjectedChannel);
void ADC_AnalogWatchdogCmd(ADC_TypeDef* ADCx, uint32_t ADC_AnalogWatchdog);
void ADC_AnalogWatchdogThresholdsConfig(ADC_TypeDef* ADCx, uint16_t HighThreshold, uint16_t LowThreshold);
void ADC_AnalogWatchdogSingleChannelConfig(ADC_TypeDef* ADCx, uint8_t ADC_Channel);
void ADC_TempSensorVrefintCmd(FunctionalState NewState);
FlagStatus ADC_GetFlagStatus(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
void ADC_ClearFlag(ADC_TypeDef* ADCx, uint8_t ADC_FLAG);
ITStatus ADC_GetITStatus(ADC_TypeDef* ADCx, uint16_t ADC_IT);
void ADC_ClearITPendingBit(ADC_TypeDef* ADCx, uint16_t ADC_IT);









 



 



 

# 28 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_bkp.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_bkp.h"



 



 



 



 



 



 







 



 

# 77 "..\\Driver\\Inc\\stm32f10x_bkp.h"


 



 

# 127 "..\\Driver\\Inc\\stm32f10x_bkp.h"

# 142 "..\\Driver\\Inc\\stm32f10x_bkp.h"




 



 



 



 



 

void BKP_DeInit(void);
void BKP_TamperPinLevelConfig(uint16_t BKP_TamperPinLevel);
void BKP_TamperPinCmd(FunctionalState NewState);
void BKP_ITConfig(FunctionalState NewState);
void BKP_RTCOutputConfig(uint16_t BKP_RTCOutputSource);
void BKP_SetRTCCalibrationValue(uint8_t CalibrationValue);
void BKP_WriteBackupRegister(uint16_t BKP_DR, uint16_t Data);
uint16_t BKP_ReadBackupRegister(uint16_t BKP_DR);
FlagStatus BKP_GetFlagStatus(void);
void BKP_ClearFlag(void);
ITStatus BKP_GetITStatus(void);
void BKP_ClearITPendingBit(void);








 



 



 

# 29 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_can.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_can.h"



 



 



 






 

typedef struct
{
  uint16_t CAN_Prescaler;   
 
  
  uint8_t CAN_Mode;         

 

  uint8_t CAN_SJW;          



 

  uint8_t CAN_BS1;          

 

  uint8_t CAN_BS2;          


 
  
  FunctionalState CAN_TTCM; 

 
  
  FunctionalState CAN_ABOM;  

 

  FunctionalState CAN_AWUM;  

 

  FunctionalState CAN_NART;  

 

  FunctionalState CAN_RFLM;  

 

  FunctionalState CAN_TXFP;  

 
} CAN_InitTypeDef;



 

typedef struct
{
  uint16_t CAN_FilterIdHigh;         

 

  uint16_t CAN_FilterIdLow;          

 

  uint16_t CAN_FilterMaskIdHigh;     


 

  uint16_t CAN_FilterMaskIdLow;      


 

  uint16_t CAN_FilterFIFOAssignment; 
 
  
  uint8_t CAN_FilterNumber;           

  uint8_t CAN_FilterMode;            
 

  uint8_t CAN_FilterScale;           
 

  FunctionalState CAN_FilterActivation; 
 
} CAN_FilterInitTypeDef;



 

typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     

 

  uint8_t Data[8]; 
 
} CanTxMsg;



 

typedef struct
{
  uint32_t StdId;  
 

  uint32_t ExtId;  
 

  uint8_t IDE;     

 

  uint8_t RTR;     

 

  uint8_t DLC;     
 

  uint8_t Data[8]; 
 

  uint8_t FMI;     

 
} CanRxMsg;



 



 



 






 



 












 





   










 
  



   







 



 










 



 

# 300 "..\\Driver\\Inc\\stm32f10x_can.h"




 



 

# 318 "..\\Driver\\Inc\\stm32f10x_can.h"





 



 





 



 







 



 








 



 









 



 







 



 



 



 








 



 







 



 







 



 








 



 








 



 






 



 






 




   
                                                                
# 492 "..\\Driver\\Inc\\stm32f10x_can.h"




 



 

 
 

 




 
# 517 "..\\Driver\\Inc\\stm32f10x_can.h"

 



 

 





# 538 "..\\Driver\\Inc\\stm32f10x_can.h"








 

  


 


  


 
# 564 "..\\Driver\\Inc\\stm32f10x_can.h"

 



 






 





# 589 "..\\Driver\\Inc\\stm32f10x_can.h"

# 596 "..\\Driver\\Inc\\stm32f10x_can.h"



 



 
# 620 "..\\Driver\\Inc\\stm32f10x_can.h"



 



 



 



 



 
  
void CAN_DeInit(CAN_TypeDef* CANx);

  
uint8_t CAN_Init(CAN_TypeDef* CANx, CAN_InitTypeDef* CAN_InitStruct);
void CAN_FilterInit(CAN_FilterInitTypeDef* CAN_FilterInitStruct);
void CAN_StructInit(CAN_InitTypeDef* CAN_InitStruct);
void CAN_SlaveStartBank(uint8_t CAN_BankNumber); 
void CAN_DBGFreeze(CAN_TypeDef* CANx, FunctionalState NewState);
void CAN_TTComModeCmd(CAN_TypeDef* CANx, FunctionalState NewState);

 
uint8_t CAN_Transmit(CAN_TypeDef* CANx, CanTxMsg* TxMessage);
uint8_t CAN_TransmitStatus(CAN_TypeDef* CANx, uint8_t TransmitMailbox);
void CAN_CancelTransmit(CAN_TypeDef* CANx, uint8_t Mailbox);

 
void CAN_Receive(CAN_TypeDef* CANx, uint8_t FIFONumber, CanRxMsg* RxMessage);
void CAN_FIFORelease(CAN_TypeDef* CANx, uint8_t FIFONumber);
uint8_t CAN_MessagePending(CAN_TypeDef* CANx, uint8_t FIFONumber);


 
uint8_t CAN_OperatingModeRequest(CAN_TypeDef* CANx, uint8_t CAN_OperatingMode);
uint8_t CAN_Sleep(CAN_TypeDef* CANx);
uint8_t CAN_WakeUp(CAN_TypeDef* CANx);

 
uint8_t CAN_GetLastErrorCode(CAN_TypeDef* CANx);
uint8_t CAN_GetReceiveErrorCounter(CAN_TypeDef* CANx);
uint8_t CAN_GetLSBTransmitErrorCounter(CAN_TypeDef* CANx);

 
void CAN_ITConfig(CAN_TypeDef* CANx, uint32_t CAN_IT, FunctionalState NewState);
FlagStatus CAN_GetFlagStatus(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
void CAN_ClearFlag(CAN_TypeDef* CANx, uint32_t CAN_FLAG);
ITStatus CAN_GetITStatus(CAN_TypeDef* CANx, uint32_t CAN_IT);
void CAN_ClearITPendingBit(CAN_TypeDef* CANx, uint32_t CAN_IT);








 



 



 

# 30 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_cec.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_cec.h"



 



 
  



 
   


  
typedef struct
{
  uint16_t CEC_BitTimingMode; 
 
  uint16_t CEC_BitPeriodMode; 
 
}CEC_InitTypeDef;



 



  
  


  







 



  







  




  
# 99 "..\\Driver\\Inc\\stm32f10x_cec.h"


  




  



  



  




 



 
   


  
# 135 "..\\Driver\\Inc\\stm32f10x_cec.h"



  
# 146 "..\\Driver\\Inc\\stm32f10x_cec.h"


                               
# 156 "..\\Driver\\Inc\\stm32f10x_cec.h"



  



  



 
 


 



  
void CEC_DeInit(void);
void CEC_Init(CEC_InitTypeDef* CEC_InitStruct);
void CEC_Cmd(FunctionalState NewState);
void CEC_ITConfig(FunctionalState NewState);
void CEC_OwnAddressConfig(uint8_t CEC_OwnAddress);
void CEC_SetPrescaler(uint16_t CEC_Prescaler);
void CEC_SendDataByte(uint8_t Data);
uint8_t CEC_ReceiveDataByte(void);
void CEC_StartOfMessage(void);
void CEC_EndOfMessageCmd(FunctionalState NewState);
FlagStatus CEC_GetFlagStatus(uint32_t CEC_FLAG);
void CEC_ClearFlag(uint32_t CEC_FLAG);
ITStatus CEC_GetITStatus(uint8_t CEC_IT);
void CEC_ClearITPendingBit(uint16_t CEC_IT);









  



  



  

# 31 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_crc.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_crc.h"



 



 



 



 



 



 



 



 



 

void CRC_ResetDR(void);
uint32_t CRC_CalcCRC(uint32_t Data);
uint32_t CRC_CalcBlockCRC(uint32_t pBuffer[], uint32_t BufferLength);
uint32_t CRC_GetCRC(void);
void CRC_SetIDRegister(uint8_t IDValue);
uint8_t CRC_GetIDRegister(void);








 



 



 

# 32 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_dac.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_dac.h"



 



 



 



 

typedef struct
{
  uint32_t DAC_Trigger;                      
 

  uint32_t DAC_WaveGeneration;               

 

  uint32_t DAC_LFSRUnmask_TriangleAmplitude; 

 

  uint32_t DAC_OutputBuffer;                 
 
}DAC_InitTypeDef;



 



 



 

# 93 "..\\Driver\\Inc\\stm32f10x_dac.h"

# 103 "..\\Driver\\Inc\\stm32f10x_dac.h"



 



 

# 118 "..\\Driver\\Inc\\stm32f10x_dac.h"


 



 

# 150 "..\\Driver\\Inc\\stm32f10x_dac.h"

# 175 "..\\Driver\\Inc\\stm32f10x_dac.h"


 



 







 



 







 



 

# 213 "..\\Driver\\Inc\\stm32f10x_dac.h"


 



 







 



 




 
# 260 "..\\Driver\\Inc\\stm32f10x_dac.h"



 



 



 



 

void DAC_DeInit(void);
void DAC_Init(uint32_t DAC_Channel, DAC_InitTypeDef* DAC_InitStruct);
void DAC_StructInit(DAC_InitTypeDef* DAC_InitStruct);
void DAC_Cmd(uint32_t DAC_Channel, FunctionalState NewState);



void DAC_DMACmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_SoftwareTriggerCmd(uint32_t DAC_Channel, FunctionalState NewState);
void DAC_DualSoftwareTriggerCmd(FunctionalState NewState);
void DAC_WaveGenerationCmd(uint32_t DAC_Channel, uint32_t DAC_Wave, FunctionalState NewState);
void DAC_SetChannel1Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetChannel2Data(uint32_t DAC_Align, uint16_t Data);
void DAC_SetDualChannelData(uint32_t DAC_Align, uint16_t Data2, uint16_t Data1);
uint16_t DAC_GetDataOutputValue(uint32_t DAC_Channel);
# 298 "..\\Driver\\Inc\\stm32f10x_dac.h"








 



 



 

# 33 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_dbgmcu.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_dbgmcu.h"



 



 



 



 



 

# 79 "..\\Driver\\Inc\\stm32f10x_dbgmcu.h"
                                              



  



 



 



 

uint32_t DBGMCU_GetREVID(void);
uint32_t DBGMCU_GetDEVID(void);
void DBGMCU_Config(uint32_t DBGMCU_Periph, FunctionalState NewState);








 



 



 

# 34 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_dma.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_dma.h"



 



 



 



 

typedef struct
{
  uint32_t DMA_PeripheralBaseAddr;  

  uint32_t DMA_MemoryBaseAddr;      

  uint32_t DMA_DIR;                
 

  uint32_t DMA_BufferSize;         

 

  uint32_t DMA_PeripheralInc;      
 

  uint32_t DMA_MemoryInc;          
 

  uint32_t DMA_PeripheralDataSize; 
 

  uint32_t DMA_MemoryDataSize;     
 

  uint32_t DMA_Mode;               


 

  uint32_t DMA_Priority;           
 

  uint32_t DMA_M2M;                
 
}DMA_InitTypeDef;



 



 

# 106 "..\\Driver\\Inc\\stm32f10x_dma.h"



 







 



 







 



 







 



 

# 153 "..\\Driver\\Inc\\stm32f10x_dma.h"


 



 

# 167 "..\\Driver\\Inc\\stm32f10x_dma.h"


 



 






 



 

# 194 "..\\Driver\\Inc\\stm32f10x_dma.h"


 



 







 



 






# 247 "..\\Driver\\Inc\\stm32f10x_dma.h"

# 268 "..\\Driver\\Inc\\stm32f10x_dma.h"



# 295 "..\\Driver\\Inc\\stm32f10x_dma.h"



 



 
# 331 "..\\Driver\\Inc\\stm32f10x_dma.h"

# 352 "..\\Driver\\Inc\\stm32f10x_dma.h"



# 379 "..\\Driver\\Inc\\stm32f10x_dma.h"


 



 





 



 



 



 



 

void DMA_DeInit(DMA_Channel_TypeDef* DMAy_Channelx);
void DMA_Init(DMA_Channel_TypeDef* DMAy_Channelx, DMA_InitTypeDef* DMA_InitStruct);
void DMA_StructInit(DMA_InitTypeDef* DMA_InitStruct);
void DMA_Cmd(DMA_Channel_TypeDef* DMAy_Channelx, FunctionalState NewState);
void DMA_ITConfig(DMA_Channel_TypeDef* DMAy_Channelx, uint32_t DMA_IT, FunctionalState NewState);
void DMA_SetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx, uint16_t DataNumber); 
uint16_t DMA_GetCurrDataCounter(DMA_Channel_TypeDef* DMAy_Channelx);
FlagStatus DMA_GetFlagStatus(uint32_t DMAy_FLAG);
void DMA_ClearFlag(uint32_t DMAy_FLAG);
ITStatus DMA_GetITStatus(uint32_t DMAy_IT);
void DMA_ClearITPendingBit(uint32_t DMAy_IT);








 



 



 

# 35 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_exti.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_exti.h"



 



 



 



 

typedef enum
{
  EXTI_Mode_Interrupt = 0x00,
  EXTI_Mode_Event = 0x04
}EXTIMode_TypeDef;





 

typedef enum
{
  EXTI_Trigger_Rising = 0x08,
  EXTI_Trigger_Falling = 0x0C,  
  EXTI_Trigger_Rising_Falling = 0x10
}EXTITrigger_TypeDef;






 

typedef struct
{
  uint32_t EXTI_Line;               
 
   
  EXTIMode_TypeDef EXTI_Mode;       
 

  EXTITrigger_TypeDef EXTI_Trigger; 
 

  FunctionalState EXTI_LineCmd;     
  
}EXTI_InitTypeDef;



 



 



 

# 123 "..\\Driver\\Inc\\stm32f10x_exti.h"
                                          
# 135 "..\\Driver\\Inc\\stm32f10x_exti.h"

                    


 



 



 



 



 

void EXTI_DeInit(void);
void EXTI_Init(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_StructInit(EXTI_InitTypeDef* EXTI_InitStruct);
void EXTI_GenerateSWInterrupt(uint32_t EXTI_Line);
FlagStatus EXTI_GetFlagStatus(uint32_t EXTI_Line);
void EXTI_ClearFlag(uint32_t EXTI_Line);
ITStatus EXTI_GetITStatus(uint32_t EXTI_Line);
void EXTI_ClearITPendingBit(uint32_t EXTI_Line);








 



 



 

# 36 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_flash.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_flash.h"



 



 



 



 

typedef enum
{ 
  FLASH_BUSY = 1,
  FLASH_ERROR_PG,
  FLASH_ERROR_WRP,
  FLASH_COMPLETE,
  FLASH_TIMEOUT
}FLASH_Status;



 



 



 

# 76 "..\\Driver\\Inc\\stm32f10x_flash.h"


 



 







 



 







 



 

 
# 117 "..\\Driver\\Inc\\stm32f10x_flash.h"

 
# 143 "..\\Driver\\Inc\\stm32f10x_flash.h"

 
# 210 "..\\Driver\\Inc\\stm32f10x_flash.h"











 



 







 



 







 



 





# 269 "..\\Driver\\Inc\\stm32f10x_flash.h"


 


 
# 290 "..\\Driver\\Inc\\stm32f10x_flash.h"






 



 
# 332 "..\\Driver\\Inc\\stm32f10x_flash.h"





 
# 345 "..\\Driver\\Inc\\stm32f10x_flash.h"



 



 



 



 



 

 
void FLASH_SetLatency(uint32_t FLASH_Latency);
void FLASH_HalfCycleAccessCmd(uint32_t FLASH_HalfCycleAccess);
void FLASH_PrefetchBufferCmd(uint32_t FLASH_PrefetchBuffer);
void FLASH_Unlock(void);
void FLASH_Lock(void);
FLASH_Status FLASH_ErasePage(uint32_t Page_Address);
FLASH_Status FLASH_EraseAllPages(void);
FLASH_Status FLASH_EraseOptionBytes(void);
FLASH_Status FLASH_ProgramWord(uint32_t Address, uint32_t Data);
FLASH_Status FLASH_ProgramHalfWord(uint32_t Address, uint16_t Data);
FLASH_Status FLASH_ProgramOptionByteData(uint32_t Address, uint8_t Data);
FLASH_Status FLASH_EnableWriteProtection(uint32_t FLASH_Pages);
FLASH_Status FLASH_ReadOutProtection(FunctionalState NewState);
FLASH_Status FLASH_UserOptionByteConfig(uint16_t OB_IWDG, uint16_t OB_STOP, uint16_t OB_STDBY);
uint32_t FLASH_GetUserOptionByte(void);
uint32_t FLASH_GetWriteProtectionOptionByte(void);
FlagStatus FLASH_GetReadOutProtectionStatus(void);
FlagStatus FLASH_GetPrefetchBufferStatus(void);
void FLASH_ITConfig(uint32_t FLASH_IT, FunctionalState NewState);
FlagStatus FLASH_GetFlagStatus(uint32_t FLASH_FLAG);
void FLASH_ClearFlag(uint32_t FLASH_FLAG);
FLASH_Status FLASH_GetStatus(void);
FLASH_Status FLASH_WaitForLastOperation(uint32_t Timeout);

 
void FLASH_UnlockBank1(void);
void FLASH_LockBank1(void);
FLASH_Status FLASH_EraseAllBank1Pages(void);
FLASH_Status FLASH_GetBank1Status(void);
FLASH_Status FLASH_WaitForLastBank1Operation(uint32_t Timeout);

# 407 "..\\Driver\\Inc\\stm32f10x_flash.h"








 



 



 

# 37 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_fsmc.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_fsmc.h"



 



 



 



 

typedef struct
{
  uint32_t FSMC_AddressSetupTime;       


 

  uint32_t FSMC_AddressHoldTime;        


 

  uint32_t FSMC_DataSetupTime;          


 

  uint32_t FSMC_BusTurnAroundDuration;  


 

  uint32_t FSMC_CLKDivision;            

 

  uint32_t FSMC_DataLatency;            





 

  uint32_t FSMC_AccessMode;             
 
}FSMC_NORSRAMTimingInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_Bank;                
 

  uint32_t FSMC_DataAddressMux;      

 

  uint32_t FSMC_MemoryType;          

 

  uint32_t FSMC_MemoryDataWidth;     
 

  uint32_t FSMC_BurstAccessMode;     

 
                                       
  uint32_t FSMC_AsynchronousWait;     

 

  uint32_t FSMC_WaitSignalPolarity;  

 

  uint32_t FSMC_WrapMode;            

 

  uint32_t FSMC_WaitSignalActive;    


 

  uint32_t FSMC_WriteOperation;      
 

  uint32_t FSMC_WaitSignal;          

 

  uint32_t FSMC_ExtendedMode;        
 

  uint32_t FSMC_WriteBurst;          
  

  FSMC_NORSRAMTimingInitTypeDef* FSMC_ReadWriteTimingStruct;    

  FSMC_NORSRAMTimingInitTypeDef* FSMC_WriteTimingStruct;            
}FSMC_NORSRAMInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_SetupTime;      



 

  uint32_t FSMC_WaitSetupTime;  



 

  uint32_t FSMC_HoldSetupTime;  




 

  uint32_t FSMC_HiZSetupTime;   



 
}FSMC_NAND_PCCARDTimingInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_Bank;              
 

  uint32_t FSMC_Waitfeature;      
 

  uint32_t FSMC_MemoryDataWidth;  
 

  uint32_t FSMC_ECC;              
 

  uint32_t FSMC_ECCPageSize;      
 

  uint32_t FSMC_TCLRSetupTime;    

 

  uint32_t FSMC_TARSetupTime;     

  

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;     

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;  
}FSMC_NANDInitTypeDef;



 

typedef struct
{
  uint32_t FSMC_Waitfeature;    
 

  uint32_t FSMC_TCLRSetupTime;  

 

  uint32_t FSMC_TARSetupTime;   

  

  
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_CommonSpaceTimingStruct;  

  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_AttributeSpaceTimingStruct;    
  
  FSMC_NAND_PCCARDTimingInitTypeDef*  FSMC_IOSpaceTimingStruct;    
}FSMC_PCCARDInitTypeDef;



 



 



 






 



   




 



     



 



















 



 








 



 

# 316 "..\\Driver\\Inc\\stm32f10x_fsmc.h"



 



 








 



 







 
  


 







 
  


 








 



 








 



 








 



 





                              


 



 







 



 









 



 







 



 





 



 





 



 





 



 





 



 





 



 





 



 

# 520 "..\\Driver\\Inc\\stm32f10x_fsmc.h"



 



 
  


 



 








 




 








 



 

# 576 "..\\Driver\\Inc\\stm32f10x_fsmc.h"



 



 





 



 





 



 





 



 





 



 





 



 





 



 

# 652 "..\\Driver\\Inc\\stm32f10x_fsmc.h"


 



 

# 668 "..\\Driver\\Inc\\stm32f10x_fsmc.h"





 



 



 



 



 



 

void FSMC_NORSRAMDeInit(uint32_t FSMC_Bank);
void FSMC_NANDDeInit(uint32_t FSMC_Bank);
void FSMC_PCCARDDeInit(void);
void FSMC_NORSRAMInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NANDInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_PCCARDInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_NORSRAMStructInit(FSMC_NORSRAMInitTypeDef* FSMC_NORSRAMInitStruct);
void FSMC_NANDStructInit(FSMC_NANDInitTypeDef* FSMC_NANDInitStruct);
void FSMC_PCCARDStructInit(FSMC_PCCARDInitTypeDef* FSMC_PCCARDInitStruct);
void FSMC_NORSRAMCmd(uint32_t FSMC_Bank, FunctionalState NewState);
void FSMC_NANDCmd(uint32_t FSMC_Bank, FunctionalState NewState);
void FSMC_PCCARDCmd(FunctionalState NewState);
void FSMC_NANDECCCmd(uint32_t FSMC_Bank, FunctionalState NewState);
uint32_t FSMC_GetECC(uint32_t FSMC_Bank);
void FSMC_ITConfig(uint32_t FSMC_Bank, uint32_t FSMC_IT, FunctionalState NewState);
FlagStatus FSMC_GetFlagStatus(uint32_t FSMC_Bank, uint32_t FSMC_FLAG);
void FSMC_ClearFlag(uint32_t FSMC_Bank, uint32_t FSMC_FLAG);
ITStatus FSMC_GetITStatus(uint32_t FSMC_Bank, uint32_t FSMC_IT);
void FSMC_ClearITPendingBit(uint32_t FSMC_Bank, uint32_t FSMC_IT);








 



 



  

# 38 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_gpio.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_gpio.h"



 



 



 

# 52 "..\\Driver\\Inc\\stm32f10x_gpio.h"
                                     


 

typedef enum
{ 
  GPIO_Speed_10MHz = 1,
  GPIO_Speed_2MHz, 
  GPIO_Speed_50MHz
}GPIOSpeed_TypeDef;





 

typedef enum
{ GPIO_Mode_AIN = 0x0,
  GPIO_Mode_IN_FLOATING = 0x04,
  GPIO_Mode_IPD = 0x28,
  GPIO_Mode_IPU = 0x48,
  GPIO_Mode_Out_OD = 0x14,
  GPIO_Mode_Out_PP = 0x10,
  GPIO_Mode_AF_OD = 0x1C,
  GPIO_Mode_AF_PP = 0x18
}GPIOMode_TypeDef;








 

typedef struct
{
  uint16_t GPIO_Pin;             
 

  GPIOSpeed_TypeDef GPIO_Speed;  
 

  GPIOMode_TypeDef GPIO_Mode;    
 
}GPIO_InitTypeDef;




 

typedef enum
{ Bit_RESET = 0,
  Bit_SET
}BitAction;





 



 



 

# 143 "..\\Driver\\Inc\\stm32f10x_gpio.h"



# 162 "..\\Driver\\Inc\\stm32f10x_gpio.h"



 



 

# 203 "..\\Driver\\Inc\\stm32f10x_gpio.h"







# 216 "..\\Driver\\Inc\\stm32f10x_gpio.h"






# 244 "..\\Driver\\Inc\\stm32f10x_gpio.h"
                              


  



 

# 265 "..\\Driver\\Inc\\stm32f10x_gpio.h"

# 273 "..\\Driver\\Inc\\stm32f10x_gpio.h"



 



 

# 298 "..\\Driver\\Inc\\stm32f10x_gpio.h"

# 315 "..\\Driver\\Inc\\stm32f10x_gpio.h"



 



  








                                                 


 



 



 



 

void GPIO_DeInit(GPIO_TypeDef* GPIOx);
void GPIO_AFIODeInit(void);
void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_InitTypeDef* GPIO_InitStruct);
void GPIO_StructInit(GPIO_InitTypeDef* GPIO_InitStruct);
uint8_t GPIO_ReadInputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx);
uint8_t GPIO_ReadOutputDataBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
uint16_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx);
void GPIO_SetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_ResetBits(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_WriteBit(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, BitAction BitVal);
void GPIO_Write(GPIO_TypeDef* GPIOx, uint16_t PortVal);
void GPIO_PinLockConfig(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void GPIO_EventOutputConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_EventOutputCmd(FunctionalState NewState);
void GPIO_PinRemapConfig(uint32_t GPIO_Remap, FunctionalState NewState);
void GPIO_EXTILineConfig(uint8_t GPIO_PortSource, uint8_t GPIO_PinSource);
void GPIO_ETH_MediaInterfaceConfig(uint32_t GPIO_ETH_MediaInterface);








 



 



 

# 39 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_i2c.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_i2c.h"



 



 



 



 

typedef struct
{
  uint32_t I2C_ClockSpeed;          
 

  uint16_t I2C_Mode;                
 

  uint16_t I2C_DutyCycle;           
 

  uint16_t I2C_OwnAddress1;         
 

  uint16_t I2C_Ack;                 
 

  uint16_t I2C_AcknowledgedAddress; 
 
}I2C_InitTypeDef;



  




 





 

# 91 "..\\Driver\\Inc\\stm32f10x_i2c.h"


 



 







  



 







 



 







 



 







  



 

# 165 "..\\Driver\\Inc\\stm32f10x_i2c.h"


 



 







 



 







  



 







  



 







  



 

# 235 "..\\Driver\\Inc\\stm32f10x_i2c.h"



# 245 "..\\Driver\\Inc\\stm32f10x_i2c.h"


 



 



 

# 264 "..\\Driver\\Inc\\stm32f10x_i2c.h"



 

# 283 "..\\Driver\\Inc\\stm32f10x_i2c.h"



# 297 "..\\Driver\\Inc\\stm32f10x_i2c.h"


 



 




 







 
 

























 

 


 





























 

  
 


 
 

 






 
























 

    
 



 



 



























 

  
 

 


 
 


 


 

# 495 "..\\Driver\\Inc\\stm32f10x_i2c.h"


 



 




 



 




 



 



 



 



 

void I2C_DeInit(I2C_TypeDef* I2Cx);
void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct);
void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct);
void I2C_Cmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DMACmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_DMALastTransferCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_OwnAddress2Config(I2C_TypeDef* I2Cx, uint8_t Address);
void I2C_DualAddressCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_GeneralCallCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_ITConfig(I2C_TypeDef* I2Cx, uint16_t I2C_IT, FunctionalState NewState);
void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data);
uint8_t I2C_ReceiveData(I2C_TypeDef* I2Cx);
void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, uint8_t I2C_Direction);
uint16_t I2C_ReadRegister(I2C_TypeDef* I2Cx, uint8_t I2C_Register);
void I2C_SoftwareResetCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_NACKPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_NACKPosition);
void I2C_SMBusAlertConfig(I2C_TypeDef* I2Cx, uint16_t I2C_SMBusAlert);
void I2C_TransmitPEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_PECPositionConfig(I2C_TypeDef* I2Cx, uint16_t I2C_PECPosition);
void I2C_CalculatePEC(I2C_TypeDef* I2Cx, FunctionalState NewState);
uint8_t I2C_GetPEC(I2C_TypeDef* I2Cx);
void I2C_ARPCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_StretchClockCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);
void I2C_FastModeDutyCycleConfig(I2C_TypeDef* I2Cx, uint16_t I2C_DutyCycle);













































































 





 
ErrorStatus I2C_CheckEvent(I2C_TypeDef* I2Cx, uint32_t I2C_EVENT);




 
uint32_t I2C_GetLastEvent(I2C_TypeDef* I2Cx);




 
FlagStatus I2C_GetFlagStatus(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);



 

void I2C_ClearFlag(I2C_TypeDef* I2Cx, uint32_t I2C_FLAG);
ITStatus I2C_GetITStatus(I2C_TypeDef* I2Cx, uint32_t I2C_IT);
void I2C_ClearITPendingBit(I2C_TypeDef* I2Cx, uint32_t I2C_IT);








  



  



  

# 40 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_iwdg.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_iwdg.h"



 



 



 



 



 



 







 



 

# 83 "..\\Driver\\Inc\\stm32f10x_iwdg.h"


 



 







 



 



 



 



 

void IWDG_WriteAccessCmd(uint16_t IWDG_WriteAccess);
void IWDG_SetPrescaler(uint8_t IWDG_Prescaler);
void IWDG_SetReload(uint16_t Reload);
void IWDG_ReloadCounter(void);
void IWDG_Enable(void);
FlagStatus IWDG_GetFlagStatus(uint16_t IWDG_FLAG);








 



 



 

# 41 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_pwr.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_pwr.h"



 



  



  



  



  



  

# 69 "..\\Driver\\Inc\\stm32f10x_pwr.h"


 



 







 



 




 


 



 










 



 



 



 



 

void PWR_DeInit(void);
void PWR_BackupAccessCmd(FunctionalState NewState);
void PWR_PVDCmd(FunctionalState NewState);
void PWR_PVDLevelConfig(uint32_t PWR_PVDLevel);
void PWR_WakeUpPinCmd(FunctionalState NewState);
void PWR_EnterSTOPMode(uint32_t PWR_Regulator, uint8_t PWR_STOPEntry);
void PWR_EnterSTANDBYMode(void);
FlagStatus PWR_GetFlagStatus(uint32_t PWR_FLAG);
void PWR_ClearFlag(uint32_t PWR_FLAG);








 



 



 

# 42 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_rcc.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_rcc.h"



 



 



 

typedef struct
{
  uint32_t SYSCLK_Frequency;   
  uint32_t HCLK_Frequency;     
  uint32_t PCLK1_Frequency;    
  uint32_t PCLK2_Frequency;    
  uint32_t ADCCLK_Frequency;   
}RCC_ClocksTypeDef;



 



 



 









  



 



# 93 "..\\Driver\\Inc\\stm32f10x_rcc.h"



  



 
# 125 "..\\Driver\\Inc\\stm32f10x_rcc.h"

# 140 "..\\Driver\\Inc\\stm32f10x_rcc.h"


 



 
# 174 "..\\Driver\\Inc\\stm32f10x_rcc.h"


 




 
# 195 "..\\Driver\\Inc\\stm32f10x_rcc.h"


 

# 282 "..\\Driver\\Inc\\stm32f10x_rcc.h"




 

# 294 "..\\Driver\\Inc\\stm32f10x_rcc.h"


 



 

# 316 "..\\Driver\\Inc\\stm32f10x_rcc.h"


  



 

# 332 "..\\Driver\\Inc\\stm32f10x_rcc.h"


 



 

# 346 "..\\Driver\\Inc\\stm32f10x_rcc.h"

# 363 "..\\Driver\\Inc\\stm32f10x_rcc.h"




 




 








 
# 395 "..\\Driver\\Inc\\stm32f10x_rcc.h"


# 422 "..\\Driver\\Inc\\stm32f10x_rcc.h"
  



 

# 434 "..\\Driver\\Inc\\stm32f10x_rcc.h"


 



 








 



 

# 461 "..\\Driver\\Inc\\stm32f10x_rcc.h"


 



 







# 488 "..\\Driver\\Inc\\stm32f10x_rcc.h"


 



 

# 517 "..\\Driver\\Inc\\stm32f10x_rcc.h"




  



 

# 552 "..\\Driver\\Inc\\stm32f10x_rcc.h"
 




 



 







# 585 "..\\Driver\\Inc\\stm32f10x_rcc.h"



 



 

# 605 "..\\Driver\\Inc\\stm32f10x_rcc.h"

# 624 "..\\Driver\\Inc\\stm32f10x_rcc.h"




 



 



 



 



 

void RCC_DeInit(void);
void RCC_HSEConfig(uint32_t RCC_HSE);
ErrorStatus RCC_WaitForHSEStartUp(void);
void RCC_AdjustHSICalibrationValue(uint8_t HSICalibrationValue);
void RCC_HSICmd(FunctionalState NewState);
void RCC_PLLConfig(uint32_t RCC_PLLSource, uint32_t RCC_PLLMul);
void RCC_PLLCmd(FunctionalState NewState);





# 665 "..\\Driver\\Inc\\stm32f10x_rcc.h"

void RCC_SYSCLKConfig(uint32_t RCC_SYSCLKSource);
uint8_t RCC_GetSYSCLKSource(void);
void RCC_HCLKConfig(uint32_t RCC_SYSCLK);
void RCC_PCLK1Config(uint32_t RCC_HCLK);
void RCC_PCLK2Config(uint32_t RCC_HCLK);
void RCC_ITConfig(uint8_t RCC_IT, FunctionalState NewState);


 void RCC_USBCLKConfig(uint32_t RCC_USBCLKSource);




void RCC_ADCCLKConfig(uint32_t RCC_PCLK2);






void RCC_LSEConfig(uint8_t RCC_LSE);
void RCC_LSICmd(FunctionalState NewState);
void RCC_RTCCLKConfig(uint32_t RCC_RTCCLKSource);
void RCC_RTCCLKCmd(FunctionalState NewState);
void RCC_GetClocksFreq(RCC_ClocksTypeDef* RCC_Clocks);
void RCC_AHBPeriphClockCmd(uint32_t RCC_AHBPeriph, FunctionalState NewState);
void RCC_APB2PeriphClockCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphClockCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);





void RCC_APB2PeriphResetCmd(uint32_t RCC_APB2Periph, FunctionalState NewState);
void RCC_APB1PeriphResetCmd(uint32_t RCC_APB1Periph, FunctionalState NewState);
void RCC_BackupResetCmd(FunctionalState NewState);
void RCC_ClockSecuritySystemCmd(FunctionalState NewState);
void RCC_MCOConfig(uint8_t RCC_MCO);
FlagStatus RCC_GetFlagStatus(uint8_t RCC_FLAG);
void RCC_ClearFlag(void);
ITStatus RCC_GetITStatus(uint8_t RCC_IT);
void RCC_ClearITPendingBit(uint8_t RCC_IT);








 



 



  

# 43 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_rtc.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_rtc.h"



 



  



  



  



 



 

# 63 "..\\Driver\\Inc\\stm32f10x_rtc.h"


  



 

# 81 "..\\Driver\\Inc\\stm32f10x_rtc.h"



 



 



 



 



 

void RTC_ITConfig(uint16_t RTC_IT, FunctionalState NewState);
void RTC_EnterConfigMode(void);
void RTC_ExitConfigMode(void);
uint32_t  RTC_GetCounter(void);
void RTC_SetCounter(uint32_t CounterValue);
void RTC_SetPrescaler(uint32_t PrescalerValue);
void RTC_SetAlarm(uint32_t AlarmValue);
uint32_t  RTC_GetDivider(void);
void RTC_WaitForLastTask(void);
void RTC_WaitForSynchro(void);
FlagStatus RTC_GetFlagStatus(uint16_t RTC_FLAG);
void RTC_ClearFlag(uint16_t RTC_FLAG);
ITStatus RTC_GetITStatus(uint16_t RTC_IT);
void RTC_ClearITPendingBit(uint16_t RTC_IT);








 



 



 

# 44 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_sdio.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_sdio.h"



 



 



 

typedef struct
{
  uint32_t SDIO_ClockEdge;            
 

  uint32_t SDIO_ClockBypass;          

 

  uint32_t SDIO_ClockPowerSave;       

 

  uint32_t SDIO_BusWide;              
 

  uint32_t SDIO_HardwareFlowControl;  
 

  uint8_t SDIO_ClockDiv;              
 
                                           
} SDIO_InitTypeDef;

typedef struct
{
  uint32_t SDIO_Argument;  


 

  uint32_t SDIO_CmdIndex;   

  uint32_t SDIO_Response;  
 

  uint32_t SDIO_Wait;      
 

  uint32_t SDIO_CPSM;      

 
} SDIO_CmdInitTypeDef;

typedef struct
{
  uint32_t SDIO_DataTimeOut;     

  uint32_t SDIO_DataLength;      
 
  uint32_t SDIO_DataBlockSize;  
 
 
  uint32_t SDIO_TransferDir;    

 
 
  uint32_t SDIO_TransferMode;   
 
 
  uint32_t SDIO_DPSM;           

 
} SDIO_DataInitTypeDef;



  



 



 







 



 







  



 







 



 









 



 







 



 






  




 

# 221 "..\\Driver\\Inc\\stm32f10x_sdio.h"


  



 




 



 

# 244 "..\\Driver\\Inc\\stm32f10x_sdio.h"


 



 








 



 






  



 

# 282 "..\\Driver\\Inc\\stm32f10x_sdio.h"


 



 




 



 

# 329 "..\\Driver\\Inc\\stm32f10x_sdio.h"


 



 







 



 







 



 






 



 

# 420 "..\\Driver\\Inc\\stm32f10x_sdio.h"



# 447 "..\\Driver\\Inc\\stm32f10x_sdio.h"





 



 







 



 



 



 



 

void SDIO_DeInit(void);
void SDIO_Init(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_StructInit(SDIO_InitTypeDef* SDIO_InitStruct);
void SDIO_ClockCmd(FunctionalState NewState);
void SDIO_SetPowerState(uint32_t SDIO_PowerState);
uint32_t SDIO_GetPowerState(void);
void SDIO_ITConfig(uint32_t SDIO_IT, FunctionalState NewState);
void SDIO_DMACmd(FunctionalState NewState);
void SDIO_SendCommand(SDIO_CmdInitTypeDef *SDIO_CmdInitStruct);
void SDIO_CmdStructInit(SDIO_CmdInitTypeDef* SDIO_CmdInitStruct);
uint8_t SDIO_GetCommandResponse(void);
uint32_t SDIO_GetResponse(uint32_t SDIO_RESP);
void SDIO_DataConfig(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
void SDIO_DataStructInit(SDIO_DataInitTypeDef* SDIO_DataInitStruct);
uint32_t SDIO_GetDataCounter(void);
uint32_t SDIO_ReadData(void);
void SDIO_WriteData(uint32_t Data);
uint32_t SDIO_GetFIFOCount(void);
void SDIO_StartSDIOReadWait(FunctionalState NewState);
void SDIO_StopSDIOReadWait(FunctionalState NewState);
void SDIO_SetSDIOReadWaitMode(uint32_t SDIO_ReadWaitMode);
void SDIO_SetSDIOOperation(FunctionalState NewState);
void SDIO_SendSDIOSuspendCmd(FunctionalState NewState);
void SDIO_CommandCompletionCmd(FunctionalState NewState);
void SDIO_CEATAITCmd(FunctionalState NewState);
void SDIO_SendCEATACmd(FunctionalState NewState);
FlagStatus SDIO_GetFlagStatus(uint32_t SDIO_FLAG);
void SDIO_ClearFlag(uint32_t SDIO_FLAG);
ITStatus SDIO_GetITStatus(uint32_t SDIO_IT);
void SDIO_ClearITPendingBit(uint32_t SDIO_IT);








 



 



 

# 45 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_spi.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_spi.h"



 



  



 



 

typedef struct
{
  uint16_t SPI_Direction;           
 

  uint16_t SPI_Mode;                
 

  uint16_t SPI_DataSize;            
 

  uint16_t SPI_CPOL;                
 

  uint16_t SPI_CPHA;                
 

  uint16_t SPI_NSS;                 

 
 
  uint16_t SPI_BaudRatePrescaler;   



 

  uint16_t SPI_FirstBit;            
 

  uint16_t SPI_CRCPolynomial;        
}SPI_InitTypeDef;



 

typedef struct
{

  uint16_t I2S_Mode;         
 

  uint16_t I2S_Standard;     
 

  uint16_t I2S_DataFormat;   
 

  uint16_t I2S_MCLKOutput;   
 

  uint32_t I2S_AudioFreq;    
 

  uint16_t I2S_CPOL;         
 
}I2S_InitTypeDef;



 



 










 
  
# 135 "..\\Driver\\Inc\\stm32f10x_spi.h"


 



 







 



 







  



 







 



 







 



 







  



 

# 219 "..\\Driver\\Inc\\stm32f10x_spi.h"


  



 







 



 

# 247 "..\\Driver\\Inc\\stm32f10x_spi.h"


 



 

# 265 "..\\Driver\\Inc\\stm32f10x_spi.h"


 



 

# 281 "..\\Driver\\Inc\\stm32f10x_spi.h"


  



 







 



 

# 311 "..\\Driver\\Inc\\stm32f10x_spi.h"






  



 







 



 






 



 







 



 






 



 







 



 

# 395 "..\\Driver\\Inc\\stm32f10x_spi.h"


 



 

# 416 "..\\Driver\\Inc\\stm32f10x_spi.h"


 



 




 



 



 



 



 

void SPI_I2S_DeInit(SPI_TypeDef* SPIx);
void SPI_Init(SPI_TypeDef* SPIx, SPI_InitTypeDef* SPI_InitStruct);
void I2S_Init(SPI_TypeDef* SPIx, I2S_InitTypeDef* I2S_InitStruct);
void SPI_StructInit(SPI_InitTypeDef* SPI_InitStruct);
void I2S_StructInit(I2S_InitTypeDef* I2S_InitStruct);
void SPI_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void I2S_Cmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_I2S_ITConfig(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT, FunctionalState NewState);
void SPI_I2S_DMACmd(SPI_TypeDef* SPIx, uint16_t SPI_I2S_DMAReq, FunctionalState NewState);
void SPI_I2S_SendData(SPI_TypeDef* SPIx, uint16_t Data);
uint16_t SPI_I2S_ReceiveData(SPI_TypeDef* SPIx);
void SPI_NSSInternalSoftwareConfig(SPI_TypeDef* SPIx, uint16_t SPI_NSSInternalSoft);
void SPI_SSOutputCmd(SPI_TypeDef* SPIx, FunctionalState NewState);
void SPI_DataSizeConfig(SPI_TypeDef* SPIx, uint16_t SPI_DataSize);
void SPI_TransmitCRC(SPI_TypeDef* SPIx);
void SPI_CalculateCRC(SPI_TypeDef* SPIx, FunctionalState NewState);
uint16_t SPI_GetCRC(SPI_TypeDef* SPIx, uint8_t SPI_CRC);
uint16_t SPI_GetCRCPolynomial(SPI_TypeDef* SPIx);
void SPI_BiDirectionalLineConfig(SPI_TypeDef* SPIx, uint16_t SPI_Direction);
FlagStatus SPI_I2S_GetFlagStatus(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
void SPI_I2S_ClearFlag(SPI_TypeDef* SPIx, uint16_t SPI_I2S_FLAG);
ITStatus SPI_I2S_GetITStatus(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);
void SPI_I2S_ClearITPendingBit(SPI_TypeDef* SPIx, uint8_t SPI_I2S_IT);








 



 



 

# 46 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_tim.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_tim.h"



 



  



  




 

typedef struct
{
  uint16_t TIM_Prescaler;         
 

  uint16_t TIM_CounterMode;       
 

  uint16_t TIM_Period;            

  

  uint16_t TIM_ClockDivision;     
 

  uint8_t TIM_RepetitionCounter;  






 
} TIM_TimeBaseInitTypeDef;       



 

typedef struct
{
  uint16_t TIM_OCMode;        
 

  uint16_t TIM_OutputState;   
 

  uint16_t TIM_OutputNState;  

 

  uint16_t TIM_Pulse;         
 

  uint16_t TIM_OCPolarity;    
 

  uint16_t TIM_OCNPolarity;   

 

  uint16_t TIM_OCIdleState;   

 

  uint16_t TIM_OCNIdleState;  

 
} TIM_OCInitTypeDef;



 

typedef struct
{

  uint16_t TIM_Channel;      
 

  uint16_t TIM_ICPolarity;   
 

  uint16_t TIM_ICSelection;  
 

  uint16_t TIM_ICPrescaler;  
 

  uint16_t TIM_ICFilter;     
 
} TIM_ICInitTypeDef;




 

typedef struct
{

  uint16_t TIM_OSSRState;        
 

  uint16_t TIM_OSSIState;        
 

  uint16_t TIM_LOCKLevel;        
  

  uint16_t TIM_DeadTime;         

 

  uint16_t TIM_Break;            
 

  uint16_t TIM_BreakPolarity;    
 

  uint16_t TIM_AutomaticOutput;  
 
} TIM_BDTRInitTypeDef;



 

# 185 "..\\Driver\\Inc\\stm32f10x_tim.h"

 



 






 
# 204 "..\\Driver\\Inc\\stm32f10x_tim.h"
									                                 
 
# 215 "..\\Driver\\Inc\\stm32f10x_tim.h"

                                             
# 224 "..\\Driver\\Inc\\stm32f10x_tim.h"

 
# 235 "..\\Driver\\Inc\\stm32f10x_tim.h"

 
# 248 "..\\Driver\\Inc\\stm32f10x_tim.h"

                                         
# 265 "..\\Driver\\Inc\\stm32f10x_tim.h"

 
# 278 "..\\Driver\\Inc\\stm32f10x_tim.h"
                                                                                                                                                                                                                          


  



 

# 307 "..\\Driver\\Inc\\stm32f10x_tim.h"


 



 







  



 

# 340 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 354 "..\\Driver\\Inc\\stm32f10x_tim.h"


 



 

# 372 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 







 



 
  






 



 







  



 







  



 







  



 







  



 







  



 







  



 







  



 

# 496 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 







 



 







  



 







  



 







  



 

# 560 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 576 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 592 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 609 "..\\Driver\\Inc\\stm32f10x_tim.h"

# 618 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 664 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 708 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 724 "..\\Driver\\Inc\\stm32f10x_tim.h"



  



 

# 741 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 769 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 783 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



  






 



 







  



 







  



 

# 832 "..\\Driver\\Inc\\stm32f10x_tim.h"


  




 

# 850 "..\\Driver\\Inc\\stm32f10x_tim.h"



  



 

# 865 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 







  



 





                                     


  



 







  



 

# 926 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 

# 942 "..\\Driver\\Inc\\stm32f10x_tim.h"


  



 







  



 

# 986 "..\\Driver\\Inc\\stm32f10x_tim.h"
                               
                               



  



 




  



 




  



 

# 1033 "..\\Driver\\Inc\\stm32f10x_tim.h"


 



 



 



  



 

void TIM_DeInit(TIM_TypeDef* TIMx);
void TIM_TimeBaseInit(TIM_TypeDef* TIMx, TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OC1Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC2Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC3Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_OC4Init(TIM_TypeDef* TIMx, TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICInit(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_PWMIConfig(TIM_TypeDef* TIMx, TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRConfig(TIM_TypeDef* TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct);
void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef* TIM_TimeBaseInitStruct);
void TIM_OCStructInit(TIM_OCInitTypeDef* TIM_OCInitStruct);
void TIM_ICStructInit(TIM_ICInitTypeDef* TIM_ICInitStruct);
void TIM_BDTRStructInit(TIM_BDTRInitTypeDef* TIM_BDTRInitStruct);
void TIM_Cmd(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CtrlPWMOutputs(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_ITConfig(TIM_TypeDef* TIMx, uint16_t TIM_IT, FunctionalState NewState);
void TIM_GenerateEvent(TIM_TypeDef* TIMx, uint16_t TIM_EventSource);
void TIM_DMAConfig(TIM_TypeDef* TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength);
void TIM_DMACmd(TIM_TypeDef* TIMx, uint16_t TIM_DMASource, FunctionalState NewState);
void TIM_InternalClockConfig(TIM_TypeDef* TIMx);
void TIM_ITRxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_TIxExternalClockConfig(TIM_TypeDef* TIMx, uint16_t TIM_TIxExternalCLKSource,
                                uint16_t TIM_ICPolarity, uint16_t ICFilter);
void TIM_ETRClockMode1Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                             uint16_t ExtTRGFilter);
void TIM_ETRClockMode2Config(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, 
                             uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter);
void TIM_ETRConfig(TIM_TypeDef* TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
                   uint16_t ExtTRGFilter);
void TIM_PrescalerConfig(TIM_TypeDef* TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode);
void TIM_CounterModeConfig(TIM_TypeDef* TIMx, uint16_t TIM_CounterMode);
void TIM_SelectInputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_InputTriggerSource);
void TIM_EncoderInterfaceConfig(TIM_TypeDef* TIMx, uint16_t TIM_EncoderMode,
                                uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity);
void TIM_ForcedOC1Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC2Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC3Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ForcedOC4Config(TIM_TypeDef* TIMx, uint16_t TIM_ForcedAction);
void TIM_ARRPreloadConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCOM(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectCCDMA(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_CCPreloadControl(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_OC1PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC2PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC3PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC4PreloadConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPreload);
void TIM_OC1FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC2FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC3FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_OC4FastConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCFast);
void TIM_ClearOC1Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC2Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC3Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_ClearOC4Ref(TIM_TypeDef* TIMx, uint16_t TIM_OCClear);
void TIM_OC1PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC1NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC2PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC2NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC3PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_OC3NPolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCNPolarity);
void TIM_OC4PolarityConfig(TIM_TypeDef* TIMx, uint16_t TIM_OCPolarity);
void TIM_CCxCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx);
void TIM_CCxNCmd(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN);
void TIM_SelectOCxM(TIM_TypeDef* TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode);
void TIM_UpdateDisableConfig(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_UpdateRequestConfig(TIM_TypeDef* TIMx, uint16_t TIM_UpdateSource);
void TIM_SelectHallSensor(TIM_TypeDef* TIMx, FunctionalState NewState);
void TIM_SelectOnePulseMode(TIM_TypeDef* TIMx, uint16_t TIM_OPMode);
void TIM_SelectOutputTrigger(TIM_TypeDef* TIMx, uint16_t TIM_TRGOSource);
void TIM_SelectSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_SlaveMode);
void TIM_SelectMasterSlaveMode(TIM_TypeDef* TIMx, uint16_t TIM_MasterSlaveMode);
void TIM_SetCounter(TIM_TypeDef* TIMx, uint16_t Counter);
void TIM_SetAutoreload(TIM_TypeDef* TIMx, uint16_t Autoreload);
void TIM_SetCompare1(TIM_TypeDef* TIMx, uint16_t Compare1);
void TIM_SetCompare2(TIM_TypeDef* TIMx, uint16_t Compare2);
void TIM_SetCompare3(TIM_TypeDef* TIMx, uint16_t Compare3);
void TIM_SetCompare4(TIM_TypeDef* TIMx, uint16_t Compare4);
void TIM_SetIC1Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC2Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC3Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetIC4Prescaler(TIM_TypeDef* TIMx, uint16_t TIM_ICPSC);
void TIM_SetClockDivision(TIM_TypeDef* TIMx, uint16_t TIM_CKD);
uint16_t TIM_GetCapture1(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture2(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture3(TIM_TypeDef* TIMx);
uint16_t TIM_GetCapture4(TIM_TypeDef* TIMx);
uint16_t TIM_GetCounter(TIM_TypeDef* TIMx);
uint16_t TIM_GetPrescaler(TIM_TypeDef* TIMx);
FlagStatus TIM_GetFlagStatus(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
void TIM_ClearFlag(TIM_TypeDef* TIMx, uint16_t TIM_FLAG);
ITStatus TIM_GetITStatus(TIM_TypeDef* TIMx, uint16_t TIM_IT);
void TIM_ClearITPendingBit(TIM_TypeDef* TIMx, uint16_t TIM_IT);








  



  



 

# 47 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_usart.h"



















 

 
# 410 "..\\Driver\\Inc\\stm32f10x_usart.h"


  



  



  

# 48 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\stm32f10x_wwdg.h"



















 

 







 
# 32 "..\\Driver\\Inc\\stm32f10x_wwdg.h"



 



  



  
  


  



  
  


  
  
# 67 "..\\Driver\\Inc\\stm32f10x_wwdg.h"



  



  



  


  



  
  
void WWDG_DeInit(void);
void WWDG_SetPrescaler(uint32_t WWDG_Prescaler);
void WWDG_SetWindowValue(uint8_t WindowValue);
void WWDG_EnableIT(void);
void WWDG_SetCounter(uint8_t Counter);
void WWDG_Enable(uint8_t Counter);
FlagStatus WWDG_GetFlagStatus(void);
void WWDG_ClearFlag(void);









  



  



  

# 49 "..\\Core\\Inc\\stm32f10x_conf.h"
# 1 "..\\Driver\\Inc\\misc.h"



















 

 







 
# 32 "..\\Driver\\Inc\\misc.h"



 



 



 



 

typedef struct
{
  uint8_t NVIC_IRQChannel;                    


 

  uint8_t NVIC_IRQChannelPreemptionPriority;  

 

  uint8_t NVIC_IRQChannelSubPriority;         

 

  FunctionalState NVIC_IRQChannelCmd;         

    
} NVIC_InitTypeDef;
 


 



 
























 



 



 



 







 



 

# 132 "..\\Driver\\Inc\\misc.h"


 



 

# 150 "..\\Driver\\Inc\\misc.h"















 



 







 



 



 



 



 

void NVIC_PriorityGroupConfig(uint32_t NVIC_PriorityGroup);
void NVIC_Init(NVIC_InitTypeDef* NVIC_InitStruct);
void NVIC_SetVectorTable(uint32_t NVIC_VectTab, uint32_t Offset);
void NVIC_SystemLPConfig(uint8_t LowPowerMode, FunctionalState NewState);
void SysTick_CLKSourceConfig(uint32_t SysTick_CLKSource);









 



 



 

# 50 "..\\Core\\Inc\\stm32f10x_conf.h"

 
 

 
 

 
# 73 "..\\Core\\Inc\\stm32f10x_conf.h"



# 8303 "..\\Core\\Inc\\stm32f10x.h"




 

















 









 

  

 

 
# 32 "..\\Driver\\Inc\\stm32f10x_usart.h"



 



  



  



  
  
typedef struct
{
  uint32_t USART_BaudRate;            


 

  uint16_t USART_WordLength;          
 

  uint16_t USART_StopBits;            
 

  uint16_t USART_Parity;              




 
 
  uint16_t USART_Mode;                
 

  uint16_t USART_HardwareFlowControl; 

 
} USART_InitTypeDef;



  
  
typedef struct
{

  uint16_t USART_Clock;   
 

  uint16_t USART_CPOL;    
 

  uint16_t USART_CPHA;    
 

  uint16_t USART_LastBit; 

 
} USART_ClockInitTypeDef;



  



  
  
















  
  


                                    




  



  
  
# 145 "..\\Driver\\Inc\\stm32f10x_usart.h"


  



  
  
# 159 "..\\Driver\\Inc\\stm32f10x_usart.h"


  



  
  





  



  
# 186 "..\\Driver\\Inc\\stm32f10x_usart.h"


  



  






  



 
  






  



 







 



 







  



 
  
# 253 "..\\Driver\\Inc\\stm32f10x_usart.h"



 



 
  





# 273 "..\\Driver\\Inc\\stm32f10x_usart.h"





 



 







  



 







 



 
  







 



 







  



 

# 348 "..\\Driver\\Inc\\stm32f10x_usart.h"
                              








  



  



  



  



 

void USART_DeInit(USART_TypeDef* USARTx);
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct);
void USART_StructInit(USART_InitTypeDef* USART_InitStruct);
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct);
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState);
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState);
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address);
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp);
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength);
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data);
uint16_t USART_ReceiveData(USART_TypeDef* USARTx);
void USART_SendBreak(USART_TypeDef* USARTx);
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime);
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler);
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState);
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode);
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState);
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG);
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG);
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT);
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT);








  



  



  

# 23 "..\\Driver\\Src\\stm32f10x_usart.c"
# 24 "..\\Driver\\Src\\stm32f10x_usart.c"



 




 



 



 



 





































 



 





 



 



 



 



 



 



 



 







 
void USART_DeInit(USART_TypeDef* USARTx)
{
   
  ((void)0);

  if (USARTx == ((USART_TypeDef *) ((((uint32_t)0x40000000) + 0x10000) + 0x3800)))
  {
    RCC_APB2PeriphResetCmd(((uint32_t)0x00004000), ENABLE);
    RCC_APB2PeriphResetCmd(((uint32_t)0x00004000), DISABLE);
  }
  else if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4400)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00020000), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00020000), DISABLE);
  }
  else if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4800)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00040000), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00040000), DISABLE);
  }    
  else if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x4C00)))
  {
    RCC_APB1PeriphResetCmd(((uint32_t)0x00080000), ENABLE);
    RCC_APB1PeriphResetCmd(((uint32_t)0x00080000), DISABLE);
  }    
  else
  {
    if (USARTx == ((USART_TypeDef *) (((uint32_t)0x40000000) + 0x5000)))
    { 
      RCC_APB1PeriphResetCmd(((uint32_t)0x00100000), ENABLE);
      RCC_APB1PeriphResetCmd(((uint32_t)0x00100000), DISABLE);
    }
  }
}











 
void USART_Init(USART_TypeDef* USARTx, USART_InitTypeDef* USART_InitStruct)
{
  uint32_t tmpreg = 0x00, apbclock = 0x00;
  uint32_t integerdivider = 0x00;
  uint32_t fractionaldivider = 0x00;
  uint32_t usartxbase = 0;
  RCC_ClocksTypeDef RCC_ClocksStatus;
   
  ((void)0);
  ((void)0);  
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
   
  if (USART_InitStruct->USART_HardwareFlowControl != ((uint16_t)0x0000))
  {
    ((void)0);
  }

  usartxbase = (uint32_t)USARTx;

 
  tmpreg = USARTx->CR2;
   
  tmpreg &= ((uint16_t)0xCFFF);
   
   
  tmpreg |= (uint32_t)USART_InitStruct->USART_StopBits;
  
   
  USARTx->CR2 = (uint16_t)tmpreg;

 
  tmpreg = USARTx->CR1;
   
  tmpreg &= ((uint16_t)0xE9F3);
   
   
   
   
  tmpreg |= (uint32_t)USART_InitStruct->USART_WordLength | USART_InitStruct->USART_Parity |
            USART_InitStruct->USART_Mode;
   
  USARTx->CR1 = (uint16_t)tmpreg;

   
  tmpreg = USARTx->CR3;
   
  tmpreg &= ((uint16_t)0xFCFF);
   
   
  tmpreg |= USART_InitStruct->USART_HardwareFlowControl;
   
  USARTx->CR3 = (uint16_t)tmpreg;

 
   
  RCC_GetClocksFreq(&RCC_ClocksStatus);
  if (usartxbase == ((((uint32_t)0x40000000) + 0x10000) + 0x3800))
  {
    apbclock = RCC_ClocksStatus.PCLK2_Frequency;
  }
  else
  {
    apbclock = RCC_ClocksStatus.PCLK1_Frequency;
  }
  
   
  if ((USARTx->CR1 & ((u16)0x8000)) != 0)
  {
     
    integerdivider = ((25 * apbclock) / (2 * (USART_InitStruct->USART_BaudRate)));    
  }
  else  
  {
     
    integerdivider = ((25 * apbclock) / (4 * (USART_InitStruct->USART_BaudRate)));    
  }
  tmpreg = (integerdivider / 100) << 4;

   
  fractionaldivider = integerdivider - (100 * (tmpreg >> 4));

   
  if ((USARTx->CR1 & ((u16)0x8000)) != 0)
  {
    tmpreg |= ((((fractionaldivider * 8) + 50) / 100)) & ((uint8_t)0x07);
  }
  else  
  {
    tmpreg |= ((((fractionaldivider * 16) + 50) / 100)) & ((uint8_t)0x0F);
  }
  
   
  USARTx->BRR = (uint16_t)tmpreg;
}






 
void USART_StructInit(USART_InitTypeDef* USART_InitStruct)
{
   
  USART_InitStruct->USART_BaudRate = 9600;
  USART_InitStruct->USART_WordLength = ((uint16_t)0x0000);
  USART_InitStruct->USART_StopBits = ((uint16_t)0x0000);
  USART_InitStruct->USART_Parity = ((uint16_t)0x0000) ;
  USART_InitStruct->USART_Mode = ((uint16_t)0x0004) | ((uint16_t)0x0008);
  USART_InitStruct->USART_HardwareFlowControl = ((uint16_t)0x0000);  
}










 
void USART_ClockInit(USART_TypeDef* USARTx, USART_ClockInitTypeDef* USART_ClockInitStruct)
{
  uint32_t tmpreg = 0x00;
   
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  ((void)0);
  
 
  tmpreg = USARTx->CR2;
   
  tmpreg &= ((uint16_t)0xF0FF);
   
   
   
   
   
  tmpreg |= (uint32_t)USART_ClockInitStruct->USART_Clock | USART_ClockInitStruct->USART_CPOL | 
                 USART_ClockInitStruct->USART_CPHA | USART_ClockInitStruct->USART_LastBit;
   
  USARTx->CR2 = (uint16_t)tmpreg;
}






 
void USART_ClockStructInit(USART_ClockInitTypeDef* USART_ClockInitStruct)
{
   
  USART_ClockInitStruct->USART_Clock = ((uint16_t)0x0000);
  USART_ClockInitStruct->USART_CPOL = ((uint16_t)0x0000);
  USART_ClockInitStruct->USART_CPHA = ((uint16_t)0x0000);
  USART_ClockInitStruct->USART_LastBit = ((uint16_t)0x0000);
}









 
void USART_Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR1 |= ((uint16_t)0x2000);
  }
  else
  {
     
    USARTx->CR1 &= ((uint16_t)0xDFFF);
  }
}



















 
void USART_ITConfig(USART_TypeDef* USARTx, uint16_t USART_IT, FunctionalState NewState)
{
  uint32_t usartreg = 0x00, itpos = 0x00, itmask = 0x00;
  uint32_t usartxbase = 0x00;
   
  ((void)0);
  ((void)0);
  ((void)0);
   
  if (USART_IT == ((uint16_t)0x096A))
  {
    ((void)0);
  }   
  
  usartxbase = (uint32_t)USARTx;

   
  usartreg = (((uint8_t)USART_IT) >> 0x05);

   
  itpos = USART_IT & ((uint16_t)0x001F);
  itmask = (((uint32_t)0x01) << itpos);
    
  if (usartreg == 0x01)  
  {
    usartxbase += 0x0C;
  }
  else if (usartreg == 0x02)  
  {
    usartxbase += 0x10;
  }
  else  
  {
    usartxbase += 0x14; 
  }
  if (NewState != DISABLE)
  {
    *(volatile uint32_t*)usartxbase  |= itmask;
  }
  else
  {
    *(volatile uint32_t*)usartxbase &= ~itmask;
  }
}















 
void USART_DMACmd(USART_TypeDef* USARTx, uint16_t USART_DMAReq, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);  
  ((void)0); 
  if (NewState != DISABLE)
  {
    
 
    USARTx->CR3 |= USART_DMAReq;
  }
  else
  {
    
 
    USARTx->CR3 &= (uint16_t)~USART_DMAReq;
  }
}








 
void USART_SetAddress(USART_TypeDef* USARTx, uint8_t USART_Address)
{
   
  ((void)0);
  ((void)0); 
    
   
  USARTx->CR2 &= ((uint16_t)0xFFF0);
   
  USARTx->CR2 |= USART_Address;
}











 
void USART_WakeUpConfig(USART_TypeDef* USARTx, uint16_t USART_WakeUp)
{
   
  ((void)0);
  ((void)0);
  
  USARTx->CR1 &= ((uint16_t)0xF7FF);
  USARTx->CR1 |= USART_WakeUp;
}









 
void USART_ReceiverWakeUpCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0); 
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR1 |= ((uint16_t)0x0002);
  }
  else
  {
     
    USARTx->CR1 &= ((uint16_t)0xFFFD);
  }
}











 
void USART_LINBreakDetectLengthConfig(USART_TypeDef* USARTx, uint16_t USART_LINBreakDetectLength)
{
   
  ((void)0);
  ((void)0);
  
  USARTx->CR2 &= ((uint16_t)0xFFDF);
  USARTx->CR2 |= USART_LINBreakDetectLength;  
}









 
void USART_LINCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR2 |= ((uint16_t)0x4000);
  }
  else
  {
     
    USARTx->CR2 &= ((uint16_t)0xBFFF);
  }
}








 
void USART_SendData(USART_TypeDef* USARTx, uint16_t Data)
{
   
  ((void)0);
  ((void)0); 
    
   
  USARTx->DR = (Data & (uint16_t)0x01FF);
}







 
uint16_t USART_ReceiveData(USART_TypeDef* USARTx)
{
   
  ((void)0);
  
   
  return (uint16_t)(USARTx->DR & (uint16_t)0x01FF);
}







 
void USART_SendBreak(USART_TypeDef* USARTx)
{
   
  ((void)0);
  
   
  USARTx->CR1 |= ((uint16_t)0x0001);
}







 
void USART_SetGuardTime(USART_TypeDef* USARTx, uint8_t USART_GuardTime)
{    
   
  ((void)0);
  
   
  USARTx->GTPR &= ((uint16_t)0x00FF);
   
  USARTx->GTPR |= (uint16_t)((uint16_t)USART_GuardTime << 0x08);
}









 
void USART_SetPrescaler(USART_TypeDef* USARTx, uint8_t USART_Prescaler)
{ 
   
  ((void)0);
  
   
  USARTx->GTPR &= ((uint16_t)0xFF00);
   
  USARTx->GTPR |= USART_Prescaler;
}








 
void USART_SmartCardCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((uint16_t)0x0020);
  }
  else
  {
     
    USARTx->CR3 &= ((uint16_t)0xFFDF);
  }
}








 
void USART_SmartCardNACKCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);  
  ((void)0);
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((uint16_t)0x0010);
  }
  else
  {
     
    USARTx->CR3 &= ((uint16_t)0xFFEF);
  }
}









 
void USART_HalfDuplexCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((uint16_t)0x0008);
  }
  else
  {
     
    USARTx->CR3 &= ((uint16_t)0xFFF7);
  }
}













 
void USART_OverSampling8Cmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR1 |= ((u16)0x8000);
  }
  else
  {
     
    USARTx->CR1 &= ((u16)0x7FFF);
  }
}









 
void USART_OneBitMethodCmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
  
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((u16)0x0800);
  }
  else
  {
     
    USARTx->CR3 &= ((u16)0xF7FF);
  }
}











 
void USART_IrDAConfig(USART_TypeDef* USARTx, uint16_t USART_IrDAMode)
{
   
  ((void)0);
  ((void)0);
    
  USARTx->CR3 &= ((uint16_t)0xFFFB);
  USARTx->CR3 |= USART_IrDAMode;
}









 
void USART_IrDACmd(USART_TypeDef* USARTx, FunctionalState NewState)
{
   
  ((void)0);
  ((void)0);
    
  if (NewState != DISABLE)
  {
     
    USARTx->CR3 |= ((uint16_t)0x0002);
  }
  else
  {
     
    USARTx->CR3 &= ((uint16_t)0xFFFD);
  }
}



















 
FlagStatus USART_GetFlagStatus(USART_TypeDef* USARTx, uint16_t USART_FLAG)
{
  FlagStatus bitstatus = RESET;
   
  ((void)0);
  ((void)0);
   
  if (USART_FLAG == ((uint16_t)0x0200))
  {
    ((void)0);
  }  
  
  if ((USARTx->SR & USART_FLAG) != (uint16_t)RESET)
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return bitstatus;
	}


























 
void USART_ClearFlag(USART_TypeDef* USARTx, uint16_t USART_FLAG)
{
   
  ((void)0);
  ((void)0);
   
  if ((USART_FLAG & ((uint16_t)0x0200)) == ((uint16_t)0x0200))
  {
    ((void)0);
  } 
   
  USARTx->SR = (uint16_t)~USART_FLAG;
}




















 
ITStatus USART_GetITStatus(USART_TypeDef* USARTx, uint16_t USART_IT)
{
  uint32_t bitpos = 0x00, itmask = 0x00, usartreg = 0x00;
  ITStatus bitstatus = RESET;
   
  ((void)0);
  ((void)0);
    
  if (USART_IT == ((uint16_t)0x096A))
  {
    ((void)0);
  }   
  
   
  usartreg = (((uint8_t)USART_IT) >> 0x05);
   
  itmask = USART_IT & ((uint16_t)0x001F);
  itmask = (uint32_t)0x01 << itmask;
  
  if (usartreg == 0x01)  
  {
    itmask &= USARTx->CR1;
  }
  else if (usartreg == 0x02)  
  {
    itmask &= USARTx->CR2;
  }
  else  
  {
    itmask &= USARTx->CR3;
  }
  
  bitpos = USART_IT >> 0x08;
  bitpos = (uint32_t)0x01 << bitpos;
  bitpos &= USARTx->SR;
  if ((itmask != (uint16_t)RESET)&&(bitpos != (uint16_t)RESET))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  
  return bitstatus;  
}



























 
void USART_ClearITPendingBit(USART_TypeDef* USARTx, uint16_t USART_IT)
{
  uint16_t bitpos = 0x00, itmask = 0x00;
   
  ((void)0);
  ((void)0);
   
  if (USART_IT == ((uint16_t)0x096A))
  {
    ((void)0);
  }   
  
  bitpos = USART_IT >> 0x08;
  itmask = ((uint16_t)0x01 << (uint16_t)bitpos);
  USARTx->SR = (uint16_t)~itmask;
}


 



 



 

