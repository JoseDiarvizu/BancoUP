const mysql = require("mysql");
const config = require("../config/dbconfig");

const db = mysql.createConnection(config);

let createTransfer = async (senderid,receiverid,cantidad,concepto) => {
  try {
    db.query('INSERT INTO transfer (senderid, receiverid, cantidad, concepto) VALUES (?, ?, ?, ?)',[senderid,receiverid,cantidad,concepto], async (error, results) => {
        return results;
    });
    
  } catch (err) {
    console.log(err)
  }
};

module.exports = {createTransfer};