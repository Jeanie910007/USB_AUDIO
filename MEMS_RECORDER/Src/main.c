/**
  ******************************************************************************
  * @file    main.c
  * @author  SRA - Central Labs
  * @version v5.2.0
  * @date    03-Apr-2020
  * @brief   Main program body
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


/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cube_hal.h"
#include "usart.h"
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/


/** @addtogroup X_CUBE_MEMSMIC1_Applications
* @{
*/

/** @addtogroup Microphones_Acquisition
* @{
*/

/** @defgroup MAIN
* @{
*/

/** @defgroup MAIN_Exported_Variables
* @{
*/
USBD_HandleTypeDef hUSBDDevice;
extern USBD_AUDIO_ItfTypeDef  USBD_AUDIO_fops;

/**
* @}
*/
# include <stdio.h>
int __io_putchar(int ch)
{
	uint8_t c=ch;
	HAL_UART_Transmit(&huart1, &c, 1, 100);
	return ch;
}
int i ;
int ball=0;
int abc = 0;
int16_t data[3200];
/** @defgroup MAIN_Private_Functions
* @{
*/
/* Private function prototypes -----------------------------------------------*/
/**
* @}
*/
#define fiftheen 32768


float out=0.0;
extern uint16_t PCM_Buffer[((AUDIO_IN_CHANNELS*AUDIO_IN_SAMPLING_FREQUENCY)/1000)  * N_MS ];

/**
* @brief  Main program
* @param  None
* @retval None
*/
int main(void)
{

  /* STM32F4xx HAL library initialization:
  - Configure the Flash prefetch, instruction and Data caches
  - Configure the Systick to generate an interrupt each 1 msec
  - Global MSP (MCU Support Package) initialization
  */
  HAL_Init();

  /* Configure the system clock */
  SystemClock_Config();
  /* Initialize USB descriptor basing on channels number and sampling frequency */

  USBD_AUDIO_Init_Microphone_Descriptor(&hUSBDDevice, AUDIO_IN_SAMPLING_FREQUENCY, AUDIO_IN_CHANNELS);
  // USBD_AUDIO_Init_Microphone_Descriptor(&hUSBDDevice, AUDIO_IN_SAMPLING_FREQUENCY, 2);
  /* Init Device Library */
  USBD_Init(&hUSBDDevice, &AUDIO_Desc, 0);
  /* Add Supported Class */
  USBD_RegisterClass(&hUSBDDevice, &USBD_AUDIO);
  /* Add Interface callbacks for AUDIO Class */
  USBD_AUDIO_RegisterInterface(&hUSBDDevice, &USBD_AUDIO_fops);
  /* Start Device Process */
  USBD_Start(&hUSBDDevice);

  MX_USART1_UART_Init();
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_SAI1_Init();


  /* Start audio acquisition and streaming */
#ifdef DISABLE_USB_DRIVEN_ACQUISITION

  Init_Acquisition_Peripherals(AUDIO_IN_SAMPLING_FREQUENCY, AUDIO_IN_CHANNELS, 0);
  // Init_Acquisition_Peripherals(AUDIO_IN_SAMPLING_FREQUENCY, 2, 0);
  Start_Acquisition();
#endif
  while (1)
  {
// 	  if (abc == 3200)
// 	  {
// 		  for(i=0;i<3200;i+=2)
// 		  {
// //			  st.sixteen = *data[i];
// //			  printf("%d %x%x\r\n",i,st.eight[1],st.eight[0]);
// 			  out = (float)data[i];
// 			  printf("%d %f\r\n",i,out/fiftheen);
// 			  HAL_Delay(10);
// 		  }
// 		  abc++;
// 	  }
  }
}

/* Private functions ---------------------------------------------------------*/


#ifdef  USE_FULL_ASSERT

/**
* @brief  Reports the name of the source file and the source line number
*         where the assert_param error has occurred.
* @param  file: pointer to the source file name
* @param  line: assert_param error line source number
* @retval None
*/
void assert_failed(uint8_t* file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
  ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif
/**
* @}
*/
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}
/**
* @}
*/

/**
* @}
*/
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
