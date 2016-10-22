[!NOCODE!][!//
/**
  @file    Icu_PluginCheck.m
  @version 1.1.0

  @brief   AUTOSAR Icu - plugin check.
  @details Version checks.
  
  Project AUTOSAR 4.0 MCAL
  Patform PA
  Peripheral GTM
  Dependencies none
  
  ARVersion 4.0.3
  ARRevision ASR_REL_4_0_REV_0003
  ARConfVariant
  SWVersion 1.1.0
  BuildVersion MPC577XM_MCAL_1_1_0_FBR_ASR_REL_4_0_REV_0003_20150925

  (c) Copyright 2006-2015 Freescale Semiconductor Inc. & STMicroelectronics
  All Rights Reserved.
*/
/*==================================================================================================
==================================================================================================*/

[!//
[!FOR "idx" = "0" TO "55"!][!//
[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[IcuChannelId=$idx])"!][!//
[!IF "$countErr>1"!][!//
       [!ERROR!] **** Error: eMIOS HW Channel: [!"$idx"!] repeated: [!"$countErr"!] times ****[!ENDERROR!][!//
[!ENDIF!][!//
[!ENDFOR!][!//
[!//
[!FOR "idx" = "56" TO "71"!][!//
[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[IcuChannelId=$idx])"!][!//
[!IF "$countErr>1"!][!//
       [!ERROR!] **** Error: IRQ HW Channel: [!"$idx"!] repeated: [!"$countErr"!] times ****[!ENDERROR!][!//
[!ENDIF!][!//
[!ENDFOR!][!//
[!//
[!FOR "idx" = "72" TO "89"!][!//
[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[IcuChannelId=$idx])"!][!//
[!IF "$countErr>1"!][!//
       [!ERROR!] **** Error: Wakeup HW Channel: [!"$idx"!] repeated: [!"$countErr"!] times ****[!ENDERROR!][!//
[!ENDIF!][!//
[!ENDFOR!][!//
[!//
[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[IcuMeasurementMode='IcuSignalMeasurement' and count(IcuSignalMeasurement/*)=0])"!][!//
[!IF "$countErr>0"!][!//
       [!ERROR!] **** Error: There is a IcuSignalMeasurement Channel that is missing some configuration ****[!ENDERROR!][!//
[!ENDIF!][!//
[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[IcuMeasurementMode='IcuSignalEdgeDetection' and count(IcuSignalEdgeDetection/*)=0])"!][!//
[!IF "$countErr>0"!][!//
       [!ERROR!] **** Error: There is a IcuSignalEdgeDetection Channel that is missing some configuration ****[!ENDERROR!][!//
[!ENDIF!][!//
[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[IcuMeasurementMode='IcuTimestamp' and count(IcuTimestampMeasurement/*)=0])"!][!//
[!IF "$countErr>0"!][!//
       [!ERROR!] **** Error: There is a IcuTimestamp Channel that is missing some configuration ****[!ENDERROR!][!//
[!ENDIF!][!//

[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[IcuMeasurementMode!='IcuSignalEdgeDetection' and (IcuChannelId>=56 and IcuChannelId<=71)])"!][!//
[!IF "$countErr>0"!][!//
       [!ERROR!] **** Error: There is at least 1 IRQ channel configured in a different mode than Edge Detection, which is not possible. ****[!ENDERROR!][!//
[!ENDIF!][!//
[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[concat('b',IcuWakeupCapability)='btrue' and IcuMeasurementMode!='IcuSignalEdgeDetection'and (IcuChannelId>=72 and IcuChannelId<=89)])"!][!//
[!IF "$countErr>0"!][!//
       [!ERROR!] **** Error: There is at least 1 WAKEUP channel configured in a different mode than Edge Detection, which is not possible. ****[!ENDERROR!][!//
[!ENDIF!][!//
[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[concat('b',IcuWakeupCapability)='btrue' and (IcuChannelId>=72 and IcuChannelId<=89) and count(IcuWakeup/*)=0])"!][!//
[!IF "$countErr>0"!][!//
       [!ERROR!] **** Error: There is a Wakeup Channel which is missing its wakeup configuration ****[!ENDERROR!][!//
[!ENDIF!][!//

[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[concat('b',IcuWakeupCapability)='btrue' and (IcuChannelId>=0 and IcuChannelId<=55)])"!][!//
[!IF "$countErr>0"!][!//
[!ERROR!] **** Error: eMIOS channels 0 to 55 can not be used for the wakeup source interrupt  ****[!ENDERROR!][!//
[!ENDIF!][!//

[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[concat('b',IcuWakeupCapability)='btrue' and (IcuChannelId>=56 and IcuChannelId<=71)])"!][!//
[!IF "$countErr>0"!][!//
[!ERROR!] **** Error: IRQ channels 56 to 71 can not be used for the wakeup source interrupt  ****[!ENDERROR!][!//
[!ENDIF!][!//

[!VAR "countErr" = "count(IcuConfigSet/IcuChannel/*[concat('b',IcuWakeupCapability)='bfalse' and (IcuChannelId>=72 and IcuChannelId<=89)])"!][!//
[!IF "$countErr>0"!][!//
[!ERROR!] **** Error: For Wakeup Source channels 72 to 89 IcuWakeupCapability parameter should be checked(i.e. true)  ****[!ENDERROR!][!//
[!ENDIF!][!//
[!ENDNOCODE!][!//


[!LOOP "IcuConfigSet/IcuChannel/*"!][!//
[!VAR "check" = "IcuChannelId"!][!//
[!IF "($check =0) or ($check =8) or ($check =16) or ($check =23) or ($check =24) or ($check =28) or ($check =36) or ($check =44) or ($check =51) or ($check =52) or ($check >55) or ($check <=89) "!][!//
[!ELSE!]
[!ERROR!][!//
[!ERROR!] **** Only EMIOS channel-0, channel-8, channel-16, channel-23, channel-24, channel-28, channel-36, channel-44, channel-51 and channel-52 are supported for this controller.  ****[!ENDERROR!][!//
[!ENDERROR!][!//
[!ENDIF!][!//
[!ENDLOOP!][!//

