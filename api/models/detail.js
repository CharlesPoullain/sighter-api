'use strict';
module.exports = (sequelize, DataTypes) => {
  const Detail = sequelize.define('Detail', {
    numberSprintsInitial: DataTypes.INTEGER,
    numberAdditionalSprints: DataTypes.INTEGER,
    weekDuration: DataTypes.INTEGER,
    deadline: DataTypes.DATE
  }, {});
  Detail.associate = function(models) {
    // Detail.hasMany(models.Project, {
    //   foreignKey: 'detailId',
    //   as: 'details'
    // })

  };

  Detail.removeAttribute('createdAt');
  Detail.removeAttribute('updatedAt');
  return Detail;
};