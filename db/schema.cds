namespace newfullstackapplication;

using { sap.common.CodeList } from '@sap/cds/common';

entity Incidents
{
    key ID : UUID
        @Core.Computed : false;
    title : String(100)
        @title : 'Title';
    conversations : Composition of many Conversations on conversations.incidents = $self;
    urgency : Association to one Urgency;
    customer : Association to one BusinessPartner;
}

entity Conversations
{
    key ID : UUID
        @Core.Computed : false;
    timestamp : DateTime
        @cds.on.insert : $now;
    author : String(100)
        @cds.on.insert : $user;
    message : String(100);
    incidents : Association to one Incidents;
}

entity Urgency : CodeList
{
    key code : UrgencyCode;
}

type UrgencyCode : String enum
{
    High = 'H';
    Medium = 'M';
    Low = 'L';
}

entity BusinessPartner
{
    key BusinessPartner : String(100);
    FirstName : String(100);
    LastName : String(100);
}
