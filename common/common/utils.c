#include "utils.h"

uint64_t p_32_to_uint_64(void* v_ptr)
{
	uint32_t* ptr = (uint32_t*) (v_ptr);
	uint32_t  p_32_value = (uint32_t) (ptr);
	uint64_t  p_64_value = (uint64_t)(p_32_value);
	p_64_value = (p_64_value & 0x00000000FFFFFFFF);

	return p_64_value;
}
