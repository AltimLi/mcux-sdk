/* ------------------------------------------------------------------------- */
/*  @file:    startup_LPC55S06.s                                             */
/*  @purpose: CMSIS Cortex-M33 Core Device Startup File                      */
/*            LPC55S06                                                       */
/*  @version: 1.0                                                            */
/*  @date:    2020-4-9                                                       */
/*  @build:   b231018                                                        */
/* ------------------------------------------------------------------------- */
/*                                                                           */
/* Copyright 1997-2016 Freescale Semiconductor, Inc.                         */
/* Copyright 2016-2023 NXP                                                   */
/* SPDX-License-Identifier: BSD-3-Clause                                     */
/*****************************************************************************/
/* Version: GCC for ARM Embedded Processors                                  */
/*****************************************************************************/
    .syntax unified
    .arch armv8-m.main

    .section .isr_vector, "a"
    .align 2
    .globl __Vectors
__Vectors:
    .long   __StackTop                                      /* Top of Stack */
    .long   Reset_Handler                                   /* Reset Handler */
    .long   NMI_Handler                                     /* NMI Handler*/
    .long   HardFault_Handler                               /* Hard Fault Handler*/
    .long   MemManage_Handler                               /* MPU Fault Handler*/
    .long   BusFault_Handler                                /* Bus Fault Handler*/
    .long   UsageFault_Handler                              /* Usage Fault Handler*/
    .long   SecureFault_Handler                             /* Secure Fault Handler*/
    .long   0                                               /* Reserved*/
    .long   0                                               /* Reserved*/
    .long   0                                               /* Reserved*/
    .long   SVC_Handler                                     /* SVCall Handler*/
    .long   DebugMon_Handler                                /* Debug Monitor Handler*/
    .long   0                                               /* Reserved*/
    .long   PendSV_Handler                                  /* PendSV Handler*/
    .long   SysTick_Handler                                 /* SysTick Handler*/

                                                            /* External Interrupts*/
    .long   WDT_BOD_IRQHandler                              /* Windowed watchdog timer, Brownout detect, Flash interrupt*/
    .long   DMA0_IRQHandler                                 /* DMA0 controller*/
    .long   GINT0_IRQHandler                                /* GPIO group 0*/
    .long   GINT1_IRQHandler                                /* GPIO group 1*/
    .long   PIN_INT0_IRQHandler                             /* Pin interrupt 0 or pattern match engine slice 0*/
    .long   PIN_INT1_IRQHandler                             /* Pin interrupt 1or pattern match engine slice 1*/
    .long   PIN_INT2_IRQHandler                             /* Pin interrupt 2 or pattern match engine slice 2*/
    .long   PIN_INT3_IRQHandler                             /* Pin interrupt 3 or pattern match engine slice 3*/
    .long   UTICK0_IRQHandler                               /* Micro-tick Timer*/
    .long   MRT0_IRQHandler                                 /* Multi-rate timer*/
    .long   CTIMER0_IRQHandler                              /* Standard counter/timer CTIMER0*/
    .long   CTIMER1_IRQHandler                              /* Standard counter/timer CTIMER1*/
    .long   SCT0_IRQHandler                                 /* SCTimer/PWM*/
    .long   CTIMER3_IRQHandler                              /* Standard counter/timer CTIMER3*/
    .long   FLEXCOMM0_IRQHandler                            /* Flexcomm Interface 0 (USART, SPI, I2C, I2S, FLEXCOMM)*/
    .long   FLEXCOMM1_IRQHandler                            /* Flexcomm Interface 1 (USART, SPI, I2C, I2S, FLEXCOMM)*/
    .long   FLEXCOMM2_IRQHandler                            /* Flexcomm Interface 2 (USART, SPI, I2C, I2S, FLEXCOMM)*/
    .long   FLEXCOMM3_IRQHandler                            /* Flexcomm Interface 3 (USART, SPI, I2C, I2S, FLEXCOMM)*/
    .long   FLEXCOMM4_IRQHandler                            /* Flexcomm Interface 4 (USART, SPI, I2C, I2S, FLEXCOMM)*/
    .long   FLEXCOMM5_IRQHandler                            /* Flexcomm Interface 5 (USART, SPI, I2C, I2S, FLEXCOMM)*/
    .long   FLEXCOMM6_IRQHandler                            /* Flexcomm Interface 6 (USART, SPI, I2C, I2S, FLEXCOMM)*/
    .long   FLEXCOMM7_IRQHandler                            /* Flexcomm Interface 7 (USART, SPI, I2C, I2S, FLEXCOMM)*/
    .long   ADC0_IRQHandler                                 /* ADC0 */
    .long   Reserved39_IRQHandler                           /* Reserved interrupt*/
    .long   ACMP_IRQHandler                                 /* ACMP interrupts*/
    .long   Reserved41_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved42_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved43_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved44_IRQHandler                           /* Reserved interrupt*/
    .long   RTC_IRQHandler                                  /* RTC alarm and wake-up interrupts*/
    .long   Reserved46_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved47_IRQHandler                           /* Reserved interrupt*/
    .long   PIN_INT4_IRQHandler                             /* Pin interrupt 4 or pattern match engine slice 4 int*/
    .long   PIN_INT5_IRQHandler                             /* Pin interrupt 5 or pattern match engine slice 5 int*/
    .long   PIN_INT6_IRQHandler                             /* Pin interrupt 6 or pattern match engine slice 6 int*/
    .long   PIN_INT7_IRQHandler                             /* Pin interrupt 7 or pattern match engine slice 7 int*/
    .long   CTIMER2_IRQHandler                              /* Standard counter/timer CTIMER2*/
    .long   CTIMER4_IRQHandler                              /* Standard counter/timer CTIMER4*/
    .long   OS_EVENT_IRQHandler                             /* OS_EVENT_TIMER and OS_EVENT_WAKEUP interrupts*/
    .long   Reserved55_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved56_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved57_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved58_IRQHandler                           /* Reserved interrupt*/
    .long   CAN0_IRQ0_IRQHandler                            /* CAN0 interrupt0*/
    .long   CAN0_IRQ1_IRQHandler                            /* CAN0 interrupt1*/
    .long   Reserved61_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved62_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved63_IRQHandler                           /* Reserved interrupt*/
    .long   Reserved64_IRQHandler                           /* Reserved interrupt*/
    .long   SEC_HYPERVISOR_CALL_IRQHandler                  /* SEC_HYPERVISOR_CALL interrupt*/
    .long   SEC_GPIO_INT0_IRQ0_IRQHandler                   /* SEC_GPIO_INT0_IRQ0 interrupt*/
    .long   SEC_GPIO_INT0_IRQ1_IRQHandler                   /* SEC_GPIO_INT0_IRQ1 interrupt*/
    .long   PLU_IRQHandler                                  /* PLU interrupt*/
    .long   SEC_VIO_IRQHandler                              /* SEC_VIO interrupt*/
    .long   HASHCRYPT_IRQHandler                            /* SHA interrupt*/
    .long   CASER_IRQHandler                                /* CASPER interrupt*/
    .long   PUF_IRQHandler                                  /* PUF interrupt*/
    .long   Reserved73_IRQHandler                           /* Reserved interrupt*/
    .long   DMA1_IRQHandler                                 /* DMA1 interrupt*/
    .long   FLEXCOMM8_IRQHandler                            /* Flexcomm Interface 8 (SPI, , FLEXCOMM)*/
    .long   CDOG_IRQHandler                                 /* CDOG interrupt*/

    .size   __Vectors, . - __Vectors

    .text
    .thumb

