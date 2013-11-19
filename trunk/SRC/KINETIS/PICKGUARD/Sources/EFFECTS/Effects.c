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

#define OCTAVE_BUFFER_SIZE	2048
#define DISTANCE_THRESH		10
#define MAX_DISTANCE		(1<<DISTANCE_THRESH)

static q31_t OctaveBuffer[OCTAVE_BUFFER_SIZE] = {0};
static q31_t CrossFade[2];
static BYTE CurrentOutputBuffer = 0;
static q31_t V[2];
static q31_t T[2];

WORD InputPtr = 0;
WORD OutputPtr[2] = {0};

SIGNED_WORD Distance;
BYTE MoveOutputPtrs;

q31_t Polarity = -1;
q31_t PreviousPolarity = -1;
q31_t OctavePolarity = -1;

void InitOctave()
{
	CrossFade[0] = 0x1FFFFFF;
	CrossFade[1] = 0;
	CurrentOutputBuffer = 0;
}

inline q31_t GetPreviousOctaveBufSample(int i)	
{
	return OctaveBuffer[((InputPtr-i)&0xFFF)];	
}


void Octave(q31_t *SampleIn,q31_t *SampleOut)
{
	InputPtr++;
	InputPtr&=(OCTAVE_BUFFER_SIZE-1);

	OctaveBuffer[InputPtr] = *SampleIn;
	
	MoveOutputPtrs++;
	if(MoveOutputPtrs&0x01)
	{
		OutputPtr[0]++;
		OutputPtr[0]&=(OCTAVE_BUFFER_SIZE-1);
		OutputPtr[1] = (OutputPtr[0] + (OCTAVE_BUFFER_SIZE/2) - 1)&(OCTAVE_BUFFER_SIZE-1);
	}

	//See if the Input Pointer is catching up.
	Distance = OutputPtr[CurrentOutputBuffer] - InputPtr;

	if((Distance>0) && Distance<(MAX_DISTANCE))
	{
		CrossFade[CurrentOutputBuffer] =          (Distance)<<(31-DISTANCE_THRESH);
		CrossFade[(CurrentOutputBuffer+1)&0x01] = (MAX_DISTANCE-Distance)<<(31-DISTANCE_THRESH);
	}
	else
	if(Distance == 0)
	{
		CurrentOutputBuffer++;
		CurrentOutputBuffer&=0x01;
		CrossFade[CurrentOutputBuffer]= 0x7FFFFFFF;
		CrossFade[(CurrentOutputBuffer+1)&0x01]= 0x0;
	}
	
	T[0] = OctaveBuffer[OutputPtr[0]];
	T[1] = OctaveBuffer[OutputPtr[1]];
	
	arm_scale_q31(&T[0],CrossFade[0],0,&V[0],1);
	arm_scale_q31(&T[1],CrossFade[1],0,&V[1],1);
		
	
	*SampleOut = V[0] + V[1];
}

/*
void Octave(q31_t *SampleIn,q31_t *SampleOut)
{
	InputPtr++;
	InputPtr&=(OCTAVE_BUFFER_SIZE-1);

	OctaveBuffer[InputPtr] = *SampleIn;

	PreviousPolarity = Polarity;
	if((GetPreviousOctaveBufSample(0)>=0) && (GetPreviousOctaveBufSample(50)<0))
	{
		Polarity = Polarity * -1;
	}

	if(PreviousPolarity == -1 && Polarity ==1)
	{
		OctavePolarity = OctavePolarity *-1;
	}
	*SampleOut = OctavePolarity<<22;
}
*/
