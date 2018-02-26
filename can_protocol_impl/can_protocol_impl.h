/* This file was generated automatically: DO NOT MODIFY IT ! */

/* Declaration of the functions that have to be provided by the user */

#ifndef __USER_CODE_H_can_protocol_impl__
#define __USER_CODE_H_can_protocol_impl__

#include "C_ASN1_Types.h"

#ifdef __cplusplus
extern "C" {
#endif

void can_protocol_impl_startup();

void can_protocol_impl_PI_rxCanFrame(const asn1SccCAN_Frame *);

extern void can_protocol_impl_RI_txCanFrame(const asn1SccCAN_Frame *);

#ifdef __cplusplus
}
#endif


#endif
