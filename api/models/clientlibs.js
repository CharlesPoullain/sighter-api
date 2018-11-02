'use strict';
module.exports = (sequelize, DataTypes) => {
  const clientLibs = sequelize.define('clientLibs', {
    name: DataTypes.STRING
  }, {});

    clientLibs.removeAttribute('createdAt');
    clientLibs.removeAttribute('updatedAt');

  clientLibs.associate = function(models) {
    clientLibs.belongsToMany(models.Project, {
      through: models.projectClientLibs,
      as: 'clientLibs',
      foreignKey: 'clientLibsId'
    });
  };
  return clientLibs;
};