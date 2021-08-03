#ifndef __c2_Fuzzy_PD_Controller_new_h__
#define __c2_Fuzzy_PD_Controller_new_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc2_Fuzzy_PD_Controller_newInstanceStruct
#define typedef_SFc2_Fuzzy_PD_Controller_newInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c2_sfEvent;
  boolean_T c2_isStable;
  boolean_T c2_doneDoubleBufferReInit;
  uint8_T c2_is_active_c2_Fuzzy_PD_Controller_new;
  real_T *c2_fd;
  real_T *c2_x_Md;
  real_T *c2_x_H;
} SFc2_Fuzzy_PD_Controller_newInstanceStruct;

#endif                                 /*typedef_SFc2_Fuzzy_PD_Controller_newInstanceStruct*/

/* Named Constants */

/* Variable Declarations */
extern struct SfDebugInstanceStruct *sfGlobalDebugInstanceStruct;

/* Variable Definitions */

/* Function Declarations */
extern const mxArray
  *sf_c2_Fuzzy_PD_Controller_new_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c2_Fuzzy_PD_Controller_new_get_check_sum(mxArray *plhs[]);
extern void c2_Fuzzy_PD_Controller_new_method_dispatcher(SimStruct *S, int_T
  method, void *data);

#endif
