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

#include "Derivative.h"

#ifndef BOARDSUPPORT_H_
#define BOARDSUPPORT_H_

#define  LED_G0_LOC          (1<<11)
#define  LED_G1_LOC          (1<<13)
#define  LED_G2_LOC          (1<<15)
#define  LED_G3_LOC          (1<<24)
#define  LED_G4_LOC          (1<<25)
#define  LED_G5_LOC          (1<<28)
#define  LED_G6_LOC          (1<<8)
#define  LED_G7_LOC          (1<<20)

#define  LED_Y0_LOC          (1<<21)
#define  LED_Y1_LOC          (1<<9)
#define  LED_Y2_LOC          (1<<29)
#define  LED_Y3_LOC          (1<<27)
#define  LED_Y4_LOC          (1<<26)
#define  LED_Y5_LOC          (1<<16)
#define  LED_Y6_LOC          (1<<14)
#define  LED_Y7_LOC          (1<<12)

#define  LED_R0_LOC          (1<<5)
#define  LED_R1_LOC          (1<<6)
#define  LED_R2_LOC          (1<<9)
#define  LED_R3_LOC          (1<<10)
#define  LED_R4_LOC          (1<<22)
#define  LED_R5_LOC          (1<<23)

#define  LED_G0_OFF          GPIOA_PSOR=LED_G0_LOC
#define  LED_G1_OFF          GPIOA_PSOR=LED_G1_LOC
#define  LED_G2_OFF          GPIOA_PSOR=LED_G2_LOC
#define  LED_G3_OFF          GPIOA_PSOR=LED_G3_LOC
#define  LED_G4_OFF          GPIOA_PSOR=LED_G4_LOC
#define  LED_G5_OFF          GPIOA_PSOR=LED_G5_LOC
#define  LED_G6_OFF          GPIOB_PSOR=LED_G6_LOC
#define  LED_G7_OFF          GPIOB_PSOR=LED_G7_LOC

#define  LED_Y0_OFF          GPIOB_PSOR=LED_Y0_LOC
#define  LED_Y1_OFF          GPIOB_PSOR=LED_Y1_LOC
#define  LED_Y2_OFF          GPIOA_PSOR=LED_Y2_LOC
#define  LED_Y3_OFF          GPIOA_PSOR=LED_Y3_LOC
#define  LED_Y4_OFF          GPIOA_PSOR=LED_Y4_LOC
#define  LED_Y5_OFF          GPIOA_PSOR=LED_Y5_LOC
#define  LED_Y6_OFF          GPIOA_PSOR=LED_Y6_LOC
#define  LED_Y7_OFF          GPIOA_PSOR=LED_Y7_LOC

#define  LED_R0_OFF          GPIOA_PSOR=LED_R0_LOC
#define  LED_R1_OFF          GPIOA_PSOR=LED_R1_LOC
#define  LED_R2_OFF          GPIOA_PSOR=LED_R2_LOC
#define  LED_R3_OFF          GPIOA_PSOR=LED_R3_LOC
#define  LED_R4_OFF          GPIOB_PSOR=LED_R4_LOC
#define  LED_R5_OFF          GPIOB_PSOR=LED_R5_LOC


#define  LED_G0_ON          GPIOA_PCOR=LED_G0_LOC
#define  LED_G1_ON          GPIOA_PCOR=LED_G1_LOC
#define  LED_G2_ON          GPIOA_PCOR=LED_G2_LOC
#define  LED_G3_ON          GPIOA_PCOR=LED_G3_LOC
#define  LED_G4_ON          GPIOA_PCOR=LED_G4_LOC
#define  LED_G5_ON          GPIOA_PCOR=LED_G5_LOC
#define  LED_G6_ON          GPIOB_PCOR=LED_G6_LOC
#define  LED_G7_ON          GPIOB_PCOR=LED_G7_LOC

