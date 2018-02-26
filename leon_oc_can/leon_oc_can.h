/* This file was generated automatically: DO NOT MODIFY IT ! */

/* Declaration of the functions that have to be provided by the user */

#ifndef __DRIVER_CODE_H_leon_oc_can__
#define __DRIVER_CODE_H_leon_oc_can__

#ifdef __unix__
    #include <stdlib.h>
#else
    typedef unsigned size_t;
#endif

void init_leon_oc_can();

void leon_oc_can_txCanFrame(void *, size_t);

void leon_oc_can_tick();


/* Required interface "rxCanFrame" */
extern void vm_leon_oc_can_rxCanFrame(void *IN_frame, size_t IN_frame_size);


#endif
