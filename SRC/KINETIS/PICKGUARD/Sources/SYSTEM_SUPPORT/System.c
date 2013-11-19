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

WORD GPTimer[NUM_GP_TIMERS];

BYTE SystemState = SYSTEM_STATE_TEST;
BOOL MuteActive = FALSE;
BYTE CurrentPatch = PATCH_ALPHA;
BYTE CurrentWheel = WHEEL_GREEN;
BYTE WheelCount[NUM_PATCHES][2] = {0};

BYTE YellowAnimationState =  ANIMATION_STATE_HOLD;
BYTE YellowAnimationOffset = 0;
BYTE YellowHoldTick = 0;
BYTE YellowNextAnimationDirection = 0;

BYTE GreenAnimationState =  ANIMATION_STATE_HOLD;
BYTE GreenAnimationOffset = 0;
BYTE GreenHoldTick = 0;
BYTE GreenNextAnimationDirection = 0;

BYTE MuteAnimationState = 0;

void InitSystem()
{
	YellowAnimationState =  ANIMATION_STATE_HOLD;
	CurrentWheel= WHEEL_GREEN;
	MuteActive = FALSE;
	SystemState = SYSTEM_STATE_TEST;
	CurrentPatch = PATCH_ALPHA;
	InhibitAudio = FALSE;
	
	WheelCount[PATCH_GAMMA][WHEEL_YELLOW] = 15;
	WheelCount[PATCH_DELTA][WHEEL_YELLOW] = 30;                   
	LoadPatch(CurrentPatch);
}
void EnterSystemState(BYTE NextState)
{
	switch(NextState)
	{
		default:
		case SYSTEM_STATE_TEST:
		
			SystemState = NextState;
		break;
	}
}


void AnimateLEDs()
{
	if(YELLOW_WHEEL_ANIMATION_TIMER >4)
	{
		YELLOW_WHEEL_ANIMATION_TIMER = 0;
		
		switch(YellowAnimationState)
		{
			default:
			case ANIMATION_STATE_VALUE_CHANGING:	
						
				YellowHoldTick++;
						if(YellowHoldTick>10)
						{
							YellowHoldTick = 0;
							YellowNextAnimationDirection++;
							if(YellowNextAnimationDirection&0x01)
								YellowAnimationState = ANIMATION_STATE_FORWARD;
							else
								YellowAnimationState = ANIMATION_STATE_BACKWARD;	
						}
			break;
			
			
			case ANIMATION_STATE_HOLD:
				YellowHoldTick++;
				if(YellowHoldTick>4)
				{
					YellowHoldTick = 0;
					YellowNextAnimationDirection++;
					if(YellowNextAnimationDirection&0x01)
						YellowAnimationState = ANIMATION_STATE_FORWARD;
					else
						YellowAnimationState = ANIMATION_STATE_BACKWARD;	
				}
				YellowAnimationOffset = 0;
				break;
				
			case ANIMATION_STATE_FORWARD:
				YellowAnimationOffset++;
				YellowAnimationOffset &=0x7;
				if(YellowAnimationOffset == 0)
					YellowAnimationState =  ANIMATION_STATE_HOLD;
			break;
				
			case ANIMATION_STATE_BACKWARD:
					YellowAnimationOffset--;
					YellowAnimationOffset &=0x7;
					if(YellowAnimationOffset == 0)
									YellowAnimationState =  ANIMATION_STATE_HOLD;
				break;
		}
	}
	
	
	if(GREEN_WHEEL_ANIMATION_TIMER >4)
		{
			GREEN_WHEEL_ANIMATION_TIMER = 0;
			
			switch(GreenAnimationState)
			{
				default:
				case ANIMATION_STATE_VALUE_CHANGING:	
							
					GreenHoldTick++;
							if(GreenHoldTick>10)
							{
								GreenHoldTick = 0;
								GreenNextAnimationDirection++;
								if(!(GreenNextAnimationDirection&0x01))
									GreenAnimationState = ANIMATION_STATE_FORWARD;
								else
									GreenAnimationState = ANIMATION_STATE_BACKWARD;	
							}
				break;
				
				
				case ANIMATION_STATE_HOLD:
					GreenHoldTick++;
					if(GreenHoldTick>4)
					{
						GreenHoldTick = 0;
						GreenNextAnimationDirection++;
						if(!(GreenNextAnimationDirection&0x01))
							GreenAnimationState = ANIMATION_STATE_FORWARD;
						else
							GreenAnimationState = ANIMATION_STATE_BACKWARD;	
					}
					GreenAnimationOffset = 0;
					break;
					
				case ANIMATION_STATE_FORWARD:
					GreenAnimationOffset++;
					GreenAnimationOffset &=0x7;
					if(GreenAnimationOffset == 0)
						GreenAnimationState =  ANIMATION_STATE_HOLD;
				break;
					
				case ANIMATION_STATE_BACKWARD:
						GreenAnimationOffset--;
						GreenAnimationOffset &=0x7;
						if(GreenAnimationOffset == 0)
							GreenAnimationState =  ANIMATION_STATE_HOLD;
					break;
			}
		}

	
	if(CurrentWheel == WHEEL_GREEN)
	{
		
		SetGreenWheelLEDs(1<<((WheelCount[CurrentPatch][WHEEL_GREEN]+GreenAnimationOffset)&0x7));
		SetYellowWheelLEDs(1<<((WheelCount[CurrentPatch][WHEEL_GREEN])&0x7) | 
						   1<<((WheelCount[CurrentPatch][WHEEL_GREEN]-1)&0x7)	
					       );
	}
	else
	{
		SetYellowWheelLEDs(1<<((WheelCount[CurrentPatch][WHEEL_YELLOW]+YellowAnimationOffset)&0x7));
		SetGreenWheelLEDs(1<<((WheelCount[CurrentPatch][WHEEL_YELLOW])&0x7) | 
						 1<<((WheelCount[CurrentPatch][WHEEL_YELLOW]+1)&0x7)	
						 );
	}
	
	switch(CurrentPatch)
	{
	    default:
				LED_R0_OFF;
				LED_R1_OFF;
				LED_R2_OFF;
				LED_R3_OFF;
			break;
		
		case PATCH_ALPHA:
				LED_R0_ON;
				LED_R1_ON;
				LED_R2_OFF;
				LED_R3_OFF;
				break;
				
		case PATCH_BETA:
				LED_R0_OFF;
				LED_R1_ON;
				LED_R2_ON;
				LED_R3_OFF;
				break;
				
		case PATCH_GAMMA:
				LED_R0_OFF;
				LED_R1_OFF;
				LED_R2_ON;
				LED_R3_ON;
				break;
				
		case PATCH_DELTA:
				LED_R0_ON;
				LED_R1_OFF;
				LED_R2_OFF;
				LED_R3_ON;
				break;
				
	
	}
	
	if(MuteActive == TRUE)
	{
		LED_R4_ON;
		LED_R5_ON;
	}
	else
	{
		if(MUTE_ANIMATION_TIMER>20)
		{
			MUTE_ANIMATION_TIMER = 0;
			MuteAnimationState++;
			MuteAnimationState&=0x3;
			
			switch(MuteAnimationState)
			{
			default:
			case 0:
					LED_R4_OFF;
					LED_R5_OFF;
				break;
			
			case 1:
					LED_R4_ON;
					LED_R5_OFF;
				break;
						
			case 2:
					LED_R4_OFF;
					LED_R5_ON;
				break;
						
			case 3:
					LED_R4_OFF;
					LED_R5_OFF;
				break;
			}
		}
	}
	
	
	if(POT_UPDATE_TIMER > 0)
	{
		GPTimer[0] = 0;
	//	SetDigitalPot(GreenWheelCount<<3);
	}
}

