sap.ui.define(
  [
    "./BaseController",
    "../model/Dialog",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
    "sap/ui/model/Sorter",
    "sap/m/MessageBox",
  ],
  function (
    BaseController,
    Dialog,
    Filter,
    FilterOperator,
    Sorter,
    MessageBox,
  ) {
    "use strict";

    return BaseController.extend("cles.agenti.controller.Main", {
      _wizardOpened: false,
      _mode: "",
      _customer: "",
      _date: "",

      onInit() {
        this.getRouter()
          .getRoute("Main")
          .attachPatternMatched(this._onObjectMatched, this);

        this._checkQueryParams(window.location.hash);
      },

      _checkQueryParams(hash) {
        if (!hash || !hash.length) return this.getModalita();

        const queryString = hash.startsWith("#") ? hash.substring(1) : hash;
        const params = new URLSearchParams(queryString);

        this._mode = (params.get("mode") ?? "").toLowerCase();
        this._customer = params.get("customer") ?? "";
        this._date = params.get("date") ?? "";
      },

      _queryParamsInit() {
        if( !this._mode || !this._customer || !this._date ) return this.getModalita()

        this.getModel("proposta").setProperty(
          "/header/mode",
          this._mode.toUpperCase(),
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/mode",
          this._mode.toUpperCase(),
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/title",
          this._mode === "ordine"
            ? "Ordine di vendita"
            : this._mode === "offerta"
              ? "Offerta Cliente"
              : this._mode === "preordine"
                ? "Preordine"
                : "",
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/objectStatusText",
          this._customer,
        );

        if (this._mode === "ordine" || this._mode === "offerta") {
          this.getModel("proposta").setProperty(
            "/header/customer/id",
            this._customer || "",
          );

          this.getModel("proposta").setProperty(
            "/header/customer/name",
            this._customer || "",
          );
        }

        if (this._mode === "preordine") {
          this.getModel("proposta").setProperty(
            "/header/preorder/id",
            this._customer || "",
          );

          this.getModel("proposta").setProperty(
            "/header/preorder/name",
            this._customer || "",
          );
        }

        this.getModel("proposta").setProperty(
          "/header/date/value",
          this._date || "",
        );
      },

      _onObjectMatched(e) {
        this.getModel("layout").setProperty("/layoutMode", "OneColumn");
        this._queryParamsInit();
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

      onCambioModalitaPress(e) {
        const type = e.getSource().getType();

        if (type === "Critical")
          return MessageBox.warning(
            "Il cambio di modalità potrebbe compromettere il lavoro svolto. Eventuali prezzi inseriti o prodotti selezionati potrebbero non essere inclusi nel riepilogo finale, sicuro di voler procedere?",
            {
              actions: [MessageBox.Action.OK, MessageBox.Action.ABORT],
              emphasizedAction: MessageBox.Action.OK,
              onClose: (action) => {
                if (action === "OK") this.getModalita();
              },
            },
          );

        return MessageBox.success("Documento creato con successo");
      },

      onRiepilogoPress() {
        this.getRouter().navTo("Riepilogo");
      },

      //Sections
      onObjectPageSectionChange(e) {
        const { selectedItem } = e.getParameters();
        let from = "LISTA";

        if (selectedItem.getKey() === "catalogo") {
          from = "CATALOGO";
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "catalogo_list",
          );
        } else if (selectedItem.getKey() === "storico")
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "storico_list",
          );
        else if (selectedItem.getKey() === "proposta")
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "proposta_list",
          );
        else if (selectedItem.getKey() === "offerta")
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

      onStepInputChange() {
        this.getModel("riepilogo").setProperty(
          "/table/items",
          this.getModel("proposta")
            .getProperty("/table/items")
            .filter((el) => parseFloat(el.quantity) > 0),
        );

        const items = this.getModel("riepilogo").getProperty("/table/items");
        const totale = items.reduce(
          (acc, curr) =>
            acc + parseFloat(curr.listino) * parseFloat(curr.quantity),
          0,
        );
        const totaleNetto = totale;
        const totaleLordo = totale + totale * 0.22;

        this.getModel("riepilogo").setProperty(
          "/table/totaleNetto",
          totaleNetto.toFixed(2),
        );
        this.getModel("riepilogo").setProperty(
          "/table/totaleLordo",
          totaleLordo.toFixed(2),
        );
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
