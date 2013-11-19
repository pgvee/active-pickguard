/******************************************************************************
 *
 * Freescale Semiconductor Inc.
 * (c) Copyright 2004-2010 Freescale Semiconductor, Inc.
 * ALL RIGHTS RESERVED.
 *
 **************************************************************************//*!
 *
 * @file virtual_com.c
 *
 * @author
 *
 * @version
 *
 * @date May-28-2009
 *
 * @brief  The file emulates a USB PORT as Loopback Serial Port.
 *****************************************************************************/

/******************************************************************************
 * Includes
 *****************************************************************************/
#include "derivative.h"     /* include peripheral declarations */
#include "types.h"          /* Contains User Defined Data Types */
#include "usb_cdc.h"        /* USB CDC Class Header File */
#include "System.h"
#include "virtual_com.h"    /* Virtual COM Application Header File */
#include <stdio.h>

#if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
#include "exceptions.h"
#endif

/* skip the inclusion in dependency state */
#ifndef __NO_SETJMP
#include <stdio.h>
#endif
#include <stdlib.h>
#include <string.h>




/* Receive Buffer */
static uint_8 g_curr_recv_buf[DATA_BUFF_SIZE];
/* Receive Data Size */
static uint_8 g_recv_size;

/*****************************************************************************
 * Constant and Macro's - None
 *****************************************************************************/

/*****************************************************************************
 * Global Functions Prototypes
 *****************************************************************************/
void TestApp_Init(void);

/****************************************************************************
 * Global Variables
 ****************************************************************************/
/*****************************************************************************
 * Local Types - None
 *****************************************************************************/

/*****************************************************************************
 * Local Functions Prototypes
 *****************************************************************************/
static void USB_App_Callback(uint_8 controller_ID,
                        uint_8 event_type, void* val);
static void USB_Notify_Callback(uint_8 controller_ID,
                        uint_8 event_type, void* val);
/*****************************************************************************
 * Local Variables
 *****************************************************************************/
#ifdef _MC9S08JS16_H
#pragma DATA_SEG APP_DATA
#endif
/* Virtual COM Application start Init Flag */
static volatile boolean start_app = FALSE;
/* Virtual COM Application Carrier Activate Flag */
static volatile boolean start_transactions = FALSE;
/* Send Buffer */
static uint_8 g_curr_send_buf[DATA_BUFF_SIZE];
/* Send Data Size */
static uint_8 g_send_size;
/*****************************************************************************
 * Local Functions
 *****************************************************************************/
 /******************************************************************************
 *
 *   @name        TestApp_Init
 *
 *   @brief       This function is the entry for the Virtual COM Loopback app
 *
 *   @param       None
 *
 *   @return      None
 *****************************************************************************
 * This function starts the Virtual COM Loopback application
 *****************************************************************************/

void cdc_Init(void)
{
    uint_8   error;

    g_send_size= 0;

    DisableInterrupts;		
    #if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
     usb_int_dis();
    #endif
    /* Initialize the USB interface */
    error = USB_Class_CDC_Init(CONTROLLER_ID,USB_App_Callback,
                                NULL,USB_Notify_Callback);
    if(error != USB_OK)
    {
        /* Error initializing USB-CDC Class */
    	EnableInterrupts;
        return;
    }
    EnableInterrupts;
	#if (defined _MCF51MM256_H) || (defined _MCF51JE256_H)
     usb_int_en();
    #endif
}


/******************************************************************************
 *
 *   @name        TestApp_Task
 *
 *   @brief       Application task function. It is called from the main loop
 *
 *   @param       None
 *
 *   @return      None
 *
 *****************************************************************************
 * Application task function. It is called from the main loop
 *****************************************************************************/
void cdc_process(void)
{
    static uint_8 status 	 = 0;
    uint_8 		  sem_status = 0;
	uint_8 size = 0;
	
    /*check whether enumeration is complete or not */
     if((start_app==TRUE) && (start_transactions==TRUE))
     {	
		 while(BytesInQueue(&TERMINAL_OUT_QUEUE)>0 && (size<DATA_BUFF_SIZE-1))
    	{
    	 	ByteDequeue(&TERMINAL_OUT_QUEUE,&g_curr_send_buf[size]);
    	 	size++;
    	}
    	 
		if(size>0) 
		{
			status = USB_Class_CDC_Interface_DIC_Send_Data(CONTROLLER_ID, g_curr_send_buf,size);
			if(status != USB_OK)
			        {
			            /* Send Data Error Handling Code goes here */
			        }
		}
        		
     }
}
	

uint_8 GetStart_transactions(void)
{
	return (start_transactions);
}




