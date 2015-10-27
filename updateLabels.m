% Function to update strings in case welltype changes
function updateLabels( cdi )
   if ( cdi.UserData.variables.Offshore )
       surface_elevation_string = 'Water Depth Elevation:';
       spud_depth_string = 'Spud Depth @ Mud line:';
   else
       surface_elevation_string = 'Rotary Table Height:';
       spud_depth_string = 'Spud Depth @ Cellar Bottom:';
   end
   set( cdi.UserData.surface_elevation, 'String', surface_elevation_string );
   set( cdi.UserData.spud_depth, 'String', spud_depth_string );
end