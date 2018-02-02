/*  We need GNU extensions, otherwise time types are messed up.
    These are Linux or RTEMS specific
 */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE 1
#endif /* _GNU_SOURCE */

#include "leon_uart.h"

#include <rtems.h>
#include <bsp.h>
#include <stdio.h>
#include <errno.h>
#include <stdint.h>
#include <string.h>

#include <util/terminal.h>


void init_leon_uart()
{
	char console_dev[16];
	console_suffix[0] = '\0';
	if (leon_uart_ctxt.driver_settings.console_id > 0)
	{
		sprintf(console_dev, "/dev/console_%c", 'a' + leon_uart_ctxt.driver_settings.console_id);
	}
	else
	{
		strcpy(console_dev, "/dev/console");
	}
	terminal_setup(console_dev, leon_uart_ctxt.driver_settings.console_baud);
}

void leon_uart_txBytes(void *IN_buf, size_t size_IN_buf, void *IN_len, size_t size_IN_len)
{
	uint32_t len;
	len = **(*uint32_t)IN_len;
	if (len > size_IN_buf)
		return;
}

void leon_uart_rxBytes(void *IN_len, size_t size_IN_len, void *OUT_buf, size_t *size_OUT_buf)
{
	uint32_t len;
	len = **(*uint32_t)IN_len;
	if (len > size_IN_buf)
		return;
}

