function [ITDderecha] = paneoITDderecha(audioMono,angulo,fs)
%
angulo= angulo*pi/180;

dT= 0.09/340*(angulo+sin(angulo));

mret= floor(dT*fs);

ITDderecha=[[zeros(mret,1);audioMono],[audioMono;zeros(mret,1)]];





end

