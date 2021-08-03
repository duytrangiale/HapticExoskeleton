%% Phan tich kha nang truyen luc cua co cau (Force transmission analysis)
clc;
clear all;
close all;

%% Dung phuong phap trang thai gan tinh (quasi-static method) de phan tich luc
% F             - Luc keo cua truc dong co
% F_tip         - Luc phap tuyen len dau ngon tay mong muon
% F_MN,F_NM     - Luc doc truc thanh MN
% F_NP,F_PN     - Luc doc truc thanh NP
% F_OL,F_LO     - Luc doc truc thanh OL
% F_LK,F_KL     - Luc doc truc thanh LK
% F_ML,F_LM     - Luc doc truc thanh ML
% F_MI,F_IM     - Luc doc truc thanh MI
% F_JI,F_IJ     - Luc doc truc thanh JI
% F_IG,F_GI     - Luc doc truc thanh IG
% F_HG,F_GH     - Luc doc truc thanh HG
% F_GE,F_EG     - Luc doc truc thanh GE
% F_Ox, F_Oy    - Phan luc tai OP
% F_Kx, F_Ky    - Phan luc tai khau AKJB theo cac phuong x,y
% F_Hx, F_Hy    - Phan luc tai khau BHC theo cac phuong x,y
% F_Ex          - Phan luc tai khau CED theo phuong x

%% Cac tham so xac dinh ban dau
syms alpha beta theta1 theta2 theta3 d x L24 L7 ...
    L10 L15 L23 L22 L26 L19 L16 L13 L11 L9 L3 L4 L5 L6 ...
    L8 L12 L14 L18 L17 L25;
% Diem O duoc dung lam goc cua he toa do Oxy toan cuc
% Khau OP, OA nam co dinh tren ban tay
alpha = pi;
beta = 0.4002;

% Goc khop ngon tay MCP, PIP, DIP theo functional ROM
load('theta1_init.mat');
load('theta2_init.mat');
load('theta3_init.mat');

rangetheta1 = size(theta1,2); % so luong bien theta1
rangetheta2 = size(theta2,2);
rangetheta3 = size(theta3,2);
NumOfTheta = rangetheta1*rangetheta2;

% Chieu dai cac dot ngon tay lay theo kich thuoc ngon tay tac gia
L10 = 46; %mm
L15 = 31;
L23 = 15;

% Chieu dai mot so khau xac dinh truoc 
L24 = 16; %mm
L7 = 42.35; %24 40
L11 = 12;
L9 = 21.4;
L13 = 21.4;
L16 = 20.23;
L19 = 20.23;
L26 = 21.26;
L22 = 15.066;
d = 62.5; %100

% Chieu dai khau dieu chinh duoc - new
L25 = 33.4; 
L17 = 27;
L5 = 36;
L8 = 35; 
L18 = 45.5; 
L14 = 36;
L12 = 52; 
L6 = 35; 
L3 = 55;
L4 = 49; 
x = 95; % x = [82.53; 100.29]

% Luc tao ra o dau truc dong co
F = 6; %N

%% Phan tich luc
% Load gia tri toa do cac diem da tinh truoc do
% Load toa do cac diem
load('P_A.mat');
load('P_B.mat');
load('P_C.mat');
load('P_D.mat');
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
load('psi1.mat');
load('psi2.mat');
load('psi3.mat');
load('psi4.mat');
load('psi5.mat');
load('psi6.mat');
load('omega1.mat');
load('theta1.mat');
load('theta2.mat');
load('theta3.mat');

for m = 1:rangetheta1
    for n = 1:rangetheta2
        %for v = 1:rangetheta3
%num = (m-1)*rangetheta2*rangetheta3 + (n-1)*rangetheta3 + v;   
num = (m-1)*rangetheta2 + n;
%num = m;
disp(num)

