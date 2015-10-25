function HSUpdate( cdi, ~ )
    source = cdi.UserData.jlength_HS_value;
    if ~isempty( source.getText )
        cdi.UserData.variables.HorSection = str2double( source.getText );
        if ( cdi.UserData.variables.HorSection == 0 )
            cdi.UserData.variables.HorSection = 1;
        elseif ( cdi.UserData.variables.HorSection < 500 )
            cdi.UserData.variables.HorSection = 2;
        elseif ( cdi.UserData.variables.HorSection < 1000 )
            cdi.UserData.variables.HorSection = 3;
        elseif ( cdi.UserData.variables.HorSection < 2000 )
            cdi.UserData.variables.HorSection = 4;
        else
            cdi.UserData.variables.HorSection = 5;
        end

        cdi.UserData.variables.factor5 = HSFactor( cdi.UserData.variables.HorSection, 'CDI' );
        updateFactorOnScreen( 5, cdi );
    end
end