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

      createModalitaModel() {
        return new JSONModel({
          currentStep: 0,
          selectedMode: "ORDINE",
          step1: {
            cards: [
              {
                key: "ORDINE",
                text: "Ordine",
                cardHeader: {
                  title: "Crea Ordine di Vendita",
                },
                cardContent: {
                  src: "./public/img/OdV.svg",
                  text: "Selezionando questa modalità verranno visualizzati lo storico degli ordini, le offerte(se disponbili) e il catalogo per la creazione di un ordine di vendita",
                },
              },
              {
                key: "OFFERTA",
                text: "Offerta",
                cardHeader: {
                  title: "Crea Offerta",
                },
                cardContent: {
                  src: "./public/img/Offer.svg",
                  text: "Selezionando questa modalità verranno visualizzati lo storico degli ordini, la proposta prodotti e il catalogo per la creazione di una nuova offerta",
                },
              },
              {
                key: "PREORDINE",
                text: "Preordine",
                cardHeader: {
                  title: "Crea Preordine",
                },
                cardContent: {
                  src: "./public/img/Preorder.svg",
                  text: "Selezionando questa modalità verrà visualizzato solo il catalogo per procedere con la creazione di un preordine",
                },
              },
              {
                key: "SKIP",
                text: "Salta",
                cardHeader: {
                  title: "Scegli in seguito",
                },
                cardContent: {
                  src: "./public/img/Undecided.svg",
                  text: "Selezionando questa modalità verrà visualizzato solo il catalogo per procedere solo successivamente alla scelta della modalità operativa",
                },
              },
            ],
          },
          step2: {
            title: {
              value: "",
            },
            date: {
              value: new Date(),
            },
            tab: {
              selected: "STORICO",
              items: [
                { key: "STORICO", text: "Storico Ordini" },
                { key: "OFFERTA", text: "Offerta" },
              ],
            },
            customer: {
              id: "",
              name: "",
              city: "",
              items: [
                {
                  id: "351",
                  name: "ALBERGO RISTORANTE ALLA PERGOLA SNC DI ROSSI MARIA ROSSI CAT",
                  city: "ROMA",
                },
                {
                  id: "2788",
                  name: "COOP AGRICOLA MONTELLO SOC COOP AGRICOLA",
                  city: "BRESCIA",
                },
                {
                  id: "2701",
                  name: "FONTANA MICHELANGELO SNC DI FONTANA VALTER, ANDREA & C.",
                  city: "MILANO",
                },
                {
                  id: "3196",
                  name: "LA BOTTEGA DI ERIKA DI FRACASSO ERIKA",
                  city: "SIENA",
                },
                {
                  id: "1325",
                  name: "FONTANA MICHELANGELO SNC DI FONTANA VALTER, ANDREA & C.",
                  city: "MILANO",
                },
                {
                  id: "1123",
                  name: "LA BOTTEGA DI ERIKA DI FRACASSO ERIKA",
                  city: "SIENA",
                },
                {
                  id: "2701",
                  name: "FONTANA MICHELANGELO SNC DI FONTANA VALTER, ANDREA & C.",
                  city: "MILANO",
                },
                {
                  id: "3196",
                  name: "LA BOTTEGA DI ERIKA DI FRACASSO ERIKA",
                  city: "SIENA",
                },
              ],
            },
          },
          step3: {
            customer: {},
            offer: {
              selected: {
                id: "1",
                selected: true,
                name: "Offerta X",
                expiry: "26/03/2026",
              },
              items: [
                {
                  id: "1",
                  selected: true,
                  name: "Offerta X",
                  expiry: "26/03/2026",
                },
                {
                  id: "2",
                  selected: false,
                  name: "Offerta Y",
                  expiry: "11/04/2026",
                },
                {
                  id: "3",
                  selected: false,
                  name: "Offerta Z",
                  expiry: "18/04/2026",
                },
              ],
            },
          },
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
                },
              ],
            },
            customer: {
              id: "",
              name: "",
            },
            date: {
              value: new Date(),
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
                },
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
              selectedKey: "LISTA",
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
            pages: [],
          },
        });
      },
      createRiepilogoModel() {
        return new JSONModel({
          table: {
            items: []
          }
        })
      }
    };

  },
);
