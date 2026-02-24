sap.ui.define(
	[
		"sap/ui/core/mvc/Controller",
		"sap/ui/core/UIComponent",
		"sap/ui/core/routing/History",
    "../model/Dialog"
	],
	function (Controller, UIComponent, History, Dialog) {
		"use strict";

		return Controller.extend("cles.agenti.controller.BaseController", {
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
		});
	}
);