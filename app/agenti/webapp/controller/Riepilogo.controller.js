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

      this.getModel("layout").setProperty("/layoutMode", "OneColumn");
    },

    onProductListItemPress(e, from) {
      const { description, product, src } = e
        .getSource()
        .getBindingContext("riepilogo")
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

      this.getRouter().navTo("ProductRiepilogo", { from, product: product });
    },

    onStepInputChange() {
      const items = this.getModel("riepilogo").getProperty("/table/items");
      const totale = items.reduce((acc, curr) => acc + (parseFloat(curr.listino) * parseFloat(curr.quantity)), 0);
      const totaleNetto = totale;
      const totaleLordo = totale + (totale * 0.22);

      this.getModel("riepilogo").setProperty("/table/totaleNetto", totaleNetto.toFixed(2));
      this.getModel("riepilogo").setProperty("/table/totaleLordo", totaleLordo.toFixed(2));
    },

    onRiepilogoPress(e) {
      const type = e.getSource().getType();

      if( type === "Critical" )
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
