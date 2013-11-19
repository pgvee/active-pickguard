################################################################################
# Automatically-generated file. Do not edit!
################################################################################

#Progress monitor hint: 243
first : all
-include ../makefile.init

# This file contains definitions of environment variables used in the makefiles and .args files if exist.
-include makefile.local

RM := "$(Gnu_Make_Install_DirEnv)/rm" -f

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include Sources/Cortex-M4-M3/TransformFunctions/subdir.mk
-include Sources/Cortex-M4-M3/SupportFunctions/subdir.mk
-include Sources/Cortex-M4-M3/StatisticsFunctions/subdir.mk
-include Sources/Cortex-M4-M3/MatrixFunctions/subdir.mk
-include Sources/Cortex-M4-M3/FilteringFunctions/subdir.mk
-include Sources/Cortex-M4-M3/FastMathFunctions/subdir.mk
-include Sources/Cortex-M4-M3/ControllerFunctions/subdir.mk
-include Sources/Cortex-M4-M3/ComplexMathFunctions/subdir.mk
-include Sources/Cortex-M4-M3/CommonTables/subdir.mk
-include Sources/Cortex-M4-M3/BasicMathFunctions/subdir.mk
-include Sources/Common/Source/subdir.mk
-include Sources/CM4/DeviceSupport/ARM/ARMCM4/subdir.mk
-include Sources/CM4/CoreSupport/subdir.mk
-include Project_Settings/Linker_Files/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
CW_DSPLIB.a \

EXECUTABLES_QUOTED += \
"CW_DSPLIB.a" \

EXECUTABLES_OS_FORMAT += \
CW_DSPLIB.a \


# All Target
all: CW_DSPLIB.a

# Tool invocations
CW_DSPLIB.a: $(OBJS) $(LCF_BUILD_DEPENCENCY) $(USER_OBJS) $(LCF_SRCS)
	@echo 'Building target: $@'
	@echo 'Executing target #244 $@'
	@echo 'Invoking: ARM Linker'
	"$(ARM_ToolsDirEnv)/mwldarm" @@"CW_DSPLIB.args" -o "CW_DSPLIB.a"  $(USER_OBJS_QUOTED) $(LIBS_QUOTED)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(S_DEPS_QUOTED) $(CC_DEPS_QUOTED) $(CPP_DEPS_QUOTED) "./*/*/*/*.obj" "./*/*/*/*/*/*.obj"  $(S_UPPER_DEPS_QUOTED) $(CXX_DEPS_QUOTED) $(ASM_DEPS_QUOTED) $(ASM_UPPER_DEPS_QUOTED) $(C_UPPER_DEPS_QUOTED) $(EXECUTABLES_QUOTED) "./*/*/*/*.d" "./*/*/*/*/*/*.d"  CW_DSPLIB.a
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
