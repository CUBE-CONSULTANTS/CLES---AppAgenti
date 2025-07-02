sap.ui.define(
  [
    "./BaseController",
    "../model/models",
    "../model/formatter",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
  ],
  (BaseController, models, formatter, Filter, FilterOperator) => {
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

      _getCells: [
        new sap.m.Text({ text: "{main>category}" }),
        new sap.m.Text({ text: "{main>product}" }),
        new sap.m.Text({ text: "{main>description}" }),
        new sap.m.Text({ text: "{main>u_acq}" }),
        new sap.m.Text({ text: "{main>u_prz}" }),
        new sap.m.Text({ text: "{main>u_qta}" }),
        new sap.m.Text({ text: "{main>giacenza}" }),
        new sap.m.Select({
          items: [
            { key: "PZ", text: "PZ" },
            { key: "KG", text: "KG" },
          ],
          selectedKey: "KG",
        }),
        new sap.m.Input({ value: "{main>price}" }),
        new sap.m.Input({ value: "{main>quantity}" }),
        new sap.m.HBox({
          height: "100%",
          width: "100%",
          justifyContent: "End",
          items: [
            new sap.m.Button({
              tooltip: "Note",
              icon: "sap-icon://notes",
            }).addStyleClass("sapUiTinyMarginBegin"),
            new sap.m.Button({
              tooltip: "Foto",
              icon: "sap-icon://camera",
            }).addStyleClass("sapUiTinyMarginBegin"),
          ],
        }).addStyleClass("sapUiSmallMarginTopBottom"),
      ],

      onGroupByCategory() {
        const oTable = this.byId("lista_odv");

        if (!oTable) return;

        const { groupByCategory } = this.getModel("main").getProperty(
          "/content/table/toolbar"
        );

        if (groupByCategory) {
          this.getModel("main").setProperty(
            "/content/table/columns/categoryColumnVisible",
            false
          );
          oTable.bindAggregation("items", {
            path: "main>/content/table/items",
            sorter: new sap.ui.model.Sorter({
              path: "category",
              descending: false,
              group: this.getCategory,
            }),
            groupHeaderFactory: this.getCategoryHeader,
            template: new sap.m.ColumnListItem({
              vAlign: "Middle",
              cells: this._getCells,
              selected: "{main>selected}",
            }),
          });
        } else {
          this.getModel("main").setProperty(
            "/content/table/columns/categoryColumnVisible",
            true
          );
          oTable.bindAggregation("items", {
            path: "main>/content/table/items",
            template: new sap.m.ColumnListItem({
              vAlign: "Middle",
              cells: this._getCells,
              selected: "{main>selected}",
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
    });
  }
);
