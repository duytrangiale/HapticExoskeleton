% Sample1.m Illustrates the use of all the Random signal waveform
% generation functions.
% Every time this script is executed new wave forms are generated.


% Generate Boolean signal
x=GenRandomBool(15,10,0.02);
% Add Boolean Noise
y=BoolNoise(x,0.2,0.3);
figure(1);
% Plot Boolean signal and the noisy signal.
stairs(x(:,1),[ x(:,2) y(:,2)+0.1 ]);
% Added Bias of 0.1 for plotting purpose only

% genrate a Random Sine Wave form
z= GenRandSin(5,0.01);
figure(2);
plot(z(:,1),z(:,2));

% generate a random Sine sweep
q=GenRandSinSweep(20,0.01);
figure(3);
plot(q(:,1),q(:,2));

% Generate random signal with different sections.
w=GenRandomSignal(100,2,0,10,0.02);
figure(4);
% Add Noise
d=SignalNoise(w,0.8,0.8);
plot(w(:,1),w(:,2),d(:,1),d(:,2));shg


