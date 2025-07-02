const cds = require("@sap/cds");
module.exports = class MainService extends cds.ApplicationService {
  async init() {
    const salesorder = await cds.connect.to("salesorder");
    this.on('READ', 'CustomerOrderCollection', async (req) => {
      try {
        const result = await salesorder.tx(req).run(req.query);
        return result;
      } catch (error) {
        req.error(500, `Error fetching CustomerOrderCollection: ${error.message}`);
      }
    });
  }
}