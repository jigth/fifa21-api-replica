const { DataTypes } = require('sequelize');

module.exports = (sequelize) => sequelize.define('Team', {
    team_id: {
        type: DataTypes.INTEGER,
        autoIncrement: true,
        primaryKey: true
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    page: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    total_pages: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    items: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    total_items: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
}, {
    // Other model options go here
});
