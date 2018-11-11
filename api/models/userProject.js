'use strict';
module.exports = (sequelize, DataTypes) => {
    const userProjects = sequelize.define('userProjects', {
        owner: DataTypes.INTEGER,
        status: DataTypes.STRING
    })

    userProjects.removeAttribute('id');
    userProjects.removeAttribute('createdAt');
    userProjects.removeAttribute('updatedAt');

    userProjects.associate = function (models) {
      
    };
    return userProjects;
};
