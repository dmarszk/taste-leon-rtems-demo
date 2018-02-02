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

void gps_driver_PI_internalLoop();

extern void gps_driver_RI_txBytes(const asn1SccUART_String *,
                                  const asn1SccT_UInt32 *);

extern void gps_driver_RI_rxBytes(const asn1SccT_UInt32 *,
                                  asn1SccUART_String *);

#ifdef __cplusplus
}
#endif


#endif
