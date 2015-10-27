function countryChanged( cdi, ~, welltype, index )
    source = cdi.UserData.country_popup;
    cdi.UserData.variables.Country = source.String{ source.Value };
    cdi.UserData.variables.factor1 = countryFactor( cdi.UserData.variables.Country, welltype, index );
    updateFactorOnScreen( 1, cdi );
end