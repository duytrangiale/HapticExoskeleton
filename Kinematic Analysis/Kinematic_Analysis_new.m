% Kinematic analysis of finger exoskeleton
clc;
clear all;
close all;
%% Cac tham so da biet
syms alpha beta theta1 theta2 theta3 d x L24 L7 ...
    L10 L15 L23 L22 L26 L19 L16 L13 L11 L9 L3 L4 L5 L6 ...
    L8 L12 L14 L18 L17 L25;
% Diem O duoc dung lam goc cua he toa do Oxy toan cuc
% Khau OP, OA nam co dinh tren ban tay
alpha = pi;
beta = 0;

% Goc khop ngon tay MCP, PIP, DIP theo functional ROM
theta1 = degtorad(-50):0.01:degtorad(0);
theta2 = degtorad(-40):0.00802:degtorad(0);
%theta2 = degtorad(-30):0.00041055:degtorad(0); % PIP
%theta3 = degtorad(-57):0.1:degtorad(0); % DIP
theta3 = (2/3)*theta2; % DIP = 2/3 PIP
% theta3 = 0;
rangetheta1 = size(theta1,2); % so luong bien theta1
rangetheta2 = size(theta2,2);
rangetheta3 = size(theta3,2);
NumOfTheta = rangetheta1*rangetheta2;

% Chieu dai cac dot ngon tay lay theo kich thuoc ngon tay tac gia
L10 = 40; %mm
L15 = 25;
L23 = 15;

% Chieu dai mot so khau xac dinh truoc 
L24 = 16; %mm
L7 = 40; %24 40
L11 = 12;
L9 = 21.61;
L13 = 21.61;
L16 = 20.45;
L19 = 20.45;
L26 = 21.47;
L22 = 15.361;
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
L4 = 50; 
x = 95; % x = [82.53; 100.29]

% Khoi tao cac matrix du lieu
% a0 = zeros(1,NumOfTheta);
% a1 = zeros(1,NumOfTheta);
% a2 = zeros(1,NumOfTheta);
% a3 = zeros(1,NumOfTheta);
% a4 = zeros(1,NumOfTheta);
% a5 = zeros(1,NumOfTheta);

phi1dat = [];
Phidat = [];
Phi1dat = [];
Phi2dat = [];
Phi3dat = [];

omegadat = [];
omega1dat = [];
deltadat = [];

psidat = [];
psi1dat = [];
psi2dat = [];
psi3dat = [];
psi4dat = [];
psi5dat = [];
psi6dat = [];
theta1dat = [];
theta2dat = [];
theta3dat = [];
modul_PLdat = [];
modul_qdat = [];

P_Adat = [];
P_Bdat = [];
P_Cdat = [];
P_Ddat = [];
P_Edat = [];
P_EDdat = [];
P_Pdat = [];
P_Ndat = [];
P_Mdat = [];
P_Qdat = [];
P_Ldat = [];
P_Kdat = [];
P_Jdat = [];
P_Idat = [];
P_Gdat = [];
P_Hdat = [];

%% Toa do cac khop ngon tay nguoi
% Toa do fingertip duoc xac dinh truc tiep tu ngon tay
for m = 1:rangetheta1
    %for n = 1:rangetheta2
        %for v = 1:rangetheta3
%countthe = (m-1)*rangetheta2*rangetheta3 + (n-1)*rangetheta3 + v;   
%countthe = (m - 1)*rangetheta2 + n;
countthe = m;
disp(countthe)

% Toa do 3 khop MCP, PIP va DIP cua ngon tay lan luot la
% Toa do khop MCP - A
P_A = [L7 0]*T(beta);
P_Adat = [P_Adat;P_A];

% Toa do khop PIP - B
P_B = P_A + [L10 0]*T(theta1(m));
P_Bdat = [P_Bdat;P_B];

% Toa do khop DIP - C
P_C = P_B + [L15 0]*T(theta1(m) + theta2(m));
P_Cdat = [P_Cdat;P_C];

