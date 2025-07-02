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

      createMainModel: function () {
        return new JSONModel({
          showFooter: true,
          header: {
            title: "",
            select: {
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
            searchField: {
              value: "",
            },
          },
          content: {
            table: {
              columns: {
                categoryColumnVisible: true
              },
              toolbar: {
                groupByCategory: false,
              },
              items: [
                {
                  selected: false,
                  category: "APERITIVI",
                  product: "4060",
                  description: "Bastoncini di mozzarella panati",
                  u_acq: "18/06/2024",
                  u_prz: "7.88",
                  u_qta: "3.00",
                  price: "0.00",
                  unit_of_measure: "CF",
                  quantity: "0.00",
                  giacenza: "Test Giacenza"
                },
                {
                  selected: false,
                  category: "ARTICOLO",
                  product: "0340",
                  description: "Coscia Pollo",
                  u_acq: "15/02/2024",
                  u_prz: "7.64",
                  u_qta: "8.00",
                  price: "0.00",
                  unit_of_measure: "CF",
                  quantity: "0.00",
                  giacenza: "Test Giacenza"
                },
                {
                  selected: false,
                  category: "ARTICOLO",
                  product: "0341",
                  description: "Fuselli di Pollo",
                  u_acq: "15/07/2024",
                  u_prz: "6.33",
                  u_qta: "12.00",
                  price: "0.00",
                  unit_of_measure: "CF",
                  quantity: "0.00",
                  giacenza: "Test Giacenza"
                },
              ],
            },
          },
          footer: {},
        });
      },
    };
  }
);
