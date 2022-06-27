classdef pitagoras2 < potencias2
   
    properties
        
        cat1=0;
        cat2=0;
        cat2c=0;
        cat1c=0;
        
        
    end
    
    methods 
        function [operacion] = hipotenusa (operacion)
            
            operacion.n1 = operacion.cat1;
            operacion = cuadrado(operacion);
            operacion.cat1c= operacion.respuesta;
            
            operacion.n1 = operacion.cat2;
            operacion = cuadrado(operacion);
            operacion.cat2c= operacion.respuesta;
            
            
            operacion.n1= operacion.cat1c;
            operacion.n2= operacion.cat2c;
            
            operacion= suma(operacion);
            operacion= sqrt(operacion.respuesta);        
            
        end
    
    end
    
    
    
    
end