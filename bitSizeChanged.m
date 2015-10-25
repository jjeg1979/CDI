function bitSizeChanged( cdi, ~, welltype )
    source = cdi.UserData.bit_size_popup;
    cdi.UserData.variables.BitSize = source.Value;
    cdi.UserData.variables.factor6 = FinalBitSizeFactor( cdi.UserData.variables.BitSize, welltype, 'CDI' );
    updateFactorOnScreen( 6, cdi );
end