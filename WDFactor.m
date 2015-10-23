function f = WDFactor( WD, index )
    beta_WD = 0.0613982740458531;
    switch ( index )
        case 'CDI'
            f = exp( log( WD ) * beta_WD );
        case 'CEDD'
            f = log( WD ) * beta_WD;
    end
end