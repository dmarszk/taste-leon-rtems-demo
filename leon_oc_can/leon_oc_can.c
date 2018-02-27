/*
 * LEON OC CAN handler, based on Gaisler RCC sample rtems-occan.c
 * Test code based on rtems-occan.c can be enabled by setting GAISLER_SAMPLE to 1
**/

#if defined (__linux__) || defined (RTEMS412)
/*  We need GNU extensions, otherwise time types are messed up.
    These are Linux/RTEMS specific
 */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE 1
#endif /* _GNU_SOURCE */
#endif /* __linux__ || RTEMS412 */

#include "leon_oc_can.h"

#include <rtems.h>
#include <bsp.h>
#include <bsp/occan.h>

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <assert.h>
#include <string.h>
#include <unistd.h>

#define DEBUG (1)
#include <util/debug_printf.h>

#include "occan_lib.h"

#define GAISLER_SAMPLE 0

#if GAISLER_SAMPLE
rtems_name rx_task_name, tx_task_name;
rtems_id rx_task_id, tx_task_id;

static rtems_task rx_task(rtems_task_argument);
static rtems_task tx_task(rtems_task_argument);
#define GAISLER_ID 0x2000
#endif
static void leon_oc_can_setup(void);
static occan_t chan;
static uint8_t initialized = 0;

#define OCCAN_DEVICE_NAME "/dev/occan0"
#define OCCAN_SPEED (1000000)
#define OCCAN_DRV_RX_FIFO_LEN 512
#define OCCAN_DRV_TX_FIFO_LEN 64
#define OCCAN_BLOCKING_RX 0
#define OCCAN_BLOCKING_TX 0

void leon_oc_can_startup()
{
#if GAISLER_SAMPLE
  rtems_status_code status;
#endif
  printf("leon_oc_can_startup\n");
  if (!initialized)
  {
    leon_oc_can_setup();
    if (!chan)
    {
      return;
    }
#if GAISLER_SAMPLE
    rx_task_name = rtems_build_name( 'C', 'A', 'N', 'R' );
    tx_task_name = rtems_build_name( 'C', 'A', 'N', 'T' );
    status = rtems_task_create(
      rx_task_name, 1, RTEMS_MINIMUM_STACK_SIZE * 2,
      RTEMS_DEFAULT_MODES,
      RTEMS_DEFAULT_ATTRIBUTES, &rx_task_id
      );
    assert(status == RTEMS_SUCCESSFUL);

    status = rtems_task_create(
      tx_task_name, 1, RTEMS_MINIMUM_STACK_SIZE * 2,
      RTEMS_DEFAULT_MODES,
      RTEMS_DEFAULT_ATTRIBUTES, &tx_task_id
      );
    assert(status == RTEMS_SUCCESSFUL);

    /* Starting receiver first */
    status = rtems_task_start(rx_task_id, rx_task, 0);
    assert(status == RTEMS_SUCCESSFUL);
    status = rtems_task_start(tx_task_id, tx_task, 0);
    assert(status == RTEMS_SUCCESSFUL);
#endif
    initialized = 1;
  }
}

void leon_oc_can_PI_txCanFrame(const asn1SccCAN_Frame * IN_frame)
{
	CANMsg msg;
  if (!initialized)
    return;
  msg.extended = 1;
  msg.id = IN_frame->id;
  msg.rtr = 0;
	msg.sshot = 1;
	msg.len = IN_frame->len;
  memcpy(msg.data, IN_frame->data.arr, msg.len);
  occanlib_send_multiple(chan, &msg, 1);
}

void leon_oc_can_PI_tick()
{
  if (!initialized)
    return;
#if !(GAISLER_SAMPLE)
  int max;
  int rx_count;
	CANMsg msg;
  asn1SccCAN_Frame can_frame;
  
  max = OCCAN_DRV_RX_FIFO_LEN;
  while (max != 0)
  {
    rx_count = occanlib_recv_multiple(chan, &msg, 1);
    if (rx_count > 0)
    {
#if DEBUG
      print_msg(0, &msg);
#endif
      can_frame.id = msg.id;
      can_frame.len = msg.len;
      memcpy(can_frame.data.arr, msg.data, msg.len);
      leon_oc_can_RI_rxCanFrame(&can_frame);
      max--;
    }
    else if (rx_count < 0)
    {
      printf("leon_oc_can_PI_tick: ERROR - occanlib_recv_multiple ret = %d\n", rx_count);
      return;
    }
    else
    {
      // No data RXed
      return;
    }
  }
#endif
}

static void leon_oc_can_setup()
{
	/* set up
	 *  - Speed
	 *  - Buffer length
	 *  - no Filter
	 *  - blocking mode
	 */
	struct occan_afilter afilt;
	chan = occanlib_open(OCCAN_DEVICE_NAME);
	if ( !chan ){
		printf("leon_oc_can_setup: Failed to open device %s\n", OCCAN_DEVICE_NAME);
		return;
	}

	debug_printf("leon_oc_can_setup: Setting speed\n");
	occanlib_set_speed(chan, OCCAN_SPEED);
  //occanlib_set_btrs(chan,BTR0,BTR1);

	debug_printf("leon_oc_can_setup: Setting buf len\n");
	occanlib_set_buf_length(chan,OCCAN_DRV_RX_FIFO_LEN,OCCAN_DRV_TX_FIFO_LEN);

	/* Set filter to accept all */
	afilt.single_mode = 1;
	afilt.code[0] = 0x00;
	afilt.code[1] = 0x00;
	afilt.code[2] = 0x00;
	afilt.code[3] = 0x00;
	afilt.mask[0] = 0xff; /* don't care */
	afilt.mask[1] = 0xff;
	afilt.mask[2] = 0xff;
	afilt.mask[3] = 0xff;
	occanlib_set_filter(chan,&afilt);

	/* RX+TX blocking mode */
	debug_printf("leon_oc_can_setup: Setting blk mode\n");
	occanlib_set_blocking_mode(chan, OCCAN_BLOCKING_RX, OCCAN_BLOCKING_TX);

	/* Start link */
	debug_printf("leon_oc_can_setup: start adapter\n");
	occanlib_start(chan);
}

