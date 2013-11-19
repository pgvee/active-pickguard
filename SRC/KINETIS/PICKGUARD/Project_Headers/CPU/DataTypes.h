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

#include <stdarg.h>
#include <stdio.h>

#ifndef DATATYPES_H_
#define DATATYPES_H_

#define BYTE unsigned char
#define WORD unsigned short
#define DWORD unsigned long

#define SIGNED_BYTE signed char
#define SIGNED_WORD signed short
#define SIGNED_DWORD signed int

#define CHAR char

#define BOOL BYTE

#ifndef TRUE
#define TRUE 1
#endif  


#ifndef FALSE
#define FALSE 0
#endif  

#ifndef YEP
#define YEP TRUE
#endif  


#ifndef NOPE
#define NOPE FALSE
#endif  


#define STACK_FULL       -1
#define STACK_EMPTY      -2
#define STACK_PUSH_OK     0

#define QUEUE_FULL       -1
#define QUEUE_EMPTY      -2
#define QUEUE_OK	      0


typedef struct{

            BYTE *StackSpace;
            WORD Ptr;
            WORD Size;
}    ByteStack;

typedef struct{
            BYTE *StackSpace;
            BYTE Ptr;
            BYTE Size;
} BitStack;

typedef struct {
                
     	BYTE *BitPlaneSpace;

		WORD SizeX; // must be a BYTE aligned
        WORD SizeY;
        
} BitPlane;


typedef struct {
	
	WORD ReadPtr;
	WORD WritePtr;
	WORD QueueSize;
	BYTE *QueueStorage;
	
} ByteQueue;


void InitByteQueue(ByteQueue *BQ,WORD Size,BYTE * Storage);
WORD BytesInQueue(ByteQueue *BQ);
SIGNED_WORD ByteDequeue(ByteQueue *BQ,BYTE *Val);
SIGNED_WORD ByteEnqueue(ByteQueue *BQ,BYTE Val);
SIGNED_WORD ByteArrayEnqueue(ByteQueue *BQ,BYTE *Buf,WORD Len);
SIGNED_WORD printf_Q(ByteQueue *BQ, const char *FormatString,...);

#endif /* DATATYPES_H_ */
