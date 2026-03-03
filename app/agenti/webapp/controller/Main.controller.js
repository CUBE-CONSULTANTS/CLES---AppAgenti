sap.ui.define(
  [
    "./BaseController",
    "../model/Dialog",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
  ],
  function (BaseController, Dialog, Filter, FilterOperator) {
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
        else if (section.getId().includes("offertaOrdini"))
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "offerta_list",
          );
      },

      //Wizard

      onWizardCardPress(e) {
        const wizard = this.byId("wizardMode");
        const context = e.getSource().getBindingContext();
        const selectedKey = context.getProperty("key");

        if (selectedKey === "SKIP") {
          context.getModel().setProperty("/selectedMode", selectedKey);
          this.getModel("proposta").setProperty("/header/mode", selectedKey);
          return wizard.getParent().close();
        }

        this._wizardNextStep();

        context.getModel().setProperty("/selectedMode", selectedKey);
      },

      _wizardPreviousStep() {
        this.byId("wizardMode").previousStep();
        this.byId("wizardMode")
          .getModel()
          .setProperty(
            "/currentStep",
            parseInt(
              this.byId("wizardMode")
                .getCurrentStep()
                .substring(this.byId("wizardMode").getCurrentStep().length - 1),
            ),
          );
      },

      _wizardNextStep() {
        this.byId("wizardMode").nextStep();
        this.byId("wizardMode")
          .getModel()
          .setProperty(
            "/currentStep",
            parseInt(
              this.byId("wizardMode")
                .getCurrentStep()
                .substring(this.byId("wizardMode").getCurrentStep().length - 1),
            ),
          );
      },

      onWizardPreviousStep(e) {
        this._wizardPreviousStep();
      },

      handleNavigationChange(e) {
        const { step } = e.getParameters();

        this.byId("wizardMode")
          .getModel()
          .setProperty(
            "/currentStep",
            parseInt(step.getId().substring(step.getId().length - 1)),
          );

        this.byId("wizardMode").setCurrentStep(step);
      },

      //Wizard - Step 1

      onModeSelectionChange(e, key) {
        const context = e.getSource().getBindingContext();
        const model = context.getModel();

        model.setProperty("/step1/mode/selectedKey", key);
        model.setProperty(
          "/step1/mode/activeCard",
          model.getProperty("/step1/mode/cards").find((el) => el.key === key),
        );
      },

      //Wizard = Step 2

      onCustomerListSelect(e) {
        const selectedItem = e.getSource();

        if (!selectedItem) return;

        const context = selectedItem.getBindingContext();

        context
          .getModel()
          .setProperty("/step2/customer/id", context.getProperty("id"));

        context
          .getModel()
          .setProperty("/step2/customer/name", context.getProperty("name"));

        context
          .getModel()
          .setProperty("/step2/customer/city", context.getProperty("city"));

        this.getModel("proposta").setProperty(
          "/header/mode",
          context.getModel().getProperty("/selectedMode"),
        );

        this.getModel("proposta").setProperty(
          "/header/customer",
          context.getObject(),
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/mode",
          context.getModel().getProperty("/selectedMode"),
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/objectStatusText",
          context.getModel().getProperty("/step2/customer/name"),
        );

        if (context.getModel().getProperty("/selectedMode") === "ORDINE") {
          this.getModel("proposta").setProperty(
            "/header/tabOrdine",
            context.getModel().getProperty("/step2/tab/selected"),
          );

          context
            .getModel()
            .setProperty("/step3/customer", context.getObject());
        }

        if (context.getModel().getProperty("/selectedMode") === "OFFERTA") {
          this.getModel("proposta").setProperty(
            "/objectPageLayout/title",
            "Creazione offerta cliente",
          );

          this.getModel("proposta").setProperty(
            "/header/date/value",
            context.getModel().getProperty("/step2/date/value"),
          );
        }

        if (context.getModel().getProperty("/selectedMode") === "ORDINE") {
          this.getModel("proposta").setProperty(
            "/objectPageLayout/title",
            "Creazione ordine di vendita",
          );
          return this._wizardNextStep();
        }

        return this.byId("wizardMode").getParent().close();
      },

      onCustomerCreatePress(e) {
        const wizard = this.byId("wizardMode");
        const model = wizard.getModel();

        model.setProperty("/step3/customer", null);
        model.setProperty("/step3/formEnabled", true);

        this._wizardNextStep();
      },

      onCustomerInfoPress(e) {
        const context = e.getSource().getBindingContext();
        const model = context.getModel();

        model.setProperty("/step3/customer/id", context.getProperty("id"));
        model.setProperty("/step3/customer/name", context.getProperty("name"));
        model.setProperty("/step3/customer/city", context.getProperty("city"));
        model.setProperty("/step3/formEnabled", false);

        this._wizardNextStep();
      },

      onCustomerOfferSelectionChange(e) {
        const { listItem } = e.getParameters();

        if (!listItem) return;

        const context = listItem.getBindingContext();

        context
          .getModel()
          .setProperty("/step3/offer/selected", context.getObject());
      },

      onCustomerConfirmPress() {
        this._wizardNextStep();
      },

      _confirmWizardOrdine(model) {
        this.getModel("proposta").setProperty(
          "/header/tabOfferta",
          model.getProperty("/step3/offer/selected/name"),
        );

        this.getModel("proposta").setProperty(
          "/header/tabOrdine",
          model.getProperty("/step3/tab/selected"),
        );

        this.getModel("proposta").setProperty(
          "/header/customer",
          model.getProperty("/step3/customer"),
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/title",
          "Creazione ordine di vendita",
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/objectStatusText",
          model.getProperty("/step3/customer/name"),
        );
      },

      _confirmWizardOfferta(model) {
        this.getModel("proposta").setProperty(
          "/header/customer",
          model.getProperty("/step2/customer"),
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/title",
          "Creazione offerta cliente",
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/objectStatusText",
          model.getProperty("/step3/customer/name"),
        );
      },

      _confirmWizardPreordine(model) {
        this.getModel("proposta").setProperty(
          "/header/title/value",
          model.getProperty("/step2/title/value"),
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/title",
          "Creazione preordine",
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/objectStatusText",
          model.getProperty("/step2/title/value"),
        );
      },

      onWizardConfirmPress(e) {
        const model = e.getSource().getModel();

        this.getModel("proposta").setProperty(
          "/header/mode",
          model.getProperty("/selectedMode"),
        );

        this.getModel("proposta").setProperty(
          "/header/date/value",
          model.getProperty("/step2/date/value"),
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/mode",
          model.getProperty("/selectedMode"),
        );

        if (model.getProperty("/selectedMode") === "ORDINE") {
          this._confirmWizardOrdine(model);
        } else if (model.getProperty("/selectedMode") === "OFFERTA") {
          this._confirmWizardOfferta(model);
        } else if (model.getProperty("/selectedMode") === "PREORDINE") {
          this._confirmWizardPreordine(model);
        }

        this.byId("wizardMode").getParent().close();
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

      onStepInputChange(e) {
        const { value } = e.getParameters();
        const listItem = e.getSource().getParent().getParent().getParent();

        if (value > 0) return listItem.addStyleClass("coloredCustomListItem");

        return listItem.removeStyleClass("coloredCustomListItem");
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
