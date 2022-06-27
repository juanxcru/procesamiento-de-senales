function [ITDizquierda] = paneoITDizquierda(audioMono,angulo,fs)
%entrando con un audiomono, angulo, fs. devuelve una variable estereo
%paneada
angulo= (angulo*pi/180)*-1; % si no pongo el *-1, mret me da negativo

dT= 0.09/340*(angulo+sin(angulo));

mret= floor(dT*fs); % si mret me da negativo, la funcion zeros no anda


ITDizquierda=[[audioMono;zeros(mret,1)],[zeros(mret,1);audioMono]];
%el que tiene retardo es el canal derecho



end
