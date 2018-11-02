'use strict';
module.exports = (sequelize, DataTypes) => {
  const clientLanguages = sequelize.define('clientLanguages', {
    name: DataTypes.STRING
  }, {});

    clientLanguages.removeAttribute('createdAt');
    clientLanguages.removeAttribute('updatedAt');

  clientLanguages.associate = function(models) {
    clientLanguages.belongsToMany(models.Project, {
      through: models.projectClientLanguages,
      as: 'clientLanguages',
      foreignKey: 'clientLanguagesId'
    });
  };
  return clientLanguages;
};