sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'sap.fe.demo.epdracht2erp',
            componentId: 'StudentObjectPage',
            contextPath: '/Student'
        },
        CustomPageDefinitions
    );
});