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
            customer: {
              id: "",
              name: "",
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
                  data: "21/06/2024",
                  nome: "Descr. Allegato 1",
                },
                {
                  data: "15/05/2024",
                  nome: "Descr. Allegato 2",
                },
                {
                  data: "18/04/2024",
                  nome: "Descr. Allegato 3",
                },
                {
                  data: "10/03/2024",
                  nome: "Descr. Allegato 4",
                },
                {
                  data: "25/02/2024",
                  nome: "Descr. Allegato 5",
                },
                {
                  data: "30/01/2024",
                  nome: "Descr. Allegato 6",
                },
                {
                  data: "05/01/2024",
                  nome: "Descr. Allegato 7",
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
          body: {
            iconTabBar: {},
            table: {
              menu: {
                items: [{
                  text: "Categorie",
                  icon: "sap-icon://target-group",
                  key: "CATEGORIE",
                  items: [{
                    text: "TUTTI",
                    key: "ALL"
                  }, {
                    text: "APERITIVI",
                    key: "APERITIVI"
                  }, {
                    text: "CARNI BIANCHE",
                    key: "CARNI BIANCHE"
                  }, {
                    text: "CARNI ROSSE",
                    key: "CARNI ROSSE"
                  }]
                }]
              },
              toolbar: {
                filters: {
                  items: [],
                }
              },
              items: [],
            }
          },
          footer: {},
        });
      },
    };
  }
);
