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

#ifndef FILTERS_H_
#define FILTERS_H_

extern q31_t AlphaIIRTaps[5];
extern q63_t AlphaIIRState[5];
extern q31_t AlphaIIR_Norm;

extern q31_t BetaIIRTaps[5];
extern q63_t BetaIIRState[5];
extern q31_t BetaIIR_Norm;
extern q31_t GammaIIRTaps[5];
extern q63_t GammaIIRState[5];
extern q31_t GammaIIR_Norm;
extern q31_t DeltaIIRTaps[5];
extern q63_t DeltaIIRState[5];
extern q31_t DeltaIIR_Norm;

extern arm_biquad_cas_df1_32x64_ins_q31 MyAlphaIIR;
extern arm_biquad_cas_df1_32x64_ins_q31 MyBetaIIR;
extern arm_biquad_cas_df1_32x64_ins_q31 MyGammaIIR;
extern arm_biquad_cas_df1_32x64_ins_q31 MyDeltaIIR;

extern float AlphaIIRCo[5];
extern float AlphaNorm;

extern float BetaIIRCo[5];
extern float BetaNorm;

extern float GammaIIRCo[5];
extern float GammaNorm;

extern float DeltaIIRCo[5];
extern float DeltaNorm;


#endif /* FILTERS_H_ */
