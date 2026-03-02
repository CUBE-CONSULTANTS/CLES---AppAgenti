sap.ui.define(
  ["./BaseController", "../model/Dialog"],
  function (BaseController, Dialog) {
    "use strict";

    return BaseController.extend("cles.agenti.controller.ProductRiepilogo", {
      onInit() {
        this.getRouter()
          .getRoute("ProductRiepilogo")
          .attachPatternMatched(this._onObjectMatched, this);
      },

      _onObjectMatched(e) {
        const {
          arguments: { from },
        } = e.getParameters();

        this.getModel("layout").setProperty(
          "/layoutMode",
          "TwoColumnsBeginExpanded",
        );
      },

      onClosePress() {
        this.getRouter().navTo("Riepilogo");
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
