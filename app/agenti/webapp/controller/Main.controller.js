sap.ui.define(
  [
    "./BaseController",
    "../model/models",
    "../model/formatter",
    "../model/Dialog",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
    "sap/ui/core/Fragment",
  ],
  (
    BaseController,
    models,
    formatter,
    Dialog,
    Filter,
    FilterOperator,
    Fragment
  ) => {
    "use strict";

    return BaseController.extend("cles.agenti.controller.Main", {
      formatter: formatter,

      onInit() {
        // variant model
        this.getView().setModel(models.createMainModel(), "main");
      },

      onAfterRendering() {
        this.onGroupByCategory();
      },

      _getCells() {
        return [
          new sap.m.Input({
            value: "{proposta>category}",
            showValueHelp: true,
            editable: "{= ${proposta>category} ? false : true }",
          }),
          new sap.m.Input({
            value: "{proposta>product}",
            showValueHelp: true,
            editable: "{= ${proposta>product} ? false : true }",
          }),
          new sap.m.Text({ text: "{proposta>description}" }),
          new sap.m.Text({ text: "{proposta>u_acq}" }),
          new sap.m.Text({ text: "{proposta>u_prz}" }),
          new sap.m.Text({ text: "{proposta>u_qta}" }),
          new sap.m.Text({ text: "{proposta>giacenza}" }),
          new sap.m.Select({
            items: [
              { key: "PZ", text: "PZ" },
              { key: "KG", text: "KG" },
            ],
            selectedKey: "KG",
          }),
          new sap.m.Input({ value: "{proposta>price}" }),
          new sap.m.StepInput({
            value: "{proposta>quantity}",
            displayValuePrecision: 1,
            step: 0.1,
            change: this.onStepInputQuantityChange,
          }),
          new sap.m.HBox({
            height: "100%",
            width: "100%",
            justifyContent: "End",
            items: [
              new sap.m.Button({
                tooltip: "Note",
                icon: "sap-icon://notes",
                press: this.onAddNotePress.bind(this),
              }).addStyleClass("sapUiTinyMarginBegin"),
              new sap.m.Button({
                tooltip: "Foto",
                icon: "sap-icon://camera",
                press: this.onShowPhotoPress.bind(this),
              }).addStyleClass("sapUiTinyMarginBegin"),
            ],
          }).addStyleClass("sapUiSmallMarginTopBottom"),
        ];
      },

      onStepInputQuantityChange(e) {
        const context = e.getSource().getBindingContext("proposta");
        const path = context.getPath();
        const model = context.getModel();

        model.setProperty(path + "/selected", true);
      },

      onGroupByCategory() {
        const oTable = this.byId("lista_odv");

        if (!oTable) return;

        const { groupByCategory } =
          this.getModel("proposta").getProperty("/table/toolbar");

        if (groupByCategory) {
          this.getModel("proposta").setProperty(
            "/table/columns/categoryColumnVisible",
            false
          );
          oTable.bindAggregation("items", {
            path: "proposta>/table/items",
            sorter: new sap.ui.model.Sorter({
              path: "category",
              descending: false,
              group: this.getCategory,
            }),
            groupHeaderFactory: this.getCategoryHeader,
            template: new sap.m.ColumnListItem({
              highlight: "{proposta>highlight}",
              vAlign: "Middle",
              cells: this._getCells(),
              selected: "{proposta>selected}",
            }),
          });
        } else {
          this.getModel("proposta").setProperty(
            "/table/columns/categoryColumnVisible",
            true
          );
          oTable.bindAggregation("items", {
            path: "proposta>/table/items",
            template: new sap.m.ColumnListItem({
              highlight: "{proposta>highlight}",
              vAlign: "Middle",
              cells: this._getCells(),
              selected: "{proposta>selected}",
            }),
          });
        }
      },

      onSearch(e) {
        const { newValue } = e.getParameters();
        const oTable = this.byId("lista_odv");
        const binding = oTable.getBinding("items");

        if (!newValue) return binding.filter([]);

        return binding.filter([
          new Filter({
            filters: [
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

      getCategory(oContext) {
        return oContext.getProperty("category");
      },

      getCategoryHeader(oGroup) {
        return new sap.m.GroupHeaderListItem({
          title: "Categoria: " + oGroup.key,
        });
      },

      onAddRowPress(e) {
        const oTable = e.getSource().getParent().getParent();
        const items = oTable.getModel("proposta").getProperty("/table/items");

        items.unshift({
          selected: false,
          highlight: "Indication01",
          category: "",
          product: "",
          description: "",
          u_acq: "",
          u_prz: "",
          u_qta: "",
          price: "",
          unit_of_measure: "",
          quantity: "",
          giacenza: "",
        });

        oTable.getModel("proposta").setProperty(`/table/items`, items);
      },

      onAddNotePress(e) {
        const oSource = e.getSource();
        const prodotto = oSource.getBindingContext("proposta").getObject();
        Dialog.getAddNoteDialog({ controller: this, prodotto });
      },

      onShowPhotoPress() {
        Dialog.getPhotoDialog({ controller: this });
      },

      onPanelExpand(e) {
        const { expand } = e.getParameters();

        if (expand) {
          const view = this.byId("dettaglio_ordine");
          const panel = e.getSource();
          const processFlow = panel.getContent()[0].getItems()[1].getItems()[0];
          const { top } = $(panel.getDomRef()).offset();
          setTimeout(() => {
            processFlow.setZoomLevel("Four");
            view.getScrollDelegate().scrollTo(0, top);
          }, 500);
        }
      },

      onNodePress(oEvent) {
        var oNode = oEvent.getParameters();
        var sPath = oNode.getBindingContext("storico").getPath();

        if (!this.oQuickView) {
          Fragment.load({
            name: "cles.agenti.view.fragment.QuickView",
            type: "XML",
          }).then(
            function (oFragment) {
              this.oQuickView = oFragment;
              this.getView().addDependent(this.oQuickView);

              this.oQuickView.bindElement({
                path: sPath,
                model: "storico",
              });
              this.oQuickView.openBy(oNode);
            }.bind(this)
          );
        } else {
          this.oQuickView.bindElement({ path: sPath, model: "storico" });
          this.oQuickView.openBy(oNode);
        }
      },

      onCreaOdvPress() {
        Dialog.getCreaOdVDialog({ controller: this });
      },
    });
  }
);
