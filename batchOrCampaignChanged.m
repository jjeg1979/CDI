function batchOrCampaignChanged( cdi, ~, welltype )
    source = cdi.UserData.batch_or_campaign_popup;
    cdi.UserData.variables.BatchOrCampaign = source.String { source.Value };
    switch ( cdi.UserData.variables.BatchOrCampaign )
        case 'No'
            cdi.UserData.variables.BatchOrCampaign = 0;
        case 'Yes'
            cdi.UserData.variables.BatchOrCampaign = 1;
    end
    cdi.UserData.variables.factor11 = BatchFactor( cdi.UserData.variables.BatchOrCampaign, welltype, 'CDI' );
    updateFactorOnScreen( 11, cdi );
end