%% Can bang momen cho cac khau
% Xet thanh PN, momen tai P
x_P(num) = P_Pdat(num,1);
y_P(num) = P_Pdat(num,2);
x_N(num) = P_Ndat(num,1);
y_N(num) = P_Ndat(num,2);
x_M(num) = P_Mdat(num,1);
y_M(num) = P_Mdat(num,2);
x_Q(num) = P_Qdat(num,1);
y_Q(num) = P_Qdat(num,2);
dist_P_NQ(num) = dist(x_P(num),y_P(num),x_N(num),y_N(num),x_Q(num),y_Q(num));
dist_P_NM(num) = dist(x_P(num),y_P(num),x_N(num),y_N(num),x_M(num),y_M(num));
F_NM(num) = (F*dist_P_NQ(num))/dist_P_NM(num);
F_MN(num) = F_NM(num);

% Xet thanh LM, momen tai L:
x_L(num) = P_Ldat(num,1);
y_L(num) = P_Ldat(num,2);
x_I(num) = P_Idat(num,1);
y_I(num) = P_Idat(num,2);
dist_L_MN(num) = dist(x_L(num),y_L(num),x_M(num),y_M(num),x_N(num),y_N(num));
dist_L_MI(num) = dist(x_L(num),y_L(num),x_M(num),y_M(num),x_I(num),y_I(num));
F_MI(num) = (F_MN(num)*dist_L_MN(num))/dist_L_MI(num);
F_IM(num) = F_MI(num);

% Xet thanh IJ, momen tai J:
x_J(num) = P_Jdat(num,1);
y_J(num) = P_Jdat(num,2);
x_G(num) = P_Gdat(num,1);
y_G(num) = P_Gdat(num,2);
dist_J_IM(num) = dist(x_J(num),y_J(num),x_I(num),y_I(num),x_M(num),y_M(num));
dist_J_IG(num) = dist(x_J(num),y_J(num),x_I(num),y_I(num),x_G(num),y_G(num));
F_IG(num) = (F_IM(num)*dist_J_IM(num))/dist_J_IG(num);
F_GI(num) = F_IG(num);

% Xet thanh HG, momen tai H:
x_H(num) = P_Hdat(num,1);
y_H(num) = P_Hdat(num,2);
x_E(num) = P_Edat(num,1);
y_E(num) = P_Edat(num,2);
dist_H_GI(num) = dist(x_H(num),y_H(num),x_G(num),y_G(num),x_I(num),y_I(num));
dist_H_GE(num) = dist(x_H(num),y_H(num),x_G(num),y_G(num),x_E(num),y_E(num));
F_GE(num) = (F_GI(num)*dist_H_GI(num))/dist_H_GE(num);
F_EG(num) = F_GE(num);

%% Can bang luc tai khoi CED
psi(num) = psidat(1,num);
delta(num) = deltadat(1,num);
delta1(num) = delta(num) - 0.7973;
F_tip(num) = (F_EG(num)*sin(psi(num) + delta(num)))/(sin(pi/2 - delta1(num)));

        %end
    end
end

%% Plot F_tip based on MCP, PIP angles
F_TIP = reshape(F_tip,[n,m]);
figure(1);
THETA1 = rad2deg(theta1);
THETA2 = rad2deg(theta2);
surf(THETA1,THETA2,real(F_TIP));
title('Force at fingertip in relation with MCP and PIP joints','FontSize',14);
xlabel('MCP joint angle (deg)','FontSize',14);
ylabel('PIP joint angle (deg)','FontSize',14);
colormap(jet);
c = colorbar;
c.FontSize = 14;

% figure(2);
% plot(rad2deg(theta1dat),F_tip);
% title('Fingertip force versus MCP joint angle');
% xlabel('MCP joint angle (deg)');
% ylabel('Force (N)');
% grid on;
% 
% figure(3);
% plot(rad2deg(theta2dat),F_tip);
% title('Fingertip force versus PIP joint angle');
% xlabel('PIP joint angle (deg)');
% ylabel('Force (N)');
% grid on;
