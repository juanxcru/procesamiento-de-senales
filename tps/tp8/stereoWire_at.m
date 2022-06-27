classdef stereoWire_at < audioPlugin
    methods
        function out = process (plugin, in)
            out=in/2;
        end
    end
end
