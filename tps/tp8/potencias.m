classdef potencias < operaciones
    
    methods(Static)
        function[respuesta]= cuadrado(n1)
            respuesta= operaciones.multiplicacion(n1,n1);
        end
    end
end
