################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.c" \
"../Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.c" \
"../Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.c" \
"../Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.c" \
"../Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.c" \
"../Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.c" \
"../Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.c" \
"../Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.c" \

C_SRCS += \
../Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.c \
../Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.c \
../Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.c \
../Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.c \
../Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.c \
../Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.c \
../Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.c \
../Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.c \

OBJS += \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.obj \

OBJS_QUOTED += \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.obj" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.obj" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.obj" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.obj" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.obj" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.obj" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.obj" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.obj" \

C_DEPS += \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.d \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.d \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.d \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.d \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.d \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.d \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.d \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.d \

C_DEPS_QUOTED += \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.d" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.d" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.d" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.d" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.d" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.d" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.d" \
"./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.d" \

OBJS_OS_FORMAT += \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.obj \
./Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.obj: ../Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #171 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.args" -o "Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FastMathFunctions/%.d: ../Sources/Cortex-M4-M3/FastMathFunctions/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.obj: ../Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #172 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.args" -o "Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.obj: ../Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #173 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.args" -o "Sources/Cortex-M4-M3/FastMathFunctions/arm_cos_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.obj: ../Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #174 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.args" -o "Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.obj: ../Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #175 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.args" -o "Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.obj: ../Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #176 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.args" -o "Sources/Cortex-M4-M3/FastMathFunctions/arm_sin_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.obj: ../Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #177 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.args" -o "Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.obj: ../Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #178 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.args" -o "Sources/Cortex-M4-M3/FastMathFunctions/arm_sqrt_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


