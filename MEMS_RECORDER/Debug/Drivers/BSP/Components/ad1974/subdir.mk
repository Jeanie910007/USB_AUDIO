################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/BSP/Components/ad1974/ad1974.c \
../Drivers/BSP/Components/ad1974/ad1974_reg.c 

OBJS += \
./Drivers/BSP/Components/ad1974/ad1974.o \
./Drivers/BSP/Components/ad1974/ad1974_reg.o 

C_DEPS += \
./Drivers/BSP/Components/ad1974/ad1974.d \
./Drivers/BSP/Components/ad1974/ad1974_reg.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/ad1974/ad1974.o: ../Drivers/BSP/Components/ad1974/ad1974.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 -DSTM32F446xx -DUSE_HAL_DRIVER -DUSE_STM32F4XX_NUCLEO -DUSE_USB_FS -c -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Inc" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/BSP/CCA02M1" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/BSP/Components/Common" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/CMSIS/Core/Include" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/CMSIS/DSP/Include" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/CMSIS/Include" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/ad1974/ad1974.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/ad1974/ad1974_reg.o: ../Drivers/BSP/Components/ad1974/ad1974_reg.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 -DSTM32F446xx -DUSE_HAL_DRIVER -DUSE_STM32F4XX_NUCLEO -DUSE_USB_FS -c -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Inc" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/BSP/CCA02M1" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/BSP/Components/Common" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/CMSIS/Core/Include" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/CMSIS/DSP/Include" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/CMSIS/Include" -I"C:/Users/10007069/STM32CubeIDE/workspace_1.0.2/MEMS_RECORDER/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/BSP/Components/ad1974/ad1974_reg.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

