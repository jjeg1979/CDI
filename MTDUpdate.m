function MTDUpdate( cdi, ~, welltype, index )
    source = cdi.UserData.jMTD_value;
    if ~isempty( source.getText ) &&  ~isnan( str2double( source.getText ) )
        cdi.UserData.variables.MTD = str2double( source.getText );
        % Update drilled interval (if needed )
        updateDrilledInterval( cdi, welltype, index );
    end    
end