function updateDrilledInterval( cdi, welltype )
        
    if ( ~isempty( cdi.UserData.jsurface_elevation_value.getText ) && ...
            ~isempty( cdi.UserData.jspud_depth_value.getText ) && ...
            ~isempty( cdi.UserData.jMTD_value.getText ) )
        cdi.UserData.variables.DrilledInterval = str2double( cdi.UserData.jMTD_value.getText ) - ...
            str2double( cdi.UserData.jspud_depth_value.getText );

        % Display new value
        if ( isnan( cdi.UserData.variables.DrilledInterval ) )
            set( cdi.UserData.DI_value, 'String', ' ' );
        else
            set( cdi.UserData.DI_value, 'String', num2str( cdi.UserData.variables.DrilledInterval ) );
            cdi.UserData.variables.factor3 = DIFactor( cdi.UserData.variables.DrilledInterval, welltype, 'CDI' );
            updateFactorOnScreen( 3, cdi );
        end
    end
end