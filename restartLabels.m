function [ CDIFactors, CEDDFactors ] = restartLabels( welltype )
    CDIFactors = [];
    CEDDFactors = [];
    switch ( welltype )
        case 'Onshore'
            Factors = [ 1 3 4 6 7 8 9 10 11 ];
        case 'Offshore'
            Factors = [ 1 2 3 4 5 6 7 8 9 10 11 ];
    end
    for i = 1 : size( Factors, 2 )
        CDIFactors = strcat( CDIFactors, sprintf( 'F%d', Factors( i ) ), '+' );
        CEDDFactors = strcat( CEDDFactors, sprintf( 'F%d', Factors( i ) ), '+' );
    end
    % Remore last '+'
    CDIFactors = strcat( 'CDI=(', CDIFactors( 1 : end - 1 ), ')' );
    CEDDFactors = strcat( 'CEDD=exp(', CEDDFactors( 1 : end - 1 ), ')' );
end