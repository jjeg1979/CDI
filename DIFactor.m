function f = DIFactor( DI, welltype, index )
    beta_land = 0.451191746253689;
    beta_offshore = 0.262821301208325;
    
    switch ( welltype )
        case 'Onshore'
            switch ( index )
                case 'CDI'
                    f = 1000 / DI * exp( DI / 1000 * beta_land );
                case 'CEDD'
                    f = DI / 1000 * beta_land;
            end
        case 'Offshore'
            switch ( index )
                case 'CDI'
                    f = 1000 / DI * exp( DI / 1000 * beta_offshore );
                case 'CEDD'
                    f = DI / 1000 * beta_offshore;
            end
    end
end