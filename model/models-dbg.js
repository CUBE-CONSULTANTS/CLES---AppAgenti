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
                  text: "Descr. Allegato 1",
                },
                {
                  text: "Descr. Allegato 2",
                },
                {
                  text: "Descr. Allegato 3",
                },
                {
                  text: "Descr. Allegato 4",
                },
                {
                  text: "Descr. Allegato 5",
                },
                {
                  text: "Descr. Allegato 6",
                },
                {
                  text: "Descr. Allegato 7",
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
