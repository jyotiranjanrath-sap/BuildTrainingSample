using { newfullstackapplication as my } from '../db/schema.cds';

@path : '/service/newfullstackapplicationService'
service newfullstackapplicationService
{
    @odata.draft.enabled
    entity Incidents as
        projection on my.Incidents;

    entity Conversations as
        projection on my.Conversations;

    entity Urgency as
        projection on my.Urgency;

    entity BusinessPartner as
        projection on my.BusinessPartner;
}

annotate newfullstackapplicationService with @requires :
[
    'authenticated-user'
];
