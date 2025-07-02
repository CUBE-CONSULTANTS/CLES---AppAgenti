sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "cles/agenti/model/models"
], (Controller, models) => {
    "use strict";

    return Controller.extend("cles.agenti.controller.Main", {
        onInit() {
            // variant model
            const oModel = this.getOwnerComponent().getModel()
            const oVariantModel = models.createVariantModel(oModel)
            this.getView().setModel(oVariantModel, "variant");
        },
        onSearch(oEvent) {

        }
    });
});