function [mina0,maxa0,mina1,maxa1,mina2,maxa2,mina3,maxa3,mina4,maxa4,mina5,maxa5 ] = AlphaRange(psi5,psi6,L3,L4,modul_p,L6,P_P,P_L,L12,modul_q,psi3,L24,P_J,L14,L18,modul_r,psi1,L17,P_H,L25,P_E,psi)
% AlphaRange will find the range of alpha0 -> alpha5 of exoskeleton from these inputs
%   Detailed explanation goes here
%% Set range of finger joints theta (functional ROM)
theta1 = degtorad(-73):0.1:degtorad(0);
theta2 = degtorad(-86):0.1:degtorad(0);
theta3 = degtorad(-57):0.1:degtorad(0);
rangetheta1 = size(theta1,2); % so luong bien theta1
rangetheta2 = size(theta2,2);
rangetheta3 = size(theta3,2);
NumOfTheta = rangetheta1*rangetheta2;

%% Initial alpha matrix
a0 = zeros(1,NumOfTheta);
a1 = zeros(1,NumOfTheta);
a2 = zeros(1,NumOfTheta);
a3 = zeros(1,NumOfTheta);
a4 = zeros(1,NumOfTheta);
a5 = zeros(1,NumOfTheta);

%% Calculate each alpha value based on other joints
for m = 1:rangetheta1
    for n = 1:rangetheta2
        for v = 1:rangetheta3
            
            countthe = (m-1)*rangetheta2*rangetheta3 + (n-1)*rangetheta3 + v;
            % Alpha0
            a0(countthe) = psi5 + psi6;
            
            % Alpha1
            PNM = acos((L3^2 + L4^2 - modul_p^2)/(2*L3*L4));
            a1(countthe) = pi - PNM;
            
            % Alpha2
            P_PL = P_L - P_P;
            modul_PL = norm([P_PL(1),P_PL(2)]);
            NML = (pi - psi5 - PNM) + acos((L6^2 + modul_p^2 - modul_PL^2)/(2*L6*modul_p));
            LMI = acos((L6^2 + L12^2 - modul_q^2)/(2*L6*L12));
            a2(countthe) = pi - (NML + LMI); 
            
            % Alpha3
            P_LJ = P_J - P_L;
            modul_LJ = norm([P_LJ(1),P_LJ(2)]);
            MIJ = (pi - psi3 - LMI) + acos((modul_q^2 + L24^2 - modul_LJ^2)/(2*modul_q*L24));
            JIG = acos((L14^2 + L18^2 - modul_r^2)/(2*L14*L18));
            a3(countthe) = pi - (MIJ + JIG);
            
            % Alpha4
            P_JH = P_H - P_J;
            modul_JH = norm([P_JH(1),P_JH(2)]);
            IGH = (pi - psi1 - JIG) + acos((modul_r^2 + L17^2 - modul_JH^2)/(2*L17*modul_r));
            P_HE = P_E - P_H;
            modul_HE = norm([P_HE(1),P_HE(2)]);
            HGE = acos((L17^2 + L25^2 - modul_HE^2)/(2*L17*L25));
            a4(countthe) = pi - (IGH + HGE);
            
            % Alpha5
            GEC = pi - psi;
            CED = pi/2 - 0.848;
            a5(countthe) = pi - (GEC + CED);
        end
    end
end
mina0 = min(a0); maxa0 = max(a0);
mina1 = min(a1); maxa1 = max(a1);
mina2 = min(a2); maxa2 = max(a2);
mina3 = min(a3); maxa3 = max(a3);
mina4 = min(a4); maxa4 = max(a4);
mina5 = min(a5); maxa5 = max(a5);
end

