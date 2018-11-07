'use strict';
module.exports = (sequelize, DataTypes) => {
  const note = sequelize.define('note', {
    title: DataTypes.STRING,
    content: DataTypes.TEXT
  }, {});

  note.removeAttribute('createdAt');
  note.removeAttribute('updatedAt');

  note.associate = function(models) {
    note.belongsToMany(models.Project, {
      through: models.projectNotes,
      as: 'notes',
      foreignKey: 'noteId'
    });
  };
  return note;
};