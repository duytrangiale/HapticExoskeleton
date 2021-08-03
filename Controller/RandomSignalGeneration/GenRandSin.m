function x=GenRandSin(EndTime,dt)
% GenRandomSin      - Generates Random  Sine wave forms with random
%                     Amplitude, frequency and Bias.
% EndTime,dt        - output will be generated from 0 to EndTime
%                     with dt sample time.
%
% Copyright Chethan CU - chethan.cu@gmail.com 
% Nov 2013

t=0:dt:EndTime;
% Tweak the constants to changes the range of Amplitude, Freq. and Bias
bias=(rand()*2-1)*500;
freq=rand()*4+0.01;
amp=rand()*1000;
x=amp*sin(2*pi*freq*t)+bias;
x=[t' x'];
