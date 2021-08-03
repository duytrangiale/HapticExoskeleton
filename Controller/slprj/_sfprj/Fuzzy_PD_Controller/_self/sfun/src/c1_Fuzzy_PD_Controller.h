#ifndef __c1_Fuzzy_PD_Controller_h__
#define __c1_Fuzzy_PD_Controller_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc1_Fuzzy_PD_ControllerInstanceStruct
#define typedef_SFc1_Fuzzy_PD_ControllerInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c1_sfEvent;
  boolean_T c1_isStable;
  boolean_T c1_doneDoubleBufferReInit;
  uint8_T c1_is_active_c1_Fuzzy_PD_Controller;
  real_T *c1_x_M;
  real_T *c1_f;
  real_T *c1_x_H;
} SFc1_Fuzzy_PD_ControllerInstanceStruct;

#endif                                 /*typedef_SFc1_Fuzzy_PD_ControllerInstanceStruct*/

/* Named Constants */

/* Variable Declarations */
extern struct SfDebugInstanceStruct *sfGlobalDebugInstanceStruct;

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c1_Fuzzy_PD_Controller_get_eml_resolved_functions_info
  (void);

/* Function Definitions */
extern void sf_c1_Fuzzy_PD_Controller_get_check_sum(mxArray *plhs[]);
extern void c1_Fuzzy_PD_Controller_method_dispatcher(SimStruct *S, int_T method,
  void *data);

#endif