sap.ui.define(["./BaseController"], (BaseController) => {
  "use strict";

  return BaseController.extend("cles.agenti.controller.Riepilogo", {
    onInit() {
      this.getRouter()
        .getRoute("Riepilogo")
        .attachPatternMatched(this._onObjectMatched, this);
    },

    _onObjectMatched(oEvent) {
      const { desktop } = this.getModel("device").getProperty("/system");

      this.getModel("layout").setProperty("/layoutMode", "MidColumnFullScreen");
    },

    onProductListItemPress(e, from) {
      const { description, product, src } = e
        .getSource()
        .getBindingContext("proposta")
        .getObject();

      this.getModel("product").setData({
        from,
        product: {
          id: product,
          description,
          notes: [
            {
              nota_1: "test nota 1",
            },
          ],
        },
        carousel: {
          pages: [{ src }, { src }, { src }],
        },
      });

      this.getRouter().navTo("Product", { from, product: product });
    },
  });
});
