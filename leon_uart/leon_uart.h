/* This file was generated automatically: DO NOT MODIFY IT ! */

/* Declaration of the functions that have to be provided by the user */

#ifndef __DRIVER_CODE_H_leon_uart__
#define __DRIVER_CODE_H_leon_uart__

#ifdef __unix__
    #include <stdlib.h>
#else
    typedef unsigned size_t;
#endif

void init_leon_uart();

void leon_uart_txUartBytes(void *, size_t, void *, size_t);

void leon_uart_tick();


/* Required interface "rxUartBytes" */
extern void vm_leon_uart_rxUartBytes(void *IN_buf, size_t IN_buf_size, void *IN_len, size_t IN_len_size);


#endif
