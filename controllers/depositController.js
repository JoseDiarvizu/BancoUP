const async = require("hbs/lib/async");
const services = require("../services/depositService");

module.exports = {
    createDeposit: async(req,res) => {
        const body = req.body;
        console.log(req.body)
        let data = await services.createDeposit(body.id,body.deposit);
        res.redirect("/profile");
    },
};