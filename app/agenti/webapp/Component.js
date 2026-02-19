sap.ui.define(
  [
    "sap/ui/core/UIComponent",
    "cles/agenti/model/models",
    "cles/agenti/model/Dialog",
  ],
  (UIComponent, models, Dialog) => {
    "use strict";

    return UIComponent.extend("cles.agenti.Component", {
      metadata: {
        manifest: "json",
        interfaces: ["sap.ui.core.IAsyncContentCreation"],
      },

      init() {
        // call the base component's init function
        UIComponent.prototype.init.apply(this, arguments);

        // set the device model
        this.setModel(models.createDeviceModel(), "device");
        this.setModel(models.createLayoutModel(), "layout");
        this.setModel(models.createProductModel(), "product");

        // enable routing
        this.getRouter().initialize();
        this.getRouter().navTo("Main");
      },
    });
  },
);
