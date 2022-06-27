function [As] = espectro(yx)

Lyx=length(yx);
t=0:1/Lyx:1-1/Lyx; 

%---COSENO
Acos=0:Lyx-1;
for fn=1:Lyx
    yn=cos(2*pi*fn*t);
    PromedioN=dot(yn,yx)/length(yn);
        if PromedioN< 1e-14
            PromedioN=0;
        end
    Acos(fn)=2*PromedioN;
end

%---SENO
Asen=0:Lyx-1;
for fn=1:Lyx
    yn=sin(2*pi*fn*t);
    PromedioN=dot(yn,yx)/length(yn);
        if PromedioN< 1e-14 && PromedioN>-1e-10
           PromedioN=0;
        end
    Asen(fn)=2*PromedioN;
end

%--- AMPLITUD

As= sqrt(Acos.^2+Asen.^2);

end

