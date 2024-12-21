sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sap/fe/demo/epdracht2erp/test/integration/FirstJourney',
		'sap/fe/demo/epdracht2erp/test/integration/pages/StudentList',
		'sap/fe/demo/epdracht2erp/test/integration/pages/StudentObjectPage'
    ],
    function(JourneyRunner, opaJourney, StudentList, StudentObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sap/fe/demo/epdracht2erp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStudentList: StudentList,
					onTheStudentObjectPage: StudentObjectPage
                }
            },
            opaJourney.run
        );
    }
);