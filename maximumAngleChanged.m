function maximumAngleChanged( cdi, ~, welltype, index )
    source = cdi.UserData.maximum_angle_popup;
    if (  cdi.UserData.variables.Offshore ) 
        cdi.UserData.variables.Angle = source.Value;
        cdi.UserData.variables.factor4 = maximumAngleFactor( cdi.UserData.variables.Angle, welltype, index );        
    else
        cdi.UserData.variables.Angle = source.Value - 1;
        cdi.UserData.variables.factor4 = maximumAngleFactor( cdi.UserData.variables.Angle, welltype, index );        
    end
    updateFactorOnScreen( 4, cdi );
end