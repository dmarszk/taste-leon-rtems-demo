/* Functions to be filled by the user (never overwritten by buildsupport tool) */

#include "leon_oc_can.h"

void init_leon_oc_can()
{
	/* Write your initialization code here,
	   but do not make any call to a required interface!! */
}

void leon_oc_can_txCanFrame(void *IN_frame, size_t size_IN_frame)
{
	/*
	 * Write your code here! 
	 * Note: the parameters are encoded following the rules you specified
	 * in the interface view (Native, uPER, or ACN).
	 */
}

void leon_oc_can_tick()
{
	/*
	 * Write your code here! 
	 */
}

