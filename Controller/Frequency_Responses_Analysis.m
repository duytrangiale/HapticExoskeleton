%% Time Responses
% Create transfer function
num = [-26.01 0.05631];
den = [1 1.212 0.00418];
sys = tf(num,den)

% Plot the step and impulse responses 
figure(1);
subplot(2,1,1);
step(sys);
subplot(2,1,2);
impulse(sys);

% Response to an sine wave signal
t = 0:0.01:10;
u = sin(10*t);
figure(2);
lsim(sys,u,t);

% Convert to state-space model
[A,B,C,D] = tf2ss(num,den)
G = ss(A,B,C,D);
x0 = [-1;2]; % initial state
figure(3);
initial(G,x0);
grid

%% Frequency Responses
% This is a key to understanding stability and performance properties of
% control systems

% Plot Bode, Nyquist and Nichols
figure(4);
bode(sys);
grid

figure(5);
nyquist(sys);
grid

figure(6);
nichols(sys);
grid

% Pole/Zero maps and Root locus
k = 0.04;
T = feedback(sys*k,1);
figure(7);
pzmap(T);
grid, axis([-1 1 -1 1])

% Damping ratio of closed loop poles
figure(8);
step(T);

% Locus of the closed loop poles
% Where locus intersects the y axis will reveals that the closed-loop poles
% become unstable for k = 0.0469 => must choose k < 0.0469 for closed-loop
% stability
figure(9);
rlocus(sys);
grid

%% Response Characteristics
