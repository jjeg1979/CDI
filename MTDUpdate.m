function MTDUpdate( cdi, ~, welltype )
    source = cdi.UserData.jMTD_value;
    if ~isempty( source.getText )
        cdi.UserData.variables.MTD = str2double( source.getText );
        % Update drilled interval (if needed )
        updateDrilledInterval( cdi, welltype );
    end    
end