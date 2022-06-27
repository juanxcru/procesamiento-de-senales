function [Asen] = AmplitudSEN(y,fs)
%
cantM=length(y);
dt=1/fs;
Asen=0:fs-1;
t=0:dt:(cantM-1)*dt;
for fn=0:fs-1
    yn=sin(2*pi*fn*t);
    PromedioN=dot(yn,y)/cantM;
if PromedioN< 1e-14 && PromedioN>-1
   PromedioN=0;
end
Asen(fn+1)=2*PromedioN;
end

end

