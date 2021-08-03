clear all;
close all;
clc;

% Create matrices to store X Y components of position of points A, B, C and
% theta3 and theta4 estimates
Xa = [];
Ya = [];
Xb = [];
Yb = [];
Xc = [];
Yc = [];
thetabars = [];

% Define constants (lengths in inches, angles in radians)
r1 = 1.178;     % Ground link length, "G"
r2 = 0.3463;    % Input link length, "U"
r3 = 1.43;      % Coupler length, "Z"
r4 = 1;         % Follower length, "W"
r5 = 1.54;      % Length AC
theta1 = 0;
psic = 40.6*(pi/180);   % Angle BAC
mu = -1;        % Configuration of linkage

% Grashof (s + l < p + q since r1+r2<r3+r4) and input is the shortest link
% => Crank Rocker (can rotate 360 deg)
theta2min = 0;      % smallest input angle
theta2max = 2*pi;   % largest input angle
range = theta2max - theta2min;
steps = 100;        % number of positions that will be calculated

% Calculate initial position of C with complex numbers
theta2 = theta2min;         %Initial theta2
r2v = r2*exp(1i*theta2);     %Position vector AoA
r1v = r1*exp(1i*theta1);     % Position vector AoBo
r7v = r2v - r1v;             % Position vector BoA
r7 = abs(r7v);              % magnitude BoA
psi = acos((r4^2 + r7^2 - r3^2)/(2*r4*r7)); % angle ABoB
theta4 = imag(log(r7v/abs(r7v))) + mu*psi;
r4v = r4*exp(1i*theta4);     % position vector BoB
r3v = r1v + r4v - r2v;      % position vector AB
theta3 = imag(log(r3v/abs(r3v)));

% Calculate position of C at all steps
for q = 1:(steps + 1)
    theta2 = theta2min + (q - 1)*range/steps; %current theta2
    % Call function to get estimates of theta3 and 4
    thetabars = thetas(theta1,theta2,theta3,theta4,r1,r2,r3,r4);
    theta3 = thetabars(1); %set current theta3 to newton-Raphson estimate
    theta4 = thetabars(2); %set current theta4 to newton-raphson esimate
    thth(q) = theta4;
    
    Xc(q) = r2*cos(theta2) + r5*cos(theta3 + psic);
    Yc(q) = r2*sin(theta2) + r5*sin(theta3 + psic);
    Xb(q) = r1*cos(theta1) + r4*cos(theta4);
    Yb(q) = r1*sin(theta1) + r4*sin(theta4);
    Xa(q) = r2*cos(theta2);
    Ya(q) = r2*sin(theta2);
end

theta4max = max(thth);
theta4min = min(thth);
range1 = (theta4max - theta4min)*180/pi;

% Plot the position of C,B,A
plot(Xc,Yc,Xb,Yb,Xa,Ya);
title('Plot of Positions using Loop Closure and Newton-Raphson');
axis([-2,4,-2,4]);
xlabel('X Coordinate');
ylabel('iY Coordinates');
legend('Pt.C','Follower - range = 50 deg','Input crank');
animate_nbar