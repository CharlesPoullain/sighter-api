const Project = require('../models').Project;
const Detail = require('../models').Detail;
const Customer = require('../models').Customer;
const ClientTechnologie = require('../models').ClientTechnologie;
const ServeurTechnologie = require('../models').ServeurTechnologie;
const UserProject = require('../models').UserProject;
const User = require('../models').User;


module.exports = {
    create(req, res) {
        return Project
        .create({
            name: req.body.name
        })
        .then(project => res.status(201).send(project))
        .catch(error => res.status(400).send(error));
    },
    find(req, res) {
        return Project
        .findAll({
            include: [ 
                { model: Detail, as: 'detail' },
                { model: Customer, as: 'customer' },
                { model: ClientTechnologie, as: 'clientTechs' },
                { model: ServeurTechnologie, as: 'serveurTechs' }
            ]
        })
        .then(users => {
            res.json(users)
        })
        .catch(error => res.status(400).send(error));
    },
    findByUser(req, res) {
    return Project
        .findAll({
            // where: {
            //     UserProjects.UserId: req.body.userId
            // },
            include: [{
                    model: Detail,
                    as: 'detail'
                },
                {
                    model: Customer,
                    as: 'customer'
                },
                {
                    model: ClientTechnologie,
                    as: 'clientTechs'
                },
                {
                    model: ServeurTechnologie,
                    as: 'serveurTechs'
                }
            ],
            
        })
        .then(users => {
            res.json(users)
        })
        .catch(error => res.status(400).send(error));
    }
}