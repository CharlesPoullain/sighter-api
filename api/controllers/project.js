const Project = require('../models').Project;
const Detail = require('../models').Detail;
const Customer = require('../models').Customer;
const UserProject = require('../models').UserProject;
const User = require('../models').User;
const clientDependencies = require('../models').clientDependencies;
const clientLanguages = require('../models').clientLanguages;
const clientLibs = require('../models').clientLibs;
const clientUi = require('../models').clientUi;

const serveurDependencies = require('../models').serveurDependencies;
const serveurLanguages = require('../models').serveurLanguages;
const serveurLibs = require('../models').serveurLibs;


console.log('--------------------------------')
console.log('--------------------------------')
module.exports = {
    create(req, res) {
        return Project
        .create({
            name: req.body.name
        })
        .then(project => res.status(201).send(project))
        .catch(error => res.status(400).send(error));
    },
    //GET request
    find(req, res) {
        return Project
        .findAll({
            include: [ 
                { model: Detail, as: 'detail' },
                { model: Customer, as: 'customer' },
            ]
        })
        .then(users => {
            res.json(users)
        })
        .catch(error => res.status(400).send(error));
    },
    //POST request
    findByUser(req, res) {
    return Project
        .findAll({
            where: {
                id: req.body.projectId
            },
            include: [
                {
                    model: Detail,
                    as: 'detail'
                },
                {
                    model: Customer,
                    as: 'customer'
                },
                {
                    model: clientDependencies,
                    as: 'clientDependencies',
                },
                {
                    model: clientLanguages,
                    as: 'clientLanguages',
                },
                {
                    model: clientLibs,
                    as: 'clientLibs',
                },
                {
                    model: clientUi,
                    as: 'clientUi',
                },
                {
                    model: serveurDependencies,
                    as: 'serveurDependencies',
                },
                {
                    model: serveurLanguages,
                    as: 'serveurLanguages',
                },
                {
                    model: serveurLibs,
                    as: 'serveurLibs',
                }
            ],
            
        })
        .then(users => {
            res.json(users)
        })
        .catch(error => res.status(400).send(error));
    }
}