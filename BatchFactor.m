function f = BatchFactor( BS, welltype, index )
    beta_land = -0.0886745759168646;
    beta_offshore = -0.100794295506726;
    
    switch ( welltype )
        case 'Onshore'
            switch ( index )
                case 'CDI'
                    f = exp( BS * beta_land );
                case 'CEDD'
                    f = BS * beta_land;
            end
        case 'Offshore'
            switch ( index )
                case 'CDI'
                    f = exp( BS * beta_offshore );
                case 'CEDD'
                    f = BS * beta_offshore;
            end
    end
end