#if defined (__cplusplus)
#ifdef __REDLIB__
#error Redlib does not support C++
#endif
#endif
/* Reset Handler */

    .thumb_func
    .align 2
    .globl   Reset_Handler
    .weak    Reset_Handler
    .type    Reset_Handler, %function
Reset_Handler:
    cpsid   i               /* Mask interrupts */
    .equ    VTOR, 0xE000ED08
    ldr     r0, =VTOR
    ldr     r1, =__Vectors
    str     r1, [r0]
    ldr     r2, [r1]
    msr     msp, r2
    ldr     r0, =__StackLimit
    msr     msplim, r0
#ifndef __NO_SYSTEM_INIT
    ldr   r0,=SystemInit
    blx   r0
#endif
/*     Loop to copy data from read only memory to RAM. The ranges
 *      of copy from/to are specified by following symbols evaluated in
 *      linker script.
 *      __etext: End of code section, i.e., begin of data sections to copy from.
 *      __data_start__/__data_end__: RAM address range that data should be
 *      copied to. Both must be aligned to 4 bytes boundary.  */

    ldr    r1, =__etext
    ldr    r2, =__data_start__
    ldr    r3, =__data_end__

#if 1
/* Here are two copies of loop implemenations. First one favors code size
 * and the second one favors performance. Default uses the first one.
 * Change to "#if 0" to use the second one */
.LC0:
    cmp     r2, r3
    ittt    lt
    ldrlt   r0, [r1], #4
    strlt   r0, [r2], #4
    blt    .LC0
