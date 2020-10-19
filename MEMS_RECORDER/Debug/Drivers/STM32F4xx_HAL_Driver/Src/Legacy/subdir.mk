################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.c 

OBJS += \
./Drivers/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.o 

C_DEPS += \
./Drivers/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.o: ../Drivers/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 -DSTM32F446xx -DUSE_HAL_DRIVER -DUSE_STM32F4XX_NUCLEO -DUSE_USB_FS -c -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/CCA02M1" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/Components/Common" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/Core/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/DSP/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/STM32F4xx_HAL_Driver/Src/Legacy/stm32f4xx_hal_can.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

