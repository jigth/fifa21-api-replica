const { DataTypes } = require('sequelize');
const { sequelize } = require('../database');
const { Player } = require('./Player');

const Team = sequelize.define('Team', {
    team_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    abbr_name: {
        type: DataTypes.STRING,
    },
}, {
    timestamps: false
});

Team.hasMany(Player, { foreignKey: 'team_id' });

module.exports = {
    Team
};
