const services = require("../services/userService");

module.exports = {
    findUser: async(req,res) => {
        const body = req.body;
        console.log(req.body)
        let data = await services.findUser(body.id);
        return res.status(201).json({
            success: 1,
            data: data,
          });
    },
};