const userController = require('../controllers').user;

module.exports = (app) => {

    //login
    app.post('/login', userController.login)
    //Get all Projects By User Id
    app.get('/user/:userId', userController.findAllProjectsByUser);

}