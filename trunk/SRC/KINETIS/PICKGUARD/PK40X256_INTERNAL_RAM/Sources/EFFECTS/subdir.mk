################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/EFFECTS/Effects.c" \
"../Sources/EFFECTS/Filters.c" \
"../Sources/EFFECTS/Overdrive.c" \
"../Sources/EFFECTS/PickupTranslator.c" \

C_SRCS += \
../Sources/EFFECTS/Effects.c \
../Sources/EFFECTS/Filters.c \
../Sources/EFFECTS/Overdrive.c \
../Sources/EFFECTS/PickupTranslator.c \

OBJS += \
./Sources/EFFECTS/Effects.obj \
./Sources/EFFECTS/Filters.obj \
./Sources/EFFECTS/Overdrive.obj \
./Sources/EFFECTS/PickupTranslator.obj \

OBJS_QUOTED += \
"./Sources/EFFECTS/Effects.obj" \
"./Sources/EFFECTS/Filters.obj" \
"./Sources/EFFECTS/Overdrive.obj" \
"./Sources/EFFECTS/PickupTranslator.obj" \

C_DEPS += \
./Sources/EFFECTS/Effects.d \
./Sources/EFFECTS/Filters.d \
./Sources/EFFECTS/Overdrive.d \
./Sources/EFFECTS/PickupTranslator.d \

C_DEPS_QUOTED += \
"./Sources/EFFECTS/Effects.d" \
"./Sources/EFFECTS/Filters.d" \
"./Sources/EFFECTS/Overdrive.d" \
"./Sources/EFFECTS/PickupTranslator.d" \

OBJS_OS_FORMAT += \
./Sources/EFFECTS/Effects.obj \
./Sources/EFFECTS/Filters.obj \
./Sources/EFFECTS/Overdrive.obj \
./Sources/EFFECTS/PickupTranslator.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/EFFECTS/Effects.obj: ../Sources/EFFECTS/Effects.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/EFFECTS/Effects.args" -o "Sources/EFFECTS/Effects.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/EFFECTS/%.d: ../Sources/EFFECTS/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/EFFECTS/Filters.obj: ../Sources/EFFECTS/Filters.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/EFFECTS/Filters.args" -o "Sources/EFFECTS/Filters.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/EFFECTS/Overdrive.obj: ../Sources/EFFECTS/Overdrive.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/EFFECTS/Overdrive.args" -o "Sources/EFFECTS/Overdrive.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/EFFECTS/PickupTranslator.obj: ../Sources/EFFECTS/PickupTranslator.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/EFFECTS/PickupTranslator.args" -o "Sources/EFFECTS/PickupTranslator.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


