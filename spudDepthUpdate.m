function spudDepthUpdate( cdi, ~, welltype, index )
    source = cdi.UserData.jspud_depth_value;
    if ~isempty( source.getText ) && ~isnan( str2double( source.getText ) )
        cdi.UserData.variables.SpudDepth = str2double( source.getText );         
        % Update drilled interval (if needed)
        updateDrilledInterval( cdi, welltype, index );
    end
end