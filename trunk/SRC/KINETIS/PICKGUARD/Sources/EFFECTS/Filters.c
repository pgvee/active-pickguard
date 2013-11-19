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

q31_t AlphaIIRTaps[5] = {0};
q63_t AlphaIIRState[5] = {0};
q31_t AlphaIIR_Norm;
q31_t BetaIIRTaps[5] = {0};
q63_t BetaIIRState[5] = {0};
q31_t BetaIIR_Norm;
q31_t GammaIIRTaps[5] = {0};
q63_t GammaIIRState[5] = {0};
q31_t GammaIIR_Norm;
q31_t DeltaIIRTaps[5] = {0};
q63_t DeltaIIRState[5] = {0};
q31_t DeltaIIR_Norm;

arm_biquad_cas_df1_32x64_ins_q31 MyAlphaIIR;
arm_biquad_cas_df1_32x64_ins_q31 MyBetaIIR;
arm_biquad_cas_df1_32x64_ins_q31 MyGammaIIR;
arm_biquad_cas_df1_32x64_ins_q31 MyDeltaIIR;

float AlphaIIRCo[5] = {0.500000, -0.835963, 0.356137, 0.897131, -0.405220};
float AlphaNorm = 0.400945;

float BetaIIRCo[5] = {0.500000, 0.000000, 0.000000, 0.805379, -0.324321};
float BetaNorm = 0.037885;

float GammaIIRCo[5] = {0.500000, -0.76460, 0.359966, 0.876741, -0.388408};
float GammaNorm = 0.122338;

float DeltaIIRCo[5] = {0.500000, -0.76460, 0.359966, 0.876741, -0.388408};
float DeltaNorm =  0.122338;


//float IIRCo[5] = {1.0,0,0,0,0};

//iir 0 0.500000 0.000000 0.000000 0.805379 -0.324321 0.037885 
//iir 0 0.500000 0.000000 0.000000 0.723821 -0.262232 0.076822 
//iir 0 0.500000 0.000000 0.000000 0.723821 -0.262925 0.078207 


void InitFilters()
{
	arm_float_to_q31(&AlphaNorm,&AlphaIIR_Norm,1);
	arm_float_to_q31(&AlphaIIRCo[0],&AlphaIIRTaps[0],5);
	arm_biquad_cas_df1_32x64_init_q31(&MyAlphaIIR,1,&AlphaIIRTaps[0],&AlphaIIRState[0],1);
	
	arm_float_to_q31(&BetaNorm,&BetaIIR_Norm,1);
	arm_float_to_q31(&BetaIIRCo[0],&BetaIIRTaps[0],5);
	arm_biquad_cas_df1_32x64_init_q31(&MyBetaIIR,1,&BetaIIRTaps[0],&BetaIIRState[0],1);	
	
	arm_float_to_q31(&GammaNorm,&GammaIIR_Norm,1);
	arm_float_to_q31(&GammaIIRCo[0],&GammaIIRTaps[0],5);
	arm_biquad_cas_df1_32x64_init_q31(&MyGammaIIR,1,&GammaIIRTaps[0],&GammaIIRState[0],1);

	arm_float_to_q31(&DeltaNorm,&DeltaIIR_Norm,1);
	arm_float_to_q31(&DeltaIIRCo[0],&DeltaIIRTaps[0],5);
	arm_biquad_cas_df1_32x64_init_q31(&MyDeltaIIR,1,&DeltaIIRTaps[0],&DeltaIIRState[0],1);

}
