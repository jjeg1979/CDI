function maximumAngleChanged( cdi, ~, welltype )
    source = cdi.UserData.maximum_angle_popup;
    if (  cdi.UserData.variables.Offshore ) 
        cdi.UserData.variables.Angle = source.Value;
        cdi.UserData.variables.factor4 = maximumAngleFactor( cdi.UserData.variables.Angle, welltype, 'CDI' );        
    else
        cdi.UserData.variables.Angle = source.Value - 1;
        cdi.UserData.variables.factor4 = maximumAngleFactor( cdi.UserData.variables.Angle, welltype, 'CDI' );        
    end
    updateFactorOnScreen( 4, cdi );
end