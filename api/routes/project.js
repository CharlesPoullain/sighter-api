const projectController = require('../controllers').project;

module.exports = (app) => {

    app.get('/project', projectController.find);
    app.post('/project', projectController.findByUser);

}