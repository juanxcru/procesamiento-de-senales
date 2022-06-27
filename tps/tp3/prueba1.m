cantM=length(y4);
dt=1/fs;
t=0:dt:(cantM-1)*dt;%variable t dura lo que dura la variable desconocida
i=0;
fx=0;
for fn=1:fs
    rmult= y4.*cos(2*pi*fn*t); %multiplico por funcos de prueba, con fn.
    promN= sum(rmult) /length(rmult); %hago promedio de la resultante
    if promN<1e-14 % si el promedio da por debajo, lo pone en 0.
    promN=0; 
    end
    if promN>=1 %si es mayor o igual a 1, me guarda la frecuencia en fx y la amplitud en ax
        i=i+1;
        if fn==(fs-fx)
           alias=
        end
        fx=fn;
      
        ax=2*promN;
    end
    
end

