% Function finds Newton-Raphson approximation of theta3 and 4
% Based on previous angles and based on link magnitudes
function y = thetas(th1,th2,th3,th4,m1,m2,m3,m4)
    %set estimates equal to last theta3 and 4
    theta3bar = th3;
    theta4bar = th4;
    % initialize matrix to store X and Y sums
    F = [1;1];
    % loop until magnitude of X and Y very small near zero
    while norm(F) >= 1.0e-010
        % X component at current estimate
        f1 = m2*cos(th2) + m3*cos(theta3bar) - m4*cos(theta4bar) - m1*cos(th1);
        % Y component
        f2 = m2*sin(th2) + m3*sin(theta3bar) - m4*sin(theta4bar) - m1*sin(th1);
        % Jacobian determinate is calculated
        A = [(-m3*sin(theta3bar)) (m4*sin(theta4bar));(m3*cos(theta3bar)) (-m4*cos(theta4bar))];
        % the X Y at current estimate
        b = [(-(f1));(-(f2))];
        x = A\b;
        % new estimate of thetas 3 and 4
        theta3bar = theta3bar + x(1,1);
        theta4bar = theta4bar + x(2,1);
        % New sum of X Y components
        f1 = m2*cos(th2) + m3*cos(theta3bar) - m4*cos(theta4bar) - m1*cos(th1);
        f2 = m2*sin(th2) + m3*sin(theta3bar) - m4*sin(theta4bar) - m1*sin(th1);
        % put X and Y sums in matrix so norm can be computed
        F = [f1;f2];
    end
    % Final estimate are returned as a vector
    y = [theta3bar theta4bar];
end