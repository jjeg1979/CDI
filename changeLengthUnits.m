function value = changeLengthUnits( value, oldUnits, newUnits )
    if  ( oldUnits == newUnits )
        return;
    end
    switch ( newUnits )
        case 'm'
            value = value / 3.28;
        case 'ft'
            value = value * 3.28;
    end
end