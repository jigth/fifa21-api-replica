require('dotenv').config();
const express = require('express');
const app = require('./app');
const { connectToDatabase } = require('./database');

const PORT = app.get('PORT');

app.listen( PORT, async () => {
    await connectToDatabase();
    console.log(`Fifa Server listening on port ${PORT}`);
});
