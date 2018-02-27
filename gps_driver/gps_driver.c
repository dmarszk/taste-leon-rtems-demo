#include "gps_driver.h"

#include <stdint.h>
#include <stdio.h>
#include <string.h>

static asn1SccGPS_Status gpsStatus = asn1Sccoffline;
void gps_driver_startup()
{
    /* Write your initialization code here,
       but do not make any call to a required interface. */
}

void gps_driver_PI_gpsGetStatus(asn1SccGPS_Status *OUT_status)
{
    *OUT_status = gpsStatus;
}

void gps_driver_PI_tick()
{
    /* Write your code here! */
}

void gps_driver_PI_rxUartBytes(const asn1SccUART_String *IN_buf,
                               const asn1SccT_UInt32 *IN_len)
{
  static char print_buffer[asn1SccUART_String_REQUIRED_BYTES_FOR_ENCODING + 1];
  uint32_t len = *IN_len;
  if (len > asn1SccUART_String_REQUIRED_BYTES_FOR_ENCODING)
  {
    printf("gps_driver_PI_rxUartBytes: ERROR - IN_len %d\n", len);
  }
  strncpy(print_buffer, IN_buf->arr, len);
  print_buffer[len] = '\0';
  printf("gps_driver_PI_rxUartBytes: received %d bytes '%s'\n", len, print_buffer);
}

