#include <bash.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>


void
bash()
{
    char rx_buf[512];
    char cmd_buf[512];
    memset(rx_buf, 0x00, 512);

    printf("\nWelcome to AXEL %d.%d-%c\n\n", MAJOR_V, MINOR_V, STAGE_V);

    while (1)
    {
        printf("User: ");
        int len = 0;
        do
        {
            int size_read = keyboard_read((uint8_t*)(&rx_buf[len]), 1);
            printf("%c", rx_buf[len]);

            len += size_read;
            if (rx_buf[len - 1] == '\n' && len > 1)
            {
                break;
            }
        } while(1);
        rx_buf[len - 1] = '\0';

        printf("Welcome %s", rx_buf);
        while (1)
        {
            int llen = 0;
            memset(cmd_buf, 0x00, 512);
            printf("\n%s@axel-os > ", rx_buf);
            do
            {
                int size_read = keyboard_read((uint8_t*)(&cmd_buf[llen]), 1);
                printf("%c", cmd_buf[llen]);

                llen += size_read;
                if (cmd_buf[llen - 1] == '\n' && llen > 1)
                {
                    break;
                }
                
            } while(1);
            cmd_buf[llen - 1] = '\0';

            printf("\nUnknown command : %s\n", cmd_buf);
        }

    }
}
