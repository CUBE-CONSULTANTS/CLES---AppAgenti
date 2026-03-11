sap.ui.define(
  [
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/UIComponent",
    "sap/ui/core/routing/History",
    "../model/Dialog",
    "../model/formatter",
  ],
  function (Controller, UIComponent, History, Dialog, formatter) {
    "use strict";

    return Controller.extend("cles.agenti.controller.BaseController", {
      formatter: formatter,
      /**
       * Convenience method for accessing the component of the controller's view.
       * @returns {sap.ui.core.Component} The component of the controller's view
       */
      getOwnerComponent: function () {
        return Controller.prototype.getOwnerComponent.call(this);
      },

      /**
       * Convenience method to get the components' router instance.
       * @returns {sap.m.routing.Router} The router instance
       */
      getRouter: function () {
        return UIComponent.getRouterFor(this);
      },

      /**
       * Convenience method for getting the i18n resource bundle of the component.
       * @returns {Promise<sap.base.i18n.ResourceBundle>} The i18n resource bundle of the component
       */
      getResourceBundle: function () {
        const oModel = this.getOwnerComponent().getModel("i18n");
        return oModel.getResourceBundle();
      },

      /**
       * Convenience method for getting the view model by name in every controller of the application.
       * @param {string} [sName] The model name
       * @returns {sap.ui.model.Model} The model instance
       */
      getModel: function (sName) {
        return this.getView().getModel(sName);
      },

      /**
       * Convenience method for setting the view model in every controller of the application.
       * @param {sap.ui.model.Model} oModel The model instance
       * @param {string} [sName] The model name
       * @returns {sap.ui.core.mvc.Controller} The current base controller instance
       */
      setModel: function (oModel, sName) {
        this.getView().setModel(oModel, sName);
        return this;
      },

      /**
       * Convenience method for triggering the navigation to a specific target.
       * @public
       * @param {string} sName Target name
       * @param {object} [oParameters] Navigation parameters
       * @param {boolean} [bReplace] Defines if the hash should be replaced (no browser history entry) or set (browser history entry)
       */
      navTo: function (sName, oParameters, bReplace) {
        this.getRouter().navTo(sName, oParameters, undefined, bReplace);
      },

      /**
       * Convenience event handler for navigating back.
       * It there is a history entry we go one step back in the browser history
       * If not, it will replace the current entry of the browser history with the main route.
       */
      onNavBack: function () {
        const sPreviousHash = History.getInstance().getPreviousHash();
        if (sPreviousHash !== undefined) {
          window.history.go(-1);
        } else {
          this.getRouter().navTo("Main", {}, undefined, true);
        }
      },

      onNavMain: function () {
        this.getRouter().navTo("Main", {}, undefined, true);
      },

      //Navigation Actions

      onHeaderAttachmentPress() {
        Dialog.getAttachmentDialog({
          controller: this,
          items: this.getModel("proposta").getProperty("/header/attachments"),
        });
      },

      onReportPress() {
        Dialog.getReportDialog({ controller: this });
      },

      onClosePress() {
        this.getRouter().navTo("Main");
      },

      getModalita() {
        Dialog.getModalitaDialog({ controller: this });
      },

      defaultDialogClose(e) {
        const source = e.getSource();
        let parent = source.getParent();

        while (parent) {
          if (parent instanceof sap.m.Dialog) {
            parent.close();
            break;
          }
          parent = parent.getParent();
        }

        try {
          // Stop stream
          if (this._stream) {
            this._stream.getTracks().forEach((track) => track.stop());
            this._stream = null;
          }

          if (Dialog._attachmentDialog) Dialog._attachmentDialog.destroy();

          if (this._video) this._video = null;
        } catch (err) {
          sap.m.MessageToast.show("Errore accesso camera: " + err.message);
        }
      },

      onHeaderAttachmentPress() {
        Dialog.getAttachmentDialog({ controller: this });
      },

      onCustomerObjectPagePress() {
        Dialog.getCustomerDetailDialog({ controller: this });
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

      calculateHeight: function (e) {
        var oScroll = this.byId("catalogo_list");
        var oParent = e
          .getSource()
          .getParent()
          .getParent()
          .getParent()
          .getParent()
          .getParent()
          .getDomRef();

        if (!oParent) return;

        var iParentHeight = oParent.clientHeight;
        var iOffsetTop = oScroll.getDomRef().offsetTop;

        var iHeight = iParentHeight - iOffsetTop;

        oScroll.setHeight(iHeight + "px");
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
        const currentStep = this.byId("wizardMode")
          .getSteps()
          .find((el) => el.getId() === this.byId("wizardMode").getCurrentStep())
          .getCustomData()[0]
          .getValue();

        this.byId("wizardMode").previousStep();
        this.byId("wizardMode")
          .getModel()
          .setProperty("/currentStep", currentStep);
      },

      _wizardNextStep() {
        const currentStep = this.byId("wizardMode")
          .getSteps()
          .find((el) => el.getId() === this.byId("wizardMode").getCurrentStep())
          .getCustomData()[0]
          .getValue();

        this.byId("wizardMode").nextStep();
        this.byId("wizardMode")
          .getModel()
          .setProperty("/currentStep", currentStep);
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

      onStep2DateButtonPress(e) {
        let date = new Date();
        const model = e.getSource().getModel();
        const value = e.getSource().getCustomData()[0].getValue();

        switch (value) {
          case "today":
            date = new Date();
            break;
          case "tomorrow":
            date = new Date(new Date().getTime() + 86400 * 1000);
            break;
          default:
            break;
        }

        model.setProperty("/step2/date/value", date);
      },

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

          this.getModel("proposta").setProperty(
            "/objectPageLayout/title",
            "Ordine di vendita",
          );

          if (
            context.getModel().getProperty("/step2/tab/selected") === "OFFERTA"
          )
            return this._wizardNextStep();
        }

        if (context.getModel().getProperty("/selectedMode") === "OFFERTA") {
          this.getModel("proposta").setProperty(
            "/objectPageLayout/title",
            "Offerta cliente",
          );

          this.getModel("proposta").setProperty(
            "/header/date/value",
            context.getModel().getProperty("/step2/date/value"),
          );
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
          model.getProperty("/step3/offer/selected"),
        );

        this.getModel("proposta").setProperty(
          "/header/tabOrdine",
          model.getProperty("/step2/tab/selected"),
        );

        this.getModel("proposta").setProperty(
          "/header/customer",
          model.getProperty("/step3/customer"),
        );

        this.getModel("proposta").setProperty(
          "/objectPageLayout/title",
          "Ordine di vendita",
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
          "Offerta cliente",
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
          "Preordine",
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
    });
  },
);
