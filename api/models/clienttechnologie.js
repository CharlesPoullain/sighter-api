'use strict';
module.exports = (sequelize, DataTypes) => {
  const ClientTechnologie = sequelize.define('ClientTechnologie', {
    languages: DataTypes.TEXT,
    ui: DataTypes.TEXT,
    dependencies: DataTypes.TEXT,
    libs: DataTypes.TEXT
  }, {});
  ClientTechnologie.associate = function(models) {
    // associations can be defined here
  };

  ClientTechnologie.removeAttribute('createdAt');
  ClientTechnologie.removeAttribute('updatedAt');

  return ClientTechnologie;
};