% Toa do fingertip - D
P_D = P_C + [L23 0]*T(theta1(m) + theta2(m) + theta3(m));
P_Ddat = [P_Ddat;P_D];

%% Xac dinh toa do cac diem K, J, H, E, P dua theo kich thuoc chon truoc
% Toa do diem K
KAB = 0.866;
P_K = P_A + [L9 0]*T(KAB + theta1(m)); 
P_Kdat = [P_Kdat;P_K];

% Toa do diem J
P_J = P_K + [L11 0]*T(theta1(m));
P_Jdat = [P_Jdat;P_J];

% Toa do diem H - Goc HBC = HCB = 0.91316 rad
HBC = 0.91316;
P_H = P_B + [L16 0]*T(HBC + theta2(m) + theta1(m));
P_Hdat = [P_Hdat;P_H];

% Toa do diem E - Goc ECD = 0.7973 rad
ECD = 0.7973;
P_E = P_C + [L26 0]*T(ECD + theta3(m) + theta2(m) + theta1(m));
P_Edat = [P_Edat;P_E];
% P_ED = P_D - P_E;
% P_EDdat = [P_EDdat;P_ED];

% Toa do diem P
P_P = [L24 0]*T(alpha);
P_Pdat = [P_Pdat;P_P];

% Toa do diem Q - Goc dat dong co
P_Q = P_P + [d 0]*T(alpha);
P_Qdat = [P_Qdat;P_Q];

%% Xac dinh toa do cac khop con lai
%% Xet he 4 khau CHGE, can tim toa do G
syms delta psi phi;

% Delta la goc hop boi CE va truc x
delta = ECD + theta1(m) + theta2(m) + theta3(m); 
deltadat(countthe) = delta;

theta1dat(countthe) = theta1(m);
theta2dat(countthe) = theta2(m);
theta3dat(countthe) = theta3(m);
% phi la goc hop boi CH va CE
% phi0 = pi - 1.744 - theta3;
% X = sprintf('phi0 = %0.4d',phi0);
% disp(X);
P_HE = P_E - P_H;
modul_HE = norm([P_HE(1),P_HE(2)]);
phi = acos((L19^2 + L26^2 - modul_HE^2)/(2*L19*L26));
% Y = sprintf('phi = %0.4d',phi);
% disp(Y);

% Tinh goc psi
A_phi = 2*L26*L25 - 2*L25*L19*cos(phi);
B_phi = 2*L25*L19*sin(phi);
C_phi = L26^2 + L25^2 + L19^2 - L17^2 - 2*L26*L19*cos(phi);
psi = atan2(-B_phi,A_phi) + acos((-C_phi)/sqrt(A_phi^2 + B_phi^2));
psidat(countthe) = psi;

% Toa do diem G
P_G = P_E + [L25 0]*T(delta + psi);
P_Gdat = [P_Gdat;P_G];

%% Xet he 4 khau AKLO
syms gamma Phi;

% gamma la goc cua AK hop voi phuong x
% phi1 la goc OAK
gamma = KAB + theta1(m);
phi1 = pi - beta - gamma;
modul_OK = norm([P_K(1),P_K(2)]);
%phi1 = acos((L9^2 + L7^2 - modul_OK^2)/(2*L7*L9));
phi1dat(countthe) = phi1;

% Tim goc Phi
A_phi1 = 2*L9*L8 - 2*L8*L7*cos(phi1);
B_phi1 = 2*L8*L7*sin(phi1);
C_phi1 = L9^2 + L8^2 + L7^2 - L5^2 - 2*L9*L7*cos(phi1);
Phi = atan2(-B_phi1,A_phi1) + acos((-C_phi1)/sqrt(A_phi1^2 + B_phi1^2));
Phidat(countthe) = Phi;

% Tim vi tri diem L
P_L = P_K + [L8 0]*T(Phi + gamma);
P_Ldat = [P_Ldat;P_L];

