function numberOfCasingsChanged( cdi, ~, welltype )
    source = cdi.UserData.number_of_casings_popup;
    cdi.UserData.variables.NumberOfCasings = source.Value;
    cdi.UserData.variables.factor7 = NumberofCasingFactor( cdi.UserData.variables.NumberOfCasings, welltype, 'CDI' );
    updateFactorOnScreen( 7, cdi );
end