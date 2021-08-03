function x=GenRandSinSweep(EndTime,dt)
% GenRandSinSweep   - Generates Random  Sine sweeps wave forms with random
%                     Amplitude, frequency and Bias. Note that the
%                     frequency varries with time.
% EndTime,dt        - output will be generated from 0 to EndTime
%                     with dt sample time.
%
% Copyright Chethan CU - chethan.cu@gmail.com 
% Nov 2013
t=0:dt:EndTime;
% Tweak these constants to generate signals in ur desired ranges.
amp=rand()*1000;
bias=(rand()*2-1)*500;
freq1=rand()*2+0.01;
freq2=rand()*4+0.01;

if rand()>0.5
    freq= linspace(freq1,freq2,length(t));
else
    freq= linspace(freq2,freq1,length(t));
end

x=amp*sin(2*pi*freq.*t);
x=[t' x'];
