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


//The digital pot is connected to the SPI1 hardware
void InitDigitalPot()
{
	//Enable the Clock to the SPI unit
	SIM_SCGC6 |= SIM_SCGC6_SPI1_MASK;
	
	//Enable the SPI signals to Port E 0,1,2
	 PORTE_PCR0 = PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;   //Enable PCS1 on on the pin
	 PORTE_PCR1 = PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;   //Enable SOUT on on the pin
	 PORTE_PCR2 = PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;   //Enable SCK on on the pin
	 	      
	//Reset the module
	 SPI1_MCR = SPI_MCR_HALT_MASK;
	 SPI1_MCR |= SPI_MCR_MSTR_MASK; //  Master mode
	 SPI1_MCR |= SPI_MCR_PCSIS(0x2F); //Inactive state of the Chip Selects is High
	 
	 SPI1_CTAR0 = SPI_CTAR_FMSZ(7) | //8-bit frame site (register has to be one less than actual value
	
				  SPI_CTAR_PBR(2);   //Baud rate prescale is set to 7
	 
	 //Start the PSI Module
	 SPI1_MCR &= ~SPI_MCR_HALT_MASK;
}		

void SetDigitalPot(BYTE Val)
{
	SPI1_PUSHR = Val | SPI_PUSHR_PCS(0x02);
}

