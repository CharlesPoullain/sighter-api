'use strict';
module.exports = (sequelize, DataTypes) => {
  const Project = sequelize.define('Project', {
    name: DataTypes.STRING,
    avatar: DataTypes.STRING,
    description: DataTypes.TEXT
  }, {});
  Project.associate = function(models) {
    Project.belongsTo(models.Detail, {
      as: 'detail',
      foreignKey: 'detailId',
      targetKey: 'id',
      onDelete: 'CASCADE'
    })

    Project.belongsTo(models.Customer, {
      as: 'customer',
      foreignKey: 'customerId',
      onDelete: 'CASCADE'
    })

    Project.belongsTo(models.ServeurTechnologie, {
      as: 'serveurTechs',
      foreignKey: 'serveurTechnologiesId',
      onDelete: 'CASCADE'
    })

    Project.belongsTo(models.ClientTechnologie, {
      as: 'clientTechs',
      foreignKey: 'clientTechnologiesId',
      onDelete: 'CASCADE'
    })
  };
  return Project;
};