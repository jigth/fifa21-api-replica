const { Sequelize } = require('sequelize');
const defineTeamModel = require('./models/Team');
const definePlayerModel = require('./models/Player');

const connectToDatabaseAndReturnIt = async (databaseName, username, password) => {
    const sequelize = new Sequelize(databaseName, username, password, {
        host: 'localhost',
        dialect: 'postgres',
        logging: false
    });

    try {
        await sequelize.authenticate();
        console.error('Connection has been established succesfully');
        return sequelize;
    } catch (error) {
        console.error('Unable to connect to the database', error);
    }
}

const createTables = async (sequelize) => {

    const createPlayerTable = () => {
        const Player = definePlayerModel(sequelize);
        console.log("Player table has been created");
        return Player;
    }

    const createTeamTable = () => {
        const Team = defineTeamModel(sequelize);
        console.log("Team table has been created");
        return Team;
    }

    const Player = await createPlayerTable();
    const Team = await createTeamTable();

    // Relationship between tables
    Team.hasMany(Player, { foreignKey: 'team_id' });
    Player.belongsTo(Team);

    // Drop table before creating it. Existing tables will be overwritten!
    sequelize.sync({ force: true });

    return {
        Team,
        Player
    }
}

module.exports = {
    connectToDatabaseAndReturnIt,
    createTables
}
