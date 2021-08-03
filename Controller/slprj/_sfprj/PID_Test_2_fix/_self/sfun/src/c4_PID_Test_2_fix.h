#ifndef __c4_PID_Test_2_fix_h__
#define __c4_PID_Test_2_fix_h__

/* Include files */
#include "sf_runtime/sfc_sf.h"
#include "sf_runtime/sfc_mex.h"
#include "rtwtypes.h"
#include "multiword_types.h"

/* Type Definitions */
#ifndef typedef_SFc4_PID_Test_2_fixInstanceStruct
#define typedef_SFc4_PID_Test_2_fixInstanceStruct

typedef struct {
  SimStruct *S;
  ChartInfoStruct chartInfo;
  uint32_T chartNumber;
  uint32_T instanceNumber;
  int32_T c4_sfEvent;
  boolean_T c4_isStable;
  boolean_T c4_doneDoubleBufferReInit;
  uint8_T c4_is_active_c4_PID_Test_2_fix;
  real_T *c4_fd;
  real_T *c4_x_Md;
  real_T *c4_x_H;
} SFc4_PID_Test_2_fixInstanceStruct;

#endif                                 /*typedef_SFc4_PID_Test_2_fixInstanceStruct*/

/* Named Constants */

/* Variable Declarations */
extern struct SfDebugInstanceStruct *sfGlobalDebugInstanceStruct;

/* Variable Definitions */

/* Function Declarations */
extern const mxArray *sf_c4_PID_Test_2_fix_get_eml_resolved_functions_info(void);

/* Function Definitions */
extern void sf_c4_PID_Test_2_fix_get_check_sum(mxArray *plhs[]);
extern void c4_PID_Test_2_fix_method_dispatcher(SimStruct *S, int_T method, void
  *data);

#endif
