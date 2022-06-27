function [y3,prom] = multiCOS(f1,f2,fs,a1,a2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

dt=1/fs;
t=0:dt:1-dt;
y1=a1*cos(2*pi*f1*t);
y2=a2*cos(2*pi*f2*t);
y3= y1.*y2;
prom=sum(y3)/length(y3);
if abs(prom)<1e-14; prom=0; end
plot(t,y3,t,0*t+prom)
end

