################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/CM4/CoreSupport/core_cm4.c" \

C_SRCS += \
../Sources/CM4/CoreSupport/core_cm4.c \

OBJS += \
./Sources/CM4/CoreSupport/core_cm4.obj \

C_DEPS += \
./Sources/CM4/CoreSupport/core_cm4.d \

OBJS_QUOTED += \
"./Sources/CM4/CoreSupport/core_cm4.obj" \

OBJS_OS_FORMAT += \
./Sources/CM4/CoreSupport/core_cm4.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/CM4/CoreSupport/core_cm4.obj: ../Sources/CM4/CoreSupport/core_cm4.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CM4/CoreSupport/core_cm4.args" -o "Sources/CM4/CoreSupport/core_cm4.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CM4/CoreSupport/%.d: ../Sources/CM4/CoreSupport/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


