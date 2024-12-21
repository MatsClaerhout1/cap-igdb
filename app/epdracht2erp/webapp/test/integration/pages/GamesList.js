sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
  'use strict';

  var CustomPageDefinitions = {
      actions: {},
      assertions: {}
  };

  return new ListReport(
      {
          appId: 'sap.fe.demo.epdracht2erp',
          componentId: 'GameList',
          contextPath: '/Game'
      },
      CustomPageDefinitions
  );
});