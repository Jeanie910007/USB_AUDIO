################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Middlewares/ST/STM32_USB_Device_Library/Core/Src/subdir.mk
-include Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Src/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/Legacy/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Drivers/BSP/STM32F4xx-Nucleo/subdir.mk
-include Drivers/BSP/Components/adau1978/subdir.mk
-include Drivers/BSP/Components/ad1974/subdir.mk
-include Drivers/BSP/CCA02M1/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
MEMS_RECORDER.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
MEMS_RECORDER.list \


# All Target
all: MEMS_RECORDER.elf secondary-outputs

# Tool invocations
MEMS_RECORDER.elf: $(OBJS) $(USER_OBJS) C:\Users\10007069\STM32CubeIDE\workspace_1.0.2\MEMS_RECORDER\STM32F446RETX_FLASH.ld
	arm-none-eabi-gcc -o "MEMS_RECORDER.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\10007069\STM32CubeIDE\workspace_1.0.2\MEMS_RECORDER\STM32F446RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="MEMS_RECORDER.map" -Wl,--gc-sections -static -L"C:\Users\10007069\STM32CubeIDE\workspace_1.0.2\MEMS_RECORDER\Middlewares\ST\STM32_Audio\Addons\PDM\Lib" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -u _printf_float -u _scanf_float -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

MEMS_RECORDER.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "MEMS_RECORDER.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
