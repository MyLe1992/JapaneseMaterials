/**
*   @file Icu_Cfg.h
*   @version 1.1.0
*
*   @brief   AUTOSAR Icu - contains the configuration data of the ICU driver
*   @details Contains the configuration data of the ICU driver
*
*   @addtogroup ICU_MODULE
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : GTM
*   Dependencies         : none
*
*   Autosar Version      : 4.0.3
*   Autosar Revision     : ASR_REL_4_0_REV_0003
*   Autosar Conf.Variant :
*   SW Version           : 1.1.0
*   Build Version        : MPC577XM_MCAL_1_1_0_FBR_ASR_REL_4_0_REV_0003_20150925
*
*   (c) Copyright 2006-2015 Freescale Inc
*   All Rights Reserved.
==================================================================================================*/
/*==================================================================================================
==================================================================================================*/

#ifndef ICU_ENVCFG_H
#define ICU_ENVCFG_H

#ifdef __cplusplus
extern "C"{
#endif 

/**
* @page misra_violations MISRA-C:2004 violations
*
* @section [global]
*       Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely
*       on the significance of more than 31 characters. The used compilers use more than 31 chars
*       for identifiers.
*/
/*==================================================================================================
                                         INCLUDE FILES
 1) system and project includes
 2) needed interfaces from external units
 3) internal and external interfaces from this unit
==================================================================================================*/

/*==================================================================================================
                               SOURCE FILE VERSION INFORMATION
==================================================================================================*/
#define ICU_ENVCFG_VENDOR_ID                        43

#define ICU_ENVCFG_AR_RELEASE_MAJOR_VERSION         4
#define ICU_ENVCFG_AR_RELEASE_MINOR_VERSION         0
#define ICU_ENVCFG_AR_RELEASE_REVISION_VERSION      3

#define ICU_ENVCFG_SW_MAJOR_VERSION                 1
#define ICU_ENVCFG_SW_MINOR_VERSION                 1
#define ICU_ENVCFG_SW_PATCH_VERSION                 0
/*==================================================================================================
                                      FILE VERSION CHECKS
==================================================================================================*/


/*==================================================================================================
                                           CONSTANTS
==================================================================================================*/


/*==================================================================================================
                                       DEFINES AND MACROS
==================================================================================================*/
#define ICU_QM   (STD_OFF)
#define ICU_FTE  (STD_ON)
#define ICU_GTE  (STD_OFF)
#define ICU_NTE  (STD_OFF)

#if (ICU_FTE == STD_ON)
 #define ICU_VALIDATE_GLOBAL_CALL         (ICU_DEV_ERROR_DETECT)
 #define ICU_VALIDATE_CALL_AND_CHANNEL    (ICU_DEV_ERROR_DETECT)
 #define ICU_VALIDATE_PARAMS              (ICU_DEV_ERROR_DETECT)
#endif

/*==================================================================================================
*                                             ENUMS
==================================================================================================*/


/*==================================================================================================
*                                STRUCTURES AND OTHER TYPEDEFS
==================================================================================================*/


/*==================================================================================================
*                                GLOBAL VARIABLE DECLARATIONS
==================================================================================================*/


/*==================================================================================================
*                                    FUNCTION PROTOTYPES
==================================================================================================*/

#ifdef __cplusplus
}
#endif

#endif /* ICU_ENVCFG_H */

/** @} */
