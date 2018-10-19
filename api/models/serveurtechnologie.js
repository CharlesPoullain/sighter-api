'use strict';
module.exports = (sequelize, DataTypes) => {
  const ServeurTechnologie = sequelize.define('ServeurTechnologie', {
    languages: DataTypes.TEXT,
    dependencies: DataTypes.TEXT,
    libs: DataTypes.TEXT
  }, {});
  ServeurTechnologie.associate = function(models) {
    // associations can be defined here
  };

  ServeurTechnologie.removeAttribute('createdAt');
  ServeurTechnologie.removeAttribute('updatedAt');


  return ServeurTechnologie;
};