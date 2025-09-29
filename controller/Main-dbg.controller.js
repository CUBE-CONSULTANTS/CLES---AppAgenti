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

      _onObjectMatched(e) {
        const { arguments: queryParams } = e.getParameters();

        this.getModel("layout").setProperty("/layoutMode", "OneColumn");

        if (queryParams["?query"]) {
          const { customer, customer_name } = queryParams["?query"];
          this.getModel("main").setProperty("/header/customer/id", customer);
          this.getModel("main").setProperty(
            "/header/customer/name",
            customer_name
          );
        }
      },

      onStepInputQuantityChange(e) {
        const { value } = e.getParameters();
        const context = e.getSource().getBindingContext("proposta");
        const path = context.getPath();
        const model = context.getModel();

        if (value !== 0) model.setProperty(path + "/selected", true);
        else model.setProperty(path + "/selected", false);
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

      onReportPress() {
        Dialog.getReportDialog({ controller: this });
      },

      onHeaderAttachmentItemPress(e) {
        const pdfViewer = new sap.m.PDFViewer({
          title: "Allegato",
          isTrustedSource: true,
        });

        this.getView().addDependent(pdfViewer);
        pdfViewer.setSource(
          sap.ui.require.toUrl(
            "https://sapui5.hana.ondemand.com/sap/m/sample/PDFViewerPopup/sample1.pdf"
          )
        );
        pdfViewer.open();
      },

      //valuehelp

      onCustomerValueHelpRequest() {
        Dialog.getCustomerValueHelp({ controller: this });
      },

      onPreorderValueHelpRequest() {
        Dialog.getPreorderValueHelp({ controller: this });
      },

      onCustomerValueHelpConfirm(e) {
        const oDialog = e
          .getSource()
          .getParent()
          .getParent()
          .getParent()
          .getParent()
          .getParent();
        const selectedItem = e.getSource();

        if (!selectedItem) return;

        const context = selectedItem.getBindingContext();

        this.getModel("main").setProperty(
          "/header/customer/id",
          context.getProperty("id")
        );

        this.getModel("main").setProperty(
          "/header/customer/name",
          context.getProperty("name")
        );

        oDialog.close();
      },

      onPreorderValueHelpConfirm(e) {
        const oDialog = e.getSource().getParent().getParent();
        const selectedItem = e.getSource();

        if (!selectedItem) return;

        const context = selectedItem.getBindingContext();

        this.getModel("main").setProperty(
          "/header/preorder/id",
          context.getProperty("id")
        );

        this.getModel("main").setProperty(
          "/header/preorder/name",
          context.getProperty("name")
        );

        oDialog.close();
      },

      onCategoryListItemPress(e) {
        const oItem = e.getParameter("item");
        const oTable = this.byId("lista_odv");
        const binding = oTable.getBinding("items");
        const key = oItem.getKey();
        const filter =
          key === "ALL" ? [] : [new Filter("category", FilterOperator.EQ, key)];
        binding.filter(filter);
      },

      onCatalogValueHelpRequest() {
        Dialog.getCatalogValueHelp({ controller: this });
      },

      onCatalogValueHelpConfirm(e) {
        const { selectedItems } = e.getParameters();

        if (!selectedItems.length) return;

        const items = this.getModel("proposta").getProperty("/table/items");

        selectedItems.forEach((el) =>
          items.unshift(el.getBindingContext().getObject())
        );

        this.getModel("proposta").setProperty("/table/items", items);
      },

      onProductListItemPress(e, from) {
        const { description, product, src } = e
          .getSource()
          .getBindingContext("proposta")
          .getObject();

        this.getModel("detail").setData({
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

        this.getRouter().navTo("detail", { from, product: product });
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

      onCreaOdvConfirm() {
        MessageBox.success("Ordine di vendita creato con successo", {
          onClose: () => sap.m.InstanceManager.closeAllDialogs(),
        });
      },

      onShowFormPress(e) {
        const oButton = e.getSource();
        const oDialog = oButton.getParent();

        oDialog
          .getModel()
          .setProperty(
            "/formVisible",
            !oDialog.getModel().getProperty("/formVisible")
          );
      },
    });
  }
);
