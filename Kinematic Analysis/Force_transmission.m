%% Phan tich kha nang truyen luc cua co cau (Force transmission analysis)
clc;
clear all;
close all;

%% Dung phuong phap trang thai gan tinh (quasi-static method) de phan tich luc
% F             - Luc tao ra tu truc dong co
% F_tip         - Luc phap tuyen len dau ngon tay mong muon
% F_3a          - Luc doc truc thanh MN
% F_3b          - Luc doc truc thanh NP
% F_4a          - Luc doc truc thanh OL
% F_5a          - Luc doc truc thanh LK
% F_6a          - Luc doc truc thanh ML
% F_6b          - Luc doc truc thanh MI
% F_10a         - Luc doc truc thanh JI
% F_10b         - Luc doc truc thanh IG
% F_13a         - Luc doc truc thanh HG
% F_13b         - Luc doc truc thanh GE
% F_4x, F_4y    - Phan luc tai P
% F_9x, F_9y    - Phan luc tai khau AKJB theo cac phuong x,y
% F_12x, F_12y  - Phan luc tai khau BHC theo cac phuong x,y

%% Cac tham so xac dinh ban dau
syms alpha beta theta1 theta2 theta3 d x L24 L7 ...
    L10 L15 L23 L22 L26 L19 L16 L13 L11 L9 L3 L4 L5 L6 ...
    L8 L12 L14 L18 L17 L25;
% Diem O duoc dung lam goc cua he toa do Oxy toan cuc
% Khau OP, OA nam co dinh tren ban tay
alpha = pi;
beta = 0;

% Goc khop ngon tay MCP, PIP, DIP theo functional ROM
theta1 = degtorad(-73):0.1:degtorad(0);
theta2 = degtorad(-86):0.1:degtorad(0);
theta3 = degtorad(-57):0.1:degtorad(0);
rangetheta1 = size(theta1,2); % so luong bien theta1
rangetheta2 = size(theta2,2);
rangetheta3 = size(theta3,2);
NumOfTheta = rangetheta1*rangetheta2;

% Chieu dai cac dot ngon tay lay theo kich thuoc ngon tay tac gia
L10 = 40; %mm
L15 = 25;
L23 = 15;

% Chieu dai mot so khau xac dinh truoc 
L24 = 20; %mm
L7 = 20;
L11 = 12;
L9 = 20;
L13 = 20;
L16 = 20;
L19 = 20;
L26 = 20;
L22 = 15;
d = 53;

% Chieu dai cac khau co the dieu chinh
L25 = 32.47; %32.47
L17 = 39;
L5 = 32;
L8 = 34; %29
L18 = 45; %47
L14 = 39;
L12 = 40; %47
L6 = 34; %29
L3 = 54;
L4 = 40; %39
x = 95; % x = [82.53; 100.29]

% Luc tao ra o dau truc dong co
F = 8; %N

%% Phan tich luc
% Load cai gia tri toa do cac diem da tinh truoc do
% Load toa do cac diem
load('P_E.mat');
load('P_P.mat');
load('P_N.mat');
load('P_M.mat');
load('P_Q.mat');
load('P_L.mat');
load('P_K.mat');
load('P_J.mat');
load('P_I.mat');
load('P_G.mat');
load('P_H.mat');

% Load toa do cac goc
load('delta.mat');
load('psi.mat');
% load('psi1.mat');
% load('psi2.mat');
% load('psi3.mat');
% load('psi4.mat');
% load('psi5.mat');
% load('psi6.mat');
% load('omega1.mat');

for m = 1:rangetheta1
    for n = 1:rangetheta2
        for v = 1:rangetheta3
num = (m-1)*rangetheta2*rangetheta3 + (n-1)*rangetheta3 + v;            
disp(num)

% Xet thanh PN, momen tai P:
% F*L3*sin(PNQ) = F_3a*dist(P,M,N)
P_NQ(num,:) = P_Qdat(num,:) - P_Ndat(num,:);
modul_NQ(num) = norm([P_NQ(num,1),P_NQ(num,2)]);
P_NP(num,:) = P_Pdat(num,:) - P_Ndat(num,:);
modul_NP(num) = norm([P_NP(num,1),P_NP(num,2)]);
QNP(num) = acos((dot(P_NQ(num,:),P_NP(num,:)))/(modul_NQ(num)*modul_NP(num)));
x_P(num) = P_Pdat(num,1);
y_P(num) = P_Pdat(num,2);
x_M(num) = P_Mdat(num,1);
y_M(num) = P_Mdat(num,2);
x_N(num) = P_Ndat(num,1);
y_N(num) = P_Ndat(num,2);
F_3a(num) = (F*L3*sin(QNP(num)))/dist(x_P(num),y_P(num),x_M(num),y_M(num),x_N(num),y_N(num));

% Xet thanh QN, momen tai Q:
x_Q(num) = P_Qdat(num,1);
y_Q(num) = P_Qdat(num,2);
dist_Q_PN(num) = dist(x_Q(num),y_Q(num),x_P(num),y_P(num),x_N(num),y_N(num));
dist_Q_MN(num) = dist(x_Q(num),y_Q(num),x_M(num),y_M(num),x_N(num),y_N(num));
F_3b(num) = (F_3a(num)*dist_Q_MN(num))/dist_Q_PN(num);

% Xet thanh LM, momen tai L:    ????
x_L(num) = P_Ldat(num,1);
y_L(num) = P_Ldat(num,2);
x_I(num) = P_Idat(num,1);
y_I(num) = P_Idat(num,2);
dist_L_MN(num) = dist(x_L(num),y_L(num),x_M(num),y_M(num),x_N(num),y_N(num));
dist_L_IM(num) = dist(x_L(num),y_L(num),x_I(num),y_I(num),x_M(num),y_M(num));
F_6b(num) = (F_3a(num)*dist_L_MN(num))/dist_L_IM(num);

% Xet thanh IJ, momen tai J:    ????
x_J(num) = P_Jdat(num,1);
y_J(num) = P_Jdat(num,2);
x_G(num) = P_Gdat(num,1);
y_G(num) = P_Gdat(num,2);
dist_J_MI(num) = dist(x_J(num),y_J(num),x_M(num),y_M(num),x_I(num),y_I(num));
dist_J_IG(num) = dist(x_J(num),y_J(num),x_I(num),y_I(num),x_G(num),y_G(num));
F_10b(num) = (F_6b(num)*dist_J_MI(num))/dist_J_IG(num);

% Xet thanh HG, momen tai H:    ????
x_H(num) = P_Hdat(num,1);
y_H(num) = P_Hdat(num,2);
x_E(num) = P_Edat(num,1);
y_E(num) = P_Edat(num,2);
dist_H_GE(num) = dist(x_H(num),y_H(num),x_G(num),y_G(num),x_E(num),y_E(num));
dist_H_GI(num) = dist(x_H(num),y_H(num),x_G(num),y_G(num),x_I(num),y_I(num));
F_13b(num) = (F_10b(num)*dist_H_GI(num))/dist_H_GE(num);

% Phuong trinh can bang luc tai fingertip
F_tip = (F_13b*sin(psidat(num) + deltadat(num)))/cos(pi/2 - deltadat(num));
        end
    end
end

