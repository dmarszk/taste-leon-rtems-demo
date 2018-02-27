#if defined (__linux__) || defined (RTEMS412)
/*  We need GNU extensions, otherwise time types are messed up.
    These are Linux/RTEMS specific
 */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE 1
#endif /* _GNU_SOURCE */
#endif /* __linux__ || RTEMS412 */

#include "systeminit.h"
#include <stdio.h>
#include <string.h>

/* Function static data is declared in this file : */
#include "Context-systeminit.h"
#include <util/terminal.h>


void systeminit_startup()
{
  printf("systeminit_startup\n");
  char console_dev[16];
  get_console_dev_name(console_dev, systeminit_ctxt.console_configuration.console_id);
  terminal_setup(console_dev, systeminit_ctxt.console_configuration.baud, 0);
}

void systeminit_PI_dummy()
{
  /* noop - this function is here just to force PolyORB to call "startup"
  */  
}

