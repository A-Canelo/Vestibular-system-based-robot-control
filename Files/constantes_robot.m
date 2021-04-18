% Robot con control de posición mediante canal semicircular

% Creación del modelo del motor de corriente continua
% DC motor model
R = 2.0;                % Ohms (2 ohmios la original)
assignin('base','R',R);
L = 0.5;                % Henrys
assignin('base','L',L);
Km = 0.1;               % torque constant
assignin('base','Km',Km);
Kb = 0.1;               % back emf constant
assignin('base','Kb',Kb);
Kf = 0.2;               % Nms
assignin('base','Kf',Kf);
J = 0.02;               % kg.m^2/s^2
assignin('base','J',J);
% Td = -0.1 * (t>5 & t<10);       % load disturbance

% Construcción del modelo
h1 = tf(Km,[L R]);            % armature
assignin('base','h1',h1);
h2 = tf(1,[J Kf]);            % eqn of motion
assignin('base','h2',h2);
dcm = ss(h2) * [h1 , 1];      % w = h2 * (h1*Va + Td)
assignin('base','dcm',dcm);
dcm = feedback(dcm,Kb,1,1);   % close back emf loop

Kff = 1/dcgain(dcm(1));        % ganancia del sistema
assignin('base','Kff',Kff);

%Parámetros del controlador
% ki = 8;
% assignin('base','ki',ki);
% kp = 2;
% assignin('base','kp',kp);
% ki1 = 5;
% assignin('base','ki1',ki1);

% Simulación del robot
open_system('vestibular_3GDL')
sim('vestibular_3GDL')

global plot2;
assignin('base','plot2',plot2);
% Plots
if plot2 == 1
    figure
    subplot(3,1,1)
    plot(t,gdl1,'lineWidth',2)
    title('posición angular eje Z (grados)')
    xlabel('t(s)')
    subplot(3,1,2)
    plot(t,gdl2,'lineWidth',2)
    title('posición angular eje X (grados)')
    xlabel('t(s)')
    subplot(3,1,3)
    plot(t,gdl3,'lineWidth',2)
    title('posición angular eje Y (grados)')
    xlabel('t(s)')
else
end