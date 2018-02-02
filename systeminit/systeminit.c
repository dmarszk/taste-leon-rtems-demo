/*  We need GNU extensions, otherwise time types are messed up.
    These are Linux or RTEMS specific
 */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE 1
#endif /* _GNU_SOURCE */

#include "systeminit.h"

/* Function static data is declared in this file : */
#include "Context-systeminit.h"

void systeminit_startup()
{
    /* Write your initialization code here,
       but do not make any call to a required interface. */
}

void systeminit_PI_dummy()
{
    /* Write your code here! */
}

