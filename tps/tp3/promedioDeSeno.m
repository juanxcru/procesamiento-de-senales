function [PromedioNS] = promedioDeSeno(y,fs,fn)

cantM=length(y);
dt=1/fs;
t=0:dt:(cantM-1)*dt;
yn=sin(2*pi*fn*t);
y1=y.*yn;
PromedioNS=sum(y1)/length(y1);
if PromedioNS< 1e-14 && PromedioNS>-1 %para q aparezcan valores negativos
   PromedioNS=0;
end
end

