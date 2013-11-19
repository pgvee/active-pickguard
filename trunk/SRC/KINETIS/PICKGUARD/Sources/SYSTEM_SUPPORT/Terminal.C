#include "System.h"

#include <stdlib.h>

//*****************************************************************
//Terminal Configuration
//*****************************************************************

#define MAX_TERMINAL_LINE_CHARS 256
#define MAX_TERMINAL_CMD_CHARS  64
#define TERMINAL_QUEUE_SIZE		512

#define NUM_TERMINAL_CMDS   9

typedef void (*TerminalCallback)(char *);

//These are the terminal command names that map to the call backs
char *TerminalCommands[NUM_TERMINAL_CMDS] = {"help","reboot","patch","a","p","aiir","biir","giir","diir"};

void TerminalCmd_Help(char *arg);
void TerminalCmd_Reboot(char *arg);
void TerminalCmd_Patch(char *arg);
void TerminalCmd_Aperture(char *arg);
void TerminalCmd_Position(char *arg);
void TerminalCmd_aiir(char *arg);
void TerminalCmd_biir(char *arg);
void TerminalCmd_giir(char *arg);
void TerminalCmd_diir(char *arg);

//Populate this array with the callback functions
TerminalCallback TerminalCallbacks[NUM_TERMINAL_CMDS] ={
														TerminalCmd_Help,
														TerminalCmd_Reboot,
														TerminalCmd_Patch,
														TerminalCmd_Aperture,
														TerminalCmd_Position,
														TerminalCmd_aiir,
														TerminalCmd_biir,
														TerminalCmd_giir,
														TerminalCmd_diir,
																												
													    };

//*****************************************************************
//Plumbing.....
//*****************************************************************

ByteQueue TERMINAL_IN_QUEUE;
ByteQueue TERMINAL_OUT_QUEUE;

BYTE TerminalInQueueStore[TERMINAL_QUEUE_SIZE];
BYTE TerminalOutQueueStore[TERMINAL_QUEUE_SIZE];
CHAR TerminalLineBuf[MAX_TERMINAL_LINE_CHARS];
BYTE TerminalPos;
CHAR TerminalCmdBuf[MAX_TERMINAL_CMD_CHARS+1];
CHAR TerminalArgs[MAX_TERMINAL_LINE_CHARS-MAX_TERMINAL_CMD_CHARS];
BYTE NextCharIn;
BOOL CmdFound;
 
void TerminalBootMsg()
{
printf_Q(&TERMINAL_OUT_QUEUE,"\r\n\r\n"); 
printf_Q(&TERMINAL_OUT_QUEUE,"***********************************\r\n"); 
printf_Q(&TERMINAL_OUT_QUEUE,"	                   /|\r\n"); 
printf_Q(&TERMINAL_OUT_QUEUE,"	 ____       __   -- |\r\n");     
printf_Q(&TERMINAL_OUT_QUEUE,"	(___ \\      \\ \\    _|_\r\n");    
printf_Q(&TERMINAL_OUT_QUEUE,"	  __) )______\\ \\      \r\n");      
printf_Q(&TERMINAL_OUT_QUEUE,"	 / __/(  __  )> \\     \r\n");     
printf_Q(&TERMINAL_OUT_QUEUE,"	| |___ | || |/ ^ \\    \r\n");    
printf_Q(&TERMINAL_OUT_QUEUE,"	|_____)|_||_/_/ \\_\\   \r\n"); 
printf_Q(&TERMINAL_OUT_QUEUE,"	                       \r\n");
printf_Q(&TERMINAL_OUT_QUEUE,"Active Pickguard			\r\n");
printf_Q(&TERMINAL_OUT_QUEUE,"Copyright (C) <2011>  Eli Hughes\r\n");
printf_Q(&TERMINAL_OUT_QUEUE,"Wavenumber LLC\r\n"); 
printf_Q(&TERMINAL_OUT_QUEUE,"***********************************\r\n\r\n>"); 

};

void InitTerminal()
{
	InitByteQueue(&TERMINAL_IN_QUEUE,TERMINAL_QUEUE_SIZE, &TerminalInQueueStore[0]);
	InitByteQueue(&TERMINAL_OUT_QUEUE,TERMINAL_QUEUE_SIZE,&TerminalOutQueueStore[0]);
	TerminalBootMsg();
}


