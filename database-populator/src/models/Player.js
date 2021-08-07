const { DataTypes } = require('sequelize');
const { sequelize } = require('../database');

const Player = sequelize.define('Player', {
    player_id: {
        type: DataTypes.STRING,
        primaryKey: true
    },
    common_name: {
        type: DataTypes.STRING,
    },
    first_name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    last_name: {
        type: DataTypes.STRING,
        allowNull: false
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
    team_id: {
        type: DataTypes.INTEGER,
    },
}, {
    timestamps: false
});

module.exports = {
    Player
};
