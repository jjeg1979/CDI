function f = ReservoirAgeFactor( ReservoirAge, welltype, index )
    beta_land = 0.0798692320827637;
    beta_offshore = 0.0658291587382301;
    
    switch ( ReservoirAge )
        case 'Tertiary of later'
            b = 1;
        case 'Cretaceous'
            b = 2;
        case 'Jurassic'
            b = 3;
        case 'Triassic'
            b = 4;
        case 'Pre-Triassic'
            b = 5;
    end
    
    switch ( welltype )
        case 'Onshore'
            switch ( index )
                case 'CDI'
                    f = exp( b * beta_land );
                case 'CEDD'
                    f = b * beta_land;
            end
        case 'Offshore'
            switch ( index )
                case 'CDI'
                    f = exp( b * beta_offshore );
                case 'CEDD'
                    f = b * beta_offshore;
            end
    end
end