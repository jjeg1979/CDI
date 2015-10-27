function FactorLabel = updateOutputLabel( cdi, welltype, FactorLabel, numFactor, valueFactor, index )
    switch ( welltype )
        case 'Onshore'
            numFactors = 9;
            % A conversion is needed   
            switch ( numFactor )
                case 1
                    % Do nothing
                case 3
                    numFactor = 2;
                case 4
                    numFactor = 3;
                otherwise
                    numFactor = numFactor - 2 ;
            end
        case 'Offshore'
            numFactors = 11;
    end
    switch ( index )
        case 'CDI'
            index = 'CDI=';
            control = cdi.UserData.CDIText;            
        case 'CEDD'
            index = 'CEDD=exp(';
            control = cdi.UserData.CEDDText;
    end
    
    inicio = length( index ) + 1;
    allFactorsNum =  false( 1, numFactors ) ;
    
    %% Replace CDIFactors/CEDDFactors where appropiate
    % First cut CDIFactors/CEDDFactors string from the '+'
    FactorLabel = FactorLabel( inicio : end - 1 );
    FactorLabel = strsplit( FactorLabel, '+' );
    % Insert new value in the corresponding place.
    FactorLabel{ numFactor } = sprintf( '%.3f', valueFactor ) ;
    % Check whether all factors in FactorLabel can be converted into number
    for i = 1 : numFactors
        if ~isnan( str2double( FactorLabel{ i } ) )
            allFactorsNum( i ) = 1;
        end
    end
    % See if the sum of allFactorsNum is equal to numFactors (all are
    % numeric then)
    if ( sum( allFactorsNum ) == numFactors )
        globalValue = sum( str2double( FactorLabel ) );
        FactorLabel = strjoin( FactorLabel, '+' );
        FactorLabel = strcat( index, FactorLabel, ')=', globalValue );
    else
        FactorLabel = strjoin( FactorLabel, '+' );
        FactorLabel = strcat( index, FactorLabel, ')');
    end
    
    set( control, 'String', FactorLabel );

end
