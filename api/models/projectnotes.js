'use strict';
module.exports = (sequelize, DataTypes) => {
  const projectNotes = sequelize.define('projectNotes');

  projectNotes.removeAttribute('id');
  projectNotes.removeAttribute('createdAt');
  projectNotes.removeAttribute('updatedAt');

  projectNotes.associate = function(models) {
    // associations can be defined here
  };
  return projectNotes;
};