#include <common/utils.h>
#include <string.h>
#include <stdio.h>


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
print_multiboot_info(multiboot_info_t* mbd)
{

	uint64_t total_size_bytes = 0;
    if (!(mbd->flags >> 6 & 0x1))
	{
        printf("Invalid memory map given by GRUB bootloader\n");
    }
	else
	{
		printf("START\tLENGTH\tSIZE\tTYPE\n");
		for (uint32_t i = 0; i < mbd->mmap_length; i += sizeof(multiboot_memory_map_t)) 
		{
			multiboot_memory_map_t* mmmt = 
				(multiboot_memory_map_t*) (mbd->mmap_addr + i);

			printf("%X\t%X\t%X\t%s\n", (uint32_t)mmmt->addr, (uint32_t)mmmt->len, (uint32_t)mmmt->size,
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