sap.ui.define(
  [
    "./BaseController",
    "../model/models",
    "../model/formatter",
    "../model/Dialog",
    "sap/ui/model/Filter",
    "sap/ui/model/FilterOperator",
    "sap/ui/core/Fragment",
    "sap/m/MessageBox",
  ],
  (
    BaseController,
    models,
    formatter,
    Dialog,
    Filter,
    FilterOperator,
    Fragment,
    MessageBox
  ) => {
    "use strict";

    return BaseController.extend("cles.agenti.controller.Main", {
      formatter: formatter,

      onInit() {
        // variant model
        this.getRouter()
          .getRoute("RouteMain")
          .attachPatternMatched(this._onObjectMatched, this);
        this.getView().setModel(models.createMainModel(), "main");
      },

      onAfterRendering() {
        this.onGroupByCategory();
      },

      _onObjectMatched(e) {
        const { arguments: queryParams } = e.getParameters();

        if (queryParams["?query"]) {
          const { customer, customer_name } = queryParams["?query"];
          this.getModel("main").setProperty("/header/customer/id", customer);
          this.getModel("main").setProperty(
            "/header/customer/name",
            customer_name
          );
        }
      },

      _getCells() {
        return [
          new sap.m.Text({ text: "{proposta>category}" }),
          new sap.m.Input({
            value: "{proposta>product}",
            showValueHelp: true,
            editable: "{= ${proposta>product} ? false : true }",
            valueHelpRequest: this.onProductValueHelpRequest.bind(this),
            valueHelpOnly: true,
          }),
          new sap.m.Text({ text: "{proposta>description}" }),
          new sap.m.Text({ text: "{proposta>u_acq}" }),
          new sap.m.Text({ text: "{proposta>u_prz}" }),
          new sap.m.Text({ text: "{proposta>u_qta}" }),
          new sap.m.Text({ text: "{proposta>disponibilita}" }),
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

      onHeaderAttachmentPress() {
        Dialog.getAttachmentDialog({ controller: this });
      },

      onHeaderAttachmentItemPress(e) {
        const pdfViewer = new sap.m.PDFViewer({
          title: "Allegato",
          isTrustedSource: true,
        });

        this.getView().addDependent(pdfViewer);
        pdfViewer.setSource(sap.ui.require.toUrl("https://sapui5.hana.ondemand.com/sap/m/sample/PDFViewerPopup/sample1.pdf"));
        pdfViewer.open();
      },

      //valuehelp

      onCustomerValueHelpRequest() {
        Dialog.getCustomerValueHelp({ controller: this });
      },

      onCustomerValueHelpConfirm(e) {
        const { selectedItem } = e.getParameters();

        if (!selectedItem) return;

        const context = selectedItem.getBindingContext();

        this.getModel("main").setProperty(
          "/header/customer/id",
          context.getProperty("name")
        );

        this.getModel("main").setProperty(
          "/header/customer/name",
          context.getProperty("description")
        );
      },

      onCategoryValueHelpRequest() {
        Dialog.getCategoryValueHelp({ controller: this });
      },

      onCategoryValueHelpConfirm(e) {
        const { selectedItem } = e.getParameters();

        if (!selectedItem) return;

        const context = selectedItem.getBindingContext();

        this.getModel("proposta").setProperty("/table/items/0", {
          ...this.getModel("proposta").getProperty("/table/items/0"),
          category: context.getProperty("description"),
        });
      },

      onProductValueHelpRequest() {
        Dialog.getProductValueHelp({ controller: this });
      },

      onProductValueHelpConfirm(e) {
        const { selectedItem } = e.getParameters();

        if (!selectedItem) return;

        const context = selectedItem.getBindingContext();

        this.getModel("proposta").setProperty("/table/items/0", {
          ...this.getModel("proposta").getProperty("/table/items/0"),
          ...context.getObject(),
          product: context.getProperty("name"),
          disponibilita: context.getProperty("disponibilita"),
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
          unit_of_measure: "KG",
          quantity: "",
          disponibilita: "",
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

      onPanelProcessFlowExpand(e) {
        const { expand } = e.getParameters();

        if (expand) {
          const view = this.byId("dettaglio_ordine");
          const panel = e.getSource();
          const processFlow = panel.getContent()[0].getItems()[1].getItems()[0];
          const { top } = $(panel.getParent().getParent().getDomRef()).offset();
          setTimeout(() => {
            processFlow.setZoomLevel("Four");
            view.getScrollDelegate().scrollTo(0, top);
          }, 500);
        }
      },

      onPanelPosizioniExpand(e) {
        const { expand } = e.getParameters();

        if (expand) {
          const view = this.byId("dettaglio_ordine");
          const panel = e.getSource();
          const { top } = $(panel.getParent().getParent().getDomRef()).offset();
          setTimeout(() => {
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

      onCreaOdvConfirm() {
        MessageBox.success("Ordine di vendita creato con successo", {
          onClose: () => sap.m.InstanceManager.closeAllDialogs(),
        });
      },

      onShowFormPress (e) {
        const oButton = e.getSource();
        const oDialog = oButton.getParent();

        oDialog.getModel().setProperty("/formVisible", !oDialog.getModel().getProperty("/formVisible"));
      }
    });
  }
);
