const mysql = require("mysql");
const config = require("../config/dbconfig");
const query = require("../config/query");

const db = mysql.createConnection(config);

let findUser = async (id) => {
  try {
    let results = await query.dbQuery('SELECT * FROM users WHERE id = ?',[id])
    return results;  
  } catch (err) {
    console.log(err)
  }
};


module.exports = {findUser}