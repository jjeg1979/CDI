function [ cdi, f ] = CalculateIndex( country, WD, DI, angle, HS, BS, NC, MW, HP, Age, Batch, welltype, index )

    switch ( welltype )
        case 'Onshore'
            funhandles = { 'countryFactor', 'DIFactor', 'maximumAngleFactor', 'FinalBitSizeFactor', ...
                'NumberofCasingFactor', 'MaximumMWFactor', 'HPFactor', 'ReservoirAgeFactor', 'BatchFactor' };
            f( 1 ) = round( feval( funhandles{ 1 }, country, welltype, index ), 3 );
            f( 2 ) = round( feval( funhandles{ 2 }, DI, welltype, index ), 3 );
            f( 3 ) = round( feval( funhandles{ 3 }, angle, welltype, index ), 3 );
            f( 4 ) = round( feval( funhandles{ 4 }, BS, welltype, index ), 3 );
            f( 5 ) = round( feval( funhandles{ 5 }, NC, welltype, index ), 3 );
            f( 6 ) = round( feval( funhandles{ 6 }, MW, welltype, index ), 3 );
            f( 7 ) = round( feval( funhandles{ 7 }, HP, welltype, index ), 3 );
            f( 8 ) = round( feval( funhandles{ 8 }, Age, welltype, index ), 3 );
            f( 9 ) = round( feval( funhandles{ 9 }, Batch, welltype, index ), 3 );
        case 'Offshore'
             funhandles = { 'countryFactor', 'WDFactor', 'DIFactor', 'maximumAngleFactor', 'HSFactor', ...
                 'FinalBitSizeFactor', 'NumberofCasingFactor', 'MaximumMWFactor', 'HPFactor', ...
                 'ReservoirAgeFactor', 'BatchFactor' }; 
             f( 1 ) = round( feval( funhandles{ 1 }, country, welltype, index ), 3 );
             f( 2 ) = round( feval( funhandles{ 2 }, WD, index ), 3 );
             f( 3 ) = round( feval( funhandles{ 3 }, DI, welltype, index ), 3 );
             f( 4 ) = round( feval( funhandles{ 4 }, angle, welltype, index ), 3 );
             f( 5 ) = round( feval( funhandles{ 5 }, HS, index ), 3 );
             f( 6 ) = round( feval( funhandles{ 6 }, BS, welltype, index ), 3 );
             f( 7 ) = round( feval( funhandles{ 7 }, NC, welltype, index ), 3 );
             f( 8 ) = round( feval( funhandles{ 8 }, MW, welltype, index ), 3 );
             f( 9 ) = round( feval( funhandles{ 9 }, HP, welltype, index ), 3 );
             f( 10 ) = round( feval( funhandles{ 10 }, Age, welltype, index ), 3 );
             f( 11 ) = round( feval( funhandles{ 11 }, Batch, welltype, index ), 3 );
    end
    
    switch ( index )
        case 'CDI'
            cdi = round( prod( f ), 0 );
        case 'CEDD'
            cdi = round( exp( sum( f ) ), 1 );
    end
    
end