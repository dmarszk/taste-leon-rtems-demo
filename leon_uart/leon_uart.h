/* This file was generated automatically: DO NOT MODIFY IT ! */

/* Declaration of the functions that have to be provided by the user */

#ifndef __USER_CODE_H_leon_uart__
#define __USER_CODE_H_leon_uart__

#include "C_ASN1_Types.h"

#ifdef __cplusplus
extern "C" {
#endif

void leon_uart_startup();

void leon_uart_PI_txUartBytes(const asn1SccUART_String *,
                              const asn1SccT_UInt32 *);

void leon_uart_PI_tick();

extern void leon_uart_RI_rxUartBytes(const asn1SccUART_String *,
                                     const asn1SccT_UInt32 *);

#ifdef __cplusplus
}
#endif


#endif
