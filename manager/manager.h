/* This file was generated automatically: DO NOT MODIFY IT ! */

/* Declaration of the functions that have to be provided by the user */

#ifndef __USER_CODE_H_manager__
#define __USER_CODE_H_manager__

#include "C_ASN1_Types.h"

#ifdef __cplusplus
extern "C" {
#endif

void manager_startup();

void manager_PI_internalLoop();

extern void manager_RI_gpsGetStatus(asn1SccGPS_Status *);

#ifdef __cplusplus
}
#endif


#endif
