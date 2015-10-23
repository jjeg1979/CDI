function f = FinalBitSizeFactor( BS, welltype, index )
    
    beta_land = 0.100105399641296;
    beta_offshore = 0.0306078184178133;
    
    switch( welltype )
        case 'Onshore'
            switch ( index )
                case 'CDI'
                    f = exp( BS * beta_land );
                case 'CEDD'
                    f = BS * beta_land;
            end
        case 'Offshore'
            switch ( index)
                case 'CDI'
                    f = exp ( BS * beta_offshore );
                case 'CEDD'
                    f = BS * beta_offshore;
            end
    end
end