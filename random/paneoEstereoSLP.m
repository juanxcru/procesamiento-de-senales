function [SalidaEstereo2] = paneoEstereoSLP(audiomono,x)
%Paneo por la ley del seno. DATA AUDIO MONO, X.
% x=1 100% der / x=0 100% izq

izquierda= audiomono* sin ((1-x)* pi/2);
derecha= audiomono* sin (x*pi/2);

SalidaEstereo2= [izquierda derecha];
end


