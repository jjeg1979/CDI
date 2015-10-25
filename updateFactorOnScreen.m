function updateFactorOnScreen( factorNum, cdi )
    value = eval( sprintf( 'cdi.UserData.variables.factor%d', factorNum ) );
    % Updates the factor on the screen given the number of the factor
    % Get the handle to the panel that holds the value dynamically
    textBox = eval( sprintf( 'cdi.UserData.factor%d', factorNum ) );
    % Set String property
    set( textBox, 'String', sprintf( 'F%d: %.3f', factorNum, value ) );
    % Make it visible
    set( textBox, 'Visible', 'on' );
end