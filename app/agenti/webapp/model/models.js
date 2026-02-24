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

      createLayoutModel() {
        return new JSONModel({
          previousRoute: "",
          layoutMode: "OneColumn",
        });
      },

      createMainModel() {
        return new JSONModel({
          showFooter: true,
          header: {
            mode: {
              selectedKey: "ORDINE",
              items: [
                {
                  key: "ORDINE",
                  text: "Ordine",
                },
                {
                  key: "OFFERTA",
                  text: "Offerta",
                },
                {
                  key: "PREORDINE",
                  text: "Preordine",
                }
              ],
            },
            customer: {
              id: "",
              name: "",
            },
            date: {
              value: new Date()
            },
            title: {
              value: "",
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
                }
              ],
            },
            notes: {
              value: "Test descrizione per le note di testata",
            },
            searchField: {
              value: "",
            },
          },
          body: {
            iconTabBar: {
              selectedKey: "LISTA"
            },
            table: {
              menu: {
                items: [
                  {
                    text: "Categorie",
                    icon: "sap-icon://target-group",
                    key: "CATEGORIE",
                    items: [
                      {
                        text: "TUTTI",
                        key: "ALL",
                      },
                      {
                        text: "APERITIVI",
                        key: "APERITIVI",
                      },
                      {
                        text: "CARNI BIANCHE",
                        key: "CARNI BIANCHE",
                      },
                      {
                        text: "CARNI ROSSE",
                        key: "CARNI ROSSE",
                      },
                    ],
                  },
                ],
              },
              toolbar: {
                filters: {
                  items: [],
                },
              },
              items: [],
            },
          },
          footer: {},
        });
      },

      createProductModel() {
        return new JSONModel({
          from: "",
          carousel: {
            pages: []
          }
        })
      }
    };
  }
);
