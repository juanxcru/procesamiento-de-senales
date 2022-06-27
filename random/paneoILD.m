function [estereoILD] = paneoILD(audio1,angulo)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
x= angulo/180 + 0.5;

estereoILD= paneoEstereoSLP(audio1,x);
    
end

