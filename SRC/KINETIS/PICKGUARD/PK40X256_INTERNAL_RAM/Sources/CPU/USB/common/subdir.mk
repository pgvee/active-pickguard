################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/CPU/USB/common/usb_class.c" \
"../Sources/CPU/USB/common/usb_framework.c" \

C_SRCS += \
../Sources/CPU/USB/common/usb_class.c \
../Sources/CPU/USB/common/usb_framework.c \

OBJS += \
./Sources/CPU/USB/common/usb_class.obj \
./Sources/CPU/USB/common/usb_framework.obj \

OBJS_QUOTED += \
"./Sources/CPU/USB/common/usb_class.obj" \
"./Sources/CPU/USB/common/usb_framework.obj" \

C_DEPS += \
./Sources/CPU/USB/common/usb_class.d \
./Sources/CPU/USB/common/usb_framework.d \

C_DEPS_QUOTED += \
"./Sources/CPU/USB/common/usb_class.d" \
"./Sources/CPU/USB/common/usb_framework.d" \

OBJS_OS_FORMAT += \
./Sources/CPU/USB/common/usb_class.obj \
./Sources/CPU/USB/common/usb_framework.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/CPU/USB/common/usb_class.obj: ../Sources/CPU/USB/common/usb_class.c
	@echo 'Building file: $<'
	@echo 'Executing target #24 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/USB/common/usb_class.args" -o "Sources/CPU/USB/common/usb_class.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/USB/common/%.d: ../Sources/CPU/USB/common/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/CPU/USB/common/usb_framework.obj: ../Sources/CPU/USB/common/usb_framework.c
	@echo 'Building file: $<'
	@echo 'Executing target #25 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/USB/common/usb_framework.args" -o "Sources/CPU/USB/common/usb_framework.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


