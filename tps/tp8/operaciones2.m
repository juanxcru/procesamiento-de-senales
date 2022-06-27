classdef operaciones2
    
    properties 
        n1=0;
        n2=0;
        respuesta=0;
    end
    
    methods
        function[miOperacion]= suma(miOperacion)
            
            miOperacion.respuesta= miOperacion.n1 + miOperacion.n2;
            
        end
        
        function[marcelo]= resta(marcelo)
            
            marcelo.respuesta= marcelo.n1 - marcelo.n2;
        end
        
        function[miOperacion]= multiplicacion(miOperacion)
            
            miOperacion.respuesta= miOperacion.n1 * miOperacion.n2;
            
        end
        
        function[miOperacion]= division (miOperacion)
            
            miOperacion.respuesta= miOperacion.n1 / miOperacion.n2;
        end
        
    end
end
