function [mezcla4chITD] = mezcla4chITD(audio1,audio2,audio3,audio4,pan1,pan2,pan3,pan4,fs)
%Poner las variables de los cuatro audios a mezclar seguido de su angulo, y
%frecuencia de muestreo
%[mezcla4chITD] =(audio1,audio2,audio3,audio4,pan1,pan2,pan3,pan4,fs)
% 

[Estereo1]= paneoITD(audio1,pan1,fs); % genero el paneo especifico para cada canal saliendo con un archivo estereo
[Estereo2]= paneoITD(audio2,pan2,fs);
[Estereo3]= paneoITD(audio3,pan3,fs);
[Estereo4]= paneoITD(audio4,pan4,fs);

[suma12]= sumaAudio(Estereo1, Estereo2); % sumo 2 estereos
[suma34]= sumaAudio (Estereo3, Estereo4); % otra suma de de 2 estereos
[mezcla4chITD]= sumaAudio (suma12, suma34); % sumo la suma de los estereos

end