%% Xet he 5 khau BHGIJ, can tim I
syms nu omega psi1 psi2 Phi1 r modul_r;
% P_JH = P_H - P_J;
% modul_JH = norm([P_JH(1),P_JH(2)]);
% P_BG = P_G - P_B;
% modul_BG = norm([P_BG(1),P_BG(2)]);

% nu la goc giua BH va truc x
% nu = pi/3 + theta1(m) + theta2(m);

% Phi1 la goc JBH
%Phi1 = acos((L13^2 + L16^2 - modul_JH^2)/(2*L13*L16));
% %Phi1 = pi - 1.691 + theta2(n);
%Phi1dat(countthe) = Phi1;

% omega la goc GHx'
% GBH = acos((L16^2 + modul_BG^2 - L17^2)/(2*L16*modul_BG));
% BGH = acos((L17^2 + modul_BG^2 - L16^2)/(2*L17*modul_BG));
% omega = BGH + GBH;
%omega = pi - acos((L17^2 + L16^2 - modul_BG^2)/(2*L17*L16));
% omegadat(countthe) = omega;

% Goi vector r di tu J sang G
r = P_G - P_J;
modul_r = norm([r(1),r(2)]);

% A_Phi1 = 2*L17*L16 - 2*L17*L13*cos(Phi1);
% B_Phi1 = 2*L17*L13*sin(Phi1);
% C_Phi1 = L13^2 + L16^2 + L17^2 - modul_r^2 - 2*L13*L16*cos(Phi1);
% omega = atan2(-B_Phi1,A_Phi1) + acos((-C_Phi1)/sqrt(A_Phi1^2 + B_Phi1^2));
% omegadat(countthe) = omega;

% Vector r tinh theo cach 2
% r = [L16 0]*T(nu) + [L17 0]*T(omega + nu) - [L13 0]*T(Phi1 + nu);
% modul_r = norm([r(1),r(2)]);

% if (isreal(omega)==0)
%     [omega,rho] = cart2pol(real(omega),imag(omega));
% end

% psi1 la goc IJG va psi2 la goc JGx
psi1 = acos(abs(L14^2 + modul_r^2 - L18^2)/(2*L14*modul_r));
psi2 = acos(r(1)/modul_r);
psi1dat(countthe) = psi1;
psi2dat(countthe) = psi2;

% Toa do diem I can tim
P_I = P_J + [L14 0]*T(psi1 + psi2);
P_Idat = [P_Idat;P_I];

%% Xet he 5 khau KJIML, can tim diem M
syms omega1 psi3 psi4 Phi2 q;
% P_LJ = P_J - P_L;
% modul_LJ = norm([P_LJ(1),P_LJ(2)]);

% Phi2 la goc LKJ
% Phi2 = acos((L8^2 + L11^2 - modul_LJ^2)/(2*L8*L11));
% Phi2dat(countthe) = Phi2;
% if (isreal(Phi2)==0)
%     [Phi2,rho2] = cart2pol(real(Phi2),imag(Phi2));
% end

% Vector q la vector di tu L sang I
q = P_I - P_L;
modul_q = norm([q(1),q(2)]);
modul_qdat(countthe) = modul_q;

% omega1 la goc IJx'
% P_KI = P_I - P_K;
% modul_KI = norm([P_KI(1),P_KI(2)]);
% omega1 = pi - acos((L11^2 + L14^2 - modul_KI^2)/(2*L11*L14));
% A_Phi2 = 2*L11*L14 - 2*L8*L14*cos(Phi2);
% B_Phi2 = 2*L14*L8*sin(Phi2);
% C_Phi2 = L8^2 + L11^2 + L14^2 - modul_q^2 - 2*L8*L11*cos(Phi2);
% omega1 = atan2(-B_Phi2,A_Phi2) + acos((-C_Phi2)/sqrt(A_Phi2^2 + B_Phi2^2));
% omega1dat(countthe) = omega1;

