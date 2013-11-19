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
#ifndef SYSTEM_H_
#define SYSTEM_H_

#include "derivative.h"
#include "stdio.h"
#include "DataTypes.h"
#include "arm_cm4.h"
#include "BoardSupport.h"
#include "FlexTimer.h"
#include "I2S.h"
#include "SysTick.h"
#include "Clock.h"
#include "adc16.h"
#include "DAC12.h"
#include "MathTables.h"
#include "stdio.h"
#include "Serial.h"
#include "TSS_API.h"
#include "Terminal.h"
#include "string.h"
#include "arm_math.h"
#include "Effects.h"
#include "kinetis_sysinit.h"
#include "Overdrive.h"
#include "PickupTranslator.h"
#include "Filters.h"
#include "AudioProcess.h"


extern BYTE SystemState;

#define SYSTEM_STATE_TEST	0x00


#define NUM_PATCHES			6
#define PATCH_ALPHA 		0
#define PATCH_BETA			1
#define PATCH_GAMMA			2
#define PATCH_DELTA			3
#define PATCH_PASS_THROUGH	4
#define PATCH_SINE_TEST		5

extern BYTE CurrentPatch;
extern BOOL MuteActive;

#define WHEEL_GREEN		0
#define WHEEL_YELLOW	1

extern BYTE CurrentWheel;

extern BYTE WheelCount[NUM_PATCHES][2];

void LoadPatch(BYTE NewPatch);
void EnterSystemState(BYTE NextState);
void AnimateLEDs();

#define SIGNAL_IN_MAX	(q31_t)((1<<23)-1)
#define SIGNAL_IN_MIN	(q31_t)(-1*((1<<23)-1))

#define NUM_GP_TIMERS 8
extern WORD GPTimer[NUM_GP_TIMERS];


#define POT_UPDATE_TIMER				GPTimer[0]
#define YELLOW_WHEEL_ANIMATION_TIMER	GPTimer[1]
#define GREEN_WHEEL_ANIMATION_TIMER		GPTimer[2]
#define MUTE_ANIMATION_TIMER			GPTimer[3]

#define ANIMATION_STATE_FORWARD			0 
#define ANIMATION_STATE_BACKWARD		1
#define ANIMATION_STATE_HOLD			2
#define ANIMATION_STATE_VALUE_CHANGING	3

extern BYTE YellowAnimationState;
extern BYTE YellowAnimationOffset;
extern BYTE YellowHoldTick;
extern BYTE YellowNextAnimationDirection;

extern BYTE GreenAnimationState;
extern BYTE GreenAnimationOffset;
extern BYTE GreenHoldTick;
extern BYTE GreenNextAnimationDirection;

#pragma define_section relocate_code ".relocate_code" ".relocate_code" ".relocate_code" far_abs RX
//#pragma define_section relocate_code ".relocate_code" ".relocate_code" ".relocate_code" abs32 RX
//#pragma define_section relocate_code ".relocate_code" far_absolute RX
#define __relocate_code__   __declspec(relocate_code)


#endif /* SYSTEM_H_ */
