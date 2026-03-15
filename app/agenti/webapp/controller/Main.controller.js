sap.ui.define(
  [
    "./BaseController",
    "../model/Dialog",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
    "sap/ui/model/Sorter",
  ],
  function (BaseController, Dialog, Filter, FilterOperator, Sorter) {
    "use strict";

    return BaseController.extend("cles.agenti.controller.Main", {
      onInit() {
        this.getRouter()
          .getRoute("Main")
          .attachPatternMatched(this._onObjectMatched, this);

        this.getModalita();
      },

      _onObjectMatched(e) {
        const { arguments: queryParams } = e.getParameters();

        this.getModel("layout").setProperty("/layoutMode", "OneColumn");

        if (queryParams["?query"]) {
          const { customer, customer_name } = queryParams["?query"];
          this.getModel("proposta").setProperty(
            "/header/customer/id",
            customer,
          );
          this.getModel("proposta").setProperty(
            "/header/customer/name",
            customer_name,
          );
        }
      },

      _applyListGrouping({ pressed, groupFunction, groupFactory }) {
        const tables = [
          this.byId("catalogo_list"),
          this.byId("offerta_list"),
          this.byId("proposta_list"),
          this.byId("storico_list"),
        ];

        tables.forEach((table) => {
          if (pressed) {
            table.getBinding("items").sort(
              new Sorter({
                path: "category",
                group: groupFunction,
                groupHeaderFactory: groupFactory,
              }),
            );
          } else {
            table.getBinding("items").sort([]);
          }
        });
      },

      _applyListSorting({ property, descending }) {
        const tables = [
          this.byId("catalogo_list"),
          this.byId("offerta_list"),
          this.byId("proposta_list"),
          this.byId("storico_list"),
        ];

        this.getModel("proposta").setProperty(
          "/table/toolbar/sorters/groupedByCategory",
          false,
        );

        tables.forEach((table) => {
          table
            .getBinding("items")
            .sort(new sap.ui.model.Sorter(property, descending));
        });
      },

      _applyListFilter({ model, searchFilters }) {
        const final = [];
        const tables = [
          this.byId("catalogo_list"),
          this.byId("offerta_list"),
          this.byId("proposta_list"),
          this.byId("storico_list"),
        ];

        const filtriCategorie = model
          .getProperty("/table/toolbar/filtri/categorie")
          .filter((el) => el.selected)
          .map((el) => {
            return new Filter(
              "category",
              FilterOperator.EQ,
              el.text.toUpperCase(),
            );
          });

        const filtriGruppi = model
          .getProperty("/table/toolbar/filtri/gruppi")
          .filter((el) => el.selected)
          .map((el) => {
            return new Filter("group", FilterOperator.EQ, el.key);
          });

        const filtriAttributi = model
          .getProperty("/table/toolbar/filtri/attributi")
          .filter((el) => el.type === "Emphasized")
          .map((el) => {
            return new Filter(
              "status_text",
              FilterOperator.EQ,
              el.text.toUpperCase(),
            );
          });

        filtriCategorie.length
          ? final.push(new Filter({ filters: filtriCategorie, and: false }))
          : null;

        filtriGruppi.length
          ? final.push(new Filter({ filters: filtriGruppi, and: false }))
          : null;

        filtriAttributi.length
          ? final.push(new Filter({ filters: filtriAttributi, and: false }))
          : null;

        searchFilters.length
          ? final.push(new Filter({ filters: searchFilters, and: false }))
          : null;

        tables.forEach((table) => {
          table.getBinding("items").filter(
            new Filter({
              filters: final,
              and: true,
            }),
          );
        });
      },

      //Navigation Actions

      onRiepilogoPress() {
        this.getRouter().navTo("Riepilogo");
      },

      //Sections
      onObjectPageSectionChange(e) {
        const { selectedItem } = e.getParameters();
        let from = "LISTA";

        if (selectedItem.getId().includes("catalogo")) {
          from = "CATALOGO";
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "catalogo_list",
          );
        } else if (selectedItem.getId().includes("storicoOrdini"))
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "storico_list",
          );
        else if (selectedItem.getId().includes("propostaProdotti"))
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "proposta_list",
          );
        else if (selectedItem.getId().includes("offertaOrdini"))
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "offerta_list",
          );

        if (window.location.hash.split("/")[3]) {
          this.getRouter().navTo("Product", {
            from,
            product: window.location.hash.split("/")[3],
          });
        }
      },

      //List

      getGroup(oContext) {
        return oContext.getProperty("category");
      },

      getGroupFactory(oGroup) {
        return new sap.m.GroupHeaderListItem({
          title: oGroup.key,
        });
      },

      onSearch(e) {
        const { newValue } = e.getParameters();

        if (!newValue)
          return this._applyListFilter({
            model: this.getModel("proposta"),
            searchFilters: [],
          });

        this._applyListFilter({
          model: this.getModel("proposta"),
          searchFilters: [
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
        });
      },

      //ordinamento

      onGroupByCategory(e) {
        const { pressed } = e.getParameters();

        this._applyListGrouping({
          pressed,
          groupFunction: this.getGroup,
          groupFactory: this.getGroupFactory,
        });
      },

      onSortByDescriptionAsc(e) {
        this._applyListSorting({
          property: "description",
          descending: false,
        });
      },

      onSortByDescriptionDesc(e) {
        this._applyListSorting({
          property: "description",
          descending: true,
        });
      },

      onSortByCategoryAsc(e) {
        this._applyListSorting({
          property: "category",
          descending: false,
        });
      },

      onSortByCategoryDesc(e) {
        this._applyListSorting({
          property: "category",
          descending: true,
        });
      },

      //filtri

      onFiltriCategorieSelectionChange: function (e, mode) {
        const { changedItem, selected } = e.getParameters();

        if (!changedItem) return;

        const context = changedItem.getBindingContext("proposta");
        const model = context.getModel();

        context.setProperty("selected", selected);

        this._applyListFilter({ model, searchFilters: [] });
      },

      onFiltriGruppiSelectionChange: function (e, mode) {
        const { changedItem, selected } = e.getParameters();

        if (!changedItem) return;

        const context = changedItem.getBindingContext("proposta");
        const model = context.getModel();

        context.setProperty("selected", selected);

        this._applyListFilter({ model, searchFilters: [] });
      },

      onFilterAttributePress: function (e) {
        const context = e.getSource().getBindingContext("proposta");
        const model = context.getModel();
        const type = context.getProperty("type");

        if (type === "Emphasized") {
          context.setProperty("type", "Default");
        } else if (type === "Default") {
          context.setProperty("type", "Emphasized");
        }

        this._applyListFilter({ model, searchFilters: [] });
      },

      //ListItems

      onInfoLinkIconPress(e) {
        return Dialog.getInfoPopover({
          controller: this,
          source: e.getSource(),
        });
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

      onCreaOdvConfirm() {
        MessageBox.success("Ordine di vendita creato con successo", {
          onClose: () => sap.m.InstanceManager.closeAllDialogs(),
        });
      },
    });
  },
);
