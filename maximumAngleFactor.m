function f = maximumAngleFactor( angle, welltype, index )
    beta_land = 0.0700388820341911;
    beta_offshore = 0.0095378510881258;
    
    switch ( welltype )
        case 'Onshore'
            switch ( index )
                case 'CDI'
                    f = exp( angle * beta_land );
                case 'CEDD'
                    f = angle * beta_land;
            end
        case 'Offshore'
            switch ( index )
                case 'CDI'
                    f = exp( angle * beta_offshore );
                case 'CEDD'
                    f = angle * beta_offshore;
            end
    end
end