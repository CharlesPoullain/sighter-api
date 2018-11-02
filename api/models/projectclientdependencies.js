'use strict';
module.exports = (sequelize, DataTypes) => {
  const projectClientDependencies = sequelize.define('projectClientDependencies', {
    version: DataTypes.STRING,
  }, {});

  projectClientDependencies.removeAttribute('id');
  projectClientDependencies.removeAttribute('createdAt');
  projectClientDependencies.removeAttribute('updatedAt');

  projectClientDependencies.associate = function(models) {
    // associations can be defined here
  };
  return projectClientDependencies;
};