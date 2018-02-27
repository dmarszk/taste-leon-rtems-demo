/* This file was generated automatically: DO NOT MODIFY IT ! */

/* Declaration of the functions that have to be provided by the user */

#ifndef __USER_CODE_H_leon_oc_can__
#define __USER_CODE_H_leon_oc_can__

#include "C_ASN1_Types.h"

#ifdef __cplusplus
extern "C" {
#endif

void leon_oc_can_startup();

void leon_oc_can_PI_txCanFrame(const asn1SccCAN_Frame *);

void leon_oc_can_PI_tick();

extern void leon_oc_can_RI_rxCanFrame(const asn1SccCAN_Frame *);

#ifdef __cplusplus
}
#endif


#endif
