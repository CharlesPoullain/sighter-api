'use strict';
module.exports = (sequelize, DataTypes) => {
  const projectServeurLanguages = sequelize.define('projectServeurLanguages', {
    version: DataTypes.STRING
  }, {});

  projectServeurLanguages.removeAttribute('id');
  projectServeurLanguages.removeAttribute('createdAt');
  projectServeurLanguages.removeAttribute('updatedAt');

  projectServeurLanguages.associate = function(models) {
    // associations can be defined here
  };
  return projectServeurLanguages;
};