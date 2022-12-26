#ifndef _UTILS_H_
#define _UTILS_H_

#include <stdint.h>

/** This function is needed because printf %x expects an unsigned long instead of an unsigned int.
    TODO : fix the printf **/
uint64_t p_32_to_uint_64(void* v_ptr);

#endif