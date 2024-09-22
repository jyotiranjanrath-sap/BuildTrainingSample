sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'newfullstackapplication/incidentdetail/test/integration/FirstJourney',
		'newfullstackapplication/incidentdetail/test/integration/pages/IncidentsList',
		'newfullstackapplication/incidentdetail/test/integration/pages/IncidentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, IncidentsList, IncidentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('newfullstackapplication/incidentdetail') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheIncidentsList: IncidentsList,
					onTheIncidentsObjectPage: IncidentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);