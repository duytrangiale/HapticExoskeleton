%% Phan tich kha nang truyen luc cua co cau (Force transmission analysis)
clc;
clear all;
close all;

%% Dung phuong phap trang thai gan tinh (quasi-static method) de phan tich luc
% F             - Luc tao ra tu truc dong co
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
% F_Ox, F_Oy    - Phan luc tai O
% F_Kx, F_Ky    - Phan luc tai khau AKJB theo cac phuong x,y
% F_Hx, F_Hy    - Phan luc tai khau BHC theo cac phuong x,y

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
%theta3 = (2/3)*theta2;
rangetheta1 = size(theta1,2); % so luong bien theta1
rangetheta2 = size(theta2,2);
rangetheta3 = size(theta3,2);
NumOfTheta = rangetheta1*rangetheta2;

% Chieu dai cac dot ngon tay lay theo kich thuoc ngon tay tac gia
L10 = 40; %mm
L15 = 25;
L23 = 15;

% % Chieu dai mot so khau xac dinh truoc 
L24 = 14; %mm
L7 = 24;
L11 = 11;
L9 = 27;
L13 = 27;
L16 = 25;
L19 = 25;
L26 = 20;
L22 = 30;
d = 100;

% % Chieu dai cac khau co the dieu chinh
L25 = 33; 
L17 = 23;
L5 = 32;
L8 = 35; 
L18 = 43; 
L14 = 34;
L12 = 52; 
L6 = 33; 
L3 = 40;
L4 = 50; 
x = 95; % x = [82.53; 100.29]

% Luc tao ra o dau truc dong co
F = 8; %N

%% Phan tich luc
% Load cai gia tri toa do cac diem da tinh truoc do
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

for m = 1:rangetheta1
    for n = 1:rangetheta2
        for v = 1:rangetheta3
num = (m-1)*rangetheta2*rangetheta3 + (n-1)*rangetheta3 + v;            
disp(num)

%% Kiem tra do dai cac khau 
% Link GE
x_G(num) = P_Gdat(num,1);
y_G(num) = P_Gdat(num,2);
x_E(num) = P_Edat(num,1);
y_E(num) = P_Edat(num,2);
P_GE(num,:) = P_Edat(num,:) - P_Gdat(num,:);
modul_GE(num) = norm([P_GE(num,1),P_GE(num,2)]);

% Link HG
x_H(num) = P_Hdat(num,1);
y_H(num) = P_Hdat(num,2);
P_HG(num,:) = P_Gdat(num,:) - P_Hdat(num,:);
modul_HG(num) = norm([P_HG(num,1),P_HG(num,2)]);

% Link OL
modul_OL(num) = norm([P_Ldat(num,1),P_Ldat(num,2)]);

% Link LK
x_L(num) = P_Ldat(num,1);
y_L(num) = P_Ldat(num,2);
x_K(num) = P_Kdat(num,1);
y_K(num) = P_Kdat(num,2);
P_LK(num,:) = P_Kdat(num,:) - P_Ldat(num,:);
modul_LK(num) = norm([P_LK(num,1),P_LK(num,2)]);

% Link IG
x_I(num) = P_Idat(num,1);
y_I(num) = P_Idat(num,2);
P_GI(num,:) = P_Idat(num,:) - P_Gdat(num,:);
modul_GI(num) = norm([P_GI(num,1),P_GI(num,2)]);

% Link JI
P_JI(num,:) = P_Idat(num,:) - P_Jdat(num,:);
modul_JI(num) = norm([P_JI(num,1),P_JI(num,2)]);

% Link LM
P_LM(num,:) = P_Mdat(num,:) - P_Ldat(num,:);
modul_LM(num) = norm([P_LM(num,1),P_LM(num,2)]);

% Link MI
P_IM(num,:) = P_Mdat(num,:) - P_Idat(num,:);
modul_IM(num) = norm([P_IM(num,1),P_IM(num,2)]);

% Link AK
P_AK(num,:) = P_Kdat(num,:) - P_Adat(num,:);
modul_AK(num) = norm([P_AK(num,1),P_AK(num,2)]);

% Link KJ
P_KJ(num,:) = P_Jdat(num,:) - P_Kdat(num,:);
modul_KJ(num) = norm([P_KJ(num,1),P_KJ(num,2)]);

% Link JB
P_JB(num,:) = P_Bdat(num,:) - P_Jdat(num,:);
modul_JB(num) = norm([P_JB(num,1),P_JB(num,2)]);

