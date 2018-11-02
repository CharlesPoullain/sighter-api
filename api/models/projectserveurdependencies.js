'use strict';
module.exports = (sequelize, DataTypes) => {
  const projectServeurDependencies = sequelize.define('projectServeurDependencies', {
    version: DataTypes.STRING,
  }, {});

  projectServeurDependencies.removeAttribute('id');
  projectServeurDependencies.removeAttribute('createdAt');
  projectServeurDependencies.removeAttribute('updatedAt');

  projectServeurDependencies.associate = function(models) {
    // associations can be defined here
  };
  return projectServeurDependencies;
};