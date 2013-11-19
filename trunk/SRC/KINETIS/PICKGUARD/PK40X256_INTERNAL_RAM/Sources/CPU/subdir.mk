################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/CPU/BoardSupport.c" \
"../Sources/CPU/Clock.c" \
"../Sources/CPU/DAC12.c" \
"../Sources/CPU/DataTypes.c" \
"../Sources/CPU/DigitalPot.c" \
"../Sources/CPU/FlexTimer.c" \
"../Sources/CPU/I2S.c" \
"../Sources/CPU/Serial.c" \
"../Sources/CPU/SysTick.c" \
"../Sources/CPU/adc16.c" \
"../Sources/CPU/arm_cm4.c" \
"../Sources/CPU/kinetis_sysinit.c" \

C_SRCS += \
../Sources/CPU/BoardSupport.c \
../Sources/CPU/Clock.c \
../Sources/CPU/DAC12.c \
../Sources/CPU/DataTypes.c \
../Sources/CPU/DigitalPot.c \
../Sources/CPU/FlexTimer.c \
../Sources/CPU/I2S.c \
../Sources/CPU/Serial.c \
../Sources/CPU/SysTick.c \
../Sources/CPU/adc16.c \
../Sources/CPU/arm_cm4.c \
../Sources/CPU/kinetis_sysinit.c \

OBJS += \
./Sources/CPU/BoardSupport.obj \
./Sources/CPU/Clock.obj \
./Sources/CPU/DAC12.obj \
./Sources/CPU/DataTypes.obj \
./Sources/CPU/DigitalPot.obj \
./Sources/CPU/FlexTimer.obj \
./Sources/CPU/I2S.obj \
./Sources/CPU/Serial.obj \
./Sources/CPU/SysTick.obj \
./Sources/CPU/adc16.obj \
./Sources/CPU/arm_cm4.obj \
./Sources/CPU/kinetis_sysinit.obj \

OBJS_QUOTED += \
"./Sources/CPU/BoardSupport.obj" \
"./Sources/CPU/Clock.obj" \
"./Sources/CPU/DAC12.obj" \
"./Sources/CPU/DataTypes.obj" \
"./Sources/CPU/DigitalPot.obj" \
"./Sources/CPU/FlexTimer.obj" \
"./Sources/CPU/I2S.obj" \
"./Sources/CPU/Serial.obj" \
"./Sources/CPU/SysTick.obj" \
"./Sources/CPU/adc16.obj" \
"./Sources/CPU/arm_cm4.obj" \
"./Sources/CPU/kinetis_sysinit.obj" \

C_DEPS += \
./Sources/CPU/BoardSupport.d \
./Sources/CPU/Clock.d \
./Sources/CPU/DAC12.d \
./Sources/CPU/DataTypes.d \
./Sources/CPU/DigitalPot.d \
./Sources/CPU/FlexTimer.d \
./Sources/CPU/I2S.d \
./Sources/CPU/Serial.d \
./Sources/CPU/SysTick.d \
./Sources/CPU/adc16.d \
./Sources/CPU/arm_cm4.d \
./Sources/CPU/kinetis_sysinit.d \

C_DEPS_QUOTED += \
"./Sources/CPU/BoardSupport.d" \
"./Sources/CPU/Clock.d" \
"./Sources/CPU/DAC12.d" \
"./Sources/CPU/DataTypes.d" \
"./Sources/CPU/DigitalPot.d" \
"./Sources/CPU/FlexTimer.d" \
"./Sources/CPU/I2S.d" \
"./Sources/CPU/Serial.d" \
"./Sources/CPU/SysTick.d" \
"./Sources/CPU/adc16.d" \
"./Sources/CPU/arm_cm4.d" \
"./Sources/CPU/kinetis_sysinit.d" \

OBJS_OS_FORMAT += \
./Sources/CPU/BoardSupport.obj \
./Sources/CPU/Clock.obj \
./Sources/CPU/DAC12.obj \
./Sources/CPU/DataTypes.obj \
./Sources/CPU/DigitalPot.obj \
./Sources/CPU/FlexTimer.obj \
./Sources/CPU/I2S.obj \
./Sources/CPU/Serial.obj \
./Sources/CPU/SysTick.obj \
./Sources/CPU/adc16.obj \
./Sources/CPU/arm_cm4.obj \
./Sources/CPU/kinetis_sysinit.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/CPU/BoardSupport.obj: ../Sources/CPU/BoardSupport.c
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/BoardSupport.args" -o "Sources/CPU/BoardSupport.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/%.d: ../Sources/CPU/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/CPU/Clock.obj: ../Sources/CPU/Clock.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/Clock.args" -o "Sources/CPU/Clock.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/DAC12.obj: ../Sources/CPU/DAC12.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/DAC12.args" -o "Sources/CPU/DAC12.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/DataTypes.obj: ../Sources/CPU/DataTypes.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/DataTypes.args" -o "Sources/CPU/DataTypes.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/DigitalPot.obj: ../Sources/CPU/DigitalPot.c
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/DigitalPot.args" -o "Sources/CPU/DigitalPot.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/FlexTimer.obj: ../Sources/CPU/FlexTimer.c
	@echo 'Building file: $<'
	@echo 'Executing target #15 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/FlexTimer.args" -o "Sources/CPU/FlexTimer.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/I2S.obj: ../Sources/CPU/I2S.c
	@echo 'Building file: $<'
	@echo 'Executing target #16 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/I2S.args" -o "Sources/CPU/I2S.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/Serial.obj: ../Sources/CPU/Serial.c
	@echo 'Building file: $<'
	@echo 'Executing target #17 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/Serial.args" -o "Sources/CPU/Serial.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/SysTick.obj: ../Sources/CPU/SysTick.c
	@echo 'Building file: $<'
	@echo 'Executing target #18 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/SysTick.args" -o "Sources/CPU/SysTick.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/adc16.obj: ../Sources/CPU/adc16.c
	@echo 'Building file: $<'
	@echo 'Executing target #19 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/adc16.args" -o "Sources/CPU/adc16.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/arm_cm4.obj: ../Sources/CPU/arm_cm4.c
	@echo 'Building file: $<'
	@echo 'Executing target #20 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/arm_cm4.args" -o "Sources/CPU/arm_cm4.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/kinetis_sysinit.obj: ../Sources/CPU/kinetis_sysinit.c
	@echo 'Building file: $<'
	@echo 'Executing target #21 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/kinetis_sysinit.args" -o "Sources/CPU/kinetis_sysinit.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


