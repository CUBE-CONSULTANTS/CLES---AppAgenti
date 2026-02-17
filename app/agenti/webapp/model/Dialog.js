sap.ui.define(
  ["sap/ui/model/json/JSONModel", "sap/ui/core/Fragment"],
  function (JSONModel, Fragment) {
    "use strict";

    return {
      _namespace: "cles.agenti.",

      _getDialogBase: async function ({ name, path, controller, model }) {
        this[name] = await Fragment.load({
          id: controller.getView ? controller.getView().getId() : null,
          name: this._namespace + path,
          controller,
        });

        this[name].setModel(model);
        controller.getView ? controller.getView().addDependent(this[name]) : null;
        return this[name];
      },

      async getCheckOrdiniDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_checkOrdiniDialog",
              path: "view.dialog.CheckOrdini",
              controller,
              model: new JSONModel({
                value: null,
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getAttachmentDialog({ controller, items }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_attachmentDialog",
              path: "view.dialog.Attachment",
              controller,
              model: new JSONModel({
                value: null,
                attachments: {
                  items
                }
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getReportDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_reportDialog",
              path: "view.dialog.Report",
              controller,
              model: new JSONModel({
                value: null,
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getFiltersDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_filtersDialog",
              path: "view.dialog.Filters",
              controller,
              model: new JSONModel({
                value: null,
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getPreorderValueHelp({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_preorderValueHelp",
              path: "view.valuehelp.Preorder",
              controller,
              model: new JSONModel({
                list: {
                  items: [
                    {
                      id: "2024-001",
                      name: "Preordine 2024-001",
                    },
                    {
                      id: "2024-002",
                      name: "Preordine 2024-002",
                    },
                    {
                      id: "2024-003",
                      name: "Preordine 2024-003",
                    },
                  ],
                },
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getCustomerValueHelp({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_customerValueHelp",
              path: "view.valuehelp.Customer",
              controller,
              model: new JSONModel({
                iconTabBar: {
                  selectedKey: "LIST",
                  form: {},
                  list: {
                    items: [
                      {
                        id: "351",
                        name: "ALBERGO RISTORANTE ALLA PERGOLA SNC DI ROSSI MARIA ROSSI CAT",
                        city: "ROMA"
                      },
                      {
                        id: "2788",
                        name: "COOP AGRICOLA MONTELLO SOC COOP AGRICOLA",
                        city: "BRESCIA"
                      },
                      {
                        id: "2701",
                        name: "FONTANA MICHELANGELO SNC DI FONTANA VALTER, ANDREA & C.",
                        city: "MILANO"
                      },
                      {
                        id: "3196",
                        name: "LA BOTTEGA DI ERIKA DI FRACASSO ERIKA",
                        city: "SIENA"
                      },
                    ],
                  },
                },
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getCategoryValueHelp({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_categoryValueHelp",
              path: "view.valuehelp.Category",
              controller,
              model: new JSONModel({
                items: [
                  {
                    name: "1111",
                    description: "APERITIVI",
                  },
                  {
                    name: "1115",
                    description: "CARNI BIANCHE",
                  },
                  {
                    name: "1116",
                    description: "CARNI ROSSE",
                  },
                ],
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getCatalogValueHelp({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_productValueHelp",
              path: "view.valuehelp.Catalog",
              controller,
              model: new JSONModel({
                items: [
                  {
                    selected: false,
                    highlight: "Indication04",
                    src: "https://shop.fattoriasila.it/wp-content/uploads/2020/07/salsiccia-2-FILEminimizer-1024x1024.jpg",
                    category: "CARNI ROSSE",
                    product: "1111",
                    description: "Salsiccia Piccantina",
                    u_acq: "08/07/2025",
                    u_prz: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    u_qta: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    disponibilita: (Math.random() * 100).toFixed(0),
                  },
                  {
                    selected: false,
                    highlight: "Indication04",
                    src: "https://www.salumidestefani.it/wp-content/uploads/2019/04/salsicciasalsicciabio-768x512.jpg",
                    category: "CARNI ROSSE",
                    product: "1112",
                    description: "Salsiccia Nostrana",
                    u_acq: "08/07/2025",
                    u_prz: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    u_qta: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    disponibilita: (Math.random() * 100).toFixed(0),
                  },
                  {
                    selected: false,
                    highlight: "Indication04",
                    src: "https://content.dambros.it/uploads/2017/01/30111846/0000105144.jpg",
                    category: "CARNI ROSSE",
                    product: "1113",
                    description: "Salamella",
                    u_acq: "08/07/2025",
                    u_prz: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    u_qta: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    disponibilita: (Math.random() * 100).toFixed(0),
                  },
                  {
                    selected: false,
                    highlight: "Indication04",
                    src: "https://www.foodexplore.com/media/catalog/product/cache/cfb506310985da6e6b5b75be9be619ee/p/o/poerchetta-ariccia-tronchetto.jpg",
                    category: "CARNI ROSSE",
                    product: "1114",
                    description: "Porchetta Piccantina",
                    u_acq: "08/07/2025",
                    u_prz: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    u_qta: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    disponibilita: (Math.random() * 100).toFixed(0),
                  },
                  {
                    selected: false,
                    highlight: "Indication04",
                    src: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuri-uIVnGjSrNhBAxwqdMM6BdaodNaI-NoA&s",
                    category: "CARNI ROSSE",
                    product: "1115",
                    description: "Porchetta alla Romana",
                    u_acq: "08/07/2025",
                    u_prz: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    u_qta: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    disponibilita: (Math.random() * 100).toFixed(0),
                  },
                  {
                    selected: false,
                    highlight: "Indication04",
                    src: "https://www.sprintfood.it/cdn/shop/products/PorchettaTrevigiana.jpg",
                    category: "CARNI ROSSE",
                    product: "1116",
                    description: "Porchetta alla Trevigiana",
                    u_acq: "08/07/2025",
                    u_prz: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    u_qta: (
                      (Math.random() * (0.12 - 0.02) + 0.02) *
                      100
                    ).toFixed(2),
                    disponibilita: (Math.random() * 100).toFixed(0),
                  },
                ],
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getAddNoteDialog({ controller, prodotto }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_addNoteDialog",
              path: "view.dialog.AddNote",
              controller,
              model: new JSONModel({
                prodotto,
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getProductDetailDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_productDetailDialog",
              path: "view.dialog.ProductDetail",
              controller,
              model: new JSONModel({
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
                      data: "11/05/2024",
                      nome: "Descr. Allegato 4",
                    },
                    {
                      data: "26/02/2024",
                      nome: "Descr. Allegato 5",
                    },
                    {
                      data: "05/12/2024",
                      nome: "Descr. Allegato 6",
                    },
                    {
                      data: "06/12/2024",
                      nome: "Descr. Allegato 7",
                    }
                  ],
                },
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getProductAttachmentDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_productAttachmentDialog",
              path: "view.dialog.ProductAttachment",
              controller,
              model: new JSONModel({
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
                      data: "11/05/2024",
                      nome: "Descr. Allegato 4",
                    },
                    {
                      data: "26/02/2024",
                      nome: "Descr. Allegato 5",
                    },
                    {
                      data: "05/12/2024",
                      nome: "Descr. Allegato 6",
                    },
                    {
                      data: "06/12/2024",
                      nome: "Descr. Allegato 7",
                    }
                  ],
                },
              }),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      }
    };
  }
);
