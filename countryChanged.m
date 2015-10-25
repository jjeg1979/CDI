function countryChanged( cdi, ~, welltype )
    source = cdi.UserData.country_popup;
    cdi.UserData.variables.Country = source.String{ source.Value };
    cdi.UserData.variables.factor1 = countryFactor( cdi.UserData.variables.Country, welltype, 'CDI' );
    updateFactorOnScreen( 1, cdi );
end