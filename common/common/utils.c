#include <common/utils.h>
#include <string.h>
#include <stdio.h>

uint32_t*
find_plaintext_in_memory(uint32_t* start_addr, uint32_t* limit, const char* plaintext)
{
	uint8_t* p_byte = (uint8_t*)(start_addr);
	uint8_t* p_end  = (uint8_t*)(limit);
	uint32_t n_bytes = strlen(plaintext);
	uint32_t* return_address = 0; // Initialize to NULL
	
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