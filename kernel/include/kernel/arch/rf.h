#ifndef _RF_H
#define _RF_H

#include <stdint.h>

#include <kernel/arch/asm.h>

#ifndef ARCH
#error "Cannot determine architecture : ARCH is not defined"
#else
#if ARCH == i686

#define RF_READ_STK_PTR(DST) asm volatile("mov %%esp, %0" : "=r" (DST))
#define RF_READ_BAS_PTR(DST) asm volatile("mov %%ebp, %0" : "=r" (DST))
#define RF_READ_SRC_PTR(DST) asm volatile("mov %%esi, %0" : "=r" (DST))
#define RF_READ_DST_PTR(DST) asm volatile("mov %%edi, %0" : "=r" (DST))
#define RF_READ_IST_PTR(DST) do { DST = read_eip(); } while(0)

#define RF_READ_CR_0(DST) asm volatile("movl %%cr0, %0" : "=r" (DST))
#define RF_READ_CR_1(DST) asm volatile("movl %%cr1, %0" : "=r" (DST))
#define RF_READ_CR_2(DST) asm volatile("movl %%cr2, %0" : "=r" (DST))
#define RF_READ_CR_3(DST) asm volatile("movl %%cr3, %0" : "=r" (DST))

#define RF_READ_GENERAL_A_32(DST) asm volatile("movl %%eax, %0" : "=r" (DST))
#define RF_READ_GENERAL_B_32(DST) asm volatile("movl %%ebx, %0" : "=r" (DST))
#define RF_READ_GENERAL_C_32(DST) asm volatile("movl %%ecx, %0" : "=r" (DST))
#define RF_READ_GENERAL_D_32(DST) asm volatile("movl %%edx, %0" : "=r" (DST))

#define RF_READ_GENERAL_A_16(DST) asm volatile("mov %%ax, %0" : "=r" (DST))
#define RF_READ_GENERAL_B_16(DST) asm volatile("mov %%bx, %0" : "=r" (DST))
#define RF_READ_GENERAL_C_16(DST) asm volatile("mov %%cx, %0" : "=r" (DST))
#define RF_READ_GENERAL_D_16(DST) asm volatile("mov %%dx, %0" : "=r" (DST))

#define RF_READ_GENERAL_AH_08(DST) asm volatile("mov %%ah, %0" : "=r" (DST))
#define RF_READ_GENERAL_AL_08(DST) asm volatile("mov %%al, %0" : "=r" (DST))
#define RF_READ_GENERAL_BH_08(DST) asm volatile("mov %%bh, %0" : "=r" (DST))
#define RF_READ_GENERAL_BL_08(DST) asm volatile("mov %%bl, %0" : "=r" (DST))
#define RF_READ_GENERAL_CH_08(DST) asm volatile("mov %%ch, %0" : "=r" (DST))
#define RF_READ_GENERAL_CL_08(DST) asm volatile("mov %%cl, %0" : "=r" (DST))
#define RF_READ_GENERAL_DH_08(DST) asm volatile("mov %%dh, %0" : "=r" (DST))
#define RF_READ_GENERAL_DL_08(DST) asm volatile("mov %%dl, %0" : "=r" (DST))

#define RF_WRITE_STK_PTR(DST) asm volatile("mov %0, %%esp" :: "r" (DST))
#define RF_WRITE_BAS_PTR(DST) asm volatile("mov %0, %%ebp" :: "r" (DST))
#define RF_WRITE_SRC_PTR(DST) asm volatile("mov %0, %%esi" :: "r" (DST))
#define RF_WRITE_DST_PTR(DST) asm volatile("mov %0, %%edi" :: "r" (DST))

#define RF_WRITE_CR_0(DST) asm volatile("movl %0, %%cr0" :: "r" (DST))
#define RF_WRITE_CR_1(DST) asm volatile("movl %0, %%cr1" :: "r" (DST))
#define RF_WRITE_CR_2(DST) asm volatile("movl %0, %%cr2" :: "r" (DST))
#define RF_WRITE_CR_3(DST) asm volatile("movl %0, %%cr3" :: "r" (DST))

#define RF_WRITE_GENERAL_A_32(DST) asm volatile("movl %0, %%eax" :: "r" (DST))
#define RF_WRITE_GENERAL_B_32(DST) asm volatile("movl %0, %%ebx" :: "r" (DST))
#define RF_WRITE_GENERAL_C_32(DST) asm volatile("movl %0, %%ecx" :: "r" (DST))
#define RF_WRITE_GENERAL_D_32(DST) asm volatile("movl %0, %%edx" :: "r" (DST))

