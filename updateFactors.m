function updateFactors( cdi, welltype )
    switch ( welltype )
        case 'Offshore'
            % 1. Country Update
            countryChanged( cdi,[], welltype );
            % 2. Surface Elevation Update
            surfaceElevationUpdate( cdi, [], welltype );
            % 3. Drilled Interval
            MTDUpdate( cdi, [], welltype );
            % 4. Maximum Angle
            maximumAngleChanged( cdi, [], welltype );
            % 5. Horizontal Section
            HSUpdate( cdi );
            % 6. Bit Size
            bitSizeChanged( cdi, [], welltype );
            % 7. Number of Casings
            numberOfCasingsChanged( cdi, [], welltype );
            % 8. Mud Weight
            MWUpdate( cdi, [], welltype );
            % 9. HP Well
            HPChanged( cdi, [], welltype );
            % 10. Age of oldest Reservoir
            reservoirAgeChanged( cdi, [], welltype );
            % 11. Batch or Campaign Drilling
            batchOrCampaignChanged( cdi, [], welltype );
        case 'Onshore'
            % 1. Country Update
            countryChanged( cdi, [], welltype );
            % 3. Drilled Interval
            MTDUpdate( cdi, [], welltype );
            % 4. Maximum Angle
            maximumAngleChanged( cdi, [], welltype );
            % 6. Bit Size
            bitSizeChanged( cdi, [], welltype );
            % 7. Number of Casings
            numberOfCasingsChanged( cdi, [], welltype );
            % 8. Mud Weight
            MWUpdate( cdi, [], welltype );
            % 9. HP Well
            HPChanged( cdi, [], welltype );
            % 10. Age of oldest Reservoir
            reservoirAgeChanged( cdi,[], welltype );
            % 11. Batch or Campaign Drilling
            batchOrCampaignChanged( cdi,[], welltype );
    end    
end