#else
    subs    r3, r2
    ble    .LC1
.LC0:
    subs    r3, #4
    ldr    r0, [r1, r3]
    str    r0, [r2, r3]
    bgt    .LC0
.LC1:
#endif

#ifdef __STARTUP_CLEAR_BSS
/*     This part of work usually is done in C library startup code. Otherwise,
 *     define this macro to enable it in this startup.
 *
 *     Loop to zero out BSS section, which uses following symbols
 *     in linker script:
 *      __bss_start__: start of BSS section. Must align to 4
 *      __bss_end__: end of BSS section. Must align to 4
 */
    ldr r1, =__bss_start__
    ldr r2, =__bss_end__

    movs    r0, 0
.LC2:
    cmp     r1, r2
    itt    lt
    strlt   r0, [r1], #4
    blt    .LC2
#endif /* __STARTUP_CLEAR_BSS */

/* Add stack / heap initializaiton */
    movs    r0, 0
    ldr     r1, =__HeapBase
    ldr     r2, =__HeapLimit
.LC3:
    cmp     r1, r2
    itt     lt
    strlt   r0, [r1], #4
    blt     .LC3

    ldr     r1, =__StackLimit
    ldr     r2, =__StackTop
.LC4:
    cmp     r1, r2
    itt     lt
    strlt   r0, [r1], #4
    blt     .LC4

/*End of stack / heap initializaiton */
    cpsie   i               /* Unmask interrupts */
#ifndef __START
#ifdef __REDLIB__
#define __START __main
#else
#define __START _start
#endif
#endif
#ifndef __ATOLLIC__
    ldr   r0,=__START
    blx   r0
#else
    ldr   r0,=__libc_init_array
    blx   r0
    ldr   r0,=main
    bx    r0
#endif
    .pool
    .size Reset_Handler, . - Reset_Handler

    .align  1
    .thumb_func
    .weak DefaultISR
    .type DefaultISR, %function
DefaultISR:
    b DefaultISR
    .size DefaultISR, . - DefaultISR

    .align 1
    .thumb_func
    .weak NMI_Handler
    .type NMI_Handler, %function
NMI_Handler:
    ldr   r0,=NMI_Handler
    bx    r0
    .size NMI_Handler, . - NMI_Handler

    .align 1
    .thumb_func
    .weak HardFault_Handler
    .type HardFault_Handler, %function
HardFault_Handler:
    ldr   r0,=HardFault_Handler
    bx    r0
    .size HardFault_Handler, . - HardFault_Handler

    .align 1
    .thumb_func
    .weak SVC_Handler
    .type SVC_Handler, %function
SVC_Handler:
    ldr   r0,=SVC_Handler
    bx    r0
    .size SVC_Handler, . - SVC_Handler

    .align 1
    .thumb_func
    .weak PendSV_Handler
    .type PendSV_Handler, %function
PendSV_Handler:
    ldr   r0,=PendSV_Handler
    bx    r0
    .size PendSV_Handler, . - PendSV_Handler

    .align 1
    .thumb_func
    .weak SysTick_Handler
    .type SysTick_Handler, %function
SysTick_Handler:
    ldr   r0,=SysTick_Handler
    bx    r0
    .size SysTick_Handler, . - SysTick_Handler

    .align 1
    .thumb_func
    .weak WDT_BOD_IRQHandler
    .type WDT_BOD_IRQHandler, %function
WDT_BOD_IRQHandler:
    ldr   r0,=WDT_BOD_DriverIRQHandler
    bx    r0
    .size WDT_BOD_IRQHandler, . - WDT_BOD_IRQHandler

    .align 1
    .thumb_func
    .weak DMA0_IRQHandler
    .type DMA0_IRQHandler, %function
DMA0_IRQHandler:
    ldr   r0,=DMA0_DriverIRQHandler
    bx    r0
    .size DMA0_IRQHandler, . - DMA0_IRQHandler

    .align 1
    .thumb_func
    .weak GINT0_IRQHandler
    .type GINT0_IRQHandler, %function
GINT0_IRQHandler:
    ldr   r0,=GINT0_DriverIRQHandler
    bx    r0
    .size GINT0_IRQHandler, . - GINT0_IRQHandler

    .align 1
    .thumb_func
    .weak GINT1_IRQHandler
    .type GINT1_IRQHandler, %function
GINT1_IRQHandler:
    ldr   r0,=GINT1_DriverIRQHandler
    bx    r0
    .size GINT1_IRQHandler, . - GINT1_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT0_IRQHandler
    .type PIN_INT0_IRQHandler, %function
