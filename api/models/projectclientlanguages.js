'use strict';
module.exports = (sequelize, DataTypes) => {
  const projectClientLanguages = sequelize.define('projectClientLanguages', {
    version: DataTypes.STRING
  }, {});

  projectClientLanguages.removeAttribute('id');
  projectClientLanguages.removeAttribute('createdAt');
  projectClientLanguages.removeAttribute('updatedAt');

  projectClientLanguages.associate = function(models) {
    // associations can be defined here
  };
  return projectClientLanguages;
};