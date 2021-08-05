const cors = require('cors');
const express = require('express');
const app = express();

const players = require('./routes/players');
const teams = require('./routes/teams');


// Settings and constants
app.set('PORT', process.env.PORT || 3120);
const BASE_API_ROUTE = process.env.BASE_API_ROUTE || '/api/v1/';


// Middleware
app.use( cors() );
app.use( express.json() );


// Routes
app.use(BASE_API_ROUTE + 'players', players);
app.use(BASE_API_ROUTE + 'teams', teams);


module.exports = app;
