% Constantes y Variables sistema vestibular

m = 1070;   % Endolymph mass within the horizontal canal
assignin('base','m',m);

d = 0.76;   % Inertial forcing coefficient
assignin('base','d',d);

tau1 = 13.2;    % Slow time constant of the horizontal semicircular canal
assignin('base','tau1',tau1);

tau2 = 0.006;    % Fast time constant of the horizontal semicircular canal
assignin('base','tau2',tau2);

% Simulaciones y plots de resultados
sim('vestibular_system_final')

% Canales semicirculares
figure
subplot(3,1,1)
plot(t,desp_cupula_anterior,'lineWidth',2)
title('Canal anterior (cm^3)')
xlabel('t(s)')
subplot(3,1,2)
plot(t,desp_cupula_posterior,'lineWidth',2)
title('Canal posterior (cm^3)')
xlabel('t(s)')
subplot(3,1,3)
plot(t,desp_cupula_lateral,'lineWidth',2)
title('Canal lateral (cm^3)')
xlabel('t(s)')

global plot1;
assignin('base','plot1',plot1);
% Otolitos
if plot1 == 1
    figure(2)
    subplot(3,1,1)
    plot(t,x_otolito,'lineWidth',2)
    title('Afferent Firing Rate (AFR) (eje X)')
    xlabel('t(s)')
    subplot(3,1,2)
    plot(t,y_otolito,'lineWidth',2)
    title('Afferent Firing Rate (AFR) (eje Y)')
    xlabel('t(s)')
    subplot(3,1,3)
    plot(t,z_otolito,'lineWidth',2)
    title('Afferent Firing Rate (AFR) (eje Z)')
    xlabel('t(s)')
else
end