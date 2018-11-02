'use strict';
module.exports = (sequelize, DataTypes) => {
  const clientDependencies = sequelize.define('clientDependencies', {
    name: DataTypes.STRING
  }, {});

    clientDependencies.removeAttribute('createdAt');
    clientDependencies.removeAttribute('updatedAt');

  clientDependencies.associate = function(models) {
    clientDependencies.belongsToMany(models.Project, {
      through: models.projectClientDependencies,
      as: 'clientDependencies',
      foreignKey: 'clientDependenciesId',
      uniqueKey: 'projectClientDependenciesId'
    });
  };
  return clientDependencies;
};