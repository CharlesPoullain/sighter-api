const User = require('../models').User;
const Project = require('../models').Project;
const Detail = require('../models').Detail;


module.exports = {
    findAllProjectsByUser(req, res) {
        return User
        .findAll({
            where: {
                id: req.params.userId
            },
            include: [{
                model: Project,
                as: 'projects',
                required: false,
                through: {
                    attributes: [],
                }
            }]
        })
        .then(user => {
            res.json(user)
        })
        .catch(error => res.status(400).send(error));
    }
}