void TerminalCmd_aiir(char *arg)
{
	BYTE Items;

	float b0=  1;
	float b2 = 0;
	float b1 = 0;
	float a1 = 0;
	float a2 = 0;
	float Norm = 1;

	InhibitAudio = TRUE;
	Items=sscanf(arg,"%f %f %f %f %f %f",&b0,&b1,&b2,&a1,&a2,&Norm);
	
	arm_float_to_q31(&b0,&AlphaIIRTaps[0],1);
	arm_float_to_q31(&b1,&AlphaIIRTaps[1],1);
	arm_float_to_q31(&b2,&AlphaIIRTaps[2],1);
	arm_float_to_q31(&a1,&AlphaIIRTaps[3],1);
	arm_float_to_q31(&a2,&AlphaIIRTaps[4],1);
	arm_float_to_q31(&Norm,&AlphaIIR_Norm,1);
		
	arm_biquad_cas_df1_32x64_init_q31(&MyAlphaIIR,1,&AlphaIIRTaps[0],&AlphaIIRState[0],1);	
	
	printf_Q(&TERMINAL_OUT_QUEUE,"\r\nSetting Alpha IIR Stage to: \r\n");
	printf_Q(&TERMINAL_OUT_QUEUE,"b0: %f \r\n",b0);
	printf_Q(&TERMINAL_OUT_QUEUE,"b1: %f \r\n",b1);
	printf_Q(&TERMINAL_OUT_QUEUE,"b2: %f \r\n",b2);
	printf_Q(&TERMINAL_OUT_QUEUE,"a1: %f \r\n",a1);
	printf_Q(&TERMINAL_OUT_QUEUE,"a2: %f \r\n",a2);
	printf_Q(&TERMINAL_OUT_QUEUE,"Norm: %f \r\n",Norm);	
	InhibitAudio = FALSE;
}

void TerminalCmd_biir(char *arg)
{
	BYTE Items;

	float b0=  1;
	float b2 = 0;
	float b1 = 0;
	float a1 = 0;
	float a2 = 0;
	float Norm = 1;
	InhibitAudio = TRUE;
	Items=sscanf(arg,"%f %f %f %f %f %f",&b0,&b1,&b2,&a1,&a2,&Norm);
	
	arm_float_to_q31(&b0,&BetaIIRTaps[0],1);
	arm_float_to_q31(&b1,&BetaIIRTaps[1],1);
	arm_float_to_q31(&b2,&BetaIIRTaps[2],1);
	arm_float_to_q31(&a1,&BetaIIRTaps[3],1);
	arm_float_to_q31(&a2,&BetaIIRTaps[4],1);
	arm_float_to_q31(&Norm,&BetaIIR_Norm,1);
		
	arm_biquad_cas_df1_32x64_init_q31(&MyBetaIIR,1,&BetaIIRTaps[0],&BetaIIRState[0],1);	
	
	printf_Q(&TERMINAL_OUT_QUEUE,"\r\nSetting Beta IIR Stage to: \r\n");
	printf_Q(&TERMINAL_OUT_QUEUE,"b0: %f \r\n",b0);
	printf_Q(&TERMINAL_OUT_QUEUE,"b1: %f \r\n",b1);
	printf_Q(&TERMINAL_OUT_QUEUE,"b2: %f \r\n",b2);
	printf_Q(&TERMINAL_OUT_QUEUE,"a1: %f \r\n",a1);
	printf_Q(&TERMINAL_OUT_QUEUE,"a2: %f \r\n",a2);
	printf_Q(&TERMINAL_OUT_QUEUE,"Norm: %f \r\n",Norm);	 
	InhibitAudio = FALSE;
}
void TerminalCmd_diir(char *arg)
{
	BYTE Items;

	float b0=  1;
	float b2 = 0;
	float b1 = 0;
	float a1 = 0;
	float a2 = 0;
	float Norm = 1;
	InhibitAudio = TRUE;
	Items=sscanf(arg,"%f %f %f %f %f %f",&b0,&b1,&b2,&a1,&a2,&Norm);
	
	arm_float_to_q31(&b0,&DeltaIIRTaps[0],1);
	arm_float_to_q31(&b1,&DeltaIIRTaps[1],1);
	arm_float_to_q31(&b2,&DeltaIIRTaps[2],1);
	arm_float_to_q31(&a1,&DeltaIIRTaps[3],1);
	arm_float_to_q31(&a2,&DeltaIIRTaps[4],1);
	arm_float_to_q31(&Norm,&DeltaIIR_Norm,1);
		
	arm_biquad_cas_df1_32x64_init_q31(&MyDeltaIIR,1,&DeltaIIRTaps[0],&DeltaIIRState[0],1);	
	
	printf_Q(&TERMINAL_OUT_QUEUE,"\r\nSetting Delta IIR Stage to: \r\n");
	printf_Q(&TERMINAL_OUT_QUEUE,"b0: %f \r\n",b0);
	printf_Q(&TERMINAL_OUT_QUEUE,"b1: %f \r\n",b1);
	printf_Q(&TERMINAL_OUT_QUEUE,"b2: %f \r\n",b2);
	printf_Q(&TERMINAL_OUT_QUEUE,"a1: %f \r\n",a1);
	printf_Q(&TERMINAL_OUT_QUEUE,"a2: %f \r\n",a2);
	printf_Q(&TERMINAL_OUT_QUEUE,"Norm: %f \r\n",Norm);	 
	InhibitAudio = FALSE;
}

