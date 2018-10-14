const projectController = require('../controllers').project;
const detailController = require('../controllers').detail;
const userController = require('../controllers').user;

module.exports = (app) => {
    app.get('/api', (req, res) => res.status(200).send({
        message: 'Message test api'
    }));

    app.post('/api/project', projectController.create);

    app.get('/project', projectController.find);

    app.get('/details', detailController.find);

    app.get('/user', userController.find);


}