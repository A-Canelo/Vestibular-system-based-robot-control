% Constantes y Variables sistema vestibular

m = 1070;   %g/cm4 Endolymph mass within the horizontal canal

d = 0.76;   %g/cm Inertial forcing coefficient

tau1 = 13.2;    % Slow time constant of the horizontal semicircular canal

tau2 = 0.006;    % Fast time constant of the horizontal semicircular canal

%taua = 80;

%taui = 0.049;

% Selección del tipo de función velocidad angular de la silla (constante,
% trapezoidal, senoidal)
silla = 0;

% ¿ Considerar movimiento de la cabeza ?
cabeza = 1;

% Selección tipo de función velocidad de la cabeza
eje_giro = 3;

% Selección del tipo de canales semicirculares (ortogonal-> canal=0,
% no-ortogonal-> canal=1)
canal = 0;

% Selección aceleración lineal de la cabeza (sin aceleracion 0 con
% aceleración 1)
a_lineal = 1;

% Simulaciones y plots de resultados
sim('vestibular_system_final')

% Canales semicirculares
figure
subplot(3,1,1)
plot(t,desp_cupula_anterior,'lineWidth',2)
title('Canal anterior (cm^3)')
xlabel('t(s)')
ylabel('vol(cm^3)')
subplot(3,1,2)
plot(t,desp_cupula_posterior,'lineWidth',2)
title('Canal posterior (cm^3)')
xlabel('t(s)')
ylabel('vol(cm^3)')
subplot(3,1,3)
plot(t,desp_cupula_lateral,'lineWidth',2)
title('Canal lateral (cm^3)')
xlabel('t(s)')
ylabel('vol(cm^3)')

% Otolitos
figure(2)
subplot(3,1,1)
plot(t,x_otolito,'lineWidth',2)
title('Afferent Firing Rate (AFR) (eje X)')
xlabel('t(s)')
ylabel('AFR')
subplot(3,1,2)
plot(t,y_otolito,'lineWidth',2)
title('Afferent Firing Rate (AFR) (eje Y)')
xlabel('t(s)')
ylabel('AFR')
subplot(3,1,3)
plot(t,z_otolito,'lineWidth',2)
title('Afferent Firing Rate (AFR) (eje Z)')
xlabel('t(s)')
ylabel('AFR')