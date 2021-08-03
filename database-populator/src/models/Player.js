const { DataTypes } = require('sequelize');

module.exports = (sequelize) => sequelize.define('Player', {
    common_name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    first_name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    last_name: {
        type: DataTypes.STRING,
    },
    position: {
        type: DataTypes.STRING,
        allowNull: false
    },
    nation: {
        type: DataTypes.STRING,
        allowNull: false
    },
    age: {
        type: DataTypes.INTEGER,
    },
    weight: {
        type: DataTypes.INTEGER,
    },
    height: {
        type: DataTypes.INTEGER,
    },
}, {
    // Other model options go here
});
