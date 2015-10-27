function Factors = updateFactors( cdi, welltype, Factors, index )
    switch ( welltype )
        case 'Offshore'
            % 1. Country Update
            if ( ~isempty( cdi.UserData.country_popup.String( cdi.UserData.country_popup.Value ) ) )
                countryChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 1, cdi.UserData.variables.factor1, index );
            end
            % 2. Surface Elevation Update
            if ~isnan( str2double( cdi.UserData.jsurface_elevation_value.getText ) )
                surfaceElevationUpdate( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 2, cdi.UserData.variables.factor2, index );
            end
            % 3. Drilled Interval
            if ~isnan( str2double( cdi.UserData.jMTD_value.getText ) )
                MTDUpdate( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 3, cdi.UserData.variables.factor3, index );
            end
            % 4. Maximum Angle
             if ~isempty( cdi.UserData.maximum_angle_popup.Value )
                maximumAngleChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 4, cdi.UserData.variables.factor4, index );
             end
            % 5. Horizontal Section
            if ~isnan( str2double( cdi.UserData.jlength_HS_value.getText ) )
                HSUpdate( cdi, [], index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 5, cdi.UserData.variables.factor5, index );
            end
            % 6. Bit Size
            if ~isempty( cdi.UserData.bit_size_popup.Value )
                bitSizeChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 6, cdi.UserData.variables.factor6, index );
            end
            % 7. Number of Casings
            if ~isempty( cdi.UserData.number_of_casings_popup.Value )
                numberOfCasingsChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 7, cdi.UserData.variables.factor7, index );
            end
            % 8. Mud Weight
            if ~isnan( str2double( cdi.UserData.jmaximum_MW_value.getText ) )
                MWUpdate( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 8, cdi.UserData.variables.factor8, index );
            end
            % 9. HP Well
            if ~isempty( cdi.UserData.high_pressure_popup.Value )
                HPChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 9, cdi.UserData.variables.factor9, index );
            end
            % 10. Age of oldest Reservoir
            if ~isempty( cdi.UserData.reservoir_age_popup.Value )
                reservoirAgeChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 10, cdi.UserData.variables.factor10, index );
            end
            % 11. Batch or Campaign Drilling
            if ~isempty( cdi.UserData.batch_or_campaign_popup.String( cdi.UserData.batch_or_campaign_popup.Value ) )
                batchOrCampaignChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 11, cdi.UserData.variables.factor11, index );
            end
        case 'Onshore'
            % 1. Country Update
            if ( ~isempty( get( cdi.UserData.country_popup, 'String' ) ) )
                countryChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 1, cdi.UserData.variables.factor1, index );
            end
            % 3. Drilled Interval
            if ~isnan( str2double( cdi.UserData.jMTD_value.getText ) )
                MTDUpdate( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 3, cdi.UserData.variables.factor3, index );
            end
            % 4. Maximum Angle
             if ~isempty( cdi.UserData.maximum_angle_popup.Value )
                maximumAngleChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 4, cdi.UserData.variables.factor4, index );
             end
            % 6. Bit Size
            if ~isempty( cdi.UserData.bit_size_popup.Value )
                bitSizeChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 6, cdi.UserData.variables.factor6, index );
            end
            % 7. Number of Casings
            if ~isempty( cdi.UserData.number_of_casings_popup.Value )
                numberOfCasingsChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 7, cdi.UserData.variables.factor7, index );
            end
            % 8. Mud Weight
            if ~isnan( str2double( cdi.UserData.jmaximum_MW_value.getText ) )
                MWUpdate( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 8, cdi.UserData.variables.factor8, index );
            end
            % 9. HP Well
            if ~isempty( cdi.UserData.high_pressure_popup.Value )
                HPChanged( cdi, [], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 9, cdi.UserData.variables.factor9, index );
            end
            % 10. Age of oldest Reservoir
            if ~isempty( cdi.UserData.reservoir_age_popup.Value )
                reservoirAgeChanged( cdi,[], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 10, cdi.UserData.variables.factor10, index );
            end
            % 11. Batch or Campaign Drilling
            if ~isempty( cdi.UserData.batch_or_campaign_popup.String( cdi.UserData.batch_or_campaign_popup.Value ) )
                batchOrCampaignChanged( cdi,[], welltype, index );
                Factors = updateOutputLabel( cdi, welltype, Factors, 11, cdi.UserData.variables.factor11, index );
            end
    end    
end