PIN_INT0_IRQHandler:
    ldr   r0,=PIN_INT0_DriverIRQHandler
    bx    r0
    .size PIN_INT0_IRQHandler, . - PIN_INT0_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT1_IRQHandler
    .type PIN_INT1_IRQHandler, %function
PIN_INT1_IRQHandler:
    ldr   r0,=PIN_INT1_DriverIRQHandler
    bx    r0
    .size PIN_INT1_IRQHandler, . - PIN_INT1_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT2_IRQHandler
    .type PIN_INT2_IRQHandler, %function
PIN_INT2_IRQHandler:
    ldr   r0,=PIN_INT2_DriverIRQHandler
    bx    r0
    .size PIN_INT2_IRQHandler, . - PIN_INT2_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT3_IRQHandler
    .type PIN_INT3_IRQHandler, %function
PIN_INT3_IRQHandler:
    ldr   r0,=PIN_INT3_DriverIRQHandler
    bx    r0
    .size PIN_INT3_IRQHandler, . - PIN_INT3_IRQHandler

    .align 1
    .thumb_func
    .weak UTICK0_IRQHandler
    .type UTICK0_IRQHandler, %function
UTICK0_IRQHandler:
    ldr   r0,=UTICK0_DriverIRQHandler
    bx    r0
    .size UTICK0_IRQHandler, . - UTICK0_IRQHandler

    .align 1
    .thumb_func
    .weak MRT0_IRQHandler
    .type MRT0_IRQHandler, %function
MRT0_IRQHandler:
    ldr   r0,=MRT0_DriverIRQHandler
    bx    r0
    .size MRT0_IRQHandler, . - MRT0_IRQHandler

    .align 1
    .thumb_func
    .weak CTIMER0_IRQHandler
    .type CTIMER0_IRQHandler, %function
CTIMER0_IRQHandler:
    ldr   r0,=CTIMER0_DriverIRQHandler
    bx    r0
    .size CTIMER0_IRQHandler, . - CTIMER0_IRQHandler

    .align 1
    .thumb_func
    .weak CTIMER1_IRQHandler
    .type CTIMER1_IRQHandler, %function
CTIMER1_IRQHandler:
    ldr   r0,=CTIMER1_DriverIRQHandler
    bx    r0
    .size CTIMER1_IRQHandler, . - CTIMER1_IRQHandler

    .align 1
    .thumb_func
    .weak SCT0_IRQHandler
    .type SCT0_IRQHandler, %function
SCT0_IRQHandler:
    ldr   r0,=SCT0_DriverIRQHandler
    bx    r0
    .size SCT0_IRQHandler, . - SCT0_IRQHandler

    .align 1
    .thumb_func
    .weak CTIMER3_IRQHandler
    .type CTIMER3_IRQHandler, %function
CTIMER3_IRQHandler:
    ldr   r0,=CTIMER3_DriverIRQHandler
    bx    r0
    .size CTIMER3_IRQHandler, . - CTIMER3_IRQHandler

    .align 1
    .thumb_func
    .weak FLEXCOMM0_IRQHandler
    .type FLEXCOMM0_IRQHandler, %function
FLEXCOMM0_IRQHandler:
    ldr   r0,=FLEXCOMM0_DriverIRQHandler
    bx    r0
    .size FLEXCOMM0_IRQHandler, . - FLEXCOMM0_IRQHandler

    .align 1
    .thumb_func
    .weak FLEXCOMM1_IRQHandler
    .type FLEXCOMM1_IRQHandler, %function
FLEXCOMM1_IRQHandler:
    ldr   r0,=FLEXCOMM1_DriverIRQHandler
    bx    r0
    .size FLEXCOMM1_IRQHandler, . - FLEXCOMM1_IRQHandler

    .align 1
    .thumb_func
    .weak FLEXCOMM2_IRQHandler
    .type FLEXCOMM2_IRQHandler, %function
FLEXCOMM2_IRQHandler:
    ldr   r0,=FLEXCOMM2_DriverIRQHandler
    bx    r0
    .size FLEXCOMM2_IRQHandler, . - FLEXCOMM2_IRQHandler

    .align 1
    .thumb_func
    .weak FLEXCOMM3_IRQHandler
    .type FLEXCOMM3_IRQHandler, %function
FLEXCOMM3_IRQHandler:
    ldr   r0,=FLEXCOMM3_DriverIRQHandler
    bx    r0
    .size FLEXCOMM3_IRQHandler, . - FLEXCOMM3_IRQHandler

    .align 1
    .thumb_func
    .weak FLEXCOMM4_IRQHandler
    .type FLEXCOMM4_IRQHandler, %function
