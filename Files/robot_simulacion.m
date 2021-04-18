% Robot con control de posici�n mediante canal semicircular

% Creaci�n del modelo del motor de corriente continua
DCmotor

%Par�metros del controlador
ki = 8;
kp = 2;
ki1 = 8;

% Simulaci�n del robot
open_system('vestibular_3GDL')
sim('vestibular_3GDL')

% Plots
figure
subplot(3,1,1)
plot(t,gdl1,'lineWidth',2)
title('posici�n angular eje Z (grados)')
xlabel('t(s)')
ylabel('grados')
subplot(3,1,2)
plot(t,gdl2,'lineWidth',2)
title('posici�n angular eje X (grados)')
xlabel('t(s)')
ylabel('grados')
subplot(3,1,3)
plot(t,gdl3,'lineWidth',2)
title('posici�n angular eje Y (grados)')
xlabel('t(s)')
ylabel('grados')

