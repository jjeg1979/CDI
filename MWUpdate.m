function MWUpdate( cdi, ~, welltype )
    source = cdi.UserData.jmaximum_MW_value;
    if ~isempty( source.getText ) && ~isnan( str2double( source.getText ) )
        cdi.UserData.variables.MudWeight = str2double( source.getText );
        cdi.UserData.variables.factor8 = MaximumMWFactor( cdi.UserData.variables.MudWeight, welltype, 'CDI' );
        updateFactorOnScreen( 8, cdi );
    end        
end