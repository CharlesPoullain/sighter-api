const express = require('express');
const logger = require('morgan');
const bodyParser = require('body-parser');
// This will be our application entry. We'll setup our server here.
const http = require('http');
// Set up the express app
const app = express();
// Log requests to the console.
app.use(logger('dev'));
// Parse incoming requests data (https://github.com/expressjs/body-parser)
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

//Models
var models = require('./api/models')
models.sequelize.sync().then(function() {
    console.log('Database work')
}).catch(function(err) {
    console.log('error in ddb: ', err)
})

app.all('*', function (req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Content-Type');
    next();
});

require('./api/routes')(app);

app.get('*', (req, res) => res.status(200).send({
    message: 'Welcome to the beginning of nothingness.',
}));

const port = parseInt(process.env.PORT, 10) || 8010;
app.set('port', port);
const server = http.createServer(app);
server.listen(port);
module.exports = app;