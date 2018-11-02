'use strict';
module.exports = (sequelize, DataTypes) => {
  const serveurDependencies = sequelize.define('serveurDependencies', {
    name: DataTypes.STRING,
  }, {});

  serveurDependencies.removeAttribute('createdAt');
  serveurDependencies.removeAttribute('updatedAt');

  serveurDependencies.associate = function(models) {
    serveurDependencies.belongsToMany(models.Project, {
      through: models.projectServeurDependencies,
      as: 'serveurDependencies',
      foreignKey: 'serveurDependenciesId',
      uniqueKey: 'projectServeurDependenciesId'
    });
  };
  return serveurDependencies;
};