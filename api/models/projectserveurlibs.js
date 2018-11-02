'use strict';
module.exports = (sequelize, DataTypes) => {
  const projectServeurLibs = sequelize.define('projectServeurLibs', {
    version: DataTypes.STRING
  }, {});

  projectServeurLibs.removeAttribute('id');
  projectServeurLibs.removeAttribute('createdAt');
  projectServeurLibs.removeAttribute('updatedAt');

  projectServeurLibs.associate = function(models) {
    // associations can be defined here
  };
  return projectServeurLibs;
};