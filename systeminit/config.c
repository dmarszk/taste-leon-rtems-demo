/*
 * RTEMS drivers configuration
**/
#if defined (__linux__) || defined (RTEMS412)
/*  We need GNU extensions, otherwise time types are messed up.
    These are Linux/RTEMS specific
 */
#ifndef _GNU_SOURCE
#define _GNU_SOURCE 1
#endif /* _GNU_SOURCE */
#endif /* __linux__ || RTEMS412 */

#define CONFIGURE_INIT
#define CONFIGURE_DRIVER_AMBAPP_GAISLER_GPTIMER
#define CONFIGURE_DRIVER_AMBAPP_GAISLER_APBUART
#define CONFIGURE_DRIVER_AMBAPP_GAISLER_OCCAN   /* OCCAN Driver */
#include <drvmgr/drvmgr_confdefs.h>


/* UART ports settings */
#include <drvmgr/ambapp_bus.h>
/* APBUART0 */
struct drvmgr_key grlib_drv_res_apbuart0[] =
{
  /* Polled mode of syscon */
  {"mode", DRVMGR_KT_INT, {(unsigned int)0}},
  {"syscon", DRVMGR_KT_INT, {(unsigned int)1}},
  DRVMGR_KEY_EMPTY
};
/* APBUART1 */
struct drvmgr_key grlib_drv_res_apbuart1[] =
{
  /* IRQ mode of peripheral UART */
  {"mode", DRVMGR_KT_INT, {(unsigned int)1}},
  {"syscon", DRVMGR_KT_INT, {(unsigned int)0}},
  DRVMGR_KEY_EMPTY
};
/* LEON3 System with driver configuration for 2 APBUARTs, the
* the rest of the AMBA device drivers use their defaults.
*
* grlib_drv_resources overrides weak pointer in the LEON3 BSP
*/
struct drvmgr_bus_res grlib_drv_resources =
{
  .next = NULL,
  .resource = {
    {DRIVER_AMBAPP_GAISLER_APBUART_ID, 0, &grlib_drv_res_apbuart0[0]},
    {DRIVER_AMBAPP_GAISLER_APBUART_ID, 1, &grlib_drv_res_apbuart1[0]},
    DRVMGR_RES_EMPTY
  }
};

/* Set default debug UART assignment.
* 0 = Default APBUART. APBUART[0], but on MP system CPU0=APBUART0,
*     CPU1=APBUART1...
* 1 = APBUART[0]
* 2 = APBUART[1]
* 3 = APBUART[2]
* ...
*/
int debug_uart_index = 1;