% if (isreal(omega1)==0)
%     [omega1,rho1] = cart2pol(real(omega1),imag(omega1));
% end
    
psi3 = acos((L6^2 + modul_q^2 - L12^2)/(2*L6*modul_q));
%psi3 = real(psi3);
psi3dat(countthe) = psi3;
psi4 = acos(q(1)/modul_q);
psi4dat(countthe) = psi4;

% Toa do diem M
P_M = P_L + [L6 0]*T(psi3 + psi4);
P_Mdat = [P_Mdat;P_M];

%% Xet he 5 khau OLMNP, can tim N
syms p psi5 psi6 Phi3 modul_p;

% Phi3 la goc POL
% P_PL = P_L - P_P;
% modul_PL = norm([P_PL(1),P_PL(2)]);
% modul_PLdat(countthe) = modul_PL;
% Phi3 = acos((L5^2 + L24^2 - modul_PL^2)/(2*L5*L24));
% modul_OL = norm([P_L(1),P_L(2)]);
% Phi3 = alpha - asin(P_L(2)/modul_OL);
% Phi3dat(countthe) = Phi3;
% if (isreal(Phi3)==0)
%     [Phi3,rho3] = cart2pol(real(Phi3),imag(Phi3));
% end

% Vector p di tu P sang M
p = P_M - P_P;
modul_p= norm([p(1),p(2)]);
psi5 = acos((L3^2 + modul_p^2 - L4^2)/(2*L3*modul_p));
%psi5 = real(psi5);
psi5dat(countthe) = psi5;
psi6 = acos(p(1)/modul_p);
%psi6 = real(psi6);
psi6dat(countthe) = psi6;

% Toa do diem N
P_N = P_P + [L3 0]*T(psi5 + psi6);
P_Ndat = [P_Ndat;P_N];

