function bitSizeChanged( cdi, ~, welltype, index )
    source = cdi.UserData.bit_size_popup;
    cdi.UserData.variables.BitSize = source.Value;
    cdi.UserData.variables.factor6 = FinalBitSizeFactor( cdi.UserData.variables.BitSize, welltype, index );
    updateFactorOnScreen( 6, cdi );
end