FLEXCOMM4_IRQHandler:
    ldr   r0,=FLEXCOMM4_DriverIRQHandler
    bx    r0
    .size FLEXCOMM4_IRQHandler, . - FLEXCOMM4_IRQHandler

    .align 1
    .thumb_func
    .weak FLEXCOMM5_IRQHandler
    .type FLEXCOMM5_IRQHandler, %function
FLEXCOMM5_IRQHandler:
    ldr   r0,=FLEXCOMM5_DriverIRQHandler
    bx    r0
    .size FLEXCOMM5_IRQHandler, . - FLEXCOMM5_IRQHandler

    .align 1
    .thumb_func
    .weak FLEXCOMM6_IRQHandler
    .type FLEXCOMM6_IRQHandler, %function
FLEXCOMM6_IRQHandler:
    ldr   r0,=FLEXCOMM6_DriverIRQHandler
    bx    r0
    .size FLEXCOMM6_IRQHandler, . - FLEXCOMM6_IRQHandler

    .align 1
    .thumb_func
    .weak FLEXCOMM7_IRQHandler
    .type FLEXCOMM7_IRQHandler, %function
FLEXCOMM7_IRQHandler:
    ldr   r0,=FLEXCOMM7_DriverIRQHandler
    bx    r0
    .size FLEXCOMM7_IRQHandler, . - FLEXCOMM7_IRQHandler

    .align 1
    .thumb_func
    .weak ADC0_IRQHandler
    .type ADC0_IRQHandler, %function
ADC0_IRQHandler:
    ldr   r0,=ADC0_DriverIRQHandler
    bx    r0
    .size ADC0_IRQHandler, . - ADC0_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved39_IRQHandler
    .type Reserved39_IRQHandler, %function
Reserved39_IRQHandler:
    ldr   r0,=Reserved39_DriverIRQHandler
    bx    r0
    .size Reserved39_IRQHandler, . - Reserved39_IRQHandler

    .align 1
    .thumb_func
    .weak ACMP_IRQHandler
    .type ACMP_IRQHandler, %function
ACMP_IRQHandler:
    ldr   r0,=ACMP_DriverIRQHandler
    bx    r0
    .size ACMP_IRQHandler, . - ACMP_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved41_IRQHandler
    .type Reserved41_IRQHandler, %function
Reserved41_IRQHandler:
    ldr   r0,=Reserved41_DriverIRQHandler
    bx    r0
    .size Reserved41_IRQHandler, . - Reserved41_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved42_IRQHandler
    .type Reserved42_IRQHandler, %function
Reserved42_IRQHandler:
    ldr   r0,=Reserved42_DriverIRQHandler
    bx    r0
    .size Reserved42_IRQHandler, . - Reserved42_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved43_IRQHandler
    .type Reserved43_IRQHandler, %function
Reserved43_IRQHandler:
    ldr   r0,=Reserved43_DriverIRQHandler
    bx    r0
    .size Reserved43_IRQHandler, . - Reserved43_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved44_IRQHandler
    .type Reserved44_IRQHandler, %function
Reserved44_IRQHandler:
    ldr   r0,=Reserved44_DriverIRQHandler
    bx    r0
    .size Reserved44_IRQHandler, . - Reserved44_IRQHandler

    .align 1
    .thumb_func
    .weak RTC_IRQHandler
    .type RTC_IRQHandler, %function
RTC_IRQHandler:
    ldr   r0,=RTC_DriverIRQHandler
    bx    r0
    .size RTC_IRQHandler, . - RTC_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved46_IRQHandler
    .type Reserved46_IRQHandler, %function
Reserved46_IRQHandler:
    ldr   r0,=Reserved46_DriverIRQHandler
    bx    r0
    .size Reserved46_IRQHandler, . - Reserved46_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved47_IRQHandler
    .type Reserved47_IRQHandler, %function
Reserved47_IRQHandler:
    ldr   r0,=Reserved47_DriverIRQHandler
    bx    r0
    .size Reserved47_IRQHandler, . - Reserved47_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT4_IRQHandler
    .type PIN_INT4_IRQHandler, %function
PIN_INT4_IRQHandler:
    ldr   r0,=PIN_INT4_DriverIRQHandler
    bx    r0
    .size PIN_INT4_IRQHandler, . - PIN_INT4_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT5_IRQHandler
    .type PIN_INT5_IRQHandler, %function
