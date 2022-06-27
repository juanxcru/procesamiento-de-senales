function [ax,fx,axg] = promCOS(y,fs)
%
cantM=length(y); %cuantas muestras tiene la variable desconocida
dt=1/fs;
%detecta alias para este caso unicamente.
t=0:dt:(cantM-1)*dt; %variable t dura lo que dura la variable desconocida
axg=0:(fs-1)/2;
for fn=1:fs/2 % para q no aparezca el valor de alias en las variables.
    rmult=y.*cos(2*pi*fn*t); %multiplico por funcos de prueba, con fn.
    promN=sum(rmult)/length(rmult); %hago promedio de la resultante
    if promN<1e-10 % si el promedio da por debajo, lo pone en 0. lo tuve que hacer mas grande el umbral.
        promN=0;
    end
    if promN>0 % si el promedio es mayor a cero
        fx=fn; % guarda el valor de frecuencia en fx.
        ax=2*promN; % guarda la amplitud en ax.
        fx,ax
    end
      axg(fn)=2*promN; 
end



end

