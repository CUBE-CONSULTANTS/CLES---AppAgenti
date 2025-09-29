sap.ui.define(
  ["./BaseController", "../model/Dialog"],
  function (BaseController, Dialog) {
    "use strict";

    return BaseController.extend("cles.agenti.controller.Detail", {
      onInit() {
        this.getRouter()
          .getRoute("detail")
          .attachPatternMatched(this._onObjectMatched, this);
      },

      _onObjectMatched(oEvent) {
        this.getModel("layout").setProperty(
          "/layoutMode",
          "TwoColumnsBeginExpanded"
        );
      },

      onClosePress() {
        this.getRouter().navTo("RouteMain");
      },

      onShowPhotoPress(e) {
        Dialog.getPhotoDialog({ controller: this });
      },

      onAddNotePress(e) {
        const prodotto = this.getModel("detail").getProperty("/product");
        Dialog.getAddNoteDialog({ controller: this, prodotto });
      },
    });
  }
);
