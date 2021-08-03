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
beta = 0.4002;

% Goc khop ngon tay MCP, PIP, DIP theo functional ROM
% theta1 = degtorad(-50):0.05:degtorad(0);
% theta2 = degtorad(-30):0.05:degtorad(0);
% theta3 = (2/3)*theta2;

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


theta_0dat = [];

%% Kiem tra do dai cac khau
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
        %for v = 1:rangetheta3
%num = (m-1)*rangetheta2*rangetheta3 + (n-1)*rangetheta3 + v;         
num = (m - 1)*rangetheta2 + n;
%num = m;
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

% QN
P_QN(num,:) = P_Ndat(num,:) - P_Qdat(num,:);
modul_QN(num) = norm([P_QN(num,1),P_QN(num,2)]);

% NP
P_NP(num,:) = P_Pdat(num,:) - P_Ndat(num,:);
modul_NP(num) = norm([P_NP(num,1),P_NP(num,2)]);


% NM
P_NM(num,:) = P_Mdat(num,:) - P_Ndat(num,:);
modul_NM(num) = norm([P_NM(num,1),P_NM(num,2)]);


% Quan he giua chieu dai truc dong co va goc quay cua PN
theta_0 = pi - acos((L3^2 + d^2 - modul_QN(num)^2)/(2*d*L3));
theta_0dat(num) = theta_0;

        %end
    end
end

%% Plot link length
figure(1);
subplot(2,2,1);
plot(modul_GE);
title('Link GE length');
ylabel('Length (mm)');

subplot(2,2,2);
plot(modul_HG);
title('Link HG length');
ylabel('Length (mm)');

subplot(2,2,3);
plot(modul_GI);
title('Link GI length');
ylabel('Length (mm)');

subplot(2,2,4);
plot(modul_JI);
title('Link JI length');
ylabel('Length (mm)');


figure(2);
subplot(2,2,1);
plot(modul_OL);
title('Link OL length');
ylabel('Length (mm)');

subplot(2,2,2);
plot(modul_LK);
title('Link LK length');
ylabel('Length (mm)');
subplot(2,2,3);

plot(modul_LM);
title('Link LM length');
ylabel('Length (mm)');

subplot(2,2,4);
plot(modul_IM);
title('Link IM length');
ylabel('Length (mm)');

figure(3);
subplot(2,2,1);
plot(modul_AK);
title('Link AK length');
ylabel('Length (mm)');

subplot(2,2,2);
plot(modul_KJ);
title('Link KJ length');
ylabel('Length (mm)');

subplot(2,2,3);
plot(modul_JB);
title('Link JB length');
ylabel('Length (mm)');

subplot(2,2,4);
plot(modul_BH);
title('Link BH length');
ylabel('Length (mm)');

figure(4);
subplot(2,2,1);
plot(modul_HC);
title('Link HC length');
ylabel('Length (mm)');

subplot(2,2,2);
plot(modul_CE);
title('Link CE length');
ylabel('Length (mm)');

subplot(2,2,3);
plot(modul_ED);
title('Link ED length');
ylabel('Length (mm)');

subplot(2,2,4);
plot(modul_NP);
title('Link NP length');
ylabel('Length (mm)');

figure(5);
subplot(2,1,1);
plot(modul_NM);
title('Link NM length');
ylabel('Length (mm)');

subplot(2,1,2);
plot(modul_QN);
title('Link QN length');
ylabel('Length (mm)');

figure(6);
plot(radtodeg(theta_0dat),modul_QN);
title('Relationship between the stroke of actuator and rotational angle of PN');
xlabel('Theta0 (deg)');
ylabel('Actuator Stroke (mm)');
grid on;
