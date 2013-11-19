################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.c" \
"../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.c" \
"../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.c" \
"../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.c" \
"../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.c" \
"../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.c" \
"../Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.c" \
"../Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.c" \

C_SRCS += \
../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.c \
../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.c \
../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.c \
../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.c \
../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.c \
../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.c \
../Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.c \
../Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.c \

OBJS += \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.obj \

OBJS_QUOTED += \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.obj" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.obj" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.obj" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.obj" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.obj" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.obj" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.obj" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.obj" \

C_DEPS += \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.d \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.d \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.d \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.d \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.d \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.d \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.d \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.d \

C_DEPS_QUOTED += \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.d" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.d" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.d" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.d" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.d" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.d" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.d" \
"./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.d" \

OBJS_OS_FORMAT += \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.obj \
./Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.obj: ../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #179 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.args" -o "Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/ControllerFunctions/%.d: ../Sources/Cortex-M4-M3/ControllerFunctions/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.obj: ../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #180 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.args" -o "Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.obj: ../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #181 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.args" -o "Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_init_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.obj: ../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #182 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.args" -o "Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.obj: ../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #183 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.args" -o "Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.obj: ../Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #184 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.args" -o "Sources/Cortex-M4-M3/ControllerFunctions/arm_pid_reset_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.obj: ../Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #185 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.args" -o "Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.obj: ../Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #186 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.args" -o "Sources/Cortex-M4-M3/ControllerFunctions/arm_sin_cos_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


