################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c \
../Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
../Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c 

OBJS += \
./Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.o \
./Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.o \
./Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.o 

C_DEPS += \
./Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.d \
./Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.d \
./Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.o: ../Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 -DSTM32F446xx -DUSE_HAL_DRIVER -DUSE_STM32F4XX_NUCLEO -DUSE_USB_FS -c -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/CCA02M1" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/Components/Common" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/Core/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/DSP/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.o: ../Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 -DSTM32F446xx -DUSE_HAL_DRIVER -DUSE_STM32F4XX_NUCLEO -DUSE_USB_FS -c -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/CCA02M1" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/Components/Common" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/Core/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/DSP/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.o: ../Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DARM_MATH_CM4 -DSTM32F446xx -DUSE_HAL_DRIVER -DUSE_STM32F4XX_NUCLEO -DUSE_USB_FS -c -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_Audio/Addons/PDM/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Core/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/CCA02M1" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/Components/Common" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/BSP/STM32F4xx-Nucleo" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/Core/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/DSP/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/CMSIS/Include" -I"C:/Users/10007069/code/USB_AUDIO/MEMS_RECORDER/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

