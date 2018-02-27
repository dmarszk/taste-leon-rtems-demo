#if defined (__linux__) || defined (RTEMS412)
/*  We need GNU extensions, otherwise time types are messed up.
    These are Linux/RTEMS specific
 */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE 1
#endif /* _GNU_SOURCE */
#endif /* __linux__ || RTEMS412 */

#include "leon_uart.h"
/* Function static data is declared in this file : */
#include "Context-leon-uart.h"

#include <rtems.h>
#include <bsp.h>
#include <stdio.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>

#include <util/terminal.h>
#define READ_BUF_SIZE asn1SccUART_String_REQUIRED_BYTES_FOR_ENCODING

static int console_fd;
static uint8_t initialized = 0;
void init_leon_uart()
{
  printf("init_leon_uart\n");
  if (!initialized)
  {
    char console_dev[16];
    get_console_dev_name(console_dev, leon_uart_ctxt.driver_configuration.console_id);
    console_fd = terminal_setup(console_dev, leon_uart_ctxt.driver_configuration.baud, 1);
    if (console_fd < 0)
    {
      printf("init_leon_uart: failed to initialize console %s\n", console_dev);
      return;
    }
    initialized = 1;
  }
}

void leon_uart_txUartBytes(void *IN_buf, size_t size_IN_buf, void *IN_len, size_t size_IN_len)
{
  uint32_t len;
  int written_len;
  if (!initialized)
    return;
  len = *(uint32_t*)IN_len;
  if (len > size_IN_buf)
    return;
  written_len = write(console_fd, IN_buf, len);
  if (written_len < 0)
  {
    printf("leon_uart_txUartBytes: write error (returned %d)\n", written_len);
  }
  else if (written_len != len)
  {
    printf("leon_uart_txUartBytes: did not write full buffer (len=%d, written=%d)\n", len, written_len);
  }
  else
  {
    // All OK
  }
}


void leon_uart_tick()
{
  static uint8_t read_buf[READ_BUF_SIZE];
  int read_len;
  if (!initialized)
    return;
  read_len = read(console_fd, read_buf, READ_BUF_SIZE);
  if (read_len > 0)
  {
    vm_leon_uart_rxUartBytes((void*) read_buf, READ_BUF_SIZE, (void*) &read_len, 4);
  }
  else if (read_len < 0)
  {
    printf("leon_uart_tick: read error (returned %d)\n", read_len);
  }
  else
  {
    // No data polled
  }
}
