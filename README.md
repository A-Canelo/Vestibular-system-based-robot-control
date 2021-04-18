# Vestibular-system-based-robot-control
Human-inspired robot control based on the vestibular system. The model of the vestibular system is made up by the sermicircular canals and the otolith organs.  
These are the Matlab codes used in the paper "A Human-inspired Simulator for the Study of Orientation and Balance Control".   https://www.wseas.org/multimedia/journals/biology/2019/a045108-099.pdf  
The software needed to run these files are Matlab, Simulink and the toolbox "Simscape Multibody".  

Files folder
>>	To reproduce the simulation results of the paper, try to open and run the file "interfaz_grafica.m".	A graphic user interface will open. Now, you can sepparately run the model of the human vestibular system placed on the left, or the robot simulation placed on the right.  
>>	- 1 Vestibular system model  
>>>	- "Seleccion de hipotesis para los canales semicirculares" menu allows to choose among 2 hypothesis: orthogonal or non orthogonal canals.
>>>	- "Seleccion del tipo de velocidad angular de la plataforma giratoria" menu allows to choose the stimulus angular velocity among constant, trapezoidal or sinusoidal.  
>>>	- "Considerar movimiento de la cabeza?" menu allows to choose whether you want to consider angular motion of the hypothetical "head" or consider it static  
>>>	- "Seleccion del tipo de velocidad angular de la cabeza en cada eje" menu will be available in the case you chose in the previous menu the option "con movimiento",	that is considering angular motion. Choose between "alabeo", "cabeceo", "guinada" or "combinado" for roll, pich, yaw or combined respectively.  
>>>	- "Considerar aceleracion lineal?" menu allows to choose whether you want to inroduce linear acceleration or not as stimulus.  
>>>	- Check "Ver respuesta de los otolitos" to show the otolith organs resulting plot.  
>>>	- Finally, press "Simular" to run your simulation.  
>>	- 2 Robot simulation  
>>>	- Introduce the desired parameters of the controller. the parameters used in the paper are:  
>>>> - Case 1: Kp = 2, Ki = 5, Ki1 = 5  
>>>> - Case 2: Kp = 2, Ki = 8, Ki1 = 8  
>>> - Check "Ver seguimiento de la posicion" to show the error angles yaw, pitch and roll resulting plots.  
>>> - Finally, press "Simular" to run your simulation.   

Figures folder  
>>	Figures obtained from the simulation and shown in the paper.
