function [EstereoITD] = paneoITD(audioMono,angulo,fs)
%UNTITLED3 Summary of this function goes here


if angulo>0
    EstereoITD= paneoITDderecha(audioMono,angulo,fs);
else
    EstereoITD= paneoITDizquierda(audioMono,angulo,fs);
end

end