#define RF_WRITE_GENERAL_A_16(DST) asm volatile("mov %0, %%ax" :: "r" (DST))
#define RF_WRITE_GENERAL_B_16(DST) asm volatile("mov %0, %%bx" :: "r" (DST))
#define RF_WRITE_GENERAL_C_16(DST) asm volatile("mov %0, %%cx" :: "r" (DST))
#define RF_WRITE_GENERAL_D_16(DST) asm volatile("mov %0, %%dx" :: "r" (DST))

#define RF_WRITE_GENERAL_AH_08(DST) asm volatile("mov %0, %%ah" :: "r" (DST))
#define RF_WRITE_GENERAL_AL_08(DST) asm volatile("mov %0, %%al" :: "r" (DST))
#define RF_WRITE_GENERAL_BH_08(DST) asm volatile("mov %0, %%bh" :: "r" (DST))
#define RF_WRITE_GENERAL_BL_08(DST) asm volatile("mov %0, %%al" :: "r" (DST))
#define RF_WRITE_GENERAL_CH_08(DST) asm volatile("mov %0, %%ch" :: "r" (DST))
#define RF_WRITE_GENERAL_CL_08(DST) asm volatile("mov %0, %%cl" :: "r" (DST))
#define RF_WRITE_GENERAL_DH_08(DST) asm volatile("mov %0, %%dh" :: "r" (DST))
#define RF_WRITE_GENERAL_DL_08(DST) asm volatile("mov %0, %%dl" :: "r" (DST))

#elif ARCH == debug_x86_64

#define RF_READ_STK_PTR(DST) do { DST = 0; } while(0)
#define RF_READ_BAS_PTR(DST) do { DST = 0; } while(0)
#define RF_READ_SRC_PTR(DST) do { DST = 0; } while(0)
#define RF_READ_DST_PTR(DST) do { DST = 0; } while(0)
#define RF_READ_IST_PTR(DST) do { DST = 0; } while(0)

#define RF_READ_CR_0(DST) do { DST = 0; } while(0)
#define RF_READ_CR_1(DST) do { DST = 0; } while(0)
#define RF_READ_CR_2(DST) do { DST = 0; } while(0)
#define RF_READ_CR_3(DST) do { DST = 0; } while(0)

#define RF_READ_GENERAL_A_32(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_B_32(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_C_32(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_D_32(DST) do { DST = 0; } while(0)

#define RF_READ_GENERAL_A_16(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_B_16(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_C_16(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_D_16(DST) do { DST = 0; } while(0)

#define RF_READ_GENERAL_AH_08(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_AL_08(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_BH_08(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_BL_08(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_CH_08(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_CL_08(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_DH_08(DST) do { DST = 0; } while(0)
#define RF_READ_GENERAL_DL_08(DST) do { DST = 0; } while(0)

#define RF_WRITE_STK_PTR(DST) do {} while(0)
#define RF_WRITE_BAS_PTR(DST) do {} while(0)
#define RF_WRITE_SRC_PTR(DST) do {} while(0)
#define RF_WRITE_DST_PTR(DST) do {} while(0)

#define RF_WRITE_CR_0(DST) do {} while(0)
#define RF_WRITE_CR_1(DST) do {} while(0)
#define RF_WRITE_CR_2(DST) do {} while(0)
#define RF_WRITE_CR_3(DST) do {} while(0)

#define RF_WRITE_GENERAL_A_32(DST) do {} while(0)
#define RF_WRITE_GENERAL_B_32(DST) do {} while(0)
#define RF_WRITE_GENERAL_C_32(DST) do {} while(0)
#define RF_WRITE_GENERAL_D_32(DST) do {} while(0)

#define RF_WRITE_GENERAL_A_16(DST) do {} while(0)
#define RF_WRITE_GENERAL_B_16(DST) do {} while(0)
#define RF_WRITE_GENERAL_C_16(DST) do {} while(0)
#define RF_WRITE_GENERAL_D_16(DST) do {} while(0)

#define RF_WRITE_GENERAL_AH_08(DST) do {} while(0)
#define RF_WRITE_GENERAL_AL_08(DST) do {} while(0)
#define RF_WRITE_GENERAL_BH_08(DST) do {} while(0)
#define RF_WRITE_GENERAL_BL_08(DST) do {} while(0)
#define RF_WRITE_GENERAL_CH_08(DST) do {} while(0)
#define RF_WRITE_GENERAL_CL_08(DST) do {} while(0)
#define RF_WRITE_GENERAL_DH_08(DST) do {} while(0)
#define RF_WRITE_GENERAL_DL_08(DST) ado {} while(0)

#endif
#endif

#endif
