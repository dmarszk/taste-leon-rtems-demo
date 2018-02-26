/* User code: This file will not be overwritten by TASTE. */

#include "gps_driver.h"

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
    /* Write your code here! */
}

