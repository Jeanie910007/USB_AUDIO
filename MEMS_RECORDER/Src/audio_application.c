/**
  ******************************************************************************
  * @file    audio_application.c 
  * @author  SRA - Central Labs
  * @version v5.2.0
  * @date    03-Apr-2020
  * @brief   Audio  application. 
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
#include "audio_application.h"
#include <math.h>
extern int ball;
/** @addtogroup X_CUBE_MEMSMIC1_Applications
* @{
*/ 

/** @addtogroup Microphones_Acquisition
* @{
*/

/** @defgroup AUDIO_APPLICATION 
* @{
*/

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/

/** @defgroup AUDIO_APPLICATION_Exported_Variables 
* @{
*/
uint16_t PDM_Buffer[((((AUDIO_IN_CHANNELS * AUDIO_IN_SAMPLING_FREQUENCY) / 1000) * MAX_DECIMATION_FACTOR) / 16)* N_MS ];
uint16_t PCM_Buffer[((AUDIO_IN_CHANNELS*AUDIO_IN_SAMPLING_FREQUENCY)/1000)  * N_MS ];
extern uint16_t* data[9600];
CCA02M1_AUDIO_Init_t MicParams;

/**
* @}
*/

/** @defgroup AUDIO_APPLICATION_Private_Variables 
* @{
*/
/* Private variables ---------------------------------------------------------*/
/**
* @}
*/

/** @defgroup AUDIO_APPLICATION_Exported_Function 
* @{
*/

/**
* @brief  Half Transfer user callback, called by BSP functions.
* @param  None
* @retval None
*/
void CCA02M1_AUDIO_IN_HalfTransfer_CallBack(uint32_t Instance)
{  
  AudioProcess();
}

/**
* @brief  Transfer Complete user callback, called by BSP functions.
* @param  None
* @retval None
*/
void CCA02M1_AUDIO_IN_TransferComplete_CallBack(uint32_t Instance)
{  
  AudioProcess();
}

/**
* @brief  User function that is called when 1 ms of PDM data is available.
* 		  In this application only PDM to PCM conversion and USB streaming
*                  is performed.
* 		  User can add his own code here to perform some DSP or audio analysis.
* @param  none
* @retval None
*/

//float square =0;
extern int abc;
int i;
int j = 0;

void AudioProcess(void)
{
	if(abc<9600)
	{
		j=0;
		CCA02M1_AUDIO_IN_PDMToPCM(CCA02M1_AUDIO_INSTANCE,(uint16_t * )PDM_Buffer,PCM_Buffer);
		for (i = abc;i<abc+96;i++)
		{
			* (data+i) = (uint16_t * )(PCM_Buffer+j);
			j++;
		}
		Send_Audio_to_USB((int16_t *)PCM_Buffer, (AUDIO_IN_SAMPLING_FREQUENCY/1000)*AUDIO_IN_CHANNELS * N_MS );
		abc+=96;
	}
}

/**
* @brief  User function that is called when 1 ms of PDM data is available.
* 		  In this application only PDM to PCM conversion and USB streaming
*                  is performed.
* 		  User can add his own code here to perform some DSP or audio analysis.
* @param  none
* @retval None
*/
void Init_Acquisition_Peripherals(uint32_t AudioFreq, uint32_t ChnlNbrIn, uint32_t ChnlNbrOut)
{  
  MicParams.BitsPerSample = 16;
  MicParams.ChannelsNbr = ChnlNbrIn;
  MicParams.Device = AUDIO_IN_DIGITAL_MIC;
  MicParams.SampleRate = AudioFreq;
  MicParams.Volume = AUDIO_VOLUME_INPUT;
  
  CCA02M1_AUDIO_IN_Init(CCA02M1_AUDIO_INSTANCE, &MicParams);  
}

/**
* @brief  User function that is called when 1 ms of PDM data is available.
* 		  In this application only PDM to PCM conversion and USB streaming
*                  is performed.
* 		  User can add his own code here to perform some DSP or audio analysis.
* @param  none
* @retval None
*/
void Start_Acquisition(void)
{  
  CCA02M1_AUDIO_IN_Record(CCA02M1_AUDIO_INSTANCE, (uint8_t *) PDM_Buffer, AUDIO_IN_BUFFER_SIZE);
}
/**
* @}
*/

/**
* @}
*/

/**
* @}
*/

/**
* @}
*/ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
