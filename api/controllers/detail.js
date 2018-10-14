const Detail = require('../models').Detail;
module.exports = {
    create(req, res) {
        return Detail
            .create({
                deadline: req.body.deadline
            })
            .then(detail => res.status(201).send(detail))
            .catch(error => res.status(400).send(error));
    },
    find(req, res) {
        return Detail
            .findAll({})
            .then(details => {
                res.json(details)
            })
            .catch(error => res.status(400).send(error));
    }
}