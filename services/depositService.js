const mysql = require("mysql");
const config = require("../config/dbconfig");

const db = mysql.createConnection(config);

let createDeposit = async (id,deposit) => {
  try {
    db.query('UPDATE users SET saldo = saldo + ? WHERE id = ?',[deposit,id], async (error, results) => {
        return results;
    });
  } catch (err) {
    console.log(err)
  }
};

module.exports = {createDeposit};