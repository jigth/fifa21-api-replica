require('dotenv').config();  // Load environment variables

const {
    connectToDatabaseAndReturnIt,
    createTables
} = require('./tables-setter');

const main = async () => {
    const databaseName = process.env.DATABASE_NAME;
    const username  = process.env.USERNAME;
    const password = process.env.PASSWORD;
    const sequelize = await connectToDatabaseAndReturnIt(
        databaseName,
        username,
        password
    );

    createTables(sequelize);
}

main();
