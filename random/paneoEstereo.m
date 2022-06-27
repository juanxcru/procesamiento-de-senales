function [SalidaEstereo] = paneoEstereo(audiomono,nvlizq,nvlder)
% Paneo por nivel de un audio mono. DATAUDIOMONO, NIVELIZQ, NIVELDER
izquierda= audiomono*nvlizq;
derecha= audiomono*nvlder;

SalidaEstereo= [izquierda derecha];

end


