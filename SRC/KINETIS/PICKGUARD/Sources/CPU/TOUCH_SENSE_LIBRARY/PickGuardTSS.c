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
#include "TSS_API.h"

void InitPickGuardTSS()
{
	BYTE lcv;
	
	SIM_SCGC5 |= SIM_SCGC5_TSI_MASK;
	TSS_Init();
	

	 /* Set Number of Samples */
	  (void)TSS_SetSystemConfig(System_NSamples_Register, 0x08);  
	  
	  /* Sets the Sensitivity value for each electrode */
	  for (lcv =0; lcv < TSS_N_ELECTRODES; lcv++) {
	    (void)TSS_SetSystemConfig(System_Sensitivity_Register + lcv, 0x3F); 
	  }

	  (void)TSS_SetSystemConfig(System_Sensitivity_Register + 6, 0x18); 	
	  (void)TSS_SetSystemConfig(System_Sensitivity_Register + 7, 0x20); 
	  (void)TSS_SetSystemConfig(System_Sensitivity_Register + 8, 0x40); 
	  (void)TSS_SetSystemConfig(System_Sensitivity_Register + 8, 0x40); 
	  (void)TSS_SetSystemConfig(System_Sensitivity_Register + 9, 0x40); 
	  (void)TSS_SetSystemConfig(System_Sensitivity_Register + 10, 0x40); 
	  
	  
	  /* Enablers Settings */
	  (void)TSS_SetSystemConfig(System_ElectrodeEnablers_Register + 0u, 0xFF);
	  (void)TSS_SetSystemConfig(System_ElectrodeEnablers_Register + 1u, 0xFF); 
	  (void)TSS_SetSystemConfig(System_ElectrodeEnablers_Register + 2u, 0xFF);


	  /* Auto Trigger Config */
	  TSS_SetSystemConfig(System_SystemTrigger_Register, TSS_TRIGGER_MODE_ALWAYS);   /* TSS_TRIGGER_MODE_AUTO/TSS_TRIGGER_MODE_ALWAYS/TSS_TRIGGER_MODE_SW */ 
	  TSS_SetSystemConfig(System_AutoTriggerModuloValue_Register, 0xFF); 

	  (void)TSS_KeypadConfig(ToneVolumeSelect.ControlId,Keypad_Events_Register,(TSS_KEYPAD_TOUCH_EVENT_EN_MASK));
	  (void)TSS_KeypadConfig(ToneVolumeSelect.ControlId,Keypad_ControlConfig_Register,(TSS_KEYPAD_CALLBACK_EN_MASK | TSS_KEYPAD_CONTROL_EN_MASK));
	  
	  (void)TSS_KeypadConfig(Mute.ControlId,Keypad_Events_Register,(TSS_KEYPAD_TOUCH_EVENT_EN_MASK));
	  (void)TSS_KeypadConfig(Mute.ControlId,Keypad_ControlConfig_Register,(TSS_KEYPAD_CALLBACK_EN_MASK | TSS_KEYPAD_CONTROL_EN_MASK));
	 
	  (void)TSS_KeypadConfig(Delta.ControlId,Keypad_Events_Register,(TSS_KEYPAD_TOUCH_EVENT_EN_MASK));
	  (void)TSS_KeypadConfig(Delta.ControlId,Keypad_ControlConfig_Register,(TSS_KEYPAD_CALLBACK_EN_MASK | TSS_KEYPAD_CONTROL_EN_MASK));
	 
	  (void)TSS_KeypadConfig(Alpha.ControlId,Keypad_Events_Register,(TSS_KEYPAD_TOUCH_EVENT_EN_MASK));
	  (void)TSS_KeypadConfig(Alpha.ControlId,Keypad_ControlConfig_Register,(TSS_KEYPAD_CALLBACK_EN_MASK | TSS_KEYPAD_CONTROL_EN_MASK));
	  	 	 
	  (void)TSS_KeypadConfig(Beta.ControlId,Keypad_Events_Register,(TSS_KEYPAD_TOUCH_EVENT_EN_MASK));
	  (void)TSS_KeypadConfig(Beta.ControlId,Keypad_ControlConfig_Register,(TSS_KEYPAD_CALLBACK_EN_MASK | TSS_KEYPAD_CONTROL_EN_MASK));
	  		 	 
	  (void)TSS_KeypadConfig(Gamma.ControlId,Keypad_Events_Register,(TSS_KEYPAD_TOUCH_EVENT_EN_MASK));
	  (void)TSS_KeypadConfig(Gamma.ControlId,Keypad_ControlConfig_Register,(TSS_KEYPAD_CALLBACK_EN_MASK | TSS_KEYPAD_CONTROL_EN_MASK));
	  			 	 
	  
      /* Rotary Electrode Group */
    /* Configure the TSS to report the touch, release and movement events */
    (void)TSS_RotaryConfig(VolumeWheel.ControlId,Rotary_Events_Register,TSS_ROTARY_MOVEMENT_EVENT_EN_MASK);
    /* Enables Callback function. Enables the control */
    (void)TSS_RotaryConfig(VolumeWheel.ControlId,Rotary_ControlConfig_Register,(TSS_ROTARY_CONTROL_EN_MASK|TSS_ROTARY_CALLBACK_EN_MASK));
 
    
	  /* Enables the TSS. Enables the DC Tracking feature. Default DC Tracking value is 0x64 */
	    (void)TSS_SetSystemConfig(System_SystemConfig_Register,(TSS_SYSTEM_EN_MASK | TSS_DC_TRACKER_EN_MASK));
	
}