void TerminalCmd_giir(char *arg)
{
	BYTE Items;

	float b0=  1;
	float b2 = 0;
	float b1 = 0;
	float a1 = 0;
	float a2 = 0;
	float Norm = 1;
	InhibitAudio = TRUE;
	Items=sscanf(arg,"%f %f %f %f %f %f",&b0,&b1,&b2,&a1,&a2,&Norm);
	
	arm_float_to_q31(&b0,&GammaIIRTaps[0],1);
	arm_float_to_q31(&b1,&GammaIIRTaps[1],1);
	arm_float_to_q31(&b2,&GammaIIRTaps[2],1);
	arm_float_to_q31(&a1,&GammaIIRTaps[3],1);
	arm_float_to_q31(&a2,&GammaIIRTaps[4],1);
	arm_float_to_q31(&Norm,&GammaIIR_Norm,1);
		
	arm_biquad_cas_df1_32x64_init_q31(&MyGammaIIR,1,&GammaIIRTaps[0],&GammaIIRState[0],1);	
	
	printf_Q(&TERMINAL_OUT_QUEUE,"\r\nSetting Gamma IIR Stage to: \r\n");
	printf_Q(&TERMINAL_OUT_QUEUE,"b0: %f \r\n",b0);
	printf_Q(&TERMINAL_OUT_QUEUE,"b1: %f \r\n",b1);
	printf_Q(&TERMINAL_OUT_QUEUE,"b2: %f \r\n",b2);
	printf_Q(&TERMINAL_OUT_QUEUE,"a1: %f \r\n",a1);
	printf_Q(&TERMINAL_OUT_QUEUE,"a2: %f \r\n",a2);
	printf_Q(&TERMINAL_OUT_QUEUE,"Norm: %f \r\n",Norm);	 
	InhibitAudio = FALSE;
}

void TerminalCmd_Aperture(char *arg)
{
	BYTE Items;
	DWORD Aperture;
	
	Items=sscanf(arg,"%u",&Aperture);
	SetPickupAperture(Aperture);
	printf_Q(&TERMINAL_OUT_QUEUE,"\r\nSet Pickup Aperture to %d\r\n",Aperture);
	
}

void TerminalCmd_Position(char *arg)
{
	BYTE Items;
	DWORD Position;
		
	Items=sscanf(arg,"%u",&Position);
	SetPickupPosition(Position);
	printf_Q(&TERMINAL_OUT_QUEUE,"\r\nSet Pickup Position to %d\r\n",Position);
}

void TerminalCmd_Patch(char *arg)
{
	 DWORD Items;
	 BYTE SelectedPatch[32];
	 
	 Items = sscanf(arg, "%s",&SelectedPatch);
	
	 if(!strcmp((const char *)SelectedPatch,"sine"))
	 {
		CurrentPatch = PATCH_SINE_TEST;
	 }
	 else if(!strcmp((const char *)SelectedPatch,"alpha"))
	 {
	 	CurrentPatch = PATCH_ALPHA;
	 }
	 else if(!strcmp((const char *)SelectedPatch,"beta"))
		 {
		 	CurrentPatch = PATCH_BETA;
		 }
	 else if(!strcmp((const char *)SelectedPatch,"gamma"))
		 {
		 	CurrentPatch = PATCH_GAMMA;
		 }
	 else if(!strcmp((const char *)SelectedPatch,"delta"))
		 {
		 	CurrentPatch = PATCH_DELTA;
		 }
	 else if(!strcmp((const char *)SelectedPatch,"pass"))
		 {
			 CurrentPatch = PATCH_PASS_THROUGH;
		 }
	 else
	 {
		 printf_Q(&TERMINAL_OUT_QUEUE,"\r\nUnknown Patch\r\n"); 
		 printf_Q(&TERMINAL_OUT_QUEUE,"\r\nAvailable Patches:\r\n");
		 printf_Q(&TERMINAL_OUT_QUEUE,"-------------------------\r\n");
		 printf_Q(&TERMINAL_OUT_QUEUE,"sine\r\n");
		 printf_Q(&TERMINAL_OUT_QUEUE,"pass\r\n");
		 printf_Q(&TERMINAL_OUT_QUEUE,"alpha\r\n");
		 printf_Q(&TERMINAL_OUT_QUEUE,"beta\r\n");
		 printf_Q(&TERMINAL_OUT_QUEUE,"gamma\r\n");
		 printf_Q(&TERMINAL_OUT_QUEUE,"delta\r\n\r\n");
	 }
}



