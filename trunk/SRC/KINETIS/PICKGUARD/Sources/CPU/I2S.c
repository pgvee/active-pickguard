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

void InitI2S()
{
	SIM_SOPT2 &= ~(SIM_SOPT2_I2SSRC(0)); // Core System Clock for the I2S Module
	
	SIM_SCGC6 |= SIM_SCGC6_I2S_MASK; //Enable Clock to the I2S;
	
	
	
	//Route the I2S to the physical pins
	PORTE_PCR6 = PORT_PCR_MUX(4) 	| PORT_PCR_DSE_MASK; //MCLK
	PORTE_PCR10 = PORT_PCR_MUX(4)	| PORT_PCR_DSE_MASK; //TXD
	PORTE_PCR11 = PORT_PCR_MUX(4)	| PORT_PCR_DSE_MASK; //LRCLK
	PORTE_PCR12 =  PORT_PCR_MUX(4)	| PORT_PCR_DSE_MASK; //SCLK
	
	
	I2S0_CR = 0; // Reset the I2S Unit	
	
	I2S0_CR = I2S_CR_I2SMODE(1) | //Select true I2S Master Mode
			 I2S_CR_SYN_MASK | //Synchronous Mode
			 I2S_CR_TE_MASK  |//Enable the transmitter
			 I2S_CR_SYSCLKEN_MASK; //Put master clock on the port pin
	
	I2S0_TCR = I2S_TCR_TFDIR_MASK | I2S_TCR_TXDIR_MASK;
	I2S0_TCCR =  
			    I2S_TCCR_WL(0xB) | //24-bit valid bits out of 32 in the I2S mode
			    I2S_TCCR_PM(1) | //Prescaler Modulus
				I2S_TCCR_DC(1);
			
	//Enable Frame Sync IRQ
	I2S0_IER |= I2S_IER_TIE_MASK;
    enable_irq(INT_I2S0-16);
	I2S0_CR |= 0x01; //Enable the module (I2SEN Mask [0x01] is not in the header)
}

