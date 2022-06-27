function [ audio12 ] = sumaAudio( audio1,audio2)
long1=length(audio1(:,1)); % cuantas muestras tiene audio1 (duracion)
long2=length(audio2(:,1)); % cuantas muestras tiene audio2 (duracion)
if length(audio1(1,:))<2 % si tiene 1 o 2 columnas (mono-estereo)
    monoEstereo=1; 
else
    monoEstereo=2;
end
long=max([long1 long2]);% compara cual es mas grande, long toma el valor de lamas grande
audio12=zeros(long,monoEstereo); % genera un array, (1 mono, 2 stereo) del largo de long. solo de ceros
audio12(1:long1,:)=audio1; % de la muestra 1 hasta el largo de audio1, mete audio1 
audio12(1:long2,:)=audio12(1:long2,:)+audio2; % a lo que esta edesde la muestra 1 hasta long2, sumale audio2
end