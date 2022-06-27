classdef stereoGain < audioPlugin

    properties
        gain=1;
    end
    properties (Constant)
        
        PluginInterface = audioPluginInterface...
                (audioPluginParameter('gain','DisplayName','Ganancia', ...
            'Label','Lineal', ...
            'Mapping',{'lin',0,1.2}),...
            'PluginName','Gananacia Lineal de 0 a 1.2');       
    
        
    end
    
    methods
        function out = process(plugin,in)
    
            out= in*plugin.gain;
            
            
        end
    end
    
end
