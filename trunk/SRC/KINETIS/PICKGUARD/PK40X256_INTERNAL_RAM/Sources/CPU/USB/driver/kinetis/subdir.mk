################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.c" \

C_SRCS += \
../Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.c \

OBJS += \
./Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.obj \

OBJS_QUOTED += \
"./Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.obj" \

C_DEPS += \
./Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.d \

C_DEPS_QUOTED += \
"./Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.d" \

OBJS_OS_FORMAT += \
./Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.obj \


# Each subdirectory must supply rules for building sources it contributes
Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.obj: ../Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.c
	@echo 'Building file: $<'
	@echo 'Executing target #23 $<'
	@echo 'Invoking: ARM Compiler'
	"$(ARM_ToolsDirEnv)/mwccarm" -gccinc @@"Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.args" -o "Sources/CPU/USB/driver/kinetis/usb_dci_kinetis.obj" -c "$<" -MD -gccdep
	@echo 'Finished building: $<'
	@echo ' '

Sources/CPU/USB/driver/kinetis/%.d: ../Sources/CPU/USB/driver/kinetis/%.c
	@echo 'Regenerating dependency file: $@'
	
	@echo ' '