void TerminalCmd_Help(char *arg)
{
    BYTE i;

      printf_Q(&TERMINAL_OUT_QUEUE,"\r\n\r\bCommandList:\r\n");
      printf_Q(&TERMINAL_OUT_QUEUE,"----------------------\r\n");

    for(i=0;i<NUM_TERMINAL_CMDS;i++)
    {
         printf_Q(&TERMINAL_OUT_QUEUE,"%s\r\n",TerminalCommands[i]);    
    }

}

void TerminalCmd_Reboot(char *arg)
{
      TerminalBootMsg();
}


void ProcessTerminal()
{
     BYTE i,j;
     BYTE Out;
     
     //Make sure to prime the UART Pump if there is data in the queue 
     //but TX IRQ is disabled
    if(BytesInQueue(&TERMINAL_OUT_QUEUE)>0 && (UART2_S1 & UART_S1_TDRE_MASK))
    {
    	UART2_C2 |= UART_C2_TIE_MASK; //Enable Reciever Interrupts
    }
    
    if(BytesInQueue(&TERMINAL_IN_QUEUE)>0)
    {
        ByteDequeue(&TERMINAL_IN_QUEUE,&NextCharIn);
        
        switch(NextCharIn)
        {
            case '\r':
             
             TerminalLineBuf[TerminalPos++] = 0x0;
             ByteEnqueue(&TERMINAL_OUT_QUEUE,NextCharIn);
            
             if(TerminalPos > 1)
             {
                 //find the command
                 i=0;
                 while(TerminalLineBuf[i]>0x20 &&  TerminalLineBuf[i]<0x7f)
                 {
                      TerminalCmdBuf[i] = TerminalLineBuf[i];
                      i++;
    
                    if(i==MAX_TERMINAL_CMD_CHARS)
                        {
                         break;
                        }
                 }
                    
                TerminalCmdBuf[i] = 0;
                TerminalCmdBuf[i+1] = 0;
            
                strcpy(TerminalArgs,&TerminalLineBuf[i]);

                CmdFound = FALSE;
                for(j=0;j<NUM_TERMINAL_CMDS;j++)
                {           
                    if(strcmp(TerminalCmdBuf,TerminalCommands[j]) == 0)
                    {
                    	printf_Q(&TERMINAL_OUT_QUEUE,"\r\n");
                    	if(TerminalCallbacks[j] != NULL)
                            TerminalCallbacks[j](TerminalArgs);
                    
                        CmdFound = TRUE;
                        break;
                    }             
                }        
                if(CmdFound == FALSE)
                {
                   printf_Q(&TERMINAL_OUT_QUEUE,"\r\n%s command not recognized.\r\n", TerminalCmdBuf);
                }
              }    
             ByteEnqueue(&TERMINAL_OUT_QUEUE,'\r\n');
             ByteEnqueue(&TERMINAL_OUT_QUEUE,'>');
             TerminalPos = 0;
            
            break;
            
            case '\b':
                if(TerminalPos > 0)
                {
                    TerminalPos--;    
                    ByteEnqueue(&TERMINAL_OUT_QUEUE,NextCharIn);
                }
            break;
            
            default:
                
                if(TerminalPos == 0 && NextCharIn == 0x020)
                {
                     //Do nothing if space bar is pressed at beginning of line    
                }
                   else if(NextCharIn >= 0x20 && NextCharIn<0x7F)
                {
                    
                    if(TerminalPos < MAX_TERMINAL_LINE_CHARS-1)
                    {
                         TerminalLineBuf[TerminalPos++] = NextCharIn;
                           ByteEnqueue(&TERMINAL_OUT_QUEUE,NextCharIn);
                    }
                }
            
            break;
        
        }
    }
 
}

