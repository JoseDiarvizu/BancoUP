const mysql = require("mysql");
const config = require("../config/dbconfig");
const db = mysql.createConnection(config);


function dbQuery(databaseQuery,values) {
    return new Promise(data => {
        db.query(databaseQuery,values, async (error, result) =>{ // change db->connection for your code
            if (error) {
                console.log(error);
                throw error;
            }
            try {
                data(result);
            } catch (error) {
                data({});
                throw error;
            }
        });
    });
  
  }

module.exports = {dbQuery};