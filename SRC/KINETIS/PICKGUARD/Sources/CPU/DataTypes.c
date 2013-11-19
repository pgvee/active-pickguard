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
#include "DataTypes.h"

SIGNED_WORD ByteStackPush(ByteStack * Stack,BYTE Val)
{
    if(Stack->Ptr == Stack->Size-1)
    {
        return STACK_FULL;
    }
    else
    {
        Stack->Ptr++;
        Stack->StackSpace[Stack->Ptr] = Val;
        return STACK_PUSH_OK;
    }
}

SIGNED_WORD ByteStackPOP(ByteStack * Stack)
{
    if(Stack->Ptr == 0)
    {
        return STACK_EMPTY;
    }
    else
    {
        Stack->Ptr--;
        return Stack->StackSpace[Stack->Ptr];
    }
}

void InitByteQueue(ByteQueue *BQ,WORD Size,BYTE * Storage)
{
	WORD i;

	BQ->QueueSize = Size;
	BQ->ReadPtr=0;
	BQ->WritePtr=0;
	BQ->QueueStorage = Storage;

	for(i=0;i<BQ->QueueSize;i++)
	{
		BQ->QueueStorage[i] = 0;
	}
}

WORD BytesInQueue(ByteQueue *BQ)
{
	if(BQ->ReadPtr > BQ->WritePtr)
	{
		return (BQ->QueueSize - BQ->ReadPtr + BQ->WritePtr);
	}
	else if (BQ->WritePtr > BQ->ReadPtr)
	{
 		return 	(BQ->WritePtr - BQ->ReadPtr);
	}
	else
	{
		return 0;	
	}
}

SIGNED_WORD ByteEnqueue(ByteQueue *BQ,BYTE Val)
{
	if(BytesInQueue(BQ) == BQ->QueueSize)
	{
		return QUEUE_FULL;
	}
	else
	{
		BQ->QueueStorage[BQ->WritePtr] = Val;
		BQ->WritePtr++;
		
		if(BQ->WritePtr >= BQ->QueueSize)
			{
				BQ->WritePtr = 0;	
			}
		return QUEUE_OK;
	}
}

SIGNED_WORD ByteArrayEnqueue(ByteQueue *BQ,BYTE *Buf,WORD Len)
{
	WORD i;
	for(i=0;i<Len;i++)
	{
		ByteEnqueue(BQ,Buf[i]);
	}
	return QUEUE_OK;
}


SIGNED_WORD ByteDequeue(ByteQueue *BQ,BYTE *Val)
{
	
	if(BytesInQueue(BQ) == 0)
	{
		return QUEUE_EMPTY;
	}
	else
	{
		*Val  = BQ->QueueStorage[BQ->ReadPtr];

		BQ->ReadPtr++;

		if(BQ->ReadPtr >= BQ->QueueSize)
		{
			BQ->ReadPtr = 0;	
		}
		return QUEUE_OK;
	}
}

CHAR StringBuffer[256];


SIGNED_WORD printf_Q(ByteQueue *BQ, const char *FormatString,...)
{
     va_list argptr; 
     va_start(argptr,FormatString); 
     vsprintf((CHAR *)StringBuffer,FormatString,argptr);
     va_end(argptr);   
     
     ByteArrayEnqueue(BQ,(BYTE *)StringBuffer,strlen(StringBuffer));
           
    return QUEUE_OK;
}



