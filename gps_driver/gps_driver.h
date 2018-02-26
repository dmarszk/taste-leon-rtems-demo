/* This file was generated automatically: DO NOT MODIFY IT ! */

/* Declaration of the functions that have to be provided by the user */

#ifndef __USER_CODE_H_gps_driver__
#define __USER_CODE_H_gps_driver__

#include "C_ASN1_Types.h"

#ifdef __cplusplus
extern "C" {
#endif

void gps_driver_startup();

void gps_driver_PI_gpsGetStatus(asn1SccGPS_Status *);

void gps_driver_PI_tick();

void gps_driver_PI_rxUartBytes(const asn1SccUART_String *,
                               const asn1SccT_UInt32 *);

extern void gps_driver_RI_txUartBytes(const asn1SccUART_String *,
                                      const asn1SccT_UInt32 *);

#ifdef __cplusplus
}
#endif


#endif
