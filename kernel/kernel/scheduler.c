#include <kernel/scheduler.h>
#include <kernel/multitasking.h>

#include <controllers/com.h>

#include <common/utils.h>


void
scheduler(uint32_t pit_ticks, uint32_t pit_millis)
{
    tasking_scheduler(pit_ticks, pit_millis);
}