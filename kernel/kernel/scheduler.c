#include <kernel/scheduler.h>
#include <kernel/multitasking.h>

#include <controllers/com.h>

#include <common/utils.h>


static uint32_t com_tx_freq_hz;


static void
com_scheduler()
{
    if (0x01 == com_is_initialized(COM1_PORT))
    {
        com_flush(COM1_PORT);
    }

    if (0x01 == com_is_initialized(COM2_PORT))
    {    
        com_flush(COM2_PORT);
    }

    if (0x01 == com_is_initialized(COM3_PORT))
    {    
        com_flush(COM3_PORT);
    }
}


void
scheduler_init(uint32_t _com_tx_freq_hz)
{
    if (_com_tx_freq_hz < COM_MIN_TX_FREQ_HZ)
    {
        com_tx_freq_hz = COM_MIN_TX_FREQ_HZ;
    }
    else if (_com_tx_freq_hz > COM_MAX_TX_FREQ_HZ)
    {
        com_tx_freq_hz = COM_MAX_TX_FREQ_HZ;
    }
    else
    {
        com_tx_freq_hz = _com_tx_freq_hz;
    }

    __slog__(COM1_PORT, "Scheduler initialized, requested com tx(%u Hz), actual com tx(%u Hz)\n", _com_tx_freq_hz, com_tx_freq_hz);
}


void
scheduler(uint32_t pit_ticks, uint32_t pit_millis)
{
    uint32_t d_millis = (1000 / com_tx_freq_hz);

    if (0x00 == (pit_millis % d_millis))
    {
        com_scheduler();
    }

    tasking_scheduler(pit_ticks, pit_millis);
}