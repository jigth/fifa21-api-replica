const { Sequelize } = require('sequelize');

const databaseName = process.env.DB_NAME;
const username  = process.env.DB_USER;
const password = process.env.DB_PASSWORD;

console.log( {databaseName}, {username} );

const sequelize = new Sequelize(databaseName, username, password, {
    host: process.env.DATABASE_HOST || 'localhost',
    port: process.env.DB_PORT || 5432,
    dialect: process.env.DB_DIALECT || 'postgres',
    logging: false
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
