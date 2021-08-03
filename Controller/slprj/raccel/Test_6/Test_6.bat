@echo off
set MATLAB=C:\Program Files\MATLAB\R2014b
"%MATLAB%\bin\win64\gmake" -f Test_6.mk  RSIM_SOLVER_SELECTION=2 OPTS="-DON_TARGET_WAIT_FOR_START=0"
