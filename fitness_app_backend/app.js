const express = require('express');
const app = express();

const UserRoutes = require('./routes/user_routes');
const bodyParser = require('body-parser'); //body parser

app.use(bodyParser.json()); //parse application/json //This will parse the incoming request body and convert it to JSON

app.use('/user', UserRoutes); //user router

module.exports = app;