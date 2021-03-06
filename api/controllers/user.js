const Users = require('../models').users;
const Project = require('../models').Project;
const Detail = require('../models').Detail;

const Customer = require('../models').Customer;

const UserProject = require('../models').userProjects;

module.exports = {
    findAllProjectsByUser(req, res) {
        return Users
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
    },
    login(req, res) {
        return Users
        .findOne({
            where: {
                mail: req.body.mail,
                password: req.body.password
            },
            include: [{
                model: Project,
                as: 'projects',
                include: [
                    {
                        model: Detail,
                        as: 'detail'
                    },
                    {
                        model: Customer,
                        as: 'customer'
                    },
                ],
            }]
        })
        .then(user => {
            if (user == null) {
                return done(null, false, {
                    message: 'Incorrect credentials.'
                })
            }else{
                res.status(200)
                res.json(user)
            }
        })
        .catch(error => res.status(401).send(error));
    }
}
