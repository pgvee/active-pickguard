################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.c" \
"../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.c" \

C_SRCS += \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.c \
../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.c \

OBJS += \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.obj \

OBJS_QUOTED += \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.obj" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.obj" \

C_DEPS += \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.d \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.d \

C_DEPS_QUOTED += \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.d" \
"./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.d" \

OBJS_OS_FORMAT += \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.obj \
./Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #206 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/%.d: ../Sources/Cortex-M4-M3/BasicMathFunctions/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #207 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #208 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #209 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_abs_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #210 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #211 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #212 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #213 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_add_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #214 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #215 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #216 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #217 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_dot_prod_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #218 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #219 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #220 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #221 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_mult_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #222 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #223 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #224 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #225 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_negate_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #226 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #227 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #228 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #229 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_offset_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #230 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #231 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #232 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #233 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_scale_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #234 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #235 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #236 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_shift_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.c
	@echo 'Building file: $<'
	@echo 'Executing target #237 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_f32.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.c
	@echo 'Building file: $<'
	@echo 'Executing target #238 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q15.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.c
	@echo 'Building file: $<'
	@echo 'Executing target #239 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q31.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.obj: ../Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.c
	@echo 'Building file: $<'
	@echo 'Executing target #240 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.args" -o "Sources/Cortex-M4-M3/BasicMathFunctions/arm_sub_q7.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


