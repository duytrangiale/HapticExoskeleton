#include "__cf_Test_6.h"
#include "rtw_capi.h"
#ifdef HOST_CAPI_BUILD
#include "Test_6_capi_host.h"
#define sizeof(s) ((size_t)(0xFFFF))
#undef rt_offsetof
#define rt_offsetof(s,el) ((uint16_T)(0xFFFF))
#define TARGET_CONST
#define TARGET_STRING(s) (s)    
#ifndef SS_INT64
#define SS_INT64  15
#endif
#ifndef SS_UINT64
#define SS_UINT64  16
#endif
#else
#include "builtin_typeid_types.h"
#include "Test_6.h"
#include "Test_6_private.h"
#ifdef LIGHT_WEIGHT_CAPI
#define TARGET_CONST                  
#define TARGET_STRING(s)               (NULL)                    
#else
#define TARGET_CONST                   const
#define TARGET_STRING(s)               (s)
#endif
#endif
static const rtwCAPI_Signals rtBlockSignals [ ] = { { 0 , 1 , TARGET_STRING (
"Test_6/Force_conversion" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , {
1 , 29 , TARGET_STRING ( "Test_6/Position_conversion" ) , TARGET_STRING ( ""
) , 0 , 0 , 0 , 0 , 0 } , { 2 , 0 , TARGET_STRING ( "Test_6/Sum1" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 3 , 0 , TARGET_STRING (
"Test_6/Sum3" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 4 , 0 ,
TARGET_STRING ( "Test_6/Sum4" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 }
, { 5 , 0 , TARGET_STRING ( "Test_6/Sum5" ) , TARGET_STRING ( "" ) , 0 , 0 ,
0 , 0 , 0 } , { 6 , 0 , TARGET_STRING ( "Test_6/Plant of actuator" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 7 , 0 , TARGET_STRING (
"Test_6/PID Controller/Derivative Gain" ) , TARGET_STRING ( "" ) , 0 , 0 , 0
, 0 , 1 } , { 8 , 0 , TARGET_STRING (
"Test_6/PID Controller/Filter Coefficient" ) , TARGET_STRING ( "" ) , 0 , 0 ,
0 , 0 , 0 } , { 9 , 0 , TARGET_STRING ( "Test_6/PID Controller/Integral Gain"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 10 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Zero Firing Strength?" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 11 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Total Firing Strength" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 12 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Switch" ) , TARGET_STRING ( "" ) ,
0 , 0 , 0 , 0 , 0 } , { 13 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Defuzzification1/Action: One" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 14 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Defuzzification1/Action: u1" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 15 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Defuzzification1/Merge" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 16 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Defuzzification1/Sum1" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 17 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule1/impMethod" ) , TARGET_STRING
( "" ) , 0 , 0 , 1 , 0 , 0 } , { 18 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule1/Weighting" ) , TARGET_STRING
( "" ) , 0 , 0 , 0 , 0 , 0 } , { 19 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule2/impMethod" ) , TARGET_STRING
( "" ) , 0 , 0 , 1 , 0 , 0 } , { 20 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule2/Weighting" ) , TARGET_STRING
( "" ) , 0 , 0 , 0 , 0 , 0 } , { 21 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule3/impMethod" ) , TARGET_STRING
( "" ) , 0 , 0 , 1 , 0 , 0 } , { 22 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule3/Weighting" ) , TARGET_STRING
( "" ) , 0 , 0 , 0 , 0 , 0 } , { 23 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule4/impMethod" ) , TARGET_STRING
( "" ) , 0 , 0 , 1 , 0 , 0 } , { 24 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule4/Weighting" ) , TARGET_STRING
( "" ) , 0 , 0 , 0 , 0 , 0 } , { 25 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule5/impMethod" ) , TARGET_STRING
( "" ) , 0 , 0 , 1 , 0 , 0 } , { 26 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule5/Weighting" ) , TARGET_STRING
( "" ) , 0 , 0 , 0 , 0 , 0 } , { 27 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule6/impMethod" ) , TARGET_STRING
( "" ) , 0 , 0 , 1 , 0 , 0 } , { 28 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule6/Weighting" ) , TARGET_STRING
( "" ) , 0 , 0 , 0 , 0 , 0 } , { 29 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule7/impMethod" ) , TARGET_STRING
( "" ) , 0 , 0 , 1 , 0 , 0 } , { 30 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule7/Weighting" ) , TARGET_STRING
( "" ) , 0 , 0 , 0 , 0 , 0 } , { 31 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule8/impMethod" ) , TARGET_STRING
( "" ) , 0 , 0 , 1 , 0 , 0 } , { 32 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule8/Weighting" ) , TARGET_STRING
( "" ) , 0 , 0 , 0 , 0 , 0 } , { 33 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule9/impMethod" ) , TARGET_STRING
( "" ) , 0 , 0 , 1 , 0 , 0 } , { 34 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Rule9/Weighting" ) , TARGET_STRING
( "" ) , 0 , 0 , 0 , 0 , 0 } , { 35 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Defuzzification1/Action: One/One"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 36 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/Defuzzification1/Action: u1/u1" )
, TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 37 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/N/If Action Subsystem" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 38 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/N/If Action Subsystem1" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 39 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/N/If Action Subsystem2" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 40 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/N/If Action Subsystem3" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 41 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/N/Merge" ) , TARGET_STRING (
"" ) , 0 , 0 , 0 , 0 , 0 } , { 42 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/P/If Action Subsystem" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 43 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/P/If Action Subsystem1" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 44 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/P/If Action Subsystem2" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 45 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/P/If Action Subsystem3" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 46 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/P/Merge" ) , TARGET_STRING (
"" ) , 0 , 0 , 0 , 0 , 0 } , { 47 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/Z/If Action Subsystem" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 48 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/Z/If Action Subsystem1" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 49 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/Z/If Action Subsystem2" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 50 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/Z/If Action Subsystem3" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 51 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/Z/Merge" ) , TARGET_STRING (
"" ) , 0 , 0 , 0 , 0 , 0 } , { 52 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/N/If Action Subsystem"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 53 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/N/If Action Subsystem1"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 54 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/N/If Action Subsystem2"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 55 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/N/If Action Subsystem3"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 56 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/N/Merge" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 57 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/P/If Action Subsystem"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 58 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/P/If Action Subsystem1"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 59 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/P/If Action Subsystem2"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 60 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/P/If Action Subsystem3"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 61 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/P/Merge" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 62 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/Z/If Action Subsystem"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 63 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/Z/If Action Subsystem1"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 64 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/Z/If Action Subsystem2"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 65 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/Z/If Action Subsystem3"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 66 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/Z/Merge" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 67 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/N/If Action Subsystem/0" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 68 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/error/N/If Action Subsystem1/Product ab (trimf)"
) , TARGET_STRING ( "(x-a)/(b-a)" ) , 0 , 0 , 0 , 0 , 0 } , { 69 , 0 ,
TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/N/If Action Subsystem2/0" )
, TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 70 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/error/N/If Action Subsystem3/Product cd (trimf)"
) , TARGET_STRING ( "(d-x)/(d-c)" ) , 0 , 0 , 0 , 0 , 0 } , { 71 , 0 ,
TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/P/If Action Subsystem/0" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 72 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/error/P/If Action Subsystem1/Product ab (trimf)"
) , TARGET_STRING ( "(x-a)/(b-a)" ) , 0 , 0 , 0 , 0 , 0 } , { 73 , 0 ,
TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/P/If Action Subsystem2/0" )
, TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 74 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/error/P/If Action Subsystem3/Product cd (trimf)"
) , TARGET_STRING ( "(d-x)/(d-c)" ) , 0 , 0 , 0 , 0 , 0 } , { 75 , 0 ,
TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/Z/If Action Subsystem/0" ) ,
TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 76 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/error/Z/If Action Subsystem1/0" )
, TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 77 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/error/Z/If Action Subsystem2/Product cd (trimf)"
) , TARGET_STRING ( "(c-x)/(c-b)" ) , 0 , 0 , 0 , 0 , 0 } , { 78 , 0 ,
TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/error/Z/If Action Subsystem3/Product ab (trimf)"
) , TARGET_STRING ( "(x-a)/(b-a)" ) , 0 , 0 , 0 , 0 , 0 } , { 79 , 0 ,
TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/N/If Action Subsystem/0"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 80 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/N/If Action Subsystem1/Product ab (trimf)"
) , TARGET_STRING ( "(x-a)/(b-a)" ) , 0 , 0 , 0 , 0 , 0 } , { 81 , 0 ,
TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/N/If Action Subsystem2/0"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 82 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/N/If Action Subsystem3/Product cd (trimf)"
) , TARGET_STRING ( "(d-x)/(d-c)" ) , 0 , 0 , 0 , 0 , 0 } , { 83 , 0 ,
TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/P/If Action Subsystem/0"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 84 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/P/If Action Subsystem1/Product ab (trimf)"
) , TARGET_STRING ( "(x-a)/(b-a)" ) , 0 , 0 , 0 , 0 , 0 } , { 85 , 0 ,
TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/P/If Action Subsystem2/0"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 86 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/P/If Action Subsystem3/Product cd (trimf)"
) , TARGET_STRING ( "(d-x)/(d-c)" ) , 0 , 0 , 0 , 0 , 0 } , { 87 , 0 ,
TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/Z/If Action Subsystem/0"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 88 , 0 , TARGET_STRING (
"Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/Z/If Action Subsystem1/0"
) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 89 , 0 , TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/Z/If Action Subsystem2/Product cd (trimf)"
) , TARGET_STRING ( "(c-x)/(c-b)" ) , 0 , 0 , 0 , 0 , 0 } , { 90 , 0 ,
TARGET_STRING (
 "Test_6/Fuzzy Logic  Controller/FIS Wizard/errorderiv/Z/If Action Subsystem3/Product ab (trimf)"
) , TARGET_STRING ( "(x-a)/(b-a)" ) , 0 , 0 , 0 , 0 , 0 } , { 0 , 0 , ( NULL
) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ;
#ifndef HOST_CAPI_BUILD
static void * rtDataAddrMap [ ] = { & rtB . pcctb52ndf , & rtB . jloo4dpj3m ,
& rtB . ppzxu1qfca , & rtB . dnxosaqlbe , & rtB . c1wihigpkm , & rtB .
a5zfbbb0qq , & rtB . ms1tnb0r0g , & rtB . hzcod5dbdr , & rtB . lvnvuijq4v , &
rtB . i2ksobtr52 , & rtB . kf5c2qayle , & rtB . n1j3koitfo , & rtB .
n43qdfzurg , & rtB . mmeevj44ql , & rtB . mmeevj44ql , & rtB . mmeevj44ql , &
rtB . gzrjlfoup3 , & rtB . oyzizcdafj [ 0 ] , & rtB . myptf3olxt , & rtB .
lltcwhvsls [ 0 ] , & rtB . lur0xpzmia , & rtB . fnebbxdz2e [ 0 ] , & rtB .
pejm4grrjm , & rtB . bgss2atr10 [ 0 ] , & rtB . n0illhx5ya , & rtB .
ialhv51lel [ 0 ] , & rtB . jlxenqyyvp , & rtB . ot5bayj2co [ 0 ] , & rtB .
h5xzhrubcx , & rtB . mfftr3eonj [ 0 ] , & rtB . a5vrhmsvmz , & rtB .
awfmxg4oga [ 0 ] , & rtB . fnn3zwli4w , & rtB . maaefk2zln [ 0 ] , & rtB .
nvktoxykdu , & rtB . mmeevj44ql , & rtB . mmeevj44ql , & rtB . mrxcmtkkxc , &
rtB . mrxcmtkkxc , & rtB . mrxcmtkkxc , & rtB . mrxcmtkkxc , & rtB .
mrxcmtkkxc , & rtB . dn3u1to0fb , & rtB . dn3u1to0fb , & rtB . dn3u1to0fb , &
rtB . dn3u1to0fb , & rtB . dn3u1to0fb , & rtB . j2okizix2k , & rtB .
j2okizix2k , & rtB . j2okizix2k , & rtB . j2okizix2k , & rtB . j2okizix2k , &
rtB . prioknlown , & rtB . prioknlown , & rtB . prioknlown , & rtB .
prioknlown , & rtB . prioknlown , & rtB . daxey5ee4s , & rtB . daxey5ee4s , &
rtB . daxey5ee4s , & rtB . daxey5ee4s , & rtB . daxey5ee4s , & rtB .
bxkkb1vvlt , & rtB . bxkkb1vvlt , & rtB . bxkkb1vvlt , & rtB . bxkkb1vvlt , &
rtB . bxkkb1vvlt , & rtB . mrxcmtkkxc , & rtB . mrxcmtkkxc , & rtB .
mrxcmtkkxc , & rtB . mrxcmtkkxc , & rtB . dn3u1to0fb , & rtB . dn3u1to0fb , &
rtB . dn3u1to0fb , & rtB . dn3u1to0fb , & rtB . j2okizix2k , & rtB .
j2okizix2k , & rtB . j2okizix2k , & rtB . j2okizix2k , & rtB . prioknlown , &
rtB . prioknlown , & rtB . prioknlown , & rtB . prioknlown , & rtB .
daxey5ee4s , & rtB . daxey5ee4s , & rtB . daxey5ee4s , & rtB . daxey5ee4s , &
rtB . bxkkb1vvlt , & rtB . bxkkb1vvlt , & rtB . bxkkb1vvlt , & rtB .
bxkkb1vvlt , } ; static int32_T * rtVarDimsAddrMap [ ] = { ( NULL ) } ;
#endif
static TARGET_CONST rtwCAPI_DataTypeMap rtDataTypeMap [ ] = { { "double" ,
"real_T" , 0 , 0 , sizeof ( real_T ) , SS_DOUBLE , 0 , 0 } } ;
#ifdef HOST_CAPI_BUILD
#undef sizeof
#endif
static TARGET_CONST rtwCAPI_ElementMap rtElementMap [ ] = { { ( NULL ) , 0 ,
0 , 0 , 0 } , } ; static const rtwCAPI_DimensionMap rtDimensionMap [ ] = { {
rtwCAPI_SCALAR , 0 , 2 , 0 } , { rtwCAPI_VECTOR , 2 , 2 , 0 } } ; static
const uint_T rtDimensionArray [ ] = { 1 , 1 , 101 , 1 } ; static const real_T
rtcapiStoredFloats [ ] = { 0.0 , 1.0 } ; static const rtwCAPI_FixPtMap
rtFixPtMap [ ] = { { ( NULL ) , ( NULL ) , rtwCAPI_FIX_RESERVED , 0 , 0 , 0 }
, } ; static const rtwCAPI_SampleTimeMap rtSampleTimeMap [ ] = { { ( const
void * ) & rtcapiStoredFloats [ 0 ] , ( const void * ) & rtcapiStoredFloats [
0 ] , 0 , 0 } , { ( const void * ) & rtcapiStoredFloats [ 0 ] , ( const void
* ) & rtcapiStoredFloats [ 1 ] , 1 , 0 } } ; static
rtwCAPI_ModelMappingStaticInfo mmiStatic = { { rtBlockSignals , 91 , ( NULL )
, 0 , ( NULL ) , 0 } , { ( NULL ) , 0 , ( NULL ) , 0 } , { ( NULL ) , 0 } , {
rtDataTypeMap , rtDimensionMap , rtFixPtMap , rtElementMap , rtSampleTimeMap
, rtDimensionArray } , "float" , { 2143658542U , 1078990067U , 1346521984U ,
150997040U } , ( NULL ) , 0 } ; const rtwCAPI_ModelMappingStaticInfo *
Test_6_GetCAPIStaticMap ( ) { return & mmiStatic ; }
#ifndef HOST_CAPI_BUILD
void Test_6_InitializeDataMapInfo ( SimStruct * const rtS ) {
rtwCAPI_SetVersion ( ( * rt_dataMapInfoPtr ) . mmi , 1 ) ;
rtwCAPI_SetStaticMap ( ( * rt_dataMapInfoPtr ) . mmi , & mmiStatic ) ;
rtwCAPI_SetLoggingStaticMap ( ( * rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ;
rtwCAPI_SetDataAddressMap ( ( * rt_dataMapInfoPtr ) . mmi , rtDataAddrMap ) ;
rtwCAPI_SetVarDimsAddressMap ( ( * rt_dataMapInfoPtr ) . mmi ,
rtVarDimsAddrMap ) ; rtwCAPI_SetInstanceLoggingInfo ( ( * rt_dataMapInfoPtr )
. mmi , ( NULL ) ) ; rtwCAPI_SetChildMMIArray ( ( * rt_dataMapInfoPtr ) . mmi
, ( NULL ) ) ; rtwCAPI_SetChildMMIArrayLen ( ( * rt_dataMapInfoPtr ) . mmi ,
0 ) ; }
#else
#ifdef __cplusplus
extern "C" {
#endif
void Test_6_host_InitializeDataMapInfo ( Test_6_host_DataMapInfo_T * dataMap
, const char * path ) { rtwCAPI_SetVersion ( dataMap -> mmi , 1 ) ;
rtwCAPI_SetStaticMap ( dataMap -> mmi , & mmiStatic ) ;
rtwCAPI_SetDataAddressMap ( dataMap -> mmi , NULL ) ;
rtwCAPI_SetVarDimsAddressMap ( dataMap -> mmi , NULL ) ; rtwCAPI_SetPath (
dataMap -> mmi , path ) ; rtwCAPI_SetFullPath ( dataMap -> mmi , NULL ) ;
rtwCAPI_SetChildMMIArray ( dataMap -> mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArrayLen ( dataMap -> mmi , 0 ) ; }
#ifdef __cplusplus
}
#endif
#endif
