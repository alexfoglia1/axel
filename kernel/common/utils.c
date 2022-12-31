#include <common/utils.h>

#include <string.h>
#include <stdio.h>


char __slog_buf__[SERIAL_LOG_BUFLEN];
char __slog_prm__[SERIAL_LOG_BUFLEN - SERIAL_LOG_TSTMP_BUFLEN];
char __slog_tst__[SERIAL_LOG_TSTMP_BUFLEN];


uint32_t*
find_plaintext_in_memory(uint32_t* start_addr, uint32_t* limit, const char* plaintext)
{
	uint8_t* p_byte = (uint8_t*)(start_addr);
	uint8_t* p_end  = (uint8_t*)(limit);
	uint32_t n_bytes = strlen(plaintext);
	uint32_t* return_address = 0;
	
	uint8_t found = 0;
	while ((p_byte <= p_end) && (0 == found))
	{
		uint8_t current_check = 1;
		for (uint32_t i = 0; i < n_bytes; i++)
		{
			if (p_byte[i] != plaintext[i])
			{
				current_check = 0;
			}
		}
		
		found = (current_check == 1);
		if (found)
		{
			return_address = (uint32_t*)(p_byte);
		}
		
		p_byte += 1;
	}

	return return_address;	
}


uint64_t
parse_multiboot_info(multiboot_info_t* mbd)
{

	uint64_t total_size_bytes = 0;
    if (!(mbd->flags >> 6 & 0x1))
	{
        printf("Invalid memory map given by GRUB bootloader\n");
    }
	else
	{
#ifdef __ADDR_64BIT__
        for (uint32_t i = 0; i < mbd->mmap_length; i++)
        {
            uint8_t* p_mmmt_byte0 = (uint8_t*) (0x7FFF00000000 | (mbd->mmap_addr));
            uint8_t* p_mmmt_bytei = (uint8_t*) (p_mmmt_byte0 + (i * sizeof(multiboot_memory_map_t)));
            multiboot_memory_map_t* mmmt = (multiboot_memory_map_t*) (p_mmmt_bytei);
#else
        for (uint32_t i = 0; i < mbd->mmap_length; i += sizeof(multiboot_memory_map_t))
        {
            multiboot_memory_map_t* mmmt =
				(multiboot_memory_map_t*) (mbd->mmap_addr + i);
#endif
			__slog__(COM1_PORT, "Mem Start: %X\ Length: %X Size: %X Type: %s\n", (uint32_t)mmmt->addr, (uint32_t)mmmt->len, (uint32_t)mmmt->size,
				 					  MULTIBOOT_MEMORY_AVAILABLE == mmmt->type ? "AVAILABLE" :
									  MULTIBOOT_MEMORY_RESERVED  == mmmt->type ? "RESERVED" :
									  MULTIBOOT_MEMORY_ACPI_RECLAIMABLE == mmmt->type ? "ACPI RECL." :
									  MULTIBOOT_MEMORY_NVS == mmmt->type ? "NVS" : "BADRAM");

			if (MULTIBOOT_MEMORY_AVAILABLE == mmmt->type)
			{
				total_size_bytes += mmmt->len;
			}
		}
	}

	return total_size_bytes;
}


void
cmos_datetime_to_str(cmos_rtc_datetime datetime, char* buf)
{
	char dd[3];
	char mo[3];
	char yr[3];

	char hh[3];
	char mm[3];
	char ss[3];

	dd[2] = mo[2] = yr[2] = hh[2] = mm[2] = ss[2] = '\0';

	sprintf(dd, "%s%b", datetime.day < 10 ? "0" : "", datetime.day);
	sprintf(mo, "%s%b", datetime.month < 10 ? "0" : "", datetime.month);
	sprintf(yr, "%s%b", datetime.year < 10 ? "0" : "", datetime.year);

	sprintf(hh, "%s%b", datetime.hour < 10 ? "0" : "", datetime.hour);
	sprintf(mm, "%s%b", datetime.min < 10 ? "0" : "", datetime.min);
	sprintf(ss, "%s%b", datetime.sec < 10 ? "0" : "", datetime.sec);

	sprintf(buf, "[%s/%s/%s %s:%s:%s]", dd, mo, yr, hh, mm, ss);
}
