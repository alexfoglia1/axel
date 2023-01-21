#ifndef _SCHEDULER_H
#define _SCHEDULER_H

#include <stdint.h>

void scheduler_init(uint32_t com_tx_freq_hz);
void scheduler(uint32_t pit_ticks, uint32_t pit_millis);

#endif