'use strict';
module.exports = (sequelize, DataTypes) => {
  const serveurLanguages = sequelize.define('serveurLanguages', {
    name: DataTypes.STRING
  }, {});

  serveurLanguages.removeAttribute('createdAt');
  serveurLanguages.removeAttribute('updatedAt');

  serveurLanguages.associate = function(models) {
    serveurLanguages.belongsToMany(models.Project, {
      through: models.projectServeurLanguages,
      as: 'serveurLanguages',
      foreignKey: 'serveurLanguagesId'
    });
  };
  return serveurLanguages;
};