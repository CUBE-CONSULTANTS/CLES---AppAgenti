sap.ui.define(
  [
    "./BaseController",
    "../model/models",
    "../model/formatter",
    "../model/Dialog",
    "sap/m/MessageBox",
  ],
  (BaseController, models, formatter, Dialog, MessageBox) => {
    "use strict";

    return BaseController.extend("cles.agenti.controller.Main", {
      formatter: formatter,

      onInit() {
        // variant model
        this.getRouter()
          .getRoute("Main")
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
            customer_name,
          );
        }
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
        pdfViewer.setSource(
          sap.ui.require.toUrl(
            "https://sapui5.hana.ondemand.com/sap/m/sample/PDFViewerPopup/sample1.pdf",
          ),
        );
        pdfViewer.open();
      },

      //valuehelp

      onCustomerValueHelpRequest() {
        Dialog.getCustomerValueHelp({ controller: this });
      },

      onCustomerValueHelpConfirm(e) {
        const oDialog = e.getSource().getParent();

        oDialog.close();
      },

      onCustomerListSelect(e) {
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
          context.getProperty("id"),
        );

        this.getModel("main").setProperty(
          "/header/customer/name",
          context.getProperty("name"),
        );

        oDialog.getModel().setProperty("/iconTabBar/selectedKey", "FORM");
      },

      onPreorderValueHelpRequest() {
        Dialog.getPreorderValueHelp({ controller: this });
      },

      onPreorderValueHelpConfirm(e) {
        const oDialog = e.getSource().getParent().getParent();
        const selectedItem = e.getSource();

        if (!selectedItem) return;

        const context = selectedItem.getBindingContext();

        this.getModel("main").setProperty(
          "/header/preorder/id",
          context.getProperty("id"),
        );

        this.getModel("main").setProperty(
          "/header/preorder/name",
          context.getProperty("name"),
        );

        oDialog.close();
      },

      onCreaDocumentoPress(e) {
        const {
          header: {
            mode,
            customer,
            date,
            title,
            notes,
            attachments: { items },
          },
        } = this.getModel("main").getData();

        let data,
          proceed = false;

        switch (mode?.selectedKey) {
          case "ORD":
            if (customer.name && customer.id) proceed = true;
            data = {
              mode: mode.selectedKey,
              customer,
              notes,
            };
            break;
          case "OFF":
            if (customer.name && customer.id && date.value) proceed = true;
            data = {
              mode: mode.selectedKey,
              customer,
              date,
              notes,
            };
            break;
          case "PRE":
            if (title.value) proceed = true;
            data = {
              mode: mode.selectedKey,
              title,
              notes,
            };
            break;
          default:
            break;
        }

        if (!proceed) return MessageBox.error("Compilare i campi obbligatori");

        this.getModel("proposta").setProperty("/header", {
          ...data,
          attachments: items,
        });

        this.getRouter().navTo("Ordine");
      },

      onShowFormPress(e) {
        const oButton = e.getSource();
        const oDialog = oButton.getParent();

        oDialog
          .getModel()
          .setProperty(
            "/formVisible",
            !oDialog.getModel().getProperty("/formVisible"),
          );
      },
    });
  },
);
