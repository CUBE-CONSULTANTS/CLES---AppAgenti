sap.ui.define(
  ["sap/ui/model/json/JSONModel", "sap/ui/core/Fragment"],
  function (JSONModel, Fragment) {
    "use strict";

    return {
      _namespace: "cles.agenti.",

      _getDialogBase: async function ({ name, path, controller, model }) {
        this[name] = await Fragment.load({
          id: controller.getView().getId(),
          name: this._namespace + path,
          controller,
        });

        this[name].setModel(model);
        controller.getView().addDependent(this[name]);
        return this[name];
      },

      async getAddNoteDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_addNoteDialog",
              path: "view.fragment.AddNoteDialog",
              controller,
              model: new JSONModel({}),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getPhotoDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_photoDialog",
              path: "view.fragment.PhotoDialog",
              controller,
              model: new JSONModel({}),
            });

            oDialog.open();
            resolve();
          } catch (error) {
            reject(error);
          }
        });
      },

      async getCreaOdVDialog({ controller }) {
        return new Promise(async (resolve, reject) => {
          try {
            const oDialog = await this._getDialogBase({
              name: "_creaOdvDialog",
              path: "view.fragment.CreaOdVDialog",
              controller,
              model: new JSONModel({
                table: {
                  items: controller
                    .getModel("proposta")
                    .getProperty("/table/items")
                    .filter((el) => el.selected),
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
  }
);
