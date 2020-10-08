/**
  ******************************************************************************
  * @file    cube_hal.h
  * @author  SRA - Central Labs
  * @version v5.2.0
  * @date    03-Apr-2020
  * @brief   X-CUBE includes file
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */ 

#ifndef _CUBE_HAL_H_
#define _CUBE_HAL_H_

/* Includes ------------------------------------------------------------------*/
#define USB_IRQHandler OTG_FS_IRQHandler
#include "stm32f4xx_hal.h"
#include "stm32f4xx.h"
#include "stm32xx_it.h"
#include "stm32f4xx_nucleo.h"
#include "usbd_core.h"
#include "usbd_desc.h"
#include "usbd_audio_in.h"
#include "usbd_audio_if.h"    
#include "audio_application.h"
#include "cca02m1_audio.h"

void SystemClock_Config(void);

#endif //_CUBE_HAL_H_