#if GAISLER_SAMPLE
static rtems_task tx_task(rtems_task_argument task_arg)
{
	CANMsg msgs[3];
	int i=0,j=0,left,sent;
	occan_stats stats;

	debug_printf("leon_oc_can tx_task: Starting\n");


	debug_printf("leon_oc_can tx_task: Entering TX loop\n");
	while(1){
		/* Send 1 STD Message */
		msgs[0].extended = 0;
		msgs[0].rtr = 0;
		msgs[0].sshot = 0;
		msgs[0].id = 10+i;
		msgs[0].len = 4 + (i&1);
		msgs[0].data[0] = 0x2;
		msgs[0].data[1] = 0xc4;
		msgs[0].data[2] = 0x4f;
		msgs[0].data[3] = 0xf2;
		msgs[0].data[4] = 0x23;

		debug_printf("leon_oc_can tx_task: sending 1 STD msg\n");
		occanlib_send(chan,&msgs[0]);

		/* Send 3 EXT Message */
		msgs[0].extended = 1;
		msgs[0].rtr = 0;
		msgs[0].sshot = 0;
		msgs[0].id = 10+i;
		msgs[0].len = 4 + (i&1);
		msgs[0].data[0] = 0x2;
		msgs[0].data[1] = 0xc4;
		msgs[0].data[2] = 0x4f;
		msgs[0].data[3] = 0xf2;
		msgs[0].data[4] = 0x23;

		msgs[1].extended = 1;
		msgs[1].rtr = 0;
		msgs[1].sshot = 0;
		msgs[1].id = 10+i;
		msgs[1].len = 8;
		msgs[1].data[0] = 0xaa;
		msgs[1].data[1] = 0xbb;
		msgs[1].data[2] = 0x11;
		msgs[1].data[3] = 0x22;
		msgs[1].data[4] = 'U';
		msgs[1].data[5] = 0x12;
		msgs[1].data[6] = 0xff;
		msgs[1].data[7] = 0x00;

		msgs[2].extended = 1;
		msgs[2].rtr = 0;
		msgs[2].sshot = 0;
		msgs[2].id = (10+i) | ID_GAISLER;
		msgs[2].len = 7;
		msgs[2].data[0] = 'G';
		msgs[2].data[1] = 'a';
		msgs[2].data[2] = 'i';
		msgs[2].data[3] = 's';
		msgs[2].data[4] = 'l';
		msgs[2].data[5] = 'e';
		msgs[2].data[6] = 'r';

	  /* Send 3 EXT Messages */
		debug_printf("leon_oc_can tx_task: sending 3 EXT msg\n");
		left = 3;
		while ( left > 0 ){
			sent = occanlib_send_multiple(chan,&msgs[3-left],left);
			if ( sent < 0 ){
				debug_printf("leon_oc_can tx_task: Error, aborting 3 EXT sending\n");
			}else{
				left -= sent;
			}
		}

		j++;

		if ( (j & 0x1f) == 0x1f ){
			debug_printf("---------------- leon_oc_can tx_task: Printing Stats --------------\n");
			if ( !occanlib_get_stats(chan,&stats) ){
				occanlib_stats_print(&stats);
			}
			debug_printf("---------------- leon_oc_can tx_task: done Printing  --------------\n");
		}


		/* pause for 1 sec */
		sleep(1);
		i++;
		if ( i>240 )
			i=0;
	}
}


static rtems_task rx_task(rtems_task_argument task_arg)
{
	CANMsg msgs[3];
	int i,cnt,msgcnt;

	debug_printf("leon_oc_can rx_task: Starting\n");

	msgcnt=0;
	debug_printf("leon_oc_can rx_task: Entering rx loop\n");
	while(1){
		/* blocking read */
		cnt = occanlib_recv_multiple(chan,msgs,3);
		if ( cnt > 0 ){
			debug_printf("leon_oc_can rx_task: Got %d messages\n",cnt);
			for(i=0; i<cnt; i++){
				if ( msgs[i].id & ID_GAISLER ){
					debug_printf("----- GAISLER MESSAGE -----\n");
				}
				print_msg(msgcnt,&msgs[i]);
				if ( msgs[i].id & ID_GAISLER ){
					debug_printf("---------------------------\n");
				}
				msgcnt++;
			}
		}else if ( cnt < 0) {
			debug_printf("leon_oc_can rx_task: Experienced RX error\n");
		}else{
			/* if in non-blocking mode we work with other stuff here */
			debug_printf("leon_oc_can rx_task: waiting 1s\n");
			sleep(1);
		}
	}
}
#endif

