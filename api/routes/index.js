const projectController = require('../controllers').project;
const detailController = require('../controllers').detail;
const userController = require('../controllers').user;

module.exports = (app) => {
    app.get('/api', (req, res) => res.status(200).send({
        message: 'Message test api'
    }));

    // app.post('/api/project', projectController.create);

    app.get('/project', projectController.find);
    app.post('/project', projectController.findByUser);

    //Get all Projects By User Id
    app.get('/user/:userId', userController.findAllProjectsByUser);

}