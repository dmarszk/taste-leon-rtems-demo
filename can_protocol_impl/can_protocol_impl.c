/* User code: This file will not be overwritten by TASTE. */

#include "can_protocol_impl.h"
#include <stdint.h>

void can_protocol_impl_startup()
{
    /* Write your initialization code here,
       but do not make any call to a required interface. */
}

static uint32_t rx_count = 0;
void can_protocol_impl_PI_rxCanFrame(const asn1SccCAN_Frame * frame)
{
  rx_count++;
  printf("can_protocol_impl_PI_rxCanFrame: rx_count %d\n", rx_count);
  if (rx_count % 5 == 0)
  {
    printf("echo'ing frame...");
    can_protocol_impl_RI_txCanFrame(frame);
  }
}

