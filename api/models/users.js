'use strict';
module.exports = (sequelize, DataTypes) => {
  const users = sequelize.define('users', {
    name: DataTypes.STRING
  }, {});

  users.associate = function (models) {
      users.belongsToMany(models.Project, {
        through: 'userProjects',
        as: 'projects',
        foreignKey: 'userId'
      });
  };
  return users;
};
