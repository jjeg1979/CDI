function reservoirAgeChanged( cdi, ~, welltype )
    source = cdi.UserData.reservoir_age_popup;
    cdi.UserData.variables.ReservoirAge = source.String{ source.Value };
    cdi.UserData.variables.factor10 = ReservoirAgeFactor( cdi.UserData.variables.ReservoirAge, welltype, 'CDI' );
    updateFactorOnScreen( 10, cdi );
end