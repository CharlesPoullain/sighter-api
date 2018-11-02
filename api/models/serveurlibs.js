'use strict';
module.exports = (sequelize, DataTypes) => {
  const serveurLibs = sequelize.define('serveurLibs', {
    name: DataTypes.STRING
  }, {});

    serveurLibs.removeAttribute('createdAt');
    serveurLibs.removeAttribute('updatedAt');

  serveurLibs.associate = function(models) {
    serveurLibs.belongsToMany(models.Project, {
      through: models.projectServeurLibs,
      as: 'serveurLibs',
      foreignKey: 'serveurLibsId'
    });
  };
  return serveurLibs;
};