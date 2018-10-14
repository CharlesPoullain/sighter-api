const User = require('../models').User;
const Project = require('../models').Project;
const Detail = require('../models').Detail;


module.exports = {
    find(req, res) {
        return User
        .findAll({
            include: [
            { model: Project },
            
            ]
        })
        .then(users => {
            res.json(users)
        })
        .catch(error => res.status(400).send(error));
    }
}