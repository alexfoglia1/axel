#include <controllers/acpi.h>
#include <controllers/com.h>

#include <common/utils.h>

#include <drivers/pit.h>

#include <kernel/arch/io.h>
#include <kernel/paging.h>

#include <stddef.h>
#include <stdio.h>
#include <string.h>

static uint32_t *SMI_CMD;
static uint8_t ACPI_ENABLE;
static uint8_t ACPI_DISABLE;
static uint32_t *PM1a_CNT;
static uint32_t *PM1b_CNT;
static uint16_t SLP_TYPa;
static uint16_t SLP_TYPb;
static uint16_t SLP_EN;
static uint16_t SCI_EN;
static uint16_t BOOT_ARCH_FLAGS;
static uint8_t PM1_CNT_LEN;
static uint8_t acpi_enabled;
static uint16_t BOOT_ARCH_FLAGS;


static uint32_t*
acpi_check_rsd_ptr(uint32_t* ptr)
{
   char *sig = "RSD PTR ";
   struct RSDPtr *rsdp = (struct RSDPtr *) ptr;
   uint8_t *bptr;
   uint8_t check = 0;
   uint32_t i;

   if (0x00 == memcmp(sig, rsdp, 8))
   {
      bptr = (uint8_t *) ptr;
      for (i = 0; i < sizeof(struct RSDPtr); i++)
      {
         check += *bptr;
         bptr++;
      }

      if (0x00 == check)
      {
         return (uint32_t*) rsdp->RsdtAddress;
      }
   }

   return 0x00;
}


static uint32_t
*acpi_get_rsd_ptr(void)
{
   uint32_t *addr;
   uint32_t *rsdp;

   for (addr = (uint32_t *) 0x000E0000; (int) addr<0x00100000; addr += 0x10/sizeof(addr))
   {
      rsdp = acpi_check_rsd_ptr(addr);
      if (rsdp != 0x00)
      {
         return rsdp;
      }
   }

   return 0x00;
}



int acpi_check_header(uint32_t *ptr, char *sig)
{
   if (0x00 == memcmp(ptr, sig, 4))
   {
      char *checkPtr = (char *) ptr;
      int len = *(ptr + 1);
      char check = 0;

      while (len)
      {
         check += *checkPtr;
         checkPtr += 1;
         
         len -= 1;
      }

      if (0x00 == check)
      {
         return 0;
      }
   }

   return -1;
}



void acpi_enable(void)
{

   acpi_enabled = 0x00;

   if (0x00 == (inw((uint32_t) PM1a_CNT) & SCI_EN))
   {
      if (SMI_CMD != 0 && ACPI_ENABLE != 0)
      {
         outb((uint32_t) SMI_CMD, ACPI_ENABLE);

         int i;
         for (i = 0; i < 300; i++ )
         {
            if (0x01 == (inw((uint32_t) PM1a_CNT) & SCI_EN))
               break;
            sleep(10);
         }

         if (PM1b_CNT != 0)
         {
            for (; i < 300; i++)
            {
               if (0x01 == (inw((uint32_t) PM1b_CNT) & SCI_EN))
                  break;
               sleep(10);
            }
         }

         if (i < 300)
         {
            __slog__(COM1_PORT, "ACPI is enabled\n");
            acpi_enabled = 0x01;
         }
      }
   }
   else
   {
      __slog__(COM1_PORT, "Could not enable ACPI\n");
      acpi_enabled = 0x01;
   }
}

#include <stdint.h>

