/* Include files */

#include "Fuzzy_PD_Controller_test_sfun.h"
#include "Fuzzy_PD_Controller_test_sfun_debug_macros.h"
#include "c1_Fuzzy_PD_Controller_test.h"
#include "c2_Fuzzy_PD_Controller_test.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */
uint32_T _Fuzzy_PD_Controller_testMachineNumber_;

/* Function Declarations */

/* Function Definitions */
void Fuzzy_PD_Controller_test_initializer(void)
{
}

void Fuzzy_PD_Controller_test_terminator(void)
{
}

/* SFunction Glue Code */
unsigned int sf_Fuzzy_PD_Controller_test_method_dispatcher(SimStruct
  *simstructPtr, unsigned int chartFileNumber, const char* specsCksum, int_T
  method, void *data)
{
  if (chartFileNumber==1) {
    c1_Fuzzy_PD_Controller_test_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  if (chartFileNumber==2) {
    c2_Fuzzy_PD_Controller_test_method_dispatcher(simstructPtr, method, data);
    return 1;
  }

  return 0;
}

extern void sf_Fuzzy_PD_Controller_test_uses_exported_functions(int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[])
{
  plhs[0] = mxCreateLogicalScalar(0);
}

unsigned int sf_Fuzzy_PD_Controller_test_process_testpoint_info_call( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
{

#ifdef MATLAB_MEX_FILE

  char commandName[32];
  char machineName[128];
  if (nrhs < 3 || !mxIsChar(prhs[0]) || !mxIsChar(prhs[1]))
    return 0;

  /* Possible call to get testpoint info. */
  mxGetString(prhs[0], commandName,sizeof(commandName)/sizeof(char));
  commandName[(sizeof(commandName)/sizeof(char)-1)] = '\0';
  if (strcmp(commandName,"get_testpoint_info"))
    return 0;
  mxGetString(prhs[1], machineName, sizeof(machineName)/sizeof(char));
  machineName[(sizeof(machineName)/sizeof(char)-1)] = '\0';
  if (!strcmp(machineName, "Fuzzy_PD_Controller_test")) {
    unsigned int chartFileNumber;
    chartFileNumber = (unsigned int)mxGetScalar(prhs[2]);
    switch (chartFileNumber) {
     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }

    return 1;
  }

  return 0;

#else

  return 0;

#endif

}

unsigned int sf_Fuzzy_PD_Controller_test_process_check_sum_call( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
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
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(2166445348U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(2750207865U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(1411280678U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2819286975U);
    } else if (!strcmp(commandName,"exportedFcn")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(0U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(0U);
    } else if (!strcmp(commandName,"makefile")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(3536829425U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(1001632579U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(2045973369U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(1401798230U);
    } else if (nrhs==3 && !strcmp(commandName,"chart")) {
      unsigned int chartFileNumber;
      chartFileNumber = (unsigned int)mxGetScalar(prhs[2]);
      switch (chartFileNumber) {
       case 1:
        {
          extern void sf_c1_Fuzzy_PD_Controller_test_get_check_sum(mxArray *
            plhs[]);
          sf_c1_Fuzzy_PD_Controller_test_get_check_sum(plhs);
          break;
        }

       case 2:
        {
          extern void sf_c2_Fuzzy_PD_Controller_test_get_check_sum(mxArray *
            plhs[]);
          sf_c2_Fuzzy_PD_Controller_test_get_check_sum(plhs);
          break;
        }

       default:
        ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(0.0);
        ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(0.0);
      }
    } else if (!strcmp(commandName,"target")) {
      ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(1079105835U);
      ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(4093772408U);
      ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(525736737U);
      ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(2157381758U);
    } else {
      return 0;
    }
  } else {
    ((real_T *)mxGetPr((plhs[0])))[0] = (real_T)(14824457U);
    ((real_T *)mxGetPr((plhs[0])))[1] = (real_T)(3178851300U);
    ((real_T *)mxGetPr((plhs[0])))[2] = (real_T)(1514131666U);
    ((real_T *)mxGetPr((plhs[0])))[3] = (real_T)(3198677778U);
  }

  return 1;

#else

  return 0;

#endif

}

unsigned int sf_Fuzzy_PD_Controller_test_autoinheritance_info( int nlhs, mxArray
  * plhs[], int nrhs, const mxArray * prhs[] )
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
          extern mxArray
            *sf_c1_Fuzzy_PD_Controller_test_get_autoinheritance_info(void);
          plhs[0] = sf_c1_Fuzzy_PD_Controller_test_get_autoinheritance_info();
          break;
        }

        plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
        break;
      }

     case 2:
      {
        if (strcmp(aiChksum, "u0KQRrHsZy3xn0eexigTxC") == 0) {
          extern mxArray
            *sf_c2_Fuzzy_PD_Controller_test_get_autoinheritance_info(void);
          plhs[0] = sf_c2_Fuzzy_PD_Controller_test_get_autoinheritance_info();
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

unsigned int sf_Fuzzy_PD_Controller_test_get_eml_resolved_functions_info( int
  nlhs, mxArray * plhs[], int nrhs, const mxArray * prhs[] )
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
          *sf_c1_Fuzzy_PD_Controller_test_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c1_Fuzzy_PD_Controller_test_get_eml_resolved_functions_info();
        plhs[0] = mxDuplicateArray(persistentMxArray);
        mxDestroyArray(persistentMxArray);
        break;
      }

     case 2:
      {
        extern const mxArray
          *sf_c2_Fuzzy_PD_Controller_test_get_eml_resolved_functions_info(void);
        mxArray *persistentMxArray = (mxArray *)
          sf_c2_Fuzzy_PD_Controller_test_get_eml_resolved_functions_info();
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

unsigned int sf_Fuzzy_PD_Controller_test_third_party_uses_info( int nlhs,
  mxArray * plhs[], int nrhs, const mxArray * prhs[] )
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
        if (strcmp(tpChksum, "IEbkwhhiogBMENFpWAcgBE") == 0) {
          extern mxArray *sf_c1_Fuzzy_PD_Controller_test_third_party_uses_info
            (void);
          plhs[0] = sf_c1_Fuzzy_PD_Controller_test_third_party_uses_info();
          break;
        }
      }

     case 2:
      {
        if (strcmp(tpChksum, "VFkv8S3k4BfodNwtRdkolF") == 0) {
          extern mxArray *sf_c2_Fuzzy_PD_Controller_test_third_party_uses_info
            (void);
          plhs[0] = sf_c2_Fuzzy_PD_Controller_test_third_party_uses_info();
          break;
        }
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;
}

unsigned int sf_Fuzzy_PD_Controller_test_jit_fallback_info( int nlhs, mxArray *
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
        if (strcmp(tpChksum, "IEbkwhhiogBMENFpWAcgBE") == 0) {
          extern mxArray *sf_c1_Fuzzy_PD_Controller_test_jit_fallback_info(void);
          plhs[0] = sf_c1_Fuzzy_PD_Controller_test_jit_fallback_info();
          break;
        }
      }

     case 2:
      {
        if (strcmp(tpChksum, "VFkv8S3k4BfodNwtRdkolF") == 0) {
          extern mxArray *sf_c2_Fuzzy_PD_Controller_test_jit_fallback_info(void);
          plhs[0] = sf_c2_Fuzzy_PD_Controller_test_jit_fallback_info();
          break;
        }
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;
}

unsigned int sf_Fuzzy_PD_Controller_test_updateBuildInfo_args_info( int nlhs,
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
        if (strcmp(tpChksum, "IEbkwhhiogBMENFpWAcgBE") == 0) {
          extern mxArray
            *sf_c1_Fuzzy_PD_Controller_test_updateBuildInfo_args_info(void);
          plhs[0] = sf_c1_Fuzzy_PD_Controller_test_updateBuildInfo_args_info();
          break;
        }
      }

     case 2:
      {
        if (strcmp(tpChksum, "VFkv8S3k4BfodNwtRdkolF") == 0) {
          extern mxArray
            *sf_c2_Fuzzy_PD_Controller_test_updateBuildInfo_args_info(void);
          plhs[0] = sf_c2_Fuzzy_PD_Controller_test_updateBuildInfo_args_info();
          break;
        }
      }

     default:
      plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
    }
  }

  return 1;
}

void sf_Fuzzy_PD_Controller_test_get_post_codegen_info( int nlhs, mxArray *
  plhs[], int nrhs, const mxArray * prhs[] )
{
  unsigned int chartFileNumber = (unsigned int) mxGetScalar(prhs[0]);
  char tpChksum[64];
  mxGetString(prhs[1], tpChksum,sizeof(tpChksum)/sizeof(char));
  tpChksum[(sizeof(tpChksum)/sizeof(char)-1)] = '\0';
  switch (chartFileNumber) {
   case 1:
    {
      if (strcmp(tpChksum, "IEbkwhhiogBMENFpWAcgBE") == 0) {
        extern mxArray *sf_c1_Fuzzy_PD_Controller_test_get_post_codegen_info
          (void);
        plhs[0] = sf_c1_Fuzzy_PD_Controller_test_get_post_codegen_info();
        return;
      }
    }
    break;

   case 2:
    {
      if (strcmp(tpChksum, "VFkv8S3k4BfodNwtRdkolF") == 0) {
        extern mxArray *sf_c2_Fuzzy_PD_Controller_test_get_post_codegen_info
          (void);
        plhs[0] = sf_c2_Fuzzy_PD_Controller_test_get_post_codegen_info();
        return;
      }
    }
    break;

   default:
    break;
  }

  plhs[0] = mxCreateDoubleMatrix(0,0,mxREAL);
}

void Fuzzy_PD_Controller_test_debug_initialize(struct SfDebugInstanceStruct*
  debugInstance)
{
  _Fuzzy_PD_Controller_testMachineNumber_ = sf_debug_initialize_machine
    (debugInstance,"Fuzzy_PD_Controller_test","sfun",0,2,0,0,0);
  sf_debug_set_machine_event_thresholds(debugInstance,
    _Fuzzy_PD_Controller_testMachineNumber_,0,0);
  sf_debug_set_machine_data_thresholds(debugInstance,
    _Fuzzy_PD_Controller_testMachineNumber_,0);
}

void Fuzzy_PD_Controller_test_register_exported_symbols(SimStruct* S)
{
}

static mxArray* sRtwOptimizationInfoStruct= NULL;
mxArray* load_Fuzzy_PD_Controller_test_optimization_info(void)
{
  if (sRtwOptimizationInfoStruct==NULL) {
    sRtwOptimizationInfoStruct = sf_load_rtw_optimization_info(
      "Fuzzy_PD_Controller_test", "Fuzzy_PD_Controller_test");
    mexMakeArrayPersistent(sRtwOptimizationInfoStruct);
  }

  return(sRtwOptimizationInfoStruct);
}

void unload_Fuzzy_PD_Controller_test_optimization_info(void)
{
  if (sRtwOptimizationInfoStruct!=NULL) {
    mxDestroyArray(sRtwOptimizationInfoStruct);
    sRtwOptimizationInfoStruct = NULL;
  }
}