% Link BH
P_BH(num,:) = P_Hdat(num,:) - P_Bdat(num,:);
modul_BH(num) = norm([P_BH(num,1),P_BH(num,2)]);

% Link HC
P_HC(num,:) = P_Cdat(num,:) - P_Hdat(num,:);
modul_HC(num) = norm([P_HC(num,1),P_HC(num,2)]);

% Link CE
P_CE(num,:) = P_Edat(num,:) - P_Cdat(num,:);
modul_CE(num) = norm([P_CE(num,1),P_CE(num,2)]);

% Link ED
P_ED(num,:) = P_Ddat(num,:) - P_Edat(num,:);
modul_ED(num) = norm([P_ED(num,1),P_ED(num,2)]);

% OK
modul_OK(num) = norm([P_Kdat(num,1),P_Kdat(num,2)]);

% JH
P_JH(num,:) = P_Hdat(num,:) - P_Jdat(num,:);
modul_JH(num) = norm([P_JH(num,1),P_JH(num,2)]);

% HE
P_HE(num,:) = P_Edat(num,:) - P_Hdat(num,:);
modul_HE(num) = norm([P_HE(num,1),P_HE(num,2)]);

%% Xet thanh PN, momen tai P:
% F*L3*sin(PNQ) = F_3a*dist(P,M,N)
% P_NQ(num,:) = P_Qdat(num,:) - P_Ndat(num,:);
% modul_NQ(num) = norm([P_NQ(num,1),P_NQ(num,2)]);
% P_NP(num,:) = P_Pdat(num,:) - P_Ndat(num,:);
% modul_NP(num) = norm([P_NP(num,1),P_NP(num,2)]);
% QNP(num) = acos((dot(P_NQ(num,:),P_NP(num,:)))/(modul_NQ(num)*modul_NP(num)));
x_P(num) = P_Pdat(num,1);
y_P(num) = P_Pdat(num,2);
x_M(num) = P_Mdat(num,1);
y_M(num) = P_Mdat(num,2);
x_N(num) = P_Ndat(num,1);
y_N(num) = P_Ndat(num,2);
x_Q(num) = P_Qdat(num,1);
y_Q(num) = P_Qdat(num,2);
dist_P_NQ(num) = dist(x_P(num),y_P(num),x_N(num),y_N(num),x_Q(num),y_Q(num));
dist_P_NM(num) = dist(x_P(num),y_P(num),x_N(num),y_N(num),x_M(num),y_M(num));
F_NM(num) = (F*dist_P_NQ(num))/dist_P_NM(num);
F_MN(num) = F_NM(num);

% Xet thanh QN, momen tai Q:
x_Q(num) = P_Qdat(num,1);
y_Q(num) = P_Qdat(num,2);
dist_Q_NP(num) = dist(x_Q(num),y_Q(num),x_N(num),y_N(num),x_P(num),y_P(num));
dist_Q_NM(num) = dist(x_Q(num),y_Q(num),x_N(num),y_N(num),x_M(num),y_M(num));
F_NP(num) = (-F_NM(num)*dist_Q_NM(num))/dist_Q_NP(num);
F_PN(num) = F_NP(num);
% figure(1);
% plot(F_NP);

% Can bang luc tai nut N
NQP(num) = acos((x^2 + d^2 - L3^2)/(2*x*d));
P_NM(num,:) = P_Mdat(num,:) - P_Ndat(num,:);
modul_NM(num) = norm([P_NM(num,1),P_NM(num,2)]);
MNx(num) = acos(P_NM(num,1)/modul_NM(num));
P_NP(num,:) = P_Pdat(num,:) - P_Ndat(num,:);
modul_NP(num) = norm([P_NP(num,1),P_NP(num,2)]);
PNx(num) = acos(P_NP(num,1)/modul_NP(num));
F_NP_new(num) = (F*cos(NQP(num)) - F_NM(num)*cos(MNx(num)))/cos(PNx(num));
% figure(2);
% plot(F_NP_new);

% Xet thanh LM, momen tai L:
% x_L(num) = P_Ldat(num,1);
% y_L(num) = P_Ldat(num,2);
% x_I(num) = P_Idat(num,1);
% y_I(num) = P_Idat(num,2);
% dist_L_MN(num) = dist(x_L(num),y_L(num),x_M(num),y_M(num),x_N(num),y_N(num));
% dist_L_MI(num) = dist(x_L(num),y_L(num),x_M(num),y_M(num),x_I(num),y_I(num));
% F_MI(num) = (F_MN(num)*dist_L_MN(num))/dist_L_MI(num);

        end
    end
end

