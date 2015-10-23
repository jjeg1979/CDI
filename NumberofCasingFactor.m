function f = NumberofCasingFactor( NC, welltype, index )
    
    beta_land = 0.269601230424268;
    beta_offshore = 0.289469204163833;
    
    switch ( welltype )
        case 'Onshore'
            switch ( index )
                case 'CDI'
                    f = exp( NC * beta_land );
                case 'CEDD'
                    f = NC * beta_land;
            end
        case 'Offshore'
            switch ( index )
                case 'CDI'
                    f = exp( NC * beta_offshore );
                case 'CEDD'
                    f = NC * beta_offshore;
            end
    end
end