PIN_INT5_IRQHandler:
    ldr   r0,=PIN_INT5_DriverIRQHandler
    bx    r0
    .size PIN_INT5_IRQHandler, . - PIN_INT5_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT6_IRQHandler
    .type PIN_INT6_IRQHandler, %function
PIN_INT6_IRQHandler:
    ldr   r0,=PIN_INT6_DriverIRQHandler
    bx    r0
    .size PIN_INT6_IRQHandler, . - PIN_INT6_IRQHandler

    .align 1
    .thumb_func
    .weak PIN_INT7_IRQHandler
    .type PIN_INT7_IRQHandler, %function
PIN_INT7_IRQHandler:
    ldr   r0,=PIN_INT7_DriverIRQHandler
    bx    r0
    .size PIN_INT7_IRQHandler, . - PIN_INT7_IRQHandler

    .align 1
    .thumb_func
    .weak CTIMER2_IRQHandler
    .type CTIMER2_IRQHandler, %function
CTIMER2_IRQHandler:
    ldr   r0,=CTIMER2_DriverIRQHandler
    bx    r0
    .size CTIMER2_IRQHandler, . - CTIMER2_IRQHandler

    .align 1
    .thumb_func
    .weak CTIMER4_IRQHandler
    .type CTIMER4_IRQHandler, %function
CTIMER4_IRQHandler:
    ldr   r0,=CTIMER4_DriverIRQHandler
    bx    r0
    .size CTIMER4_IRQHandler, . - CTIMER4_IRQHandler

    .align 1
    .thumb_func
    .weak OS_EVENT_IRQHandler
    .type OS_EVENT_IRQHandler, %function
OS_EVENT_IRQHandler:
    ldr   r0,=OS_EVENT_DriverIRQHandler
    bx    r0
    .size OS_EVENT_IRQHandler, . - OS_EVENT_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved55_IRQHandler
    .type Reserved55_IRQHandler, %function
Reserved55_IRQHandler:
    ldr   r0,=Reserved55_DriverIRQHandler
    bx    r0
    .size Reserved55_IRQHandler, . - Reserved55_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved56_IRQHandler
    .type Reserved56_IRQHandler, %function
Reserved56_IRQHandler:
    ldr   r0,=Reserved56_DriverIRQHandler
    bx    r0
    .size Reserved56_IRQHandler, . - Reserved56_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved57_IRQHandler
    .type Reserved57_IRQHandler, %function
Reserved57_IRQHandler:
    ldr   r0,=Reserved57_DriverIRQHandler
    bx    r0
    .size Reserved57_IRQHandler, . - Reserved57_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved58_IRQHandler
    .type Reserved58_IRQHandler, %function
Reserved58_IRQHandler:
    ldr   r0,=Reserved58_DriverIRQHandler
    bx    r0
    .size Reserved58_IRQHandler, . - Reserved58_IRQHandler

    .align 1
    .thumb_func
    .weak CAN0_IRQ0_IRQHandler
    .type CAN0_IRQ0_IRQHandler, %function
CAN0_IRQ0_IRQHandler:
    ldr   r0,=CAN0_IRQ0_DriverIRQHandler
    bx    r0
    .size CAN0_IRQ0_IRQHandler, . - CAN0_IRQ0_IRQHandler

    .align 1
    .thumb_func
    .weak CAN0_IRQ1_IRQHandler
    .type CAN0_IRQ1_IRQHandler, %function
CAN0_IRQ1_IRQHandler:
    ldr   r0,=CAN0_IRQ1_DriverIRQHandler
    bx    r0
    .size CAN0_IRQ1_IRQHandler, . - CAN0_IRQ1_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved61_IRQHandler
    .type Reserved61_IRQHandler, %function
Reserved61_IRQHandler:
    ldr   r0,=Reserved61_DriverIRQHandler
    bx    r0
    .size Reserved61_IRQHandler, . - Reserved61_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved62_IRQHandler
    .type Reserved62_IRQHandler, %function
Reserved62_IRQHandler:
    ldr   r0,=Reserved62_DriverIRQHandler
    bx    r0
    .size Reserved62_IRQHandler, . - Reserved62_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved63_IRQHandler
    .type Reserved63_IRQHandler, %function
Reserved63_IRQHandler:
    ldr   r0,=Reserved63_DriverIRQHandler
    bx    r0
    .size Reserved63_IRQHandler, . - Reserved63_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved64_IRQHandler
    .type Reserved64_IRQHandler, %function
