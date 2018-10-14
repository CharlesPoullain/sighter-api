'use strict';
module.exports = (sequelize, DataTypes) => {
  const User = sequelize.define('User', {
    name: DataTypes.STRING
  }, {});
  const UserProjects = sequelize.define('UserProjects', {
    owner: DataTypes.INTEGER,
    status: DataTypes.STRING
  })

  UserProjects.removeAttribute('id');
  UserProjects.removeAttribute('createdAt');
  UserProjects.removeAttribute('updatedAt');

  User.associate = function(models) {
     User.belongsToMany(models.Project, {
       through: UserProjects
     })

    //  models.Project.belongsToMany(User, {
    //    through: UserProjects
    //  })
  };
  return User;
};
