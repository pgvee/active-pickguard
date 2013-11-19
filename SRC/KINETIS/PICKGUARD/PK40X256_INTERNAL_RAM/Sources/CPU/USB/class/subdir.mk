################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/CPU/USB/class/usb_cdc.c" \
"../Sources/CPU/USB/class/usb_cdc_pstn.c" \

C_SRCS += \
../Sources/CPU/USB/class/usb_cdc.c \
../Sources/CPU/USB/class/usb_cdc_pstn.c \

OBJS += \
./Sources/CPU/USB/class/usb_cdc.obj \
./Sources/CPU/USB/class/usb_cdc_pstn.obj \

OBJS_QUOTED += \
"./Sources/CPU/USB/class/usb_cdc.obj" \
"./Sources/CPU/USB/class/usb_cdc_pstn.obj" \

C_DEPS += \
./Sources/CPU/USB/class/usb_cdc.d \
./Sources/CPU/USB/class/usb_cdc_pstn.d \

C_DEPS_QUOTED += \
"./Sources/CPU/USB/class/usb_cdc.d" \
"./Sources/CPU/USB/class/usb_cdc_pstn.d" \

OBJS_OS_FORMAT += \
./Sources/CPU/USB/class/usb_cdc.obj \
./Sources/CPU/USB/class/usb_cdc_pstn.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/CPU/USB/class/usb_cdc.obj: ../Sources/CPU/USB/class/usb_cdc.c
	@echo 'Building file: $<'
	@echo 'Executing target #26 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/USB/class/usb_cdc.args" -o "Sources/CPU/USB/class/usb_cdc.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/USB/class/%.d: ../Sources/CPU/USB/class/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '

Sources/CPU/USB/class/usb_cdc_pstn.obj: ../Sources/CPU/USB/class/usb_cdc_pstn.c
	@echo 'Building file: $<'
	@echo 'Executing target #27 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/USB/class/usb_cdc_pstn.args" -o "Sources/CPU/USB/class/usb_cdc_pstn.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '


