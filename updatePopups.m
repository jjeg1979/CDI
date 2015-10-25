function updatePopups( cdi, welltype )
    offshore_maximum_angle_popup = { '<5', '5-24', '25-42', '43-64', '65-84', '85-94', '95-170' };
    onshore_maximum_angle_popup = { '<5', '5-24', '25-44', '45-64', '65-84', '85-89', '90-170' };
    offshore_bit_size_popup = { '<7', '7-9', '9-12', '>12' };
    onshore_bit_size_popup = { '<7', '7-9', '>9' };
    offshore_number_of_casings_popup = { 1, 2, 3, 4, 5, '>=6' };
    onshore_number_of_casings_popup = { 1, 2, 3, 4, '>5' };
    cdi.UserData.variables.CountryLandList = { 'Yemen', 'Saudia Arabia', ...
        'Egypt', 'Algeria', 'Tunisia', 'Colombia', 'Ecuador', 'Trinidad', ...
        'Indonesia', 'Papua New Guinea', 'Australia', 'New Zealand', 'Oman', ...
        'Qatar', 'Syria', 'Iran', 'Azerbaijan', 'Russia', 'Kazakhstan', ...
        'Sakhalin Island', 'Gabon', 'Angola', 'Mozambique', 'Ethiopia', ...
        'Austria', 'Italy', 'Albania', 'Romania', 'Pakistan', 'India', ...
        'Libya', 'Niger', 'Nigeria', 'Sudan', 'Uganda', 'Netherlands', ...
        'Germany', 'France', 'UK', 'Thailand', 'Bangladesh', 'China', ...
        'Bolivia', 'Brazil', 'Argentina' };
    cdi.UserData.variables.CountryOffshoreList = { 'UK', 'Ireland', 'Faroes', ...
        'Nigeria', 'Mauritania', 'Ivory Coast', 'Benin', 'Ghana', 'Guinea-Bissau', ...
        'Malaysia', 'Brunei', 'India', 'Vietnam', 'Myanmar', 'Cambodia', 'Bangladesh', ...
        'Indonesia', 'Phillipines', 'Papua New Guinea', 'Angola', 'South Africa', ...
        'Mozambique', 'Namibia', 'Kenya', 'Norway' , 'Australia', 'New Zealand', 'China', ...
        'Sakhalin Island' , 'Iran', 'Qatar', 'Azerbaijan', 'Bahrain', 'Turkmenistan', 'UAE', ...
        'Pakistan', 'US GOM Deep', 'Egypt', 'Palestine', 'Trinidad', 'Venezuela', 'Colombia', ...
        'Cameroon', 'Gabon', 'Equatorial Guinea', 'Netherlands', 'Congo Brazzaville', ...
        'Congo Kinshasa', 'Brazil', 'Argentina', 'Croatia', 'Libya', 'Italy', 'Tunisia', ...
        'Spain', 'Denmark', 'Canada', 'Greenland' };    

    switch ( welltype )
        case 'Onshore'
            set( cdi.UserData.maximum_angle_popup, 'String', onshore_maximum_angle_popup );
            set( cdi.UserData.bit_size_popup, 'String', onshore_bit_size_popup );
            set( cdi.UserData.number_of_casings_popup, 'String', onshore_number_of_casings_popup );
            country_popup = sort( cdi.UserData.variables.CountryLandList ); 
        case 'Offshore'
            set( cdi.UserData.maximum_angle_popup, 'String', offshore_maximum_angle_popup );
            set( cdi.UserData.bit_size_popup, 'String', offshore_bit_size_popup );
            set( cdi.UserData.number_of_casings_popup, 'String', offshore_number_of_casings_popup );
            country_popup = sort( cdi.UserData.variables.CountryOffshoreList );
    end
    set( cdi.UserData.country_popup, 'String', country_popup );
end