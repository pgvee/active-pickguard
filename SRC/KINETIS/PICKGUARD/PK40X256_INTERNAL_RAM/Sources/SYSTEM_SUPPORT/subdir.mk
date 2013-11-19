################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/SYSTEM_SUPPORT/MathTables.c" \
"../Sources/SYSTEM_SUPPORT/System.c" \

C_UPPER_SRCS += \
../Sources/SYSTEM_SUPPORT/Terminal.C \

C_UPPER_SRCS_QUOTED += \
"../Sources/SYSTEM_SUPPORT/Terminal.C" \

C_SRCS += \
../Sources/SYSTEM_SUPPORT/MathTables.c \
../Sources/SYSTEM_SUPPORT/System.c \

OBJS += \
./Sources/SYSTEM_SUPPORT/MathTables.obj \
./Sources/SYSTEM_SUPPORT/System.obj \
./Sources/SYSTEM_SUPPORT/Terminal.obj \

OBJS_QUOTED += \
"./Sources/SYSTEM_SUPPORT/MathTables.obj" \
"./Sources/SYSTEM_SUPPORT/System.obj" \
"./Sources/SYSTEM_SUPPORT/Terminal.obj" \

C_DEPS += \
./Sources/SYSTEM_SUPPORT/MathTables.d \
./Sources/SYSTEM_SUPPORT/System.d \

C_UPPER_DEPS_QUOTED += \
"./Sources/SYSTEM_SUPPORT/Terminal.d" \

C_UPPER_DEPS += \
./Sources/SYSTEM_SUPPORT/Terminal.d \

C_DEPS_QUOTED += \
"./Sources/SYSTEM_SUPPORT/MathTables.d" \
"./Sources/SYSTEM_SUPPORT/System.d" \

OBJS_OS_FORMAT += \
./Sources/SYSTEM_SUPPORT/MathTables.obj \
./Sources/SYSTEM_SUPPORT/System.obj \
./Sources/SYSTEM_SUPPORT/Terminal.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/SYSTEM_SUPPORT/MathTables.obj: ../Sources/SYSTEM_SUPPORT/MathTables.c
	@echo 'Building file: $<'
	@echo 'Executing target #3 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/SYSTEM_SUPPORT/MathTables.args" -o "Sources/SYSTEM_SUPPORT/MathTables.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/SYSTEM_SUPPORT/%.d: ../Sources/SYSTEM_SUPPORT/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/SYSTEM_SUPPORT/System.obj: ../Sources/SYSTEM_SUPPORT/System.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/SYSTEM_SUPPORT/System.args" -o "Sources/SYSTEM_SUPPORT/System.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/SYSTEM_SUPPORT/Terminal.obj: ../Sources/SYSTEM_SUPPORT/Terminal.C
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/SYSTEM_SUPPORT/Terminal.args" -o "Sources/SYSTEM_SUPPORT/Terminal.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/SYSTEM_SUPPORT/%.d: ../Sources/SYSTEM_SUPPORT/%.C
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


