const axios = require('axios');
const { Team } = require('./models/Team');
const { Player } = require('./models/Player');
const { logEachTwentyIterations } = require('./utils/log');
const { flattenArray, clearArrayAndReturnIt } = require('./utils/array');
const { Op } = require('sequelize');

function getPlayersData (currentPageData) {
    const playersList = currentPageData.items.map( player => {
    return {
            player_id: player.id,
            common_name: player.commonName,
            first_name: player.firstName,
            last_name: player.lastName,
            position: player.position,
            nation: player.nation.name,
            age: player.age,
            weight: player.weight,
            height: player.height,
            team_id: player.club.id
        };
    });

    return playersList;
}


function getTeamsData (currentPageData) {
    const teamsList = currentPageData.items.map(player => {
        return {
            team_id: player.club.id,
            name: player.club.name,
            abbr_name: player.club.abbrName
        };
    });

    return teamsList;
}

async function saveEachTwentyIterations (
    teams,
    players,
    currentIterationValue
) {
    if (currentIterationValue % 20 === 0) {
        console.log('Saving the collected results until now...');
        teams = flattenArray(teams);
        players = flattenArray(players);

        const teamsData = clearArrayAndReturnIt( teams );
        const playersData = clearArrayAndReturnIt( players );

        try {
            await populateTables(teamsData, playersData);
        } catch (error) {
            console.error('An error ocurred while populating data\n', error); 
        }
        console.log('Done!\n');
    }
}

async function getURLData(urlToRequest) {
    let { data } = await axios.get (urlToRequest);
    return data;
}
// UTILITY FUNCTIONS END

async function getDataAndSaveIt (loopData, API_BASE_URL) {
        let { 
            currentPageData,
            currentPageNumber, 
            currentURL, 
            pageItemsCount 
        } = loopData;

        let teams = [],
            players = [];

        while (pageItemsCount > 0) { 
            logEachTwentyIterations(currentPageNumber);
            saveEachTwentyIterations(teams, players, currentPageNumber);

            teams.push ( getTeamsData(currentPageData) );
            players.push ( getPlayersData(currentPageData) );

            ++ currentPageNumber;
            currentURL = API_BASE_URL + currentPageNumber;

            currentPageData = await getURLData (currentURL);
            pageItemsCount = currentPageData.count;
        }
}

async function processAPIData (API_BASE_URL, initialPage=1) {
    try {
        console.log("Starting to process the FIFA 21 API...");

        let currentPageNumber = initialPage;
        let currentURL = API_BASE_URL + currentPageNumber;
        let currentPageData = await getURLData(currentURL);
        let pageItemsCount = currentPageData.count;

        let loopData = { currentPageData, currentPageNumber, currentURL, pageItemsCount };

        await getDataAndSaveIt(
            loopData,
            API_BASE_URL
        );

        console.log("All tables were populated succesfully...");
    } catch (error) {
        console.error('An error ocurred while requesting the FIFA21 API', error);
    }
}

async function populatePlayersTable (playersModel, playersData) {
    playersData.forEach( async (player) => {
        try {
            await playersModel.findOrCreate({
                where: {
                    [Op.and]: {
                        first_name: player.first_name,
                        last_name: player.last_name,
                        team_id: player.team_id
                    }
                },
                defaults: {
                    common_name: player.common_name,
                    first_name: player.first_name,
                    last_name: player.last_name,
                    position: player.position,
                    nation: player.nation,
                    age: player.age,
                    weight: player.weight,
                    height: player.height,
                    player_id: player.player_id,
                    team_id: player.team_id
                }
            });
        } catch (error) {
            console.error (error);
        }
    });
}

async function populateTeamsTable (teamsModel, teamsData) {
    teamsData.forEach( async (team) => {
        try {
            await teamsModel.findOrCreate({
                where: { team_id: team.team_id },
                defaults: {
                    name: team.name,
                    abbr_name: team.abbr_name,
                    team_id: team.team_id
                }
            });
        } catch (error) {
            console.error (error);
        }
    });
}

async function populateTables (teamsData, playersData) {
    console.log("Populating tables...");
    try {
        // The order in which the following 2 methos are being
        // called is important. Else a 'create' error could ocurr.
        await populateTeamsTable (Team, teamsData);
        await populatePlayersTable (Player, playersData);
        return true;
    } catch (error) {
        console.error(error);
        return false;
    }
}


module.exports = {
    processAPIData,
    populateTables,
}
