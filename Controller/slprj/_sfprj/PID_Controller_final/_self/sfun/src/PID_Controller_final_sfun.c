/* Include files */

#include "PID_Controller_final_sfun.h"
#include "PID_Controller_final_sfun_debug_macros.h"
#include "c1_PID_Controller_final.h"
#include "c2_PID_Controller_final.h"
#include "c3_PID_Controller_final.h"
#include "c4_PID_Controller_final.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */
uint32_T _PID_Controller_finalMachineNumber_;

/* Function Declarations */

/* Function Definitions */
void PID_Controller_final_initializer(void)
{
}

void PID_Controller_final_terminator(void)
{
}

/* SFunction Glue Code */
unsigned int sf_PID_Controller_final_method_dispatcher(SimStruct *simstructPtr,
  unsigned int chartFileNumber, const char* specsCksum, int_T method, void *data)
{
  if (chartFileNumber==1) {
    c1_PID_Controller_final_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  if (chartFileNumber==2) {
    c2_PID_Controller_final_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  if (chartFileNumber==3) {
    c3_PID_Controller_final_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  if (chartFileNumber==4) {
    c4_PID_Controller_final_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  return 0;
}

extern void sf_PID_Controller_final_uses_exported_functions(int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[])
{
  plhs[0] = mxCreateLogicalScalar(0);
}

unsigned int sf_PID_Controller_final_process_check_sum_call( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[20];
  if (nrhs<1 || !mxIsChar(prhs[0]) )
    return 0;

  /* Possible call to get the checksum */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"sf_get_check_sum"))
    return 0;
  plhs[0] = mxCreateDoubleMatrix( 1,4,mxREAL);
  if (nrhs>1 && mxIsChar(prhs[1])) {
    mxGetString(prhs[1], commandName,sizeof(commandName)/sizeof(char));
    commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
    if (!strcmp(commandName,"machine")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(3171412019U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(2832100827U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(179862172U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2498013319U);
    } else if (!strcmp(commandName,"exportedFcn")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(0U);
    } else if (!strcmp(commandName,"makefile")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(2415824755U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(396014895U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(3568733914U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(537362215U);
    } else if (nrhs==3 && !strcmp(commandName,"chart")) {
      unsigned int chartFileNumber;
      chartFileNumber = (unsigned int)mxGetScalar(prhs[2]);
      switch (chartFileNumber) {
       case 1:
        {
          extern void sf_c1_PID_Controller_final_get_check_sum(mxArray *plhs[]);
          sf_c1_PID_Controller_final_get_check_sum(plhs);
          break;
        }

       case 2:
        {
          extern void sf_c2_PID_Controller_final_get_check_sum(mxArray *plhs[]);
          sf_c2_PID_Controller_final_get_check_sum(plhs);
          break;
        }

       case 3:
        {
          extern void sf_c3_PID_Controller_final_get_check_sum(mxArray *plhs[]);
          sf_c3_PID_Controller_final_get_check_sum(plhs);
          break;
        }

       case 4:
        {
          extern void sf_c4_PID_Controller_final_get_check_sum(mxArray *plhs[]);
          sf_c4_PID_Controller_final_get_check_sum(plhs);
          break;
        }

       default:
        ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(0.0);
      }
    } else if (!strcmp(commandName,"target")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(3061339410U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1991824845U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(3599338742U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2357874978U);
    } else {
      return 0;
    }
  } else {
    ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(1248316559U);
    ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1031947157U);
    ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(2404894053U);
    ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(1874792368U);
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_PID_Controller_final_autoinheritance_info( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[32];
  char aiChksum[64];
  if (nrhs<3 || !mxIsChar(prhs[0]) )
    return 0;

  /* Possible call to get the autoinheritance_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_autoinheritance_info"))
    return 0;
  mxGetString(prhs[2], aiChksum,sizeof(aiChksum)/sizeof(char));
  aiChksum[(sizeof(aiChksum)/sizeof(char)-1)] = '\0';

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        if (strcmp(aiChksum, "2xojZf0A9nRSGNkQEhYbIB") == 0) {
          extern mxArray *sf_c1_PID_Controller_final_get_autoinheritance_info
            (void);
          plhs[0] = sf_c1_PID_Controller_final_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     case 2:
      {
        if (strcmp(aiChksum, "u0KQRrHsZy3xn0eexigTxC") == 0) {
          extern mxArray *sf_c2_PID_Controller_final_get_autoinheritance_info
            (void);
          plhs[0] = sf_c2_PID_Controller_final_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     case 3:
      {
        if (strcmp(aiChksum, "2xojZf0A9nRSGNkQEhYbIB") == 0) {
          extern mxArray *sf_c3_PID_Controller_final_get_autoinheritance_info
            (void);
          plhs[0] = sf_c3_PID_Controller_final_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     case 4:
      {
        if (strcmp(aiChksum, "u0KQRrHsZy3xn0eexigTxC") == 0) {
          extern mxArray *sf_c4_PID_Controller_final_get_autoinheritance_info
            (void);
          plhs[0] = sf_c4_PID_Controller_final_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_PID_Controller_final_get_eml_resolved_functions_info( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[64];
  if (nrhs<2 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the get_eml_resolved_functions_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_eml_resolved_functions_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        extern const mxArray
          *sf_c1_PID_Controller_final_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c1_PID_Controller_final_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     case 2:
      {
        extern const mxArray
          *sf_c2_PID_Controller_final_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c2_PID_Controller_final_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     case 3:
      {
        extern const mxArray
          *sf_c3_PID_Controller_final_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c3_PID_Controller_final_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     case 4:
      {
        extern const mxArray
          *sf_c4_PID_Controller_final_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c4_PID_Controller_final_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_PID_Controller_final_third_party_uses_info( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{
  char commandName[64];
  char tpChksum[64];
  if (nrhs<3 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the third_party_uses_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  mxGetString(prhs[2], tpChksum,sizeof(tpChksum)/sizeof(char));
  tpChksum[(sizeof(tpChksum)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_third_party_uses_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        if (strcmp(tpChksum, "mh2r5UILnnT8GcHE51kkvF") == 0) {
          extern mxArray *sf_c1_PID_Controller_final_third_party_uses_info(void);
          plhs[0] = sf_c1_PID_Controller_final_third_party_uses_info();
          break;
        }
      }

     case 2:
      {
        if (strcmp(tpChksum, "IWdOSPbu953CAS5SoheKsE") == 0) {
          extern mxArray *sf_c2_PID_Controller_final_third_party_uses_info(void);
          plhs[0] = sf_c2_PID_Controller_final_third_party_uses_info();
          break;
        }
      }

     case 3:
      {
        if (strcmp(tpChksum, "mh2r5UILnnT8GcHE51kkvF") == 0) {
          extern mxArray *sf_c3_PID_Controller_final_third_party_uses_info(void);
          plhs[0] = sf_c3_PID_Controller_final_third_party_uses_info();
          break;
        }
      }

     case 4:
      {
        if (strcmp(tpChksum, "IWdOSPbu953CAS5SoheKsE") == 0) {
          extern mxArray *sf_c4_PID_Controller_final_third_party_uses_info(void);
          plhs[0] = sf_c4_PID_Controller_final_third_party_uses_info();
          break;
        }
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;
}

unsigned int sf_PID_Controller_final_jit_fallback_info( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{
  char commandName[64];
  char tpChksum[64];
  if (nrhs<3 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the jit_fallback_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  mxGetString(prhs[2], tpChksum,sizeof(tpChksum)/sizeof(char));
  tpChksum[(sizeof(tpChksum)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_jit_fallback_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        if (strcmp(tpChksum, "mh2r5UILnnT8GcHE51kkvF") == 0) {
          extern mxArray *sf_c1_PID_Controller_final_jit_fallback_info(void);
          plhs[0] = sf_c1_PID_Controller_final_jit_fallback_info();
          break;
        }
      }

     case 2:
      {
        if (strcmp(tpChksum, "IWdOSPbu953CAS5SoheKsE") == 0) {
          extern mxArray *sf_c2_PID_Controller_final_jit_fallback_info(void);
          plhs[0] = sf_c2_PID_Controller_final_jit_fallback_info();
          break;
        }
      }

     case 3:
      {
        if (strcmp(tpChksum, "mh2r5UILnnT8GcHE51kkvF") == 0) {
          extern mxArray *sf_c3_PID_Controller_final_jit_fallback_info(void);
          plhs[0] = sf_c3_PID_Controller_final_jit_fallback_info();
          break;
        }
      }

     case 4:
      {
        if (strcmp(tpChksum, "IWdOSPbu953CAS5SoheKsE") == 0) {
          extern mxArray *sf_c4_PID_Controller_final_jit_fallback_info(void);
          plhs[0] = sf_c4_PID_Controller_final_jit_fallback_info();
          break;
        }
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;
}

unsigned int sf_PID_Controller_final_updateBuildInfo_args_info( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
{
  char commandName[64];
  char tpChksum[64];
  if (nrhs<3 || !mxIsChar(prhs[0]))
    return 0;

  /* Possible call to get the updateBuildInfo_args_info */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  mxGetString(prhs[2], tpChksum,sizeof(tpChksum)/sizeof(char));
  tpChksum[(sizeof(tpChksum)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_updateBuildInfo_args_info"))
    return 0;

  {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[1]);
    switch (chartFileNumber) {
     case 1:
      {
        if (strcmp(tpChksum, "mh2r5UILnnT8GcHE51kkvF") == 0) {
          extern mxArray *sf_c1_PID_Controller_final_updateBuildInfo_args_info
            (void);
          plhs[0] = sf_c1_PID_Controller_final_updateBuildInfo_args_info();
          break;
        }
      }

     case 2:
      {
        if (strcmp(tpChksum, "IWdOSPbu953CAS5SoheKsE") == 0) {
          extern mxArray *sf_c2_PID_Controller_final_updateBuildInfo_args_info
            (void);
          plhs[0] = sf_c2_PID_Controller_final_updateBuildInfo_args_info();
          break;
        }
      }

     case 3:
      {
        if (strcmp(tpChksum, "mh2r5UILnnT8GcHE51kkvF") == 0) {
          extern mxArray *sf_c3_PID_Controller_final_updateBuildInfo_args_info
            (void);
          plhs[0] = sf_c3_PID_Controller_final_updateBuildInfo_args_info();
          break;
        }
      }

     case 4:
      {
        if (strcmp(tpChksum, "IWdOSPbu953CAS5SoheKsE") == 0) {
          extern mxArray *sf_c4_PID_Controller_final_updateBuildInfo_args_info
            (void);
          plhs[0] = sf_c4_PID_Controller_final_updateBuildInfo_args_info();
          break;
        }
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;
}

void sf_PID_Controller_final_get_post_codegen_info( int nlhs, mxArray * plhs[],
  int nrhs, const mxArray * prhs[] )
{
  unsigned int chartFileNumber = (unsigned int) mxGetScalar(prhs[0]);
  char tpChksum[64];
  mxGetString(prhs[1], tpChksum,sizeof(tpChksum)/sizeof(char));
  tpChksum[(sizeof(tpChksum)/sizeof(char)-1)] = '\0';
  switch (chartFileNumber) {
   case 1:
    {
      if (strcmp(tpChksum, "mh2r5UILnnT8GcHE51kkvF") == 0) {
        extern mxArray *sf_c1_PID_Controller_final_get_post_codegen_info(void);
        plhs[0] = sf_c1_PID_Controller_final_get_post_codegen_info();
        return;
      }
    }
    break;

   case 2:
    {
      if (strcmp(tpChksum, "IWdOSPbu953CAS5SoheKsE") == 0) {
        extern mxArray *sf_c2_PID_Controller_final_get_post_codegen_info(void);
        plhs[0] = sf_c2_PID_Controller_final_get_post_codegen_info();
        return;
      }
    }
    break;

   case 3:
    {
      if (strcmp(tpChksum, "mh2r5UILnnT8GcHE51kkvF") == 0) {
        extern mxArray *sf_c3_PID_Controller_final_get_post_codegen_info(void);
        plhs[0] = sf_c3_PID_Controller_final_get_post_codegen_info();
        return;
      }
    }
    break;

   case 4:
    {
      if (strcmp(tpChksum, "IWdOSPbu953CAS5SoheKsE") == 0) {
        extern mxArray *sf_c4_PID_Controller_final_get_post_codegen_info(void);
        plhs[0] = sf_c4_PID_Controller_final_get_post_codegen_info();
        return;
      }
    }
    break;

   default:
    break;
  }

  plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
}

void PID_Controller_final_debug_initialize(struct SfDebugInstanceStruct*
  debugInstance)
{
  _PID_Controller_finalMachineNumber_ = sf_debug_initialize_machine
    (debugInstance,"PID_Controller_final","sfun",0,4,0,0,0);
  sf_debug_set_machine_event_thresholds(debugInstance,
    _PID_Controller_finalMachineNumber_,0,0);
  sf_debug_set_machine_data_thresholds(debugInstance,
    _PID_Controller_finalMachineNumber_,0);
}

void PID_Controller_final_register_exported_symbols(SimStruct* S)
{
}

static mxArray* sRtwOptimizationInfoStruct= NULL;
mxArray* load_PID_Controller_final_optimization_info(void)
{
  if (sRtwOptimizationInfoStruct==NULL) {
    sRtwOptimizationInfoStruct = sf_load_rtw_optimization_info(
      "PID_Controller_final", "PID_Controller_final");
    mexMakeArrayPersistent(sRtwOptimizationInfoStruct);
  }

  return(sRtwOptimizationInfoStruct);
}

void unload_PID_Controller_final_optimization_info(void)
{
  if (sRtwOptimizationInfoStruct!=NULL) {
    mxDestroyArray(sRtwOptimizationInfoStruct);
    sRtwOptimizationInfoStruct = NULL;
  }
}
