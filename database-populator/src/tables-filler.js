const axios = require('axios');
const Team = require('./models/Team');
const Player = require('./models/Player');
const { logEachTwentyIterations } = require('./utils/log');
const { flattenArray, clearArrayAndReturnIt } = require('./utils/array');

function getPlayersData (currentPageData) {
    const playersList = currentPageData.items.map( item => {
        return {
            common_name: item.commonName,
            first_name: item.firstName,
            last_name: item.lastName,
            position: item.position,
            nation: item.nation.name,
            age: item.age,
            weight: item.weight,
            height: item.height,
            original_source_id: item.id
        };
    });

    return playersList;
}


function getTeamsData (currentPageData) {
    const teamsList = currentPageData.items.map(item => {
        return {
            name: item.club.name,
            abbr_name: item.club.abbrName
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

        let { teamsData, playersData } = await getDataAndSaveIt(
            loopData,
            API_BASE_URL
        );

        console.log("All tables were populated succesfully...");
    } catch (error) {
        console.error('An error ocurred while requesting the FIFA21 API', error);
    }
}

async function populatePlayersTable (playersModel, playersData) {
    playersData.forEach( async (playerData) => {
        try {
            await playersModel.create(playerData);
        } catch (error) {
            console.error (error);
        }
    });
}

async function populateTeamsTable (teamsModel, teamsData) {
    teamsData.forEach( async (teamData) => {
        try {
            await teamsModel.create(teamData);
        } catch (error) {
            console.error (error);
        }
    });
}

async function populateTables (teamsData, playersData) {
    console.log("Populating tables...");
    try {
        await populatePlayersTable (Player, playersData);
        await populateTeamsTable (Team, teamsData);
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
