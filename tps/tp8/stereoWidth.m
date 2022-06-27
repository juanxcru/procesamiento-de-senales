classdef stereoWidth < audioPlugin

    properties
        width= 1;
    end
    properties (Constant)
        
        PluginInterface= audioPluginInterface...
            (audioPluginParameter('width','DisplayName','Width'),...
            'PluginName','Modificador de StereoWidth');
    end
    methods
        function out= process(plugin,in)
        
        mid= (in(:,1) + in(:,2)) /2;
        
        side= (in(:,1) - in(:,2))/2;
        
        side= side*plugin.width;
        
        out= [mid + side, mid - side];
        
        end
    end
end