#define  LED_Y0_ON          GPIOB_PCOR=LED_Y0_LOC
#define  LED_Y1_ON          GPIOB_PCOR=LED_Y1_LOC
#define  LED_Y2_ON          GPIOA_PCOR=LED_Y2_LOC
#define  LED_Y3_ON          GPIOA_PCOR=LED_Y3_LOC
#define  LED_Y4_ON          GPIOA_PCOR=LED_Y4_LOC
#define  LED_Y5_ON          GPIOA_PCOR=LED_Y5_LOC
#define  LED_Y6_ON          GPIOA_PCOR=LED_Y6_LOC
#define  LED_Y7_ON          GPIOA_PCOR=LED_Y7_LOC

#define  LED_R0_ON          GPIOA_PCOR=LED_R0_LOC
#define  LED_R1_ON          GPIOA_PCOR=LED_R1_LOC
#define  LED_R2_ON          GPIOA_PCOR=LED_R2_LOC
#define  LED_R3_ON          GPIOA_PCOR=LED_R3_LOC
#define  LED_R4_ON          GPIOB_PCOR=LED_R4_LOC
#define  LED_R5_ON          GPIOB_PCOR=LED_R5_LOC

#define  LED_G0_TOGGLE          GPIOA_PTOR=LED_G0_LOC
#define  LED_G1_TOGGLE          GPIOA_PTOR=LED_G1_LOC
#define  LED_G2_TOGGLE          GPIOA_PTOR=LED_G2_LOC
#define  LED_G3_TOGGLE          GPIOA_PTOR=LED_G3_LOC
#define  LED_G4_TOGGLE          GPIOA_PTOR=LED_G4_LOC
#define  LED_G5_TOGGLE          GPIOA_PTOR=LED_G5_LOC
#define  LED_G6_TOGGLE          GPIOB_PTOR=LED_G6_LOC
#define  LED_G7_TOGGLE          GPIOB_PTOR=LED_G7_LOC

#define  LED_Y0_TOGGLE          GPIOB_PTOR=LED_Y0_LOC
#define  LED_Y1_TOGGLE          GPIOB_PTOR=LED_Y1_LOC
#define  LED_Y2_TOGGLE          GPIOA_PTOR=LED_Y2_LOC
#define  LED_Y3_TOGGLE          GPIOA_PTOR=LED_Y3_LOC
#define  LED_Y4_TOGGLE          GPIOA_PTOR=LED_Y4_LOC
#define  LED_Y5_TOGGLE          GPIOA_PTOR=LED_Y5_LOC
#define  LED_Y6_TOGGLE          GPIOA_PTOR=LED_Y6_LOC
#define  LED_Y7_TOGGLE          GPIOA_PTOR=LED_Y7_LOC

#define  LED_R0_TOGGLE          GPIOA_PTOR=LED_R0_LOC
#define  LED_R1_TOGGLE          GPIOA_PTOR=LED_R1_LOC
#define  LED_R2_TOGGLE          GPIOA_PTOR=LED_R2_LOC
#define  LED_R3_TOGGLE          GPIOA_PTOR=LED_R3_LOC
#define  LED_R4_TOGGLE          GPIOB_PTOR=LED_R4_LOC
#define  LED_R5_TOGGLE          GPIOB_PTOR=LED_R5_LOC

#define  AES3_TRANSMITTER_RESET_LOC				(1<<9)
#define  AES3_TRANSMITTER_RESET_ACTIVE          GPIOE_PCOR=AES3_TRANSMITTER_RESET_LOC
#define  AES3_TRANSMITTER_RESET_INACTIVE        GPIOE_PSOR=AES3_TRANSMITTER_RESET_LOC

#define  DIGITAL_POT_CS_LOC					(1<<0)
#define  DIGITAL_POT_CS_ACTIVE        		GPIOE_PCOR=DIGITAL_POT_CS_LOC
#define  DIGITAL_POT_CS_INACTIVE   			GPIOE_PCOR=DIGITAL_POT_CS_LOC

void SetYellowWheelLEDs(BYTE Val);
void SetGreenWheelLEDs(BYTE Val);

#endif /* BOARDSUPPORT_H_ */
