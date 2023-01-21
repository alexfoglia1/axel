#ifndef _RF_H
#define _RF_H

#include <stdint.h>

#include <kernel/arch/asm.h>

#ifndef ARCH
#error "Cannot determine architecture : ARCH is not defined"
#else
#if ARCH == i686

#define RF_GRAB_STK_PTR(DST) asm volatile("mov %%esp, %0" : "=r" (DST))
#define RF_GRAB_BAS_PTR(DST) asm volatile("mov %%ebp, %0" : "=r" (DST))
#define RF_GRAB_SRC_PTR(DST) asm volatile("mov %%esi, %0" : "=r" (DST))
#define RF_GRAB_DST_PTR(DST) asm volatile("mov %%edi, %0" : "=r" (DST))
#define RF_GRAB_IST_PTR(DST) do { DST = read_eip(); } while(0)

#define RF_GRAB_CR_0(DST) asm volatile("mov %%cr0, %0" : "=r" (DST))
#define RF_GRAB_CR_1(DST) asm volatile("mov %%cr1, %0" : "=r" (DST))
#define RF_GRAB_CR_2(DST) asm volatile("mov %%cr2, %0" : "=r" (DST))
#define RF_GRAB_CR_3(DST) asm volatile("mov %%cr3, %0" : "=r" (DST))

#define RF_GRAB_GENERAL_A_32(DST) asm volatile("mov %%eax, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_B_32(DST) asm volatile("mov %%ebx, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_C_32(DST) asm volatile("mov %%ecx, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_D_32(DST) asm volatile("mov %%edx, %0" : "=r" (DST))

#define RF_GRAB_GENERAL_A_16(DST) asm volatile("mov %%ax, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_B_16(DST) asm volatile("mov %%bx, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_C_16(DST) asm volatile("mov %%cx, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_D_16(DST) asm volatile("mov %%dx, %0" : "=r" (DST))

#define RF_GRAB_GENERAL_AH_08(DST) asm volatile("mov %%ah, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_AL_08(DST) asm volatile("mov %%al, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_BH_08(DST) asm volatile("mov %%bh, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_BL_08(DST) asm volatile("mov %%bl, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_CH_08(DST) asm volatile("mov %%ch, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_CL_08(DST) asm volatile("mov %%cl, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_DH_08(DST) asm volatile("mov %%dh, %0" : "=r" (DST))
#define RF_GRAB_GENERAL_DL_08(DST) asm volatile("mov %%dl, %0" : "=r" (DST))

#elif ARCH == debug_x86_64

#define RF_GRAB_STK_PTR(DST) do { DST = 0; } while(0)
#define RF_GRAB_BAS_PTR(DST) do { DST = 0; } while(0)
#define RF_GRAB_SRC_PTR(DST) do { DST = 0; } while(0)
#define RF_GRAB_DST_PTR(DST) do { DST = 0; } while(0)
#define RF_GRAB_IST_PTR(DST) do { DST = 0; } while(0)

#define RF_GRAB_CR_0(DST) do { DST = 0; } while(0)
#define RF_GRAB_CR_1(DST) do { DST = 0; } while(0)
#define RF_GRAB_CR_2(DST) do { DST = 0; } while(0)
#define RF_GRAB_CR_3(DST) do { DST = 0; } while(0)

#define RF_GRAB_GENERAL_A_32(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_B_32(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_C_32(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_D_32(DST) do { DST = 0; } while(0)

#define RF_GRAB_GENERAL_A_16(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_B_16(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_C_16(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_D_16(DST) do { DST = 0; } while(0)

#define RF_GRAB_GENERAL_AH_08(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_AL_08(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_BH_08(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_BL_08(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_CH_08(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_CL_08(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_DH_08(DST) do { DST = 0; } while(0)
#define RF_GRAB_GENERAL_DL_08(DST) do { DST = 0; } while(0)

#endif
#endif

#endif
