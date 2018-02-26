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
  printf("manager_startup\n");
  last_tick = rtems_clock_get_ticks_since_boot() - 50;

  counter = 0;
}

static const char* getGPSStatusString(asn1SccGPS_Status* status)
{
  switch(*status)
  {
    case asn1Sccoffline:
      return "OFFLINE";
      break;
    case asn1Sccno_position_fix:
      return "NO POSITION FIX";
      break;
    case asn1Sccvalid_position_fix:
      return "VALID POSITION FIX";
      break;
    default:
      return "UNKNOWN STATUS ENUM";
      break;
  }
  
}

void manager_PI_tick()
{
  static asn1SccGPS_Status gps_status;
  static __po_hi_time_t now;
  rtems_interval delta;
  __po_hi_get_time (&now);
  new_tick = rtems_clock_get_ticks_since_boot();
  delta = new_tick-last_tick;
  printf("Manager tick: %lu\n", counter++);
  printf("PolyORB Clock: %lu.%09lu\n", now.sec, now.nsec);
  printf("RTEMS Ticks: %lu (+%lu)\n", new_tick, delta);
  manager_RI_gpsGetStatus(&gps_status);
  printf("GPS status: %s\n", getGPSStatusString(&gps_status));
  printf("\n");
  last_tick = new_tick;
}