void LoadPatch(BYTE NewPatch)
{
	CurrentPatch= NewPatch;
	
	switch(NewPatch)
	{
		default:
		case PATCH_PASS_THROUGH:
		
		
		break;
		
			
		case PATCH_ALPHA:
			if(WheelCount[PATCH_ALPHA][WHEEL_GREEN]>31)
				WheelCount[PATCH_ALPHA][WHEEL_GREEN]=31;
			if(WheelCount[PATCH_ALPHA][WHEEL_YELLOW]>48)
							WheelCount[PATCH_ALPHA][WHEEL_YELLOW]=48;
			
			SetPickupPosition(WheelCount[PATCH_ALPHA][WHEEL_YELLOW]);
			SetPickupAperture(2);
			
			SetDigitalPot(WheelCount[PATCH_ALPHA][WHEEL_GREEN]<<3);
			
					break;
				
		case PATCH_BETA:
			if(WheelCount[PATCH_BETA][WHEEL_GREEN]>31)
						WheelCount[PATCH_BETA][WHEEL_GREEN]=31;
			if(WheelCount[PATCH_BETA][WHEEL_YELLOW]>48)
						WheelCount[PATCH_ALPHA][WHEEL_YELLOW]=48;
					
		
			SetPickupPosition(WheelCount[PATCH_BETA][WHEEL_YELLOW]);
						SetPickupAperture(2);
			SetDigitalPot(WheelCount[PATCH_BETA][WHEEL_GREEN]<<3);
								
					break;
				
		case PATCH_GAMMA:
				if(WheelCount[PATCH_GAMMA][WHEEL_YELLOW]>31)
						WheelCount[PATCH_GAMMA][WHEEL_YELLOW]=31;
				if(WheelCount[PATCH_GAMMA][WHEEL_GREEN]>31)
						WheelCount[PATCH_GAMMA][WHEEL_GREEN]=31;
	
				DriveLevel = WheelCount[PATCH_GAMMA][WHEEL_YELLOW];
				SetDigitalPot(WheelCount[PATCH_GAMMA][WHEEL_GREEN]<<3);
				break;
				
		case PATCH_DELTA:
			SetPickupPosition(1);
			SetPickupAperture(12);
			if(WheelCount[PATCH_DELTA][WHEEL_YELLOW]>31)
				WheelCount[PATCH_DELTA][WHEEL_YELLOW]=31;
			if(WheelCount[PATCH_DELTA][WHEEL_GREEN]>31)
				WheelCount[PATCH_DELTA][WHEEL_GREEN]=31;
				SetDigitalPot(WheelCount[PATCH_DELTA][WHEEL_GREEN]<<3);
					break;
				
		case PATCH_SINE_TEST:
					break;
				
	}
	
}


