
module.exports = (app) => {
    app.get('/api', (req, res) => res.status(200).send({
        message: 'Message test api'
    }));

    require('./user')(app);
    require('./project')(app);

}