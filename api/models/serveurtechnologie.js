'use strict';
module.exports = (sequelize, DataTypes) => {
  const ServeurTechnologie = sequelize.define('ServeurTechnologie', {
    serveurLanguages: DataTypes.TEXT,
    serveurDependencies: DataTypes.TEXT,
    serveurLibs: DataTypes.TEXT
  }, {});
  ServeurTechnologie.associate = function(models) {
    // associations can be defined here
  };

  ServeurTechnologie.removeAttribute('createdAt');
  ServeurTechnologie.removeAttribute('updatedAt');


  return ServeurTechnologie;
};