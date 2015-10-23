function value = changeDensityUnits( value, oldUnits, newUnits )
% Don't do anything if new units are the same as old ones
    if ( strcmp( oldUnits, newUnits ) )
        return;
    end

    switch ( newUnits )
        case 'SG'
            switch ( oldUnits )
                case 'kg/m^3'
                    value = value * 0.001;
                case 'kpam'
                    value = value * 0.10217186919543;
                case 'ppg'
                    value = value * 0.11982643;
                case 'lb/ft^3'
                    value = value * 0.01601846337; 
                case 'psif'
                    value = value * 2.30321074888219;
            end
        case 'kg/m^3'
            switch ( oldUnits )
                case 'SG'
                    value = value * 1000;
                case 'kpam'
                    value = value * 102.17186919543;
                case 'ppg'
                    value = value * 119.82643;
                case 'lb/ft^3'
                    value = value * 16.01846337;
                case 'psif'
                    value = value * 2303.21074888219;
            end
        case 'kpam'
            switch ( oldUnits )
                case 'SG'
                    value = value * 9.78742982657235;
                case 'kg/m^3'
                    value = value * 0.00978742982657235;
                case 'ppg'
                    value = value * 1.17279277499368;
                case 'lb/ft^3'
                    value = value * 0.156779586163395;
                case 'psif'
                    value = value * 22.5425135804916;
            end
        case 'ppg'
            switch ( oldUnits )
                case 'SG'
                    value = value * 8.345404265;
                case 'kg/m^3'
                    value = value * 0.008345404265;
                case 'kpam'
                    value = value * 0.85266555296215;
                case 'lb/ft^3'
                    value = value * 0.1336805526;
                case 'psi/ft'
                    value = value * 19.24999957;
            end
        case 'lb/ft^3'
            switch ( oldUnits )
                case 'SG'
                    value = value * 62.42796058;
                case 'kg/m^3'
                    value = value * 0.06242796058;
                case 'kpam'
                    value = value * 6.37838142370018;
                case 'ppg'
                    value = value * 7.480519648;
                case 'psif'
                    value = 143.78474983865;
            end
        case 'psif'
            switch ( oldUnits )
                case 'SG'
                    value = value * 0.434176507940199;
                case 'kg/m^3'
                    value = value * 0.00434176507940199;
                case 'kpam'
                    value = value * 0.0443606253769945;
                case 'ppg'
                    value = value * 0.05194805310845;
                case 'lb/ft^3'
                    value = value * 0.00695484048984446;
            end
    end

end