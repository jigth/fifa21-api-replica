const { DataTypes } = require('sequelize');
const { sequelize } = require('../database');

const Player = sequelize.define('Player', {
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
    original_source_id: {
        type: DataTypes.STRING,
    },
    team_id: {
        type: DataTypes.INTEGER,
    },
}, {
    timestamps: false
});

module.exports = Player;
