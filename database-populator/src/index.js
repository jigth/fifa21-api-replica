require('dotenv').config();  // Load environment variables

const { connectToDatabase, sequelize } = require('./database');

const { 
    processAPIData,
    populateTables,
} = require('./tables-filler');

const main = async () => {

    try {
        await connectToDatabase();
        sequelize.sync();
        const API_BASE_URL = process.env.API_BASE_URL 
            || 'https://www.easports.com/fifa/ultimate-team/api/fut/item?page=';

        const tablesDataObjects = await processAPIData(API_BASE_URL, 1);

        await populateTables (tablesDataObjects);
    } catch (error) {
        console.error (error);
    }
}

main();
