'use strict';
module.exports = (sequelize, DataTypes) => {
  const clientUi = sequelize.define('clientUi', {
    name: DataTypes.STRING
  }, {});

    clientUi.removeAttribute('createdAt');
    clientUi.removeAttribute('updatedAt');

  clientUi.associate = function(models) {
    clientUi.belongsToMany(models.Project, {
      through: models.projectClientUi,
      as: 'clientUi',
      foreignKey: 'clientUiId'
    });
  };
  return clientUi;
};