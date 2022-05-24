const async = require("hbs/lib/async");
const services = require("../services/transferService");

module.exports = {
    createTransfer: async(req,res) => {
        const body = req.body;
        console.log("Saludos");
        console.log(req.body);
        let data = await services.createTransfer(body.senderid,body.receiverid,body.cantidad,body.concepto);
        res.redirect("/transfers");
    },
};