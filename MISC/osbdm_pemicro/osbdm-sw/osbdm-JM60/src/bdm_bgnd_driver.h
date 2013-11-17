/* OSBDM-JM60 Target Interface Software Package
 * Copyright (C) 2009  Freescale
 *
 * This software package is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this software; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */



/*****************************************************************************\
*
*	Author:		Axiom Manufacturing
*
*	File:		bdm_bgnd_driver.h
*
*	Purpose: 	Header file for bdm_bgnd_driver.c file
*
*
* 03/08/2011  : Modified by P&E Microcomputer Systems
*               http://www.pemicro.com/osbdm
*
*
*
\*****************************************************************************/

#ifndef _BDM_BGND_DRIVER_H_
#define _BDM_BGND_DRIVER_H_

// BDM BGND driver API functions

void BgndInit (void);

void BgndProgPower (byte enable);

void BgndProgEnable (byte enable);

UINT16 BgndGetClock (void);

void BgndSetClock (UINT16 interval);

UINT16 BgndSync (void);

byte BgndReset (byte mode);

byte BgndAckSupported (void);

byte BgndResetDetect (void);

byte BgndClockState (void);

void BgndUnsecure (void);

byte BgndTxRx (	Pbyte  pTxData,
				Pbyte  pRxData,
				byte   TxCount,
				byte   RxCount);


byte BgndHigh(void);
byte BgndLow(void);
byte ResetHiz(void);
byte ResetLow(void);
byte BgndHiz(void);

#endif // _BDM_BGND_DRIVER_H_
// --------------------------------- EOF -------------------------------------
