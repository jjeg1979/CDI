function f = countryFactor( country, welltype, index )
    
    Countries = importCountries( 'Countries.xlsx' );
    
    beta_land = 0.360776123180246;
    beta_offshore = 1.05219654595681;
    
    switch ( welltype )
        case 'Onshore'
            beta_country = Countries{ country, 1 };
            if isnan( beta_country )
                beta_country = - Inf;
            end
            switch ( index )
                case 'CDI'
                    f = 5 * exp( beta_country )* exp( beta_land );
                case 'CEDD'
                    f = beta_land + beta_country;
            end
        case 'Offshore'
            beta_country = Countries{ country, 2 };
            if isnan( beta_country)
                beta_country = - Inf;
            end
            switch ( index )
                case 'CDI'
                    f = 5 * exp ( beta_country ) * exp( beta_offshore);
                case 'CEDD'
                    f = beta_offshore + beta_country;
            end
        otherwise
            disp( 'Error in countryFactor function: undefined well type' );
    end
end
