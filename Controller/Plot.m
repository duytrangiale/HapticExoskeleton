% Plot the force tracking result
figure(1);
interval = 10/(length(force_actual)-1);
t = 0:interval:10;
plot(t,force_desired,'b-',t,force_actual,'r--','LineWidth',2);
title('Force Tracking Result');
legend('Desired Force','Actual Force');
xlabel('Time (s)');
ylabel('Force (N)');
grid on;

% Plot the motion tracking result
figure(2);
interval = 10/(length(pos_actual)-1);
t = 0:interval:10;
plot(t,pos_desired,'b-',t,pos_actual,'r--','LineWidth',2);
title('Position Tracking Result');
legend('Desired Position','Actual Position');
xlabel('Time (s)');
ylabel('Length (mm)');
grid on;





