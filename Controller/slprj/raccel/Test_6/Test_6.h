#include "__cf_Test_6.h"
#ifndef RTW_HEADER_Test_6_h_
#define RTW_HEADER_Test_6_h_
#include <stddef.h>
#include <string.h>
#include "rtw_modelmap.h"
#ifndef Test_6_COMMON_INCLUDES_
#define Test_6_COMMON_INCLUDES_
#include <stdlib.h>
#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "raccel.h"
#include "rt_logging.h"
#include "dt_info.h"
#include "ext_work.h"
#endif
#include "Test_6_types.h"
#include "multiword_types.h"
#include "mwmathutil.h"
#include "rtGetInf.h"
#include "rt_nonfinite.h"
#include "rt_defines.h"
#define MODEL_NAME Test_6
#define NSAMPLE_TIMES (3) 
#define NINPUTS (0)       
#define NOUTPUTS (0)     
#define NBLOCKIO (39) 
#define NUM_ZC_EVENTS (0) 
#ifndef NCSTATES
#define NCSTATES (4)   
#elif NCSTATES != 4
#error Invalid specification of NCSTATES defined in compiler command
#endif
#ifndef rtmGetDataMapInfo
#define rtmGetDataMapInfo(rtm) (*rt_dataMapInfoPtr)
#endif
#ifndef rtmSetDataMapInfo
#define rtmSetDataMapInfo(rtm, val) (rt_dataMapInfoPtr = &val)
#endif
#ifndef IN_RACCEL_MAIN
#endif
typedef struct { int8_T kjes3oo2hl ; } ijkeygzxlg ; typedef struct { int8_T
g3rl2ae3h5 ; } haom5s4akr ; typedef struct { int8_T ftgzbl5sdt ; } gzldztker1
; typedef struct { real_T c1wihigpkm ; real_T ms1tnb0r0g ; real_T a5zfbbb0qq
; real_T ppzxu1qfca ; real_T dnxosaqlbe ; real_T mrxcmtkkxc ; real_T
prioknlown ; real_T myptf3olxt ; real_T oyzizcdafj [ 101 ] ; real_T
j2okizix2k ; real_T lur0xpzmia ; real_T lltcwhvsls [ 101 ] ; real_T
dn3u1to0fb ; real_T pejm4grrjm ; real_T fnebbxdz2e [ 101 ] ; real_T
bxkkb1vvlt ; real_T n0illhx5ya ; real_T bgss2atr10 [ 101 ] ; real_T
jlxenqyyvp ; real_T ialhv51lel [ 101 ] ; real_T h5xzhrubcx ; real_T
ot5bayj2co [ 101 ] ; real_T daxey5ee4s ; real_T a5vrhmsvmz ; real_T
mfftr3eonj [ 101 ] ; real_T fnn3zwli4w ; real_T awfmxg4oga [ 101 ] ; real_T
nvktoxykdu ; real_T maaefk2zln [ 101 ] ; real_T gzrjlfoup3 ; real_T
mmeevj44ql ; real_T n1j3koitfo ; real_T kf5c2qayle ; real_T n43qdfzurg ;
real_T hzcod5dbdr ; real_T lvnvuijq4v ; real_T i2ksobtr52 ; real_T jloo4dpj3m
; real_T pcctb52ndf ; } B ; typedef struct { real_T cemqavd2el ; real_T
juyqb1h3hy ; real_T krljbuyltk ; real_T pbs1g43e1x ; struct { void * TimePtr
; void * DataPtr ; void * RSimInfoPtr ; } m4mw5moski ; struct { void *
LoggedData ; } oe3uj40uld ; struct { void * LoggedData ; } nxj451vfra ;
struct { void * LoggedData ; } a40i0lngxi ; struct { void * LoggedData ; }
gzcwnrxeho ; struct { void * LoggedData ; } ambph1lihp ; struct { void *
LoggedData ; } pvc5xpukqt ; struct { void * LoggedData ; } joy3kruc2n ; int_T
f4n0vbpyn0 [ 2 ] ; int_T k4b4rvbnmu ; struct { int_T PrevIndex ; } h2uzynsztv
; int_T aetske3plq ; int_T a4emlmnf1u ; int_T hi0p0ghffi ; int_T fvbaont3ec [
101 ] ; int_T ifib2m1rbj ; int_T dylyuqxill [ 101 ] ; int_T bc0lurlo2t ;
int_T bhfio2k4dd [ 101 ] ; int_T mb5u353z4m ; int_T gl4ai3titz [ 101 ] ;
int_T azhmqkyta1 ; int_T jtidt0ghg0 [ 101 ] ; int_T c5ivyapl2d ; int_T
iftxolr5s0 [ 101 ] ; int_T hu2bqlk5ww ; int_T a405rn5n2k [ 101 ] ; int_T
ptkwfp35cg ; int_T kjmcfdfosd [ 101 ] ; int_T hdf2dewxr3 ; int_T pv3exukcsy [
101 ] ; int_T kmbf3tx51m [ 101 ] ; int8_T fwbslrmtnu ; int8_T o5ypc114ys ;
int8_T hjqgajwrem ; int8_T huazbnu45f ; int8_T or5ci1nvlu ; int8_T pkf2wh0bb4
; int8_T aqzmjvcbt4 ; int8_T cht0x5uw5w ; int8_T d3n1gqlvsh ; int8_T
j0b4zfsdwy ; int8_T cscqjtgycq ; int8_T c12yvmocko ; int8_T h5qx3wt2io ;
int8_T ediykvo4e2 ; int8_T borrmivy1y ; int8_T fpk3hvw3ty ; int8_T cdovat5we3
; int8_T lvk1jcs5a4 ; int8_T dkff2s30c1 ; int8_T f1rq30zf5g ; int8_T
gonwobyj4s ; boolean_T fsto1f2fcp ; gzldztker1 d0opiwbzqd ; ijkeygzxlg
p35zgpfdin ; haom5s4akr khjeapiu0l ; ijkeygzxlg owtmkdbqs0 ; haom5s4akr
dzwiabih3z ; ijkeygzxlg l0cqxga3co ; gzldztker1 jocvt5ychmz ; ijkeygzxlg
lttvbukncc ; haom5s4akr jqnaex011u ; ijkeygzxlg b3eyhtisdl ; haom5s4akr
jvqzj4tjypc ; ijkeygzxlg nz405ughwu5 ; } DW ; typedef struct { real_T
ircw3anqvw [ 2 ] ; real_T eaodemohi1 ; real_T fzldk4g5gh ; } X ; typedef
struct { real_T ircw3anqvw [ 2 ] ; real_T eaodemohi1 ; real_T fzldk4g5gh ; }
XDot ; typedef struct { boolean_T ircw3anqvw [ 2 ] ; boolean_T eaodemohi1 ;
boolean_T fzldk4g5gh ; } XDis ; typedef struct { real_T ircw3anqvw [ 2 ] ;
real_T eaodemohi1 ; real_T fzldk4g5gh ; } CStateAbsTol ; typedef struct {
real_T ox1vq5ek0m ; real_T n4dhissynj ; real_T lngn1h4eow ; real_T jzdstrwthy
; real_T lsxrsbgcu3 [ 101 ] ; real_T cv0bnb0vxx ; real_T lnesrmaykl [ 101 ] ;
real_T irhruetdru ; real_T jqvuyzjbmz [ 101 ] ; real_T cyvgrjckj5 ; real_T
f12qfvqhb0 [ 101 ] ; real_T cpdj1i2e1q ; real_T ndgs4ejxk1 [ 101 ] ; real_T
fhgw1fdyio ; real_T ktfljy23mp [ 101 ] ; real_T bxgb1r0oc3 ; real_T
auh25fkuzw [ 101 ] ; real_T jpbts2nrre ; real_T hnxuon0jap [ 101 ] ; real_T
jbpooemj3l ; real_T ee0b0ow2v4 [ 101 ] ; real_T e3cwly55jf [ 101 ] ; real_T
g15p1akqtw ; real_T gurv4cnteb ; } ZCV ; typedef struct {
rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo ; struct n30psoq5me_ { real_T
a_Value ; real_T b_Value ; } ; struct muqjldsqnr_ { real_T c_Value ; real_T
d_Value ; } ; struct lsiqgdduzd_ { real_T b_Value ; real_T c_Value ; } ;
struct P_ { real_T One_Value ; real_T _Value ; real_T _Value_ljzothllya ;
real_T _Value_hzxskxo5g1 ; real_T _Value_cwv1jbna1p ; real_T
_Value_bkoukzz5q3 ; real_T _Value_p4aknwho14 ; real_T _Value_cskia0xx0h ;
real_T _Value_ehu0v3bva2 ; real_T _Value_lnmi15yrli ; real_T
_Value_lhfgfqrz5e ; real_T _Value_oj14ivbiap ; real_T _Value_jaeatq55hz ;
real_T Desiredforce2_Time ; real_T Desiredforce2_Y0 ; real_T
Desiredforce2_YFinal ; real_T Desiredforce3_Time ; real_T Desiredforce3_Y0 ;
real_T Desiredforce3_YFinal ; real_T Plantofactuator_A [ 2 ] ; real_T
Plantofactuator_C [ 2 ] ; real_T FromWs_Time0 [ 6 ] ; real_T FromWs_Data0 [ 6
] ; real_T Weight_Value ; real_T N_Value [ 101 ] ; real_T
Weight_Value_kizkamhsip ; real_T Weight_Value_kgns5ccezm ; real_T Z_Value [
101 ] ; real_T Weight_Value_bf1xrz5xih ; real_T Weight_Value_m2mmbd12vb ;
real_T Weight_Value_lmccj2c1in ; real_T P_Value [ 101 ] ; real_T
Weight_Value_au4o22f1wh ; real_T Weight_Value_ejj0qpiu3e ; real_T
Weight_Value_n5cjbeufat ; real_T xdata_Value [ 101 ] ; real_T MidRange_Value
; real_T Zero_Value ; real_T Switch_Threshold ; real_T DerivativeGain_Gain ;
real_T Filter_IC ; real_T FilterCoefficient_Gain ; real_T IntegralGain_Gain ;
real_T Integrator_IC ; lsiqgdduzd d0opiwbzqd ; n30psoq5me p35zgpfdin ;
muqjldsqnr khjeapiu0l ; n30psoq5me owtmkdbqs0 ; muqjldsqnr dzwiabih3z ;
n30psoq5me l0cqxga3co ; lsiqgdduzd jocvt5ychmz ; n30psoq5me lttvbukncc ;
muqjldsqnr jqnaex011u ; n30psoq5me b3eyhtisdl ; muqjldsqnr jvqzj4tjypc ;
n30psoq5me nz405ughwu5 ; } ; extern P rtP ; extern const char *
RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ; extern DW rtDW ;
extern const rtwCAPI_ModelMappingStaticInfo * Test_6_GetCAPIStaticMap ( void
) ; extern SimStruct * const rtS ; extern const int_T gblNumToFiles ; extern
const int_T gblNumFrFiles ; extern const int_T gblNumFrWksBlocks ; extern
rtInportTUtable * gblInportTUtables ; extern const char * gblInportFileName ;
extern const int_T gblNumRootInportBlks ; extern const int_T
gblNumModelInputs ; extern const int_T gblInportDataTypeIdx [ ] ; extern
const int_T gblInportDims [ ] ; extern const int_T gblInportComplex [ ] ;
extern const int_T gblInportInterpoFlag [ ] ; extern const int_T
gblInportContinuous [ ] ; extern DataMapInfo * rt_dataMapInfoPtr ; extern
rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T tid )
; void MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void
MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ;
SimStruct * raccel_register_model ( void ) ;
#endif
