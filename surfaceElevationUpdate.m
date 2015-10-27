function surfaceElevationUpdate( cdi, ~, welltype, index )
    source = cdi.UserData.jsurface_elevation_value;
    if ~isempty( source.getText ) && ~isnan( str2double( source.getText ) )
        cdi.UserData.variables.SurfaceElevation = str2double( source.getText );
        if ( strcmp( welltype, 'Offshore' ) )
            cdi.UserData.variables.factor2 = WDFactor( cdi.UserData.variables.SurfaceElevation, index );
            updateFactorOnScreen( 2, cdi );
        end
        % Update drilled interval (if needed)
        updateDrilledInterval( cdi, welltype, index );        
    end
end