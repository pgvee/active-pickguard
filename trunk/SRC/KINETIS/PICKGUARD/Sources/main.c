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
#include "stdint.h"

BYTE Data[512] = {0};

void main(void)
{
	
   int i;
	int (*InitClockLoc)();
	
	InitClock();
	InitGPIO();
	InitDigitalPot();
   	InitPickupTranslator();
	InitPickGuardTSS();
	InitTerminalUart();
	InitFlexTimer0();
	InitSysTick();
	InitTerminal();
	InitFilters();
	InitOctave();
	InitSystem();
	InitDAC12();
	InitADCs();
  	InitI2S();
  	//usb_init();
  	//cdc_Init();
 
	EnterSystemState(SYSTEM_STATE_TEST);
	
    for(;;)
    {
    
    	cdc_process();
    	switch(SystemState)
    	{
			default:
			case SYSTEM_STATE_TEST:
				ProcessTerminal();
				AnimateLEDs();
				TSS_Task();
			break;
    	
    	
    	}
   	}

}














































































