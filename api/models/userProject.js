'use strict';
module.exports = (sequelize, DataTypes) => {
    const UserProjects = sequelize.define('UserProjects', {
        owner: DataTypes.INTEGER,
        status: DataTypes.STRING
    })

    UserProjects.removeAttribute('id');
    UserProjects.removeAttribute('createdAt');
    UserProjects.removeAttribute('updatedAt');

    UserProjects.associate = function (models) {
      
    };
    return UserProjects;
};
