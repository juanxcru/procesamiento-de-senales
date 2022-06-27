function [mezcla4chILD] = mezcla4chILD(audio1,audio2,audio3,audio4,pan1,pan2,pan3,pan4)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[a1]= paneoILD(audio1,pan1);
[a2]= paneoILD(audio2,pan2);
[a3]= paneoILD(audio3,pan3);
[a4]= paneoILD(audio4,pan4);

[mezcla4chILD]=[a1+a2+a3+a4];
end

