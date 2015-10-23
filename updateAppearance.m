%Update the GUI appearance based on the editbox text
function updateAppearance(jEditbox, hMessageLabel)
    currentText = char(jEditbox.getText);
    if isempty(currentText)
        set(hMessageLabel, 'String','Please enter a 5-digit zip-code')
        jEditbox.setBorder(javax.swing.border.LineBorder(java.awt.Color.red, 3, false));
    elseif ~alldigits(currentText)
        beep;
        set(hMessageLabel, 'String','Invalid zip: should only contain digits')
        jEditbox.setBorder(javax.swing.border.LineBorder(java.awt.Color.red, 3, false));
    elseif length(currentText) ~= 5
        set(hMessageLabel, 'String','Invalid zip: should have exactly 5 digits')
        jEditbox.setBorder(javax.swing.border.LineBorder(java.awt.Color.red, 3, false));
    else
        set(hMessageLabel, 'String','');
        jEditbox.setBorder(javax.swing.border.LineBorder(java.awt.Color.gray, 1, false));
    end
end