void
acpi_init()
{
   acpi_enabled = 0x00;
   SMI_CMD = 0x00;
   ACPI_ENABLE = 0x00;
   ACPI_DISABLE = 0x00;
   PM1a_CNT = 0x00;
   PM1b_CNT = 0x00;
   SLP_TYPa = 0x00;
   SLP_TYPb = 0x00;
   SLP_EN = 0x00;
   SCI_EN = 0x00;
   PM1_CNT_LEN = 0x00;

#ifndef __DEBUG_STUB__
   uint32_t *ptr = acpi_get_rsd_ptr();
#else
   uint32_t* ptr = 0x00;
#endif
   if (ptr != 0x00 && acpi_check_header(ptr, "RSDT") == 0)
   {
      int entrys = *(ptr + 1);
      entrys = (entrys - 36) /4;
      ptr += 36/4; 
      while (entrys > 0)
      {
         if (acpi_check_header((uint32_t *) *ptr, "FACP") == 0)
         {
            entrys = -2;
            struct FACP *facp = (struct FACP *) *ptr;

            uint8_t* p_facp_byte_0 = (uint8_t*) facp;
            uint8_t* p_boot_arch_flags = (p_facp_byte_0 + 109);
            uint16_t* p16_boot_arch_flags = (uint16_t*)(p_boot_arch_flags);
            BOOT_ARCH_FLAGS = *(p16_boot_arch_flags);

            if (acpi_check_header((uint32_t *) facp->DSDT, "DSDT") == 0)
            {
               char *S5Addr = (char *) facp->DSDT +36;
               int dsdtLength = *(facp->DSDT+1) - 36;
               while (dsdtLength)
               {
                  if (0x00 == memcmp(S5Addr, "_S5_", 4))
                  {
                     break;
                  }

                  S5Addr += 1;
                  dsdtLength -= 1;
               }

               if (dsdtLength > 0)
               {
                  if ((*(S5Addr-1) == 0x08 || ( *(S5Addr-2) == 0x08 && *(S5Addr-1) == '\\')) && *(S5Addr+4) == 0x12)
                  {
                     S5Addr += 5;
                     S5Addr += ((*S5Addr &0xC0)>>6) +2;  

                     if (0x0A == *S5Addr)
                     {
                        S5Addr++;
                     }

                     SLP_TYPa = *(S5Addr)<<10;
                     S5Addr++;

                     if (0x0A == *S5Addr)
                     {
                        S5Addr++;
                     }

                     SLP_TYPb = *(S5Addr)<<10;
                     SMI_CMD = facp->SMI_CMD;
                     ACPI_ENABLE = facp->ACPI_ENABLE;
                     ACPI_DISABLE = facp->ACPI_DISABLE;
                     PM1a_CNT = facp->PM1a_CNT_BLK;
                     PM1b_CNT = facp->PM1b_CNT_BLK;
                     PM1_CNT_LEN = facp->PM1_CNT_LEN;
                     SLP_EN = 1<<13;
                     SCI_EN = 0x01;

                     __slog__(COM1_PORT, "ACPI initialized\n");

                     return;
                  }
               }
               else
               {
                     __slog__(COM1_PORT, "Cannot initialize ACPI : No _S5_ found\n");
               }
            }
            else
            {
               __slog__(COM1_PORT, "Cannot initialize ACPI : No DSDT found\n");
            }
         }
         else
         {
            __slog__(COM1_PORT, "Cannot initialize ACPI : No FACP found\n");
         }

         ptr++;
         entrys -= 1;
      }
   }
   else
   {
      __slog__(COM1_PORT, "Cannot initialize ACPI : No RSDT found\n");
   }

   SCI_EN = 0x00;
}


void
acpi_shutdown(void)
{
   if (0x00 == acpi_is_initialized())
   {
      __slog__(COM1_PORT, "Requested shutdown but ACPI was not initialized\n");
   }
   else
   {
      if (0x00 == acpi_enabled)
      {
         __slog__(COM1_PORT, "Requested shutdown but ACPI is not enabled\n");
      }
      else
      {
         __slog__(COM1_PORT, "System Shutdown");

         outw((uint32_t) PM1a_CNT, SLP_TYPa | SLP_EN );
         if ( PM1b_CNT != 0 )
         {
            outw((uint32_t) PM1b_CNT, SLP_TYPb | SLP_EN );
         }
      }
   }
}


uint8_t
acpi_is_enabled()
{
   return acpi_enabled;
}


uint8_t
acpi_is_initialized()
{
   return (0x00 == SCI_EN) ? 0x00 : 0x01;
}


uint16_t
acpi_get_boot_arch_flags()
{
   return BOOT_ARCH_FLAGS;
}
