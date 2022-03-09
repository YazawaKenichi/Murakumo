/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define DRV2_PN_Pin GPIO_PIN_13
#define DRV2_PN_GPIO_Port GPIOC
#define SW3_Pin GPIO_PIN_1
#define SW3_GPIO_Port GPIOH
#define SubSens1_Pin GPIO_PIN_2
#define SubSens1_GPIO_Port GPIOB
#define ICM_SCLK_Pin GPIO_PIN_10
#define ICM_SCLK_GPIO_Port GPIOB
#define SubSens2_Pin GPIO_PIN_11
#define SubSens2_GPIO_Port GPIOB
#define ICM_nCS_Pin GPIO_PIN_12
#define ICM_nCS_GPIO_Port GPIOB
#define LED_Red_Pin GPIO_PIN_13
#define LED_Red_GPIO_Port GPIOB
#define ICM_MISO_Pin GPIO_PIN_14
#define ICM_MISO_GPIO_Port GPIOB
#define ICM_MOSI_Pin GPIO_PIN_15
#define ICM_MOSI_GPIO_Port GPIOB
#define Encorder1_A_Pin GPIO_PIN_8
#define Encorder1_A_GPIO_Port GPIOA
#define Encorder1_B_Pin GPIO_PIN_9
#define Encorder1_B_GPIO_Port GPIOA
#define Buzzer_Pin GPIO_PIN_15
#define Buzzer_GPIO_Port GPIOA
#define DRV1_PN_Pin GPIO_PIN_2
#define DRV1_PN_GPIO_Port GPIOD
#define Encorder2_A_Pin GPIO_PIN_4
#define Encorder2_A_GPIO_Port GPIOB
#define Encorder2_B_Pin GPIO_PIN_5
#define Encorder2_B_GPIO_Port GPIOB
#define DRV1_EN_Pin GPIO_PIN_6
#define DRV1_EN_GPIO_Port GPIOB
#define DRV2_EN_Pin GPIO_PIN_7
#define DRV2_EN_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
