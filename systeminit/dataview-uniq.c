/*
Code automatically generated by asn1scc tool
*/
#include <limits.h>
#include <string.h>
#include <math.h>
#include "dataview-uniq.h"

#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccUART_String_Initialize(asn1SccUART_String* pVal)
{
    *pVal = (asn1SccUART_String) {
    {
        0x00
    }
};
}
#endif

 
flag asn1SccUART_String_IsConstraintValid(const asn1SccUART_String* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = (384 == 384);
	*pErrCode = ret ? 0 : ERR_asn1SccUART_String;

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccGPS_Status_Initialize(asn1SccGPS_Status* pVal)
{
    *pVal = (asn1SccGPS_Status) asn1Sccoffline;
}
#endif

 
flag asn1SccGPS_Status_IsConstraintValid(const asn1SccGPS_Status* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = (((*pVal == asn1Sccoffline) || (*pVal == asn1Sccno_position_fix)) || (*pVal == asn1Sccvalid_position_fix));
	*pErrCode = ret ? 0 : ERR_asn1SccGPS_Status;

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccCAN_Frame_data_Initialize(asn1SccCAN_Frame_data* pVal)
{
    *pVal = (asn1SccCAN_Frame_data) {
    {
        0x00
    }
};
}
#endif

 
flag asn1SccCAN_Frame_data_IsConstraintValid(const asn1SccCAN_Frame_data* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = (8 == 8);
	*pErrCode = ret ? 0 : ERR_asn1SccCAN_Frame_data;

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccLEON_UART_Configuration_baud_Initialize(asn1SccLEON_UART_Configuration_baud* pVal)
{
    *pVal = (asn1SccLEON_UART_Configuration_baud) 0;
}
#endif

 
flag asn1SccLEON_UART_Configuration_baud_IsConstraintValid(const asn1SccLEON_UART_Configuration_baud* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = (*pVal <= 921600);
	*pErrCode = ret ? 0 : ERR_asn1SccLEON_UART_Configuration_baud;

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccLEON_UART_Configuration_console_id_Initialize(asn1SccLEON_UART_Configuration_console_id* pVal)
{
    *pVal = (asn1SccLEON_UART_Configuration_console_id) 0;
}
#endif

 
flag asn1SccLEON_UART_Configuration_console_id_IsConstraintValid(const asn1SccLEON_UART_Configuration_console_id* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = (*pVal <= 9);
	*pErrCode = ret ? 0 : ERR_asn1SccLEON_UART_Configuration_console_id;

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccLEON_UART_Configuration_Initialize(asn1SccLEON_UART_Configuration* pVal)
{
    *pVal = (asn1SccLEON_UART_Configuration) {
    .console_id = 0,
    .baud = 0
};
}
#endif

 
flag asn1SccLEON_UART_Configuration_IsConstraintValid(const asn1SccLEON_UART_Configuration* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = asn1SccLEON_UART_Configuration_console_id_IsConstraintValid(&pVal->console_id, pErrCode);
	if (ret) {
	    ret = asn1SccLEON_UART_Configuration_baud_IsConstraintValid(&pVal->baud, pErrCode);
	
	}

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccT_Int32_Initialize(asn1SccT_Int32* pVal)
{
    *pVal = (asn1SccT_Int32) -2147483648LL;
}
#endif

 
flag asn1SccT_Int32_IsConstraintValid(const asn1SccT_Int32* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = (-2147483648LL <= *pVal && *pVal <= 2147483647LL);
	*pErrCode = ret ? 0 : ERR_asn1SccT_Int32;

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccT_UInt32_Initialize(asn1SccT_UInt32* pVal)
{
    *pVal = (asn1SccT_UInt32) 0;
}
#endif

 
flag asn1SccT_UInt32_IsConstraintValid(const asn1SccT_UInt32* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = (*pVal <= 4294967295LL);
	*pErrCode = ret ? 0 : ERR_asn1SccT_UInt32;

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccT_Int8_Initialize(asn1SccT_Int8* pVal)
{
    *pVal = (asn1SccT_Int8) -128;
}
#endif

 
flag asn1SccT_Int8_IsConstraintValid(const asn1SccT_Int8* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = (-128 <= *pVal && *pVal <= 127);
	*pErrCode = ret ? 0 : ERR_asn1SccT_Int8;

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccT_UInt8_Initialize(asn1SccT_UInt8* pVal)
{
    *pVal = (asn1SccT_UInt8) 0;
}
#endif

 
flag asn1SccT_UInt8_IsConstraintValid(const asn1SccT_UInt8* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = (*pVal <= 255);
	*pErrCode = ret ? 0 : ERR_asn1SccT_UInt8;

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccCAN_Frame_Initialize(asn1SccCAN_Frame* pVal)
{
    *pVal = (asn1SccCAN_Frame) {
    .id = 0,
    .len = 0,
    .data = {
        {
            0x00
        }
    }
};
}
#endif

 
flag asn1SccCAN_Frame_IsConstraintValid(const asn1SccCAN_Frame* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = asn1SccT_UInt32_IsConstraintValid(&pVal->id, pErrCode);
	if (ret) {
	    ret = asn1SccT_UInt8_IsConstraintValid(&pVal->len, pErrCode);
	    if (ret) {
	        ret = asn1SccCAN_Frame_data_IsConstraintValid(&pVal->data, pErrCode);
	    
	    }
	}

	return ret;
}
#if !defined(_MSC_VER) || _MSC_VER >= 1800
void asn1SccT_Boolean_Initialize(asn1SccT_Boolean* pVal)
{
    *pVal = (asn1SccT_Boolean) FALSE;
}
#endif

 
flag asn1SccT_Boolean_IsConstraintValid(const asn1SccT_Boolean* pVal, int* pErrCode)
{
    
    flag ret = TRUE;
	*pErrCode=0;

	(void)pVal;

	ret = TRUE; *pErrCode = 0;

	return ret;
}

