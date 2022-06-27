classdef potencias2 < operaciones2
    
    methods
        function[operacion]= cuadrado(operacion)
           operacion.n2=operacion.n1;
           operacion= multiplicacion(operacion);
        end
    end
end
