function f = HSFactor( HS, index )
    beta = 0.0033934072200624;
    switch ( index )
        case 'CDI'
            f = exp( HS * beta );
        case 'CEDD'
            f = HS * beta;
    end
end