Reserved64_IRQHandler:
    ldr   r0,=Reserved64_DriverIRQHandler
    bx    r0
    .size Reserved64_IRQHandler, . - Reserved64_IRQHandler

    .align 1
    .thumb_func
    .weak SEC_HYPERVISOR_CALL_IRQHandler
    .type SEC_HYPERVISOR_CALL_IRQHandler, %function
SEC_HYPERVISOR_CALL_IRQHandler:
    ldr   r0,=SEC_HYPERVISOR_CALL_DriverIRQHandler
    bx    r0
    .size SEC_HYPERVISOR_CALL_IRQHandler, . - SEC_HYPERVISOR_CALL_IRQHandler

    .align 1
    .thumb_func
    .weak SEC_GPIO_INT0_IRQ0_IRQHandler
    .type SEC_GPIO_INT0_IRQ0_IRQHandler, %function
SEC_GPIO_INT0_IRQ0_IRQHandler:
    ldr   r0,=SEC_GPIO_INT0_IRQ0_DriverIRQHandler
    bx    r0
    .size SEC_GPIO_INT0_IRQ0_IRQHandler, . - SEC_GPIO_INT0_IRQ0_IRQHandler

    .align 1
    .thumb_func
    .weak SEC_GPIO_INT0_IRQ1_IRQHandler
    .type SEC_GPIO_INT0_IRQ1_IRQHandler, %function
SEC_GPIO_INT0_IRQ1_IRQHandler:
    ldr   r0,=SEC_GPIO_INT0_IRQ1_DriverIRQHandler
    bx    r0
    .size SEC_GPIO_INT0_IRQ1_IRQHandler, . - SEC_GPIO_INT0_IRQ1_IRQHandler

    .align 1
    .thumb_func
    .weak PLU_IRQHandler
    .type PLU_IRQHandler, %function
PLU_IRQHandler:
    ldr   r0,=PLU_DriverIRQHandler
    bx    r0
    .size PLU_IRQHandler, . - PLU_IRQHandler

    .align 1
    .thumb_func
    .weak SEC_VIO_IRQHandler
    .type SEC_VIO_IRQHandler, %function
SEC_VIO_IRQHandler:
    ldr   r0,=SEC_VIO_DriverIRQHandler
    bx    r0
    .size SEC_VIO_IRQHandler, . - SEC_VIO_IRQHandler

    .align 1
    .thumb_func
    .weak HASHCRYPT_IRQHandler
    .type HASHCRYPT_IRQHandler, %function
HASHCRYPT_IRQHandler:
    ldr   r0,=HASHCRYPT_DriverIRQHandler
    bx    r0
    .size HASHCRYPT_IRQHandler, . - HASHCRYPT_IRQHandler

    .align 1
    .thumb_func
    .weak CASER_IRQHandler
    .type CASER_IRQHandler, %function
CASER_IRQHandler:
    ldr   r0,=CASER_DriverIRQHandler
    bx    r0
    .size CASER_IRQHandler, . - CASER_IRQHandler

    .align 1
    .thumb_func
    .weak PUF_IRQHandler
    .type PUF_IRQHandler, %function
PUF_IRQHandler:
    ldr   r0,=PUF_DriverIRQHandler
    bx    r0
    .size PUF_IRQHandler, . - PUF_IRQHandler

    .align 1
    .thumb_func
    .weak Reserved73_IRQHandler
    .type Reserved73_IRQHandler, %function
Reserved73_IRQHandler:
    ldr   r0,=Reserved73_DriverIRQHandler
    bx    r0
    .size Reserved73_IRQHandler, . - Reserved73_IRQHandler

    .align 1
    .thumb_func
    .weak DMA1_IRQHandler
    .type DMA1_IRQHandler, %function
DMA1_IRQHandler:
    ldr   r0,=DMA1_DriverIRQHandler
    bx    r0
    .size DMA1_IRQHandler, . - DMA1_IRQHandler

    .align 1
    .thumb_func
    .weak FLEXCOMM8_IRQHandler
    .type FLEXCOMM8_IRQHandler, %function
FLEXCOMM8_IRQHandler:
    ldr   r0,=FLEXCOMM8_DriverIRQHandler
    bx    r0
    .size FLEXCOMM8_IRQHandler, . - FLEXCOMM8_IRQHandler

    .align 1
    .thumb_func
    .weak CDOG_IRQHandler
    .type CDOG_IRQHandler, %function
CDOG_IRQHandler:
    ldr   r0,=CDOG_DriverIRQHandler
    bx    r0
    .size CDOG_IRQHandler, . - CDOG_IRQHandler


