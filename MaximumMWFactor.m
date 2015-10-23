function f = MaximumMWFactor( MW, welltype, index )
    beta_land = 0.383441971940446;
    beta_offshore = 0.524716738509816;
    
    switch ( welltype )
        case 'Onshore'
            switch ( index )
                case 'CDI'
                    f = exp( log( MW ) * beta_land );
                case 'CEDD'
                    f = log( MW ) * beta_land;
            end
        case 'Offshore'
            switch ( index )
                case 'CDI'
                    f = exp( log( MW ) * beta_offshore );
                case 'CEDD'
                    f = log( MW ) * beta_offshore;
            end
    end
end