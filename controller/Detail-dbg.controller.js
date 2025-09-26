sap.ui.define([
	"sap/ui/model/json/JSONModel",
	"./BaseController"
], function (JSONModel, BaseController) {
	"use strict";

	return BaseController.extend("cles.agenti.controller.Detail", {
		onInit () {
			this.getRouter().getRoute("detail").attachPatternMatched(this._onObjectMatched, this);
		},
        
		_onObjectMatched (oEvent) {
			this.getModel("layout").setProperty("/layoutMode", "TwoColumnsBeginExpanded");
		},

        onClosePress () {
            this.getRouter().navTo("RouteMain");
        }
	});
});
