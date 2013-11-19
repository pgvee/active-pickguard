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

void InitGPIO()
{
	 //To use a GPIO Port, its Clock must be enabled!!
	 //Lets just enable the clocks for ALL of the ports
	
	 SIM_SCGC5 = SIM_SCGC5_PORTA_MASK | SIM_SCGC5_PORTB_MASK | SIM_SCGC5_PORTC_MASK | SIM_SCGC5_PORTD_MASK | SIM_SCGC5_PORTE_MASK;
	//Important!  Each IO pin has a dedicated 32-bit Register to set it up (Selection GPIO vs peripheral, IRQ, Etc.)
    //Setup port C7,C8,C9 and B11 as GPIO and enable High Drive Strength
	 
	 //Most of the touch sense inputs are OK with default settings buyt TSI0_CH0 needs to be put top ALT0 to get the TSI input
	 PORTA_PCR4  = PORT_PCR_MUX(0) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
	      
	 
     PORTA_PCR5  = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR6  = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR9  = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR10 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR11 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR12 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR13 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR14 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR15 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR16 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR24 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR25 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR26 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR27 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR28 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTA_PCR29 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
   
     PORTB_PCR8 =  PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTB_PCR9 =  PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTB_PCR20 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTB_PCR21 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTB_PCR22 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
     PORTB_PCR23 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin
    
     PORTE_PCR9 = PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK;   //Enable GPIO on on the pin

              
     
   //Make Sure the GPIO is setup to be an output
     GPIOA_PDDR |=   LED_R0_LOC | 
				   LED_R1_LOC | 
				   LED_R2_LOC | 
				   LED_R3_LOC | 
				   LED_G0_LOC | 
				   LED_Y7_LOC | 
				   LED_G1_LOC | 
				   LED_Y6_LOC | 
				   LED_G2_LOC | 
				   LED_Y5_LOC | 
				   LED_G3_LOC | 
				   LED_G4_LOC | 
				   LED_Y4_LOC | 
				   LED_Y3_LOC | 
				   LED_G5_LOC | 
				   LED_Y2_LOC;

     GPIOB_PDDR |=   LED_G6_LOC | 
 				   LED_Y1_LOC | 
 				   LED_G7_LOC | 
 				   LED_Y0_LOC | 
 				   LED_R4_LOC | 
 				   LED_R5_LOC;
     
     GPIOE_PDDR |= AES3_TRANSMITTER_RESET_LOC;// |
				  // DIGITAL_POT_CS_LOC;
 		
     
     
	LED_G0_OFF;
	LED_G1_OFF;
	LED_G2_OFF;
	LED_G3_OFF;
	LED_G4_OFF;
	LED_G5_OFF;
	LED_G6_OFF;
	LED_G7_OFF;
	
	LED_Y0_OFF;
	LED_Y1_OFF;
	LED_Y2_OFF;
	LED_Y3_OFF;
	LED_Y4_OFF;
	LED_Y5_OFF;
	LED_Y6_OFF;
	LED_Y7_OFF;
	
	LED_R0_OFF;
	LED_R1_OFF;
	LED_R2_OFF;
	LED_R3_OFF;
	LED_R4_OFF;
	LED_R5_OFF;
	
	AES3_TRANSMITTER_RESET_INACTIVE;
	//DIGITAL_POT_CS_INACTIVE;
}

void SetGreenWheelLEDs(BYTE Val)
{
	if(Val&(1<<0))
		LED_G0_ON;
	else
		LED_G0_OFF;
	
	if(Val&(1<<1))
			LED_G1_ON;
		else
			LED_G1_OFF;
	
	if(Val&(1<<2))
			LED_G2_ON;
		else
			LED_G2_OFF;
	
	if(Val&(1<<3))
			LED_G3_ON;
		else
			LED_G3_OFF;
	
	if(Val&(1<<4))
			LED_G4_ON;
		else
			LED_G4_OFF;
	
	if(Val&(1<<5))
			LED_G5_ON;
		else
			LED_G5_OFF;
	
	if(Val&(1<<6))
			LED_G6_ON;
		else
			LED_G6_OFF;
	
	if(Val&(1<<7))
				LED_G7_ON;
			else
				LED_G7_OFF;
}

void SetYellowWheelLEDs(BYTE Val)
{
	if(Val&(1<<7))
		LED_Y0_ON;
	else
		LED_Y0_OFF;
	
	if(Val&(1<<6))
			LED_Y1_ON;
		else
			LED_Y1_OFF;
	
	if(Val&(1<<5))
			LED_Y2_ON;
		else
			LED_Y2_OFF;
	
	if(Val&(1<<4))
			LED_Y3_ON;
		else
			LED_Y3_OFF;
	
	if(Val&(1<<3))
			LED_Y4_ON;
		else
			LED_Y4_OFF;
	
	if(Val&(1<<2))
			LED_Y5_ON;
		else
			LED_Y5_OFF;
	
	if(Val&(1<<1))
			LED_Y6_ON;
		else
			LED_Y6_OFF;
	
	if(Val&(1<<0))
				LED_Y7_ON;
			else
				LED_Y7_OFF;
}

