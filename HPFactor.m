function f = HPFactor( HP, welltype, index )
    beta_land = 0.254519706823441;
    beta_offshore = 0.03297277558536;
    
    switch ( welltype )
        case 'Onshore'
            switch ( index )
                case 'CDI'
                    f = exp( HP * beta_land );
                case 'CEDD'
                    f = HP * beta_land;
            end
        case 'Offshore'
            switch ( index )
                case 'CDI'
                    f = exp( HP * beta_offshore );
                case 'CEDD'
                    f = HP * beta_offshore;
            end
    end
end