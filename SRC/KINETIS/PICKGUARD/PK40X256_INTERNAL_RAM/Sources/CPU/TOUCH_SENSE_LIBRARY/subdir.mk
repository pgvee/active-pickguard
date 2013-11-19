################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.c" \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.c" \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.c" \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.c" \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.c" \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.c" \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.c" \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.c" \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.c" \
"../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.c" \

C_SRCS += \
../Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.c \
../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.c \
../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.c \
../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.c \
../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.c \
../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.c \
../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.c \
../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.c \
../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.c \
../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.c \

OBJS += \
./Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.obj \

OBJS_QUOTED += \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.obj" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.obj" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.obj" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.obj" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.obj" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.obj" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.obj" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.obj" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.obj" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.obj" \

C_DEPS += \
./Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.d \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.d \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.d \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.d \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.d \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.d \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.d \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.d \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.d \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.d \

C_DEPS_QUOTED += \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.d" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.d" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.d" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.d" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.d" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.d" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.d" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.d" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.d" \
"./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.d" \

OBJS_OS_FORMAT += \
./Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.obj \
./Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.c
	@echo 'Building file: $<'
	@echo 'Executing target #30 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/PickGuardTSS.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/%.d: ../Sources/CPU/TOUCH_SENSE_LIBRARY/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.c
	@echo 'Building file: $<'
	@echo 'Executing target #31 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Freemaster.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.c
	@echo 'Building file: $<'
	@echo 'Executing target #32 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_Sensor.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.c
	@echo 'Building file: $<'
	@echo 'Executing target #33 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorCTS.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.c
	@echo 'Building file: $<'
	@echo 'Executing target #34 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorGPIO.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.c
	@echo 'Building file: $<'
	@echo 'Executing target #35 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorKBI.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.c
	@echo 'Building file: $<'
	@echo 'Executing target #36 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorPTI.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.c
	@echo 'Building file: $<'
	@echo 'Executing target #37 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTIC.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.c
	@echo 'Building file: $<'
	@echo 'Executing target #38 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SensorTSI.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.obj: ../Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.c
	@echo 'Building file: $<'
	@echo 'Executing target #39 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.args" -o "Sources/CPU/TOUCH_SENSE_LIBRARY/TSS_SystemSetupData.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


