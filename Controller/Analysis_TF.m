% Create tranfers function of system
Num = [-26.01 0.05631];
Den = [1 1.212 0.00418];
G = tf(Num,Den)

% Plot open-loop response
figure(1);
step(G);
figure(2);
impulse(G);

% Convert to State-Space Model
[A,B,C,D] = tf2ss(Num,Den)

% Controllability
Co = ctrb(A,B);

% Number of uncontrollable states
unco = length(A) - rank(Co);
if (unco == 0)
    disp('The system is controllable');
else
    disp('The system is uncontrollable');
end

% Observability
Ob = obsv(A,C);

% Number of unobservable states
unob = length(A) - rank(Ob);
if (unob == 0)
    disp('The system is observable');
else
    disp('The system is unobservable');
end