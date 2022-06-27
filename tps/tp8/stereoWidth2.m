classdef stereoWidth2 < audioPlugin

    properties
        gmid=1;
        gside=1;
    end
    properties (Constant)
        
        PluginInterface= audioPluginInterface(...
            audioPluginParameter(...                % ganancia mid
            'gmid','DisplayName','Ganancia MID'),...
            audioPluginParameter(...                % ganancia side
            'gside','DisplayName','Ganancia SIDE'),...
            ...
            'PluginName','Modificador de Mid/Side'); % nombre del plugin
    end
    
    methods
        function out= process(plugin,in)
        
        mid= (in(:,1) + in(:,2)) /2;
        
        side= (in(:,1) - in(:,2))/2 ;
        
        side= side*plugin.gside;
        mid= mid*plugin.gmid;
        
        out= [mid + side, mid - side];
        
        end
    end
end