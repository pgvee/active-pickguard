/*
  
 __        __                                     _                 _     _      ____ 
 \ \      / /__ ___   _____ _ __  _   _ _ __ ___ | |__   ___ _ __  | |   | |    / ___|
  \ \ /\ / // _` \ \ / / _ \ '_ \| | | | '_ ` _ \| '_ \ / _ \ '__| | |   | |   | |    
   \ V  V /| (_| |\ V /  __/ | | | |_| | | | | | | |_) |  __/ |    | |___| |___| |___ 
    \_/\_/  \__,_| \_/ \___|_| |_|\__,_|_| |_| |_|_.__/ \___|_|    |_____|_____|\____|
                      
                   /|  
 ____       __   -- |     
(___ \      \ \    _|_    
  __) )______\ \            
 / __/(  __  )> \          
| |___ | || |/ ^ \        
|_____)|_||_/_/ \_\ 
                   
                   
Active Pickguard Firmware 

Copyright (C) <2011>  Eli Hughes 		ehughes@wavenumber.net

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>. 
                  
*/


#include "System.h"


#define PICKUP_TRANSLATOR_INPUT_BUFFER_SIZE		1024

static q31_t InputBuffer[PICKUP_TRANSLATOR_INPUT_BUFFER_SIZE];
static WORD  InPtr;

static BYTE PickupAperture = 1;
static WORD PickupPosition = 1;

void InitPickupTranslator()
{
	WORD i;
	
	for(i=0;i<PICKUP_TRANSLATOR_INPUT_BUFFER_SIZE;i++)
	{
		InputBuffer[i] = 0;
	}
	PickupPosition = 1;
	PickupAperture = 1;
	InPtr = 0;
}

void SetPickupAperture(BYTE Aperture)
{
	PickupAperture = Aperture;
}

void SetPickupPosition(BYTE Position)
{
	PickupPosition = Position;
}

q31_t GetPreviousSample(WORD i)
{
	return InputBuffer[((InPtr-i)&0x3FF)];
}


void PickupTranslator(q31_t *Input,q31_t *DataOut)
{

	WORD i;
	
	InPtr++;
	InPtr&=0x3FF;
	
	InputBuffer[InPtr] = *Input;
	
	*DataOut = *Input;
	
	for(i=PickupPosition;i<(PickupPosition+PickupAperture);i++)
	{
		*DataOut+= GetPreviousSample(i);
	}
	
	*DataOut = *DataOut/(PickupAperture+1);
	
}

void PickupTranslator_I(q31_t *Input,q31_t *DataOut)
{

	WORD i;
	q31_t Temp;
	
	for(i=PickupPosition;i<(PickupPosition+PickupAperture);i++)
	{
		Temp = GetPreviousSample(i);
		arm_scale_q31(&Temp,1<<(31-3),1,&Temp,1);
		*DataOut+= Temp;
	}
	*DataOut += *Input;
	*DataOut = *DataOut/(PickupAperture+1);
	
	InPtr++;
	InPtr&=0x1FFF;
	InputBuffer[InPtr] = *DataOut;
	
}


void PickupTranslator_S(q31_t *Input,q31_t *DataOut)
{

	WORD i;
	
	InPtr++;
	InPtr&=0x3FF;
	
	InputBuffer[InPtr] = *Input;
	
	*DataOut = *Input;
	
	for(i=0;i<(PickupAperture);i++)
	{
		*DataOut+= GetPreviousSample(PickupPosition + (i*PickupAperture));
	}
	
	*DataOut = *DataOut/(PickupAperture+1);
	
}


