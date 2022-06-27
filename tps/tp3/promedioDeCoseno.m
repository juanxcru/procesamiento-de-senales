function [PromedioN] = promedioDeCoseno(y,fs,fn)

cantM=length(y);
dt=1/fs;
t=0:dt:(cantM-1)*dt;
yn=cos(2*pi*fn*t);
y1=y.*yn;
PromedioN=sum(y1)/length(y1);
if PromedioN< 1e-14
   PromedioN=0;
end
    
end

