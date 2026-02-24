sap.ui.define(["./BaseController", "sap/m/MessageBox"], (BaseController, MessageBox) => {
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

    onRiepilogoPress(e) {
      const type = e.getSource().getType();

      if( type === "Ghost" )
        return MessageBox.warning("Il cambio di modalità potrebbe compromettere il lavoro svolto. Eventuali prezzi inseriti o prodotti selezionati potrebbero non essere inclusi nel riepilogo finale, sicuro di voler procedere?", {
          actions: [MessageBox.Action.OK, MessageBox.Action.ABORT],
          emphasizedAction: MessageBox.Action.OK,
          onClose: (action) => {
            if( action === "OK" )
              this.getModalita();
          }
        })

      return MessageBox.success("Documento creato con successo");
    }
  });
});