void TSS1_ToneVolumeSelect (TSS_CONTROL_ID u8ControlId)
{
	  /* Write your code here ... */
	    UINT8 u8Event; /* 8 bits local variable used to store the event information */
	 
	    while (!TSS_KEYPAD_BUFFER_EMPTY(ToneVolumeSelect))  /* While unread events are in the buffer */
	    {
	      TSS_KEYPAD_BUFFER_READ(u8Event,ToneVolumeSelect); /* Read the buffer and store the event in the u8Event variable */

	      if(CurrentWheel == WHEEL_GREEN)
	    	  CurrentWheel = WHEEL_YELLOW;
	      else
	    	  CurrentWheel = WHEEL_GREEN;
	      	  
	    }   
	  
	return;
}

void TSS1_Mute (TSS_CONTROL_ID u8ControlId)
{
	  /* Write your code here ... */
	    UINT8 u8Event; /* 8 bits local variable used to store the event information */
	    TSS_KEYPAD_BUFFER_READ(u8Event,Mute);
	    	if(MuteActive == FALSE)
	    		MuteActive = TRUE;
	    	else
	    		MuteActive = FALSE;
	  
	return;
}
void TSS1_Delta  (TSS_CONTROL_ID u8ControlId)
{
	  /* Write your code here ... */
	    UINT8 u8Event; /* 8 bits local variable used to store the event information */
	 
	    while (!TSS_KEYPAD_BUFFER_EMPTY(Delta))  /* While unread events are in the buffer */
	    {
	      TSS_KEYPAD_BUFFER_READ(u8Event,Delta); /* Read the buffer and store the event in the u8Event variable */
	      CurrentPatch = PATCH_DELTA;
	      LoadPatch(CurrentPatch);
	    }   
	  
	return;
}
void TSS1_Alpha  (TSS_CONTROL_ID u8ControlId)
{
	  /* Write your code here ... */
	    UINT8 u8Event; /* 8 bits local variable used to store the event information */
	 
	    while (!TSS_KEYPAD_BUFFER_EMPTY(Alpha ))  /* While unread events are in the buffer */
	    {
	      TSS_KEYPAD_BUFFER_READ(u8Event,Alpha ); /* Read the buffer and store the event in the u8Event variable */

	      CurrentPatch = PATCH_ALPHA;
	      LoadPatch(CurrentPatch);
	    }   
	  
	return;
}
void TSS1_Beta (TSS_CONTROL_ID u8ControlId)
{
	  /* Write your code here ... */
	    UINT8 u8Event; /* 8 bits local variable used to store the event information */
	 
	    while (!TSS_KEYPAD_BUFFER_EMPTY(Beta))  /* While unread events are in the buffer */
	    {
	      TSS_KEYPAD_BUFFER_READ(u8Event,Beta); /* Read the buffer and store the event in the u8Event variable */

	      CurrentPatch = PATCH_BETA;
	      LoadPatch(CurrentPatch);
	    }   
	  
	return;
}
void TSS1_Gamma (TSS_CONTROL_ID u8ControlId)
{
	  /* Write your code here ... */
	    UINT8 u8Event; /* 8 bits local variable used to store the event information */
	 
	    while (!TSS_KEYPAD_BUFFER_EMPTY(Gamma))  /* While unread events are in the buffer */
	    {
	      TSS_KEYPAD_BUFFER_READ(u8Event,Gamma); /* Read the buffer and store the event in the u8Event variable */

	      CurrentPatch = PATCH_GAMMA;
	      LoadPatch(CurrentPatch);
	      
	    }   
	  
	return;
}


