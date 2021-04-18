% DC motor model

R = 2.0;                % Ohms (2 ohmios la original)
L = 0.5;                % Henrys
Km = 0.1;               % torque constant
Kb = 0.1;               % back emf constant
Kf = 0.2;               % Nms
J = 0.02;               % kg.m^2/s^2
% Td = -0.1 * (t>5 & t<10);       % load disturbance

% Construcción del modelo

h1 = tf(Km,[L R]);            % armature
h2 = tf(1,[J Kf]);            % eqn of motion

dcm = ss(h2) * [h1 , 1];      % w = h2 * (h1*Va + Td)
dcm = feedback(dcm,Kb,1,1);   % close back emf loop

Kff = 1/dcgain(dcm(1));        % ganancia del sistema

% stepplot(dcm(1));

sim ('DCmotormodel')