sap.ui.define(
  [
    "./BaseController",
    "../model/Dialog",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
  ],
  function (BaseController, Dialog, Filter, FilterOperator) {
    "use strict";

    return BaseController.extend("cles.agenti.controller.Ordine", {
      onInit() {
        this.getRouter()
          .getRoute("Ordine")
          .attachPatternMatched(this._onObjectMatched, this);
      },

      _onObjectMatched(oEvent) {
        this.getModel("layout").setProperty(
          "/layoutMode",
          "MidColumnFullScreen",
        );
      },

      //Navigation Actions

      onRiepilogoPress() {
        this.getRouter().navTo("Riepilogo");
      },

      //Sections
      onObjectPageSectionChange(e) {
        const { section } = e.getParameters();

        if (section.getId().includes("catalogo"))
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "catalogo_list",
          );
        else if (section.getId().includes("storicoOrdini"))
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "storico_list",
          );
        else if (section.getId().includes("propostaProdotti"))
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "proposta_list",
          );
      },

      //List

      getGroup(oContext) {
        return oContext.getProperty("order_id");
      },

      getGroupFactory(oGroup) {
        return new sap.m.GroupHeaderListItem({
          title: oGroup.key,
        });
      },

      onSearch(e, id) {
        const { newValue } = e.getParameters();
        const oTable = this.byId(id);
        const binding = oTable.getBinding("items");

        if (!newValue) return binding.filter([]);

        return binding.filter([
          new Filter({
            filters: [
              new Filter({
                path: "product",
                operator: FilterOperator.Contains,
                value1: newValue,
              }),
              new Filter({
                path: "category",
                operator: FilterOperator.Contains,
                value1: newValue,
              }),
              new Filter({
                path: "description",
                operator: FilterOperator.Contains,
                value1: newValue,
              }),
            ],
            and: false,
          }),
        ]);
      },

      onFilterPress(e) {
        Dialog.getFiltersDialog({ controller: this });
      },

      onFiltriCategorieButtonPress: function (e, mode) {
        const context = e.getSource().getBindingContext("proposta");
        const model = context.getModel();
        const type = context.getProperty("type");
        const table = this.byId(
          this.getModel("proposta").getProperty(
            "/objectPageLayout/currentList",
          ),
        );
        const binding = table.getBinding("items");
        const blank = model
          .getProperty("/table/toolbar/filtri/categorie")
          .map((el) => ({ ...el, type: "Default" }));

        model.setProperty("/table/toolbar/filtri/categorie", blank);

        if (type === "Emphasized") {
          context.setProperty("type", "Default");
          binding.filter([]);
        } else if (type === "Default") {
          context.setProperty("type", "Emphasized");
          binding.filter(
            new Filter(
              "category",
              FilterOperator.EQ,
              context.getProperty("text").toUpperCase(),
            ),
          );
        }
      },

      onFiltriCaratteristicheButtonPress: function (e) {
        const context = e.getSource().getBindingContext("proposta");
        const model = context.getModel();
        const type = context.getProperty("type");
        const table = this.byId(
          this.getModel("proposta").getProperty(
            "/objectPageLayout/currentList",
          ),
        );
        const blank = model
          .getProperty("/table/toolbar/filtri/caratteristiche")
          .map((el) => ({ ...el, type: "Default" }));

        model.setProperty("/table/toolbar/filtri/caratteristiche", blank);

        if (type === "Reject") {
          context.setProperty("type", "Default");
          table.getBinding("items").filter([]);
        } else if (type === "Default") {
          context.setProperty("type", "Reject");
          table.getBinding("items").filter(
            new Filter(
              "status_text",
              FilterOperator.EQ,
              context.getProperty("text").toUpperCase(),
            ),
          );
        }
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

      onCreaOdvConfirm() {
        MessageBox.success("Ordine di vendita creato con successo", {
          onClose: () => sap.m.InstanceManager.closeAllDialogs(),
        });
      },
    });
  },
);