/*    Macro to define default handlers. Default handler
 *    will be weak symbol and just dead loops. They can be
 *    overwritten by other handlers */
    .macro def_irq_handler  handler_name
    .weak \handler_name
    .set  \handler_name, DefaultISR
    .endm
/* Exception Handlers */
    def_irq_handler    MemManage_Handler
    def_irq_handler    BusFault_Handler
    def_irq_handler    UsageFault_Handler
    def_irq_handler    SecureFault_Handler
    def_irq_handler    DebugMon_Handler
    def_irq_handler    WDT_BOD_DriverIRQHandler
    def_irq_handler    DMA0_DriverIRQHandler
    def_irq_handler    GINT0_DriverIRQHandler
    def_irq_handler    GINT1_DriverIRQHandler
    def_irq_handler    PIN_INT0_DriverIRQHandler
    def_irq_handler    PIN_INT1_DriverIRQHandler
    def_irq_handler    PIN_INT2_DriverIRQHandler
    def_irq_handler    PIN_INT3_DriverIRQHandler
    def_irq_handler    UTICK0_DriverIRQHandler
    def_irq_handler    MRT0_DriverIRQHandler
    def_irq_handler    CTIMER0_DriverIRQHandler
    def_irq_handler    CTIMER1_DriverIRQHandler
    def_irq_handler    SCT0_DriverIRQHandler
    def_irq_handler    CTIMER3_DriverIRQHandler
    def_irq_handler    FLEXCOMM0_DriverIRQHandler
    def_irq_handler    FLEXCOMM1_DriverIRQHandler
    def_irq_handler    FLEXCOMM2_DriverIRQHandler
    def_irq_handler    FLEXCOMM3_DriverIRQHandler
    def_irq_handler    FLEXCOMM4_DriverIRQHandler
    def_irq_handler    FLEXCOMM5_DriverIRQHandler
    def_irq_handler    FLEXCOMM6_DriverIRQHandler
    def_irq_handler    FLEXCOMM7_DriverIRQHandler
    def_irq_handler    ADC0_DriverIRQHandler
    def_irq_handler    Reserved39_DriverIRQHandler
    def_irq_handler    ACMP_DriverIRQHandler
    def_irq_handler    Reserved41_DriverIRQHandler
    def_irq_handler    Reserved42_DriverIRQHandler
    def_irq_handler    Reserved43_DriverIRQHandler
    def_irq_handler    Reserved44_DriverIRQHandler
    def_irq_handler    RTC_DriverIRQHandler
    def_irq_handler    Reserved46_DriverIRQHandler
    def_irq_handler    Reserved47_DriverIRQHandler
    def_irq_handler    PIN_INT4_DriverIRQHandler
    def_irq_handler    PIN_INT5_DriverIRQHandler
    def_irq_handler    PIN_INT6_DriverIRQHandler
    def_irq_handler    PIN_INT7_DriverIRQHandler
    def_irq_handler    CTIMER2_DriverIRQHandler
    def_irq_handler    CTIMER4_DriverIRQHandler
    def_irq_handler    OS_EVENT_DriverIRQHandler
    def_irq_handler    Reserved55_DriverIRQHandler
    def_irq_handler    Reserved56_DriverIRQHandler
    def_irq_handler    Reserved57_DriverIRQHandler
    def_irq_handler    Reserved58_DriverIRQHandler
    def_irq_handler    CAN0_IRQ0_DriverIRQHandler
    def_irq_handler    CAN0_IRQ1_DriverIRQHandler
    def_irq_handler    Reserved61_DriverIRQHandler
    def_irq_handler    Reserved62_DriverIRQHandler
    def_irq_handler    Reserved63_DriverIRQHandler
    def_irq_handler    Reserved64_DriverIRQHandler
    def_irq_handler    SEC_HYPERVISOR_CALL_DriverIRQHandler
    def_irq_handler    SEC_GPIO_INT0_IRQ0_DriverIRQHandler
    def_irq_handler    SEC_GPIO_INT0_IRQ1_DriverIRQHandler
    def_irq_handler    PLU_DriverIRQHandler
    def_irq_handler    SEC_VIO_DriverIRQHandler
    def_irq_handler    HASHCRYPT_DriverIRQHandler
    def_irq_handler    CASER_DriverIRQHandler
    def_irq_handler    PUF_DriverIRQHandler
    def_irq_handler    Reserved73_DriverIRQHandler
    def_irq_handler    DMA1_DriverIRQHandler
    def_irq_handler    FLEXCOMM8_DriverIRQHandler
    def_irq_handler    CDOG_DriverIRQHandler

    .end
