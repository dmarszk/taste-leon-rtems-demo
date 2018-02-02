/* User code: This file will not be overwritten by TASTE. */
#if defined (__linux__) || defined (RTEMS412)
/*  We need GNU extensions, otherwise time types are messed up.
    These are Linux or RTEMS specific
 */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE 1
#endif /* _GNU_SOURCE */
#endif /* __linux__ || RTEMS412 */

#include "manager.h"


#include <stdio.h>
#include <po_hi_time.h>
//#include <rtems.h>
//#include <rtems/rtems/clock.h>

#include <bsp.h>
#include <stdint.h>

static uint32_t counter;

static rtems_interval last_tick, new_tick;


void manager_startup()
{
  printf("Manager startup\n");
  last_tick = rtems_clock_get_ticks_since_boot() - 50;

  counter = 0;
}

void manager_PI_internalLoop()
{
  static __po_hi_time_t now;
  rtems_interval delta;
  __po_hi_get_time (&now);
  new_tick = rtems_clock_get_ticks_since_boot();
  delta = new_tick-last_tick;
  printf("Loop cycle: %lu\n", counter++);
  printf("PolyORB Clock: %lu.%09lu\n", now.sec, now.nsec);
  printf("RTEMS Ticks: %lu (+%lu)\n", new_tick, delta);
  printf("\n");
  last_tick = new_tick;
}

