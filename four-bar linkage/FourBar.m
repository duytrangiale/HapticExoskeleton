clc; clear all;
% Parameters
A = 2; B = 3; C = 4; D = 5; % Link lengths: A-P1P2:crank, B-P2P3:coupler, C-P3P4:follower, D-P1P4:ground

t = 0:0.05:10;  % Time for animation

ang_speed = 2;  % angle speed of crank
theta = ang_speed*t;    % angle of crank compare to x axis
% Find the coordinate of these 4 point P1 P2 P3 P4
P1 = [0;0];
P4 = D*[1;0];
P2 = A*[cos(theta); sin(theta)]; 
E = sqrt(A^2 + D^2 - 2*A*D*cos(theta)); %P2P4
alfa = asin(A*sin(theta)./E);   % angle P2P4P1
beta = acos((E.^2 + C^2 - B^2)./(2*E*C));   % angle P3P4P2
P3 = [D - C*cos(alfa+beta); C*sin(alfa+beta)];

P3_x = P3(1,:);
P3_y = P3(2,:);

P3_vx = diff(P3_x)./diff(t); % velocity of P3
P3_vy = diff(P3_y)./diff(t);

P3_v = sqrt(P3_vx.^2 + P3_vy.^2);

for i=1:length(t);

   ani = subplot(2,1,1);
   P1_circle = viscircles(P1',0.05); % Draw the point P1, P2, P3, P4
   P2_circle = viscircles(P2(:,i)',0.05);
   P3_circle = viscircles(P3(:,i)',0.05);
   P4_circle = viscircles(P4',0.05); 
   
   A_bar = line([P1(1) P2(1,i)],[P1(2) P2(2,i)]);
   B_bar = line([P2(1,i) P3(1,i)],[P2(2,i) P3(2,i)]);
   C_bar = line([P3(1,i) P4(1)],[P3(2,i) P4(2)]);
   
   axis(ani,'equal');
   set(gca,'XLim',[-5 8],'YLim',[-2 7]);
   
   str1 = 'P3';
   str2 = ['Time elapsed: '  num2str(t(i)) ' s'];
   P3_text = text(P3(1,i),P3(2,i)+0.4,str1);    % write "P3" next to the point P3
   Time = text(-2,6,str2);
   pause(0.005);
   if i<length(t)
    delete(P1_circle);
    delete(P2_circle);
    delete(P3_circle);
    delete(P4_circle);
    delete(A_bar);
    delete(B_bar);
    delete(C_bar);
    delete(P3_text);
    delete(Time);
    vel = subplot(2,1,2);
    plot(vel,t(1:i),P3_v(1:i));
    %plot(vel,t(1:i),P2_x(1:i));
    set(vel,'XLim',[0 10],'YLim',[0 10]);
    xlabel(vel, 'Time (s)');
    ylabel(vel, 'Amplitude (m/s)');
    title(vel,'Speed of P3');
    grid on;
   end

end

