function FactorLabel = surfaceElevationUpdate( cdi, ~, welltype, FactorLabel )
    source = cdi.UserData.jsurface_elevation_value;
    if ~isempty( source.getText ) && ~isnan( str2double( source.getText ) )
        cdi.UserData.variables.SurfaceElevation = str2double( source.getText );
        if ( strcmp( welltype, 'Offshore' ) )
            cdi.UserData.variables.factor2 = WDFactor( cdi.UserData.variables.SurfaceElevation, 'CDI' );
            updateFactorOnScreen( 2, cdi );
        end
        % Update drilled interval (if needed)
        updateDrilledInterval( cdi, welltype );
        % Update label
        FactorLabel = updateOutputLabel( cdi, welltype, FactorLabel, 2, cdi.UserData.variables.factor2, 'CDI' );
    end
end