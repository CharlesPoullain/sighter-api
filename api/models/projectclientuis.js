'use strict';
module.exports = (sequelize, DataTypes) => {
  const projectClientUi = sequelize.define('projectClientUi', {
    version: DataTypes.STRING
  }, {});
  
  projectClientUi.removeAttribute('id');
  projectClientUi.removeAttribute('createdAt');
  projectClientUi.removeAttribute('updatedAt');

  projectClientUi.associate = function(models) {
    // associations can be defined here
  };
  return projectClientUi;
};