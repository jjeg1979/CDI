function HPChanged( cdi, ~, welltype )
    source = cdi.UserData.high_pressure_popup;
    cdi.UserData.variables.HPWell = source.String{ source.Value };
    switch ( cdi.UserData.variables.HPWell )
        case 'No'
            cdi.UserData.variables.HPWell = 0;
        case 'Yes'
            cdi.UserData.variables.HPWell = 1;
    end
    cdi.UserData.variables.factor9 = HPFactor( cdi.UserData.variables.HPWell, welltype, 'CDI' );
    updateFactorOnScreen( 9, cdi );
end