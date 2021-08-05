const express = require('express');
const app = require('./app');

const PORT = app.get('PORT');

app.listen( PORT, () => {
    console.log(`Fifa Server listening on port ${PORT}`);
});
