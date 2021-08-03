function OUT = GenRandomSignal(AMP,FREQ,BIAS,EndTime,dt)
% GenRandomSignal   - Function generated random signals having different
%                     sections like ramps, sine waves, chirp , step, Modulated sine waves etc.
% AMP               - The output signal sections will be around this
%                     amplitude.
% FREQ              - The output signal frequency will be based around this
%                     value.{Hz}
% BAIS              - The output signal sections will be having this bias.
% EndTime,dt        - output will be generated from 0 to EndTime
%                     with dt sample time.
% OUT               - Generated Random Signal 
%
% Copyright Shashikiran shashi05kiran@gmail.com
% Nov 2013
%%
t=0:dt:EndTime;t=t';
NoOfSignalParts = 9;
%% Table of Signals
% Out1: high freq sine wave
% Out2: low freq sine wave
% Out3: high freq square wave
% Out4: low freq square wave
% Out5: ramp
% Out6: step wave
% Out7: chirp
% Out8: Ramping Sine Wave
% Out9: Modulated Sine
%% high freq sine wave
	Out1 = randi([-AMP AMP],1,1) * sin(2*pi*0.1*rand*FREQ*t) + rand * BIAS;	
    
%% low freq sine wave
	Out2 = randi([-AMP AMP],1,1) * sin(2*pi*0.01*rand*FREQ*t) + rand * BIAS;
    
%% high freq square wave
	Out3 = randi([-AMP AMP],1,1) * sign(sin(2*pi*0.1*rand*FREQ*t)+rand*0.5) + rand * BIAS;
    
%% low freq square wave
	Out4 = randi([-AMP AMP],1,1) * sign(sin(2*pi*0.01*rand*FREQ*t)+rand*0.5) + rand * BIAS;
    
%% ramp
	rampstart = randi([-AMP AMP],1,1) + rand * BIAS;
    rampend   = randi([-AMP AMP],1,1) + rand * BIAS;
    Out5 = linspace(rampstart,rampend,length(t)); Out5 = Out5(:);
    
%% step wave
    Out6 = randi([-AMP AMP],1,1) * sign(sin(2*pi*0.0001*rand*FREQ*t)) + rand * BIAS;
    Out6(1:round(length(t)*0.1)) = -1;
    
%% chirp
    chirpFreq=linspace(randi([1 4],1,1),randi([2 15],1,1),length(t))';
    Out7 = randi([-AMP AMP],1,1)*sin(2*pi*chirpFreq.*t) + rand * BIAS;
    
%% Ramping Sine Wave
    rampstart = randi([-AMP AMP],1,1) + rand * BIAS;
    rampend   = randi([-AMP AMP],1,1) + rand * BIAS;
    Out8 = linspace(rampstart,rampend,length(t)); Out8 = Out8(:);
    Out8_=rand*AMP*0.1*sin(2*pi*0.1*rand*FREQ*t) + rand * BIAS;
    Out8 = Out8+Out8_;
    
%% Modulated Sine
    Out9 = (randi([-AMP AMP],1,1)+Out2).*sin(2*pi*rand*FREQ*t);  

shuffle = randperm(NoOfSignalParts); %randperm(No of Signals present in above table)
tlen = length(t)-1;
signalTransistion = sort(randi([1,tlen],NoOfSignalParts-1,1));
OUT = eval(['Out' num2str(shuffle(1))]);
for k=1:NoOfSignalParts-1
    eval(['OUT(signalTransistion(' num2str(k) '):tlen) = Out' num2str(shuffle(k+1)) '(signalTransistion(' num2str(k) ' ):tlen);']);
end
    
%% Plot
plotflag = 0;
if plotflag ==1, plot(t,OUT); grid; shg; pause(0.75);
close all;
 end
OUT =[ t OUT];