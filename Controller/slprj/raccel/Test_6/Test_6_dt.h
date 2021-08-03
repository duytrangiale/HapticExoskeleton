#include "__cf_Test_6.h"
#include "ext_types.h"
static uint_T rtDataTypeSizes [ ] = { sizeof ( real_T ) , sizeof ( real32_T )
, sizeof ( int8_T ) , sizeof ( uint8_T ) , sizeof ( int16_T ) , sizeof (
uint16_T ) , sizeof ( int32_T ) , sizeof ( uint32_T ) , sizeof ( boolean_T )
, sizeof ( fcn_call_T ) , sizeof ( int_T ) , sizeof ( pointer_T ) , sizeof (
action_T ) , 2 * sizeof ( uint32_T ) , sizeof ( int64_T ) , sizeof ( int64_T
) , sizeof ( uint64_T ) } ; static const char_T * rtDataTypeNames [ ] = {
"real_T" , "real32_T" , "int8_T" , "uint8_T" , "int16_T" , "uint16_T" ,
"int32_T" , "uint32_T" , "boolean_T" , "fcn_call_T" , "int_T" , "pointer_T" ,
"action_T" , "timer_uint32_pair_T" , "int64_T" , "int64_T" , "uint64_T" } ;
static DataTypeTransition rtBTransitions [ ] = { { ( char_T * ) ( & rtB .
c1wihigpkm ) , 0 , 0 , 939 } , { ( char_T * ) ( & rtDW . cemqavd2el ) , 0 , 0
, 4 } , { ( char_T * ) ( & rtDW . m4mw5moski . TimePtr ) , 11 , 0 , 8 } , { (
char_T * ) ( & rtDW . f4n0vbpyn0 [ 0 ] ) , 10 , 0 , 1025 } , { ( char_T * ) (
& rtDW . fwbslrmtnu ) , 2 , 0 , 21 } , { ( char_T * ) ( & rtDW . fsto1f2fcp )
, 8 , 0 , 1 } , { ( char_T * ) ( & rtDW . d0opiwbzqd . ftgzbl5sdt ) , 2 , 0 ,
1 } , { ( char_T * ) ( & rtDW . p35zgpfdin . kjes3oo2hl ) , 2 , 0 , 1 } , { (
char_T * ) ( & rtDW . khjeapiu0l . g3rl2ae3h5 ) , 2 , 0 , 1 } , { ( char_T *
) ( & rtDW . owtmkdbqs0 . kjes3oo2hl ) , 2 , 0 , 1 } , { ( char_T * ) ( &
rtDW . dzwiabih3z . g3rl2ae3h5 ) , 2 , 0 , 1 } , { ( char_T * ) ( & rtDW .
l0cqxga3co . kjes3oo2hl ) , 2 , 0 , 1 } , { ( char_T * ) ( & rtDW .
jocvt5ychmz . ftgzbl5sdt ) , 2 , 0 , 1 } , { ( char_T * ) ( & rtDW .
lttvbukncc . kjes3oo2hl ) , 2 , 0 , 1 } , { ( char_T * ) ( & rtDW .
jqnaex011u . g3rl2ae3h5 ) , 2 , 0 , 1 } , { ( char_T * ) ( & rtDW .
b3eyhtisdl . kjes3oo2hl ) , 2 , 0 , 1 } , { ( char_T * ) ( & rtDW .
jvqzj4tjypc . g3rl2ae3h5 ) , 2 , 0 , 1 } , { ( char_T * ) ( & rtDW .
nz405ughwu5 . kjes3oo2hl ) , 2 , 0 , 1 } } ; static DataTypeTransitionTable
rtBTransTable = { 18U , rtBTransitions } ; static DataTypeTransition
rtPTransitions [ ] = { { ( char_T * ) ( & rtP . One_Value ) , 0 , 0 , 456 } ,
{ ( char_T * ) ( & rtP . d0opiwbzqd . b_Value ) , 0 , 0 , 2 } , { ( char_T *
) ( & rtP . p35zgpfdin . a_Value ) , 0 , 0 , 2 } , { ( char_T * ) ( & rtP .
khjeapiu0l . c_Value ) , 0 , 0 , 2 } , { ( char_T * ) ( & rtP . owtmkdbqs0 .
a_Value ) , 0 , 0 , 2 } , { ( char_T * ) ( & rtP . dzwiabih3z . c_Value ) , 0
, 0 , 2 } , { ( char_T * ) ( & rtP . l0cqxga3co . a_Value ) , 0 , 0 , 2 } , {
( char_T * ) ( & rtP . jocvt5ychmz . b_Value ) , 0 , 0 , 2 } , { ( char_T * )
( & rtP . lttvbukncc . a_Value ) , 0 , 0 , 2 } , { ( char_T * ) ( & rtP .
jqnaex011u . c_Value ) , 0 , 0 , 2 } , { ( char_T * ) ( & rtP . b3eyhtisdl .
a_Value ) , 0 , 0 , 2 } , { ( char_T * ) ( & rtP . jvqzj4tjypc . c_Value ) ,
0 , 0 , 2 } , { ( char_T * ) ( & rtP . nz405ughwu5 . a_Value ) , 0 , 0 , 2 }
} ; static DataTypeTransitionTable rtPTransTable = { 13U , rtPTransitions } ;
