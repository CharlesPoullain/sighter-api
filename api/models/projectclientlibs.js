'use strict';
module.exports = (sequelize, DataTypes) => {
  const projectClientLibs = sequelize.define('projectClientLibs', {
    version: DataTypes.STRING
  }, {});

  projectClientLibs.removeAttribute('id');
  projectClientLibs.removeAttribute('createdAt');
  projectClientLibs.removeAttribute('updatedAt');

  projectClientLibs.associate = function(models) {
    // associations can be defined here
  };
  return projectClientLibs;
};