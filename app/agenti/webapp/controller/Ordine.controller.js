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
          .getRoute("Main")
          .attachPatternMatched(this._onObjectMatched, this);

        this._getModalita();
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

      _getModalita() {
        Dialog.getModalitaDialog({ controller: this });
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
        else if (section.getId().includes("storicoOfferte"))
          this.getModel("proposta").setProperty(
            "/objectPageLayout/currentList",
            "proposta_list",
          );
      },

      //Wizard

      onWizardNextStep(e) {
        const wizard = this.byId("wizardMode");
        const dialog = wizard.getParent();
        const { selectedKey } = wizard.getModel().getProperty("/step1/mode");

        if (selectedKey === "SKIP") this.onWizardClose(e);

        wizard.nextStep();

        wizard
          .getModel()
          .setProperty(
            "/currentStep",
            parseInt(
              wizard
                .getCurrentStep()
                .substring(wizard.getCurrentStep().length - 1),
            ),
          );
      },

      onWizardPreviousStep(e) {
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
          .setProperty(
            "/step2/customer/selected/id",
            context.getProperty("id"),
          );

        context
          .getModel()
          .setProperty(
            "/step2/customer/selected/name",
            context.getProperty("name"),
          );

        context
          .getModel()
          .setProperty(
            "/step2/customer/selected/city",
            context.getProperty("city"),
          );

        this.byId("customer_carousel").next();
      },

      onCustomerReportPress() {
        Dialog.getCustomerReportDialog({ controller: this });
      },

      onCustomerConfirmPress() {
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

      onPreorderListSelect(e) {
        const selectedItem = e.getSource();

        if (!selectedItem) return;

        const context = selectedItem.getBindingContext();

        context
          .getModel()
          .setProperty(
            "/step2/preorder/selected/name",
            context.getProperty("name"),
          );

        this.byId("titles_carousel").next();
      },

      onPreorderConfirmPress() {
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

      onWizardClose(e) {
        const dialog = e.getSource().getParent();
        const model = dialog.getModel();
        const { selectedKey } = model.getProperty("/step1/mode");
        const {
          id,
          name: customer_name,
          city,
        } = model.getProperty("/step2/customer/selected");
        const { value } = model.getProperty("/step2/date");
        const { name: preorder_name } = model.getProperty(
          "/step2/preorder/selected",
        );

        this.getModel("proposta").setProperty("/header/date/value", value);

        //customer
        this.getModel("proposta").setProperty("/header/customer/id", id);
        this.getModel("proposta").setProperty(
          "/header/customer/name",
          customer_name,
        );
        this.getModel("proposta").setProperty("/header/customer/city", city);

        //preorder
        this.getModel("proposta").setProperty(
          "/header/title/name",
          preorder_name,
        );

        this.getModel("proposta").setProperty("/header/mode", selectedKey);
        dialog.close();
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
          table
            .getBinding("items")
            .filter(
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
