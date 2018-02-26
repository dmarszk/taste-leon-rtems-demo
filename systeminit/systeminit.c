/*  We need GNU extensions, otherwise time types are messed up.
    These are Linux or RTEMS specific
 */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE 1
#endif /* _GNU_SOURCE */

#include "systeminit.h"
#include <stdio.h>

/* Function static data is declared in this file : */
#include "Context-systeminit.h"
#include <util/terminal.h>

void systeminit_startup()
{
  printf("systeminit_startup\n");
	char console_dev[16];
	if (systeminit_ctxt.console_configuration.console_id > 0)
	{
		sprintf(console_dev, "/dev/console_%c", 'a' + (char)systeminit_ctxt.console_configuration.console_id);
	}
	else
	{
		strcpy(console_dev, "/dev/console");
	}
	terminal_setup(console_dev, systeminit_ctxt.console_configuration.baud);
}

void systeminit_PI_dummy()
{
    /* Write your code here! */
}

