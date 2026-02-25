sap.ui.define(
  ["./BaseController", "../model/Dialog"],
  function (BaseController, Dialog) {
    "use strict";

    return BaseController.extend("cles.agenti.controller.Product", {
      onInit() {
        this.getRouter()
          .getRoute("Product")
          .attachPatternMatched(this._onObjectMatched, this);
      },

      _onObjectMatched(e) {
        const { arguments: { from } } = e.getParameters();

        if( from === "RIEPILOGO" )
        this.getModel("layout").setProperty(
          "/layoutMode",
          "MidColumnFullScreen",
        );
        else
          this.getModel("layout").setProperty(
          "/layoutMode",
          "TwoColumnsBeginExpanded",
        );
      },

      onClosePress() {
        window.history.go(-1);
      },

      onShowProductDetailPress(e) {
        Dialog.getProductDetailDialog({ controller: this });
      },

      onShowProductAttachmentsPress() {
        Dialog.getProductAttachmentDialog({ controller: this });
      },

      onAddNotePress(e) {
        const prodotto = this.getModel("product").getProperty("/product");
        Dialog.getAddNoteDialog({ controller: this, prodotto });
      },
    });
  },
);
