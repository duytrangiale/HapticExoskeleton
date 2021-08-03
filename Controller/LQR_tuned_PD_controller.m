%% PD Controller with LQR method tuned parameters
clear all;
close all;
clc;

%% Set parameters for SEA model
% The sea model using low force range estimation
m1 = 0.012;     % kg - motor mass
m2 = 0.003;     % lead screw mass
m = m1 + m2;    % total mass of linear actuator
ks = 0.434;     % N/mm - spring constant
c = 0.289;      % motor constant
b = 0.02;       % damping ratio of SEA
bm = 0.001;     % damping ratio of motor

%% Model-based feedback control
% State equation matrix
A = [  0         1;
    -ks/m    -(b+bm)/m];
B = [0; c*ks/m];

% Define force error e = Fd - Fl
syms e1 e2 Fd Fl;
e = [e1;e2];

% Choosing Q,R matrix
Q = [1     0;
     0  0.0001];
R = [0.2];

% Find the PD parameters
[P,L,K] = care(A,B,Q,R);
Kp = K(1);
Kd = K(2);









