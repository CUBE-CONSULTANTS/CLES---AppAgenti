sap.ui.define(
  ["sap/ui/model/json/JSONModel", "sap/ui/Device"],
  function (JSONModel, Device) {
    "use strict";

    return {
      /**
       * Provides runtime information for the device the UI5 app is running on as a JSONModel.
       * @returns {sap.ui.model.json.JSONModel} The device model.
       */
      createDeviceModel: function () {
        var oModel = new JSONModel(Device);
        oModel.setDefaultBindingMode("OneWay");
        return oModel;
      },

      createMainModel() {
        return new JSONModel({
          showFooter: true,
          header: {
            title: "",
            customer: {
              items: [
                {
                  customer: "2788",
                  customer_name: "COOP AGRICOLA MONTELLO SOC COOP AGRICOLA",
                },
                {
                  customer: "3196",
                  customer_name: "LA BOTTEGA DI ERIKA DI FRACASSO ERIKA",
                },
                {
                  customer: "1243",
                  customer_name: "LIBRA SRLS",
                },
              ],
            },
            attachments: {
              items: [
                {
                  text: "Descrizione Allegato 1",
                },
                {
                  text: "Descrizione Allegato 2",
                },
                {
                  text: "Descrizione Allegato 3",
                },
                {
                  text: "Descrizione Allegato 4",
                },
                {
                  text: "Descrizione Allegato 5",
                },
                {
                  text: "Descrizione Allegato 6",
                },
                {
                  text: "Descrizione Allegato 7",
                },
              ],
            },
            notes: {
              value: "Test descrizione per le note di testata"
            },
            searchField: {
              value: "",
            },
          },
          footer: {},
        });
      },
    };
  }
);
