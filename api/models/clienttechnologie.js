'use strict';
module.exports = (sequelize, DataTypes) => {
  const ClientTechnologie = sequelize.define('ClientTechnologie', {
    clientLanguages: DataTypes.TEXT,
    clientUi: DataTypes.TEXT,
    clientDependencies: DataTypes.TEXT,
    clientLibs: DataTypes.TEXT
  }, {});
  ClientTechnologie.associate = function(models) {
    // associations can be defined here
  };

  ClientTechnologie.removeAttribute('createdAt');
  ClientTechnologie.removeAttribute('updatedAt');

  return ClientTechnologie;
};