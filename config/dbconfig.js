const path = require('path');
const dotenv = require('dotenv');
dotenv.config({ path: './.env'});

const config = {
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE
};

module.exports = config;