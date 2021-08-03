%% Plot the left hand index fingertip workspace
% Origin is at MCP joint
clc;
clear all;
close all;
syms L10 L15 L23 theta1 theta2 theta3;

% My left index finger dimensions
L10 = 40; %mm
L15 = 25;
L23 = 15;
% joints finger angles: theta1, theta2, theta3

% Plot the finger workspace using functional ROM
theta1_finger = degtorad(-73):0.06:degtorad(0);
theta2_finger = degtorad(-86):0.06:degtorad(0);
theta3_finger = degtorad(-57):0.06:degtorad(0);
%theta3 = (2/3)*theta2;

[Theta1,Theta2,Theta3] = meshgrid(theta1_finger,theta2_finger,theta3_finger);
x_tip = L10*cos(Theta1) + L15*cos(Theta1 + Theta2) + L23*cos(Theta1 + Theta2 + Theta3);
y_tip = L10*sin(Theta1) + L15*sin(Theta1 + Theta2) + L23*sin(Theta1 + Theta2 + Theta3);

% % Plot workspace of finger 
% plot(x_tip(:),y_tip(:),'r.');
% legend('Left index finger workspace');
% hold on;
% axis equal;
% grid on;
% xlabel('X','fontsize',12);
% ylabel('Y','fontsize',12);
% title('Finger Workspace according to functional ROM','fontsize',12);


%% Plot the attached exoskeleton workspace
syms L3 L4 L12 L18 L25 L22;
syms alpha0 alpha1 alpha2 alpha3 alpha4 alpha5;
% load('alpha_range_new.mat');
load('P_E.mat');
load('P_D.mat');
% load('theta1.mat');
% load('theta2.mat');
% load('theta3.mat');

theta1dat = degtorad(-70):0.08:degtorad(0);
theta2dat = degtorad(-80):0.08:degtorad(0);
theta3dat = (2/3)*theta2dat;

% Links length
L3 = 40;
L4 = 50;
L12 = 52;
L18 = 43;
L25 = 33;
L22 = 30;

[THETA1,THETA2,THETA3] = meshgrid(theta1dat,theta2dat,theta3dat);
x_D = L10*cos(THETA1) + L15*cos(THETA1 + THETA2) + L23*cos(THETA1 + THETA2 + THETA3);
y_D = L10*sin(THETA1) + L15*sin(THETA1 + THETA2) + L23*sin(THETA1 + THETA2 + THETA3);

% Alpha joint ranges
% alpha0 = mina0:0.2:maxa0;
% alpha1 = mina1:0.2:maxa1;
% alpha2 = mina2:0.2:maxa2;
% alpha3 = mina3:0.2:maxa3;
% alpha4 = mina4:0.2:maxa4;
% alpha5 = mina5:0.2:maxa5;

% Plot the exoskeleton workspace
% [Alpha0,Alpha1,Alpha2,Alpha3,Alpha4,Alpha5] = ndgrid(alpha0,alpha1,alpha2,alpha3,alpha4,alpha5);
% x_E = L3*cos(Alpha0) + L4*cos(Alpha0 + Alpha1) + L12*cos(Alpha0 + Alpha1 + Alpha2) + L18*cos(Alpha0 + Alpha1 + Alpha2 + Alpha3)...
%     + L25*cos(Alpha0 + Alpha1 + Alpha2 + Alpha3 + Alpha4) + L22*cos(Alpha0 + Alpha1 + Alpha2 + Alpha3 + Alpha4 + Alpha5);
% y_E = L3*sin(Alpha0) + L4*sin(Alpha0 + Alpha1) + L12*sin(Alpha0 + Alpha1 + Alpha2) + L18*sin(Alpha0 + Alpha1 + Alpha2 + Alpha3)...
%     + L25*sin(Alpha0 + Alpha1 + Alpha2 + Alpha3 + Alpha4) + L22*sin(Alpha0 + Alpha1 + Alpha2 + Alpha3 + Alpha4 + Alpha5);

% x_E = 20 + L3*cos(Alpha0) + L4*cos(Alpha0 + Alpha1 - pi/2) +...
%      L12*cos(Alpha0 + Alpha1 + Alpha2 - pi/2) + L18*cos(Alpha0 + Alpha1 + Alpha2 + Alpha3 - pi/2) +...
%      L25*cos(Alpha1 + Alpha2 + Alpha3 + Alpha4 - pi/2) + L22*sin(Alpha0 + Alpha1 + Alpha2 + Alpha3 + Alpha4 + Alpha5 - pi/2);
% y_E =-30 + L3*sin(Alpha0) + L4*sin(Alpha0 + Alpha1 - pi/2) + L12*sin(Alpha0 + Alpha1 + Alpha2) + L18*sin(Alpha0 + Alpha1 + Alpha2 + Alpha3 - pi/2)...
%    + L25*sin(Alpha0 + Alpha1 + Alpha2 + Alpha3 + Alpha4 - pi/2) + L22*cos(Alpha0 + Alpha1 + Alpha2 + Alpha3 + Alpha4 + Alpha5 - pi/2);
 
% x_E =  -L22 + P_Edat(:,1);
% y_E =  P_Edat(:,2);

% Plot workspace of finger and exoskeleton
plot(x_tip(:),y_tip(:),'r.',x_D(:),y_D(:),'bo');
%plot(x_D(:),y_D(:),'r.');
legend('Left index finger workspace','Exoskeleton workspace');
hold on;
axis equal;
grid on;
xlabel('X','fontsize',12);
ylabel('Y','fontsize',12);
title('Finger vs Exoskeleton Workspace according to functional ROM','fontsize',12);