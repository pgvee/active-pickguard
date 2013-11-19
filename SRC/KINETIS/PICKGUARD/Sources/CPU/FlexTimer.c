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

#define FTM0_CLK_PRESCALE			6
#define FTM0_OVERFLOW_FREQUENCY 	100

void InitFlexTimer0()
{
	SIM_SCGC6 |= SIM_SCGC6_FTM0_MASK; //Enable the clock to the FTM0 module
	
	//turn off FTM write protection;
	FTM0_MODE |= FTM_MODE_WPDIS_MASK;
	
	FTM0_SC = 0; //Make sure its Off!
	//Edit registers when no clock is fed to timer so the MOD value, gets pushed in immediately

	FTM0_SC |= FTM_SC_PS(FTM0_CLK_PRESCALE); //divide the input clock down by 2^FTM0_CLK_PRESCALE
	FTM0_CNT = 0;	//reset the counter to zero
	FTM0_MOD = (PERIPHERAL_BUS_CLOCK/(1<<FTM0_CLK_PRESCALE))/FTM0_OVERFLOW_FREQUENCY ;  //Set the overflow rate
	FTM0_SC |= FTM_SC_TOIE_MASK; //Enable the interrupt mask.
	FTM0_SC |= FTM_SC_CLKS(1); //Select the System Clock
	enable_irq(62);

}

void FlexTimer0_Irq()
{
	
	BYTE i;
	
	for(i=0;i<NUM_GP_TIMERS;i++)
	{
		if(GPTimer[i] <0xFFFF)
			GPTimer[i]++;
	}
	
	//Clear the overflow mask if set
	if(FTM0_SC & FTM_SC_TOF_MASK)
		FTM0_SC &= ~FTM_SC_TOF_MASK;
	
}
