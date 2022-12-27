#ifndef _ISR_H
#define _ISR_H

/** Generic exception handler, todo : write all interrupt handlers! **/
__attribute__((noreturn)) void divide_by_zero_exception();
__attribute__((noreturn)) void exception_handler();
__attribute__((noreturn)) void exception_handler_0x0();
__attribute__((noreturn)) void exception_handler_0x10();
__attribute__((noreturn)) void exception_handler_0x17();

#endif
