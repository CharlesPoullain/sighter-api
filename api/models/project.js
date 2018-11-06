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

    //Client
    Project.belongsToMany(models.clientLanguages, {
      through: models.projectClientLanguages,
      as: 'clientLanguages',
      foreignKey: 'projectId'
    });

    Project.belongsToMany(models.clientDependencies, {
      through: models.projectClientDependencies,
      as: 'clientDependencies',
      foreignKey: 'projectId'
    });

    Project.belongsToMany(models.clientLibs, {
      through: models.projectClientLibs,
      as: 'clientLibs',
      foreignKey: 'projectId'
    });

    Project.belongsToMany(models.clientUi, {
      through: models.projectClientUi,
      as: 'clientUi',
      foreignKey: 'projectId'
    });

    //Serveur
    Project.belongsToMany(models.serveurLanguages, {
      through: models.projectServeurLanguages,
      as: 'serveurLanguages',
      foreignKey: 'projectId'
    });

    Project.belongsToMany(models.serveurDependencies, {
      through: models.projectServeurDependencies,
      as: 'serveurDependencies',
      foreignKey: 'projectId'
    });

    Project.belongsToMany(models.serveurLibs, {
      through: models.projectServeurLibs,
      as: 'serveurLibs',
      foreignKey: 'projectId'
    });

    Project.belongsToMany(models.note, {
      through: models.projectNotes,
      as: 'notes',
      foreignKey: 'projectId'
    });

  };
  return Project;
};