void TSS1_VolumeWheel (TSS_CONTROL_ID u8ControlId)
{
	YellowAnimationState =  ANIMATION_STATE_VALUE_CHANGING;
	YellowAnimationOffset = 0;
	YellowHoldTick = 0;
	GreenAnimationState =  ANIMATION_STATE_VALUE_CHANGING;
	GreenAnimationOffset = 0;
	GreenHoldTick = 0;
	
	
	if(VolumeWheel.DynamicStatus.Direction)
	{
			if(WheelCount[CurrentPatch][CurrentWheel]<255)
				WheelCount[CurrentPatch][CurrentWheel]++;
	}
	else
	{
			if(WheelCount[CurrentPatch][CurrentWheel]>0)
						WheelCount[CurrentPatch][CurrentWheel]--;
	}
	
	LoadPatch(CurrentPatch);
}



void TSS_fOnInit()
{
	
}

void TSS_fOnFault(void)
{
  if(tss_CSSys.Faults.ChargeTimeout || tss_CSSys.Faults.SmallCapacitor) /* If large or small capacitor fault  */
    {    
      (void) TSS_SetSystemConfig(System_Faults_Register, 0x00);           /* Clear the fault flag */
      /* Re-enable all electrodes */
      (void)TSS_SetSystemConfig(System_ElectrodeEnablers_Register + 0u, 0xFF);
      (void)TSS_SetSystemConfig(System_ElectrodeEnablers_Register + 1u, 0xFF);
      (void)TSS_SetSystemConfig(System_ElectrodeEnablers_Register + 2u, 0xFF);   
    }
    
    if(tss_CSSys.Faults.SmallTriggerPeriod)
    {    
      (void) TSS_SetSystemConfig(System_Faults_Register, 0x00);           /* Clear the fault flag */
      
      #if TSS_USE_DCTRACKER
        /* Enables the TSS. Enables the DC Tracking feature. Default DC Tracking value is 0x64 */
        (void)TSS_SetSystemConfig(System_SystemConfig_Register,(TSS_SYSTEM_EN_MASK | TSS_DC_TRACKER_EN_MASK));
        (void)TSS_SetSystemConfig(System_DCTrackerRate_Register,10); //DC tracker executed every 10 task executions
    (void)TSS_SetSystemConfig(System_ResponseTime_Register,10); // each 10 measurments shit the baseline
      #else
        /* Enables the TSS */
        (void)TSS_SetSystemConfig(System_SystemConfig_Register,(TSS_SYSTEM_EN_MASK));
      #endif
    }
}


