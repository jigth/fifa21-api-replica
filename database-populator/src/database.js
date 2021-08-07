const { Sequelize } = require('sequelize');

const databaseName = process.env.DATABASE_NAME;
const username  = process.env.USERNAME;
const password = process.env.PASSWORD;
const logging = process.env.LOG_QUERIES.toLowerCase() === 'true'
                ? true
                : false;

console.log({databaseName});

const sequelize = new Sequelize(databaseName, username, password, {
    host: process.env.DATABASE_HOST || 'localhost',
    dialect: process.env.DATABASE_DIALECT || 'postgres',
    logging
});

async function connectToDatabase () {
    try {
        await sequelize.authenticate();
        console.error('Connection has been established succesfully');
    } catch (error) {
        console.error('Unable to connect to the database', error);
    }
}


module.exports = {
    sequelize,
    connectToDatabase
}; 
