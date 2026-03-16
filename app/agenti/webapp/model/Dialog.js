sap.ui.define(
  ["sap/ui/model/json/JSONModel", "sap/ui/core/Fragment", "../model/models"],
  function (JSONModel, Fragment, models) {
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
        controller.getView
          ? controller.getView().addDependent(this[name])
          : null;
        return this[name];
      },

      async getInfoPopover({ controller, source }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_infoPopover",
              path: "view.dialog.InfoPopover",
              controller,
              model: new JSONModel({
                infoText: source.getTooltip(),
              }),
            });

            return oDialog.openBy(source);
          } catch (e) {}
        });
      },

      async getModalitaDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_checkOrdiniDialog",
              path: "view.dialog.Wizard",
              controller,
              model: models.createModalitaModel(),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getCustomerDetailDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_customerDetailDialog",
              path: "view.dialog.CustomerDetail",
              controller,
              model: new JSONModel({
                step3: {
                  formEnabled: false,
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
                  items,
                },
              }),
            });

            oDialog.open();

            try {
              window._stream = await navigator.mediaDevices.getUserMedia({
                video: {
                  facingMode: "environment",
                },
                audio: false,
              });

              const container = document.getElementById("cameraContainer");
              container.innerHTML = "";

              window._video = document.createElement("video");
              window._video.autoplay = true;
              window._video.playsInline = true;
              window._video.srcObject = window._stream;
              window._video.style.width = "100%";

              container.appendChild(window._video);
            } catch (err) {
              sap.m.MessageToast.show("Errore accesso camera: " + err.message);
            }

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
    };
  },
);