/*****************************************************************************
* Name:
*    cdc_putch
* In:
*    c: character to be sent
* Out:
*    0: output is busy, character dropped
*    1: character buffered and will be sent later.
*
* Description:
*    Put one character into tx_buffer.
*
* Assumptions:
*    --
*****************************************************************************/
unsigned char cdc_putch(char c)
{
 // uint_8 r=(unsigned char)c;
  ///* Store character into current buffer. */
  //if (g_send_size < sizeof(g_curr_send_buf))
 // {
//	g_curr_send_buf[g_send_size++]=(unsigned char)c;
 //   if (c == '\r')
  //  {
   //   cdc_process();
    //}	
 // }
 // else
 // {
   // cdc_process();
   // r++;
 // }
 // return((uint_8)r);
}



/******************************************************************************
 *
 *    @name        USB_App_Callback
 *
 *    @brief       This function handles Class callback
 *
 *    @param       controller_ID    : Controller ID
 *    @param       event_type       : Value of the event
 *    @param       val              : gives the configuration value
 *
 *    @return      None
 *
 *****************************************************************************
 * This function is called from the class layer whenever reset occurs or enum
 * is complete. After the enum is complete this function sets a variable so
 * that the application can start.
 * This function also receives DATA Send and RECEIVED Events
 *****************************************************************************/

static void USB_App_Callback (
    uint_8 controller_ID,   /* [IN] Controller ID */
    uint_8 event_type,      /* [IN] value of the event */
    void* val               /* [IN] gives the configuration value */
)
{
    UNUSED (controller_ID)
    UNUSED (val)
    if(event_type == USB_APP_BUS_RESET)
    {
        start_app=FALSE;
    }
    else if(event_type == USB_APP_ENUM_COMPLETE)
    {
        start_app=TRUE;
    }
    else if((event_type == USB_APP_DATA_RECEIVED)&&
            (start_transactions == TRUE))
    {
        /* Copy Received Data buffer to Application Buffer */
        USB_PACKET_SIZE BytesToBeCopied;
        APP_DATA_STRUCT* dp_rcv = (APP_DATA_STRUCT*)val;
        uint_8 index;
        BytesToBeCopied = (USB_PACKET_SIZE)((dp_rcv->data_size > DATA_BUFF_SIZE) ?
                                      DATA_BUFF_SIZE:dp_rcv->data_size);
       
        for(index = 0; index<BytesToBeCopied ; index++)
        {            
        	ByteEnqueue(&TERMINAL_IN_QUEUE,dp_rcv->data_ptr[index]);
        	//if (OSQueuePost(USB, dp_rcv->data_ptr[index]) == BUFFER_UNDERRUN)
        	//{
        	  // Problema: Estouro de buffer
        	//  OSCleanQueue(USB);
        	//}        	
        }
    }
    else if((event_type == USB_APP_SEND_COMPLETE) && (start_transactions == TRUE))
    {
        /* Previous Send is complete. Queue next receive */
        (void)USB_Class_CDC_Interface_DIC_Recv_Data(CONTROLLER_ID, NULL, 0);
	   
    }

    return;
}

/******************************************************************************
 *
 *    @name        USB_Notify_Callback
 *
 *    @brief       This function handles PSTN Sub Class callbacks
 *
 *    @param       controller_ID    : Controller ID
 *    @param       event_type       : PSTN Event Type
 *    @param       val              : gives the configuration value
 *
 *    @return      None
 *
 *****************************************************************************
 * This function handles USB_APP_CDC_CARRIER_ACTIVATED and
 * USB_APP_CDC_CARRIER_DEACTIVATED PSTN Events
 *****************************************************************************/

static void USB_Notify_Callback (
    uint_8 controller_ID,   /* [IN] Controller ID */
    uint_8 event_type,      /* [IN] PSTN Event Type */
    void* val               /* [IN] gives the configuration value */
)
{
    UNUSED (controller_ID)
    UNUSED (val)
    if(start_app == TRUE)
    {
        if(event_type == USB_APP_CDC_CARRIER_ACTIVATED)
        {
            start_transactions = TRUE;
        }
        else if(event_type == USB_APP_CDC_CARRIER_DEACTIVATED)
        {
            start_transactions = FALSE;
        }
    }
    return;
}

void usb_init(void)
{
	/* MPU Configuration */
	MPU_CESR=0;                            // MPU is disable. All accesses from all bus masters are allowed
	
	/* NVIC Configuration */
	NVICISER2 |= (1<<9);                     //Enable interrupts from USB module  
	
	// PLL/FLL selected as CLK source
	SIM_CLKDIV2|=0x02;              	   // USB Freq Divider
	
	SIM_SCGC4|=(SIM_SCGC4_USBOTG_MASK);             // USB Clock Gating
	SIM_SOPT2  |= SIM_SOPT2_USBSRC_MASK | SIM_SOPT2_PLLFLLSEL_MASK;
	SIM_SOPT1 |= SIM_SOPT1_USBREGEN_MASK | SIM_SOPT1_USBSTBY_MASK;
}

/* EOF */
