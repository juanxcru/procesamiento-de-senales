classdef pitagoras < potencias
    
    methods(Static)
        function[respuesta]= hipotenusa(cateto1,cateto2)
            respuesta= sqrt(operaciones.suma(potencias.cuadrado(cateto1),potencias.cuadrado(cateto2)));
        end
        function[respuesta]= cateto(hipotenusa,cateto2)
            respuesta= sqrt(operaciones.resta(potencias.cuadrado(hipotenusa),potencias.cuadrado(cateto2)));
        end
    end
end
