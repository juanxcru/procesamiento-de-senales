function [karaoke] = generakaraoke(audio1)
%desde un arhivo estereo, se genera 1 mono en karaoke.
izq=audio1(:,1);
der=audio1(:,2);

karaoke= izq - der;
end