% %% Tinh cac goc Alpha
% % Tinh Alpha0
% %a0(countthe) = psi5 + psi6;
% P_AP = P_P - P_A;
% modul_AP = norm([P_AP(1),P_AP(2)]);
% P_PN = P_N - P_P;
% modul_PN = norm([P_PN(1),P_PN(2)]);
% a0(countthe) = acos((dot(P_AP,P_PN))/(modul_AP*modul_PN));
% % if (isreal(a0(countthe)~=1))
% %     [a0(countthe),R0] = cart2pol(real(a0(countthe)),imag(a0(countthe)));
% % end
% 
% % Tinh Alpha1
% % PNM = acos((L3^2 + L4^2 - modul_p^2)/(2*L3*L4));
% % a1(countthe) = pi - PNM;
% P_NM = P_M - P_N;
% modul_NM = norm([P_NM(1),P_NM(2)]);
% a1(countthe) = acos((dot(P_PN,P_NM))/(modul_PN*modul_NM));
% % if (isreal(a1(countthe)~=1))
% %     [a1(countthe),R1] = cart2pol(real(a1(countthe)),imag(a1(countthe)));
% % end
% 
% % Alpha2
% % P_PL = P_L - P_P;
% % modul_PL = norm([P_PL(1),P_PL(2)]);
% % NML = (pi - psi5 - PNM) + acos((L6^2 + modul_p^2 - modul_PL^2)/(2*L6*modul_p));
% % LMI = acos((L6^2 + L12^2 - modul_q^2)/(2*L6*L12));
% % a2(countthe) = pi - (NML + LMI); 
% P_MI = P_I - P_M;
% modul_MI = norm([P_MI(1),P_MI(2)]);
% a2(countthe) = acos((dot(P_NM,P_MI))/(modul_NM*modul_MI));
% % if (isreal(a2(countthe)~=1))
% %     [a2(countthe),R2] = cart2pol(real(a2(countthe)),imag(a2(countthe)));
% % end
%             
% % Alpha3
% % P_LJ = P_J - P_L;
% % modul_LJ = norm([P_LJ(1),P_LJ(2)]);
% % MIJ = (pi - psi3 - LMI) + acos((modul_q^2 + L24^2 - modul_LJ^2)/(2*modul_q*L24));
% JIG = acos((L14^2 + L18^2 - modul_r^2)/(2*L14*L18));
% 
% P_IG = P_G - P_I;
% modul_IG = norm([P_IG(1),P_IG(2)]);
% a3(countthe) = acos((dot(P_MI,P_IG))/(modul_MI*modul_IG));
% %a3(countthe) = pi - (MIJ + JIG);
% % if (isreal(a3(countthe)~=1))
% %     [a3(countthe),R3] = cart2pol(real(a3(countthe)),imag(a3(countthe)));
% % end
% 
% % Alpha4
% % P_JH = P_H - P_J;
% % modul_JH = norm([P_JH(1),P_JH(2)]);
% % IGH = (pi - psi1 - JIG) + acos((modul_r^2 + L17^2 - modul_JH^2)/(2*L17*modul_r));
% % P_HE = P_E - P_H;
% % modul_HE = norm([P_HE(1),P_HE(2)]);
% % HGE = acos((L17^2 + L25^2 - modul_HE^2)/(2*L17*L25));
% % a4(countthe) = pi - (IGH + HGE);
% P_GE = P_E - P_G;
% modul_GE = norm([P_GE(1),P_GE(2)]);
% a4(countthe) = acos((dot(P_IG,P_GE))/(modul_IG*modul_GE));
% % if (isreal(a4(countthe)~=1))
% %     [a4(countthe),R4] = cart2pol(real(a4(countthe)),imag(a4(countthe)));
% % end
%             
% % Alpha5
% % GEC = pi - psi;
% % CED = pi/2 - 0.848;
% % a5(countthe) = pi - (GEC + CED);
% P_ED = P_D - P_E;
% modul_ED = norm([P_ED(1),P_ED(2)]);
% a5(countthe) = acos((dot(P_GE,P_ED))/(modul_GE*modul_ED));
% % if (isreal(a5(countthe)~=1))
% %     [a5(countthe),R5] = cart2pol(real(a5(countthe)),imag(a5(countthe)));
% % end
        %end
    %end
end
% mina0 = min(a0); maxa0 = max(a0);
% mina1 = min(a1); maxa1 = max(a1);
% mina2 = min(a2); maxa2 = max(a2);
% mina3 = min(a3); maxa3 = max(a3);
% mina4 = min(a4); maxa4 = max(a4);
% mina5 = min(a5); maxa5 = max(a5);
% 
% save('alpha_range_new.mat','mina0','maxa0','mina1','maxa1','mina2','maxa2',...
%     'mina3','maxa3','mina4','maxa4','mina5','maxa5');

% Luu toa do cac diem
save('P_A.mat','P_Adat');
save('P_B.mat','P_Bdat');
save('P_C.mat','P_Cdat');
save('P_D.mat','P_Ddat');
save('P_E.mat','P_Edat');
save('P_P.mat','P_Pdat');
save('P_N.mat','P_Ndat');
save('P_M.mat','P_Mdat');
save('P_Q.mat','P_Qdat');
save('P_L.mat','P_Ldat');
save('P_K.mat','P_Kdat');
save('P_J.mat','P_Jdat');
save('P_I.mat','P_Idat');
save('P_G.mat','P_Gdat');
save('P_H.mat','P_Hdat');

% Luu toa do cac goc
save('delta.mat','deltadat');
save('psi.mat','psidat');
save('psi1.mat','psi1dat');
save('psi2.mat','psi2dat');
save('psi3.mat','psi3dat');
save('psi4.mat','psi4dat');
save('psi5.mat','psi5dat');
save('psi6.mat','psi6dat');
save('theta1.mat','theta1dat');
save('theta2.mat','theta2dat');
save('theta3.mat','theta3dat');
% save('omega1.mat','omega1dat');