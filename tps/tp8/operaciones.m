classdef operaciones
    
    methods (Static)
        function[respuesta]= suma(n1,n2)
            respuesta= n1+n2;
        end
        function [respuesta]= resta (n1,n2)
            respuesta= n1-n2;
        end
        function [respuesta]= multiplicacion(n1,n2)
            respuesta= n1*n2;
        end
        function [respuesta]= division (n1,n2)
            respuesta= n1/n2;
        end
    end
end
