function [mezcla4chST] = mezcla4canales(audio1,audio2,audio3,audio4,x1,x2,x3,x4)
%audioN= data audio , xn= paneo de c/u
%audios
audio1st= paneoEstereoSLP(audio1,x1);
audio2st= paneoEstereoSLP(audio2,x2);
audio3st= paneoEstereoSLP(audio3,x3);
audio4st= paneoEstereoSLP(audio4,x4);

% array

mezcla4chST= [audio1st+audio2st+audio3st+audio4st];

end

