const axios = require('axios');
const Team = require('./models/Team');
const Player = require('./models/Player');

const getPlayersData = (currentPageData) => {
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


const getTeamsData = (currentPageData) => {
    const teamsList = currentPageData.items.map(item => {
        return {
            name: item.club.name,
            abbr_name: item.club.abbrName
        };
    });

    return teamsList;
}

// UTILITY FUNCTIONS BEGIN
const logEachTwentyIterations = (currentIterationValue) => {
    if (currentIterationValue % 20 === 0 || currentIterationValue === 1) {
        console.log(`Querying the page ${currentIterationValue}...`);
    }
}

const getURLData = async (urlToRequest) => {
    let { data } = await axios.get (urlToRequest);
    return data;
}
// UTILITY FUNCTIONS END

const getDataUntilLastPage = async (loopData, API_BASE_URL) => {
        let { 
            currentPageData,
            currentPageNumber, 
            currentURL, 
            pageItemsCount 
        } = loopData;

        let teamsData = [],
            playersData = [];

        while (pageItemsCount > 0) { 
            logEachTwentyIterations(currentPageNumber);

            teamsData.push ( getTeamsData(currentPageData) );
            playersData.push ( getPlayersData(currentPageData) );

            ++ currentPageNumber;
            currentURL = API_BASE_URL + currentPageNumber;

            currentPageData = await getURLData (currentURL);
            pageItemsCount = currentPageData.count;
        }

        return { teamsData, playersData }
}

function formatTeamsData(teamsData) {
    teamsData 
}

function formatPlayersData(playersData) {

}

const processAPIData = async (API_BASE_URL, initialPage=1) => {
    try {
        console.log("Starting to process the FIFA 21 API...");

        let currentPageNumber = initialPage;
        let currentURL = API_BASE_URL + currentPageNumber;
        let currentPageData = await getURLData(currentURL);
        let pageItemsCount = currentPageData.count;

        let loopData = { currentPageData, currentPageNumber, currentURL, pageItemsCount };

        let { teamsData, playersData } = await getDataUntilLastPage(
            loopData,
            API_BASE_URL
        );

        // format playersData and teamsData to one dimensional array.
        teamsData = [].concat(...teamsData);
        playersData = [].concat(...playersData);

        return { teamsData, playersData };

    } catch (error) {
        console.error('An error ocurred while requesting the FIFA21 API', error);
    }
}

const populatePlayersTable = async (playersModel, playersData) => {
    playersData.forEach( async (playerData) => {
        try {
            await playersModel.create(playerData);
        } catch (error) {
            console.error (error);
        }
    });
}

const populateTeamsTable = async (teamsModel, teamsData) => {
    teamsData.forEach( async (teamData) => {
        try {
            await teamsModel.create(teamData);
        } catch (error) {
            console.error (error);
        }
    });
}

const populateTables = async (tablesDataObjects) => {
    console.log("Populating tables...");
    const { teamsData, playersData } = tablesDataObjects;
    try {
        await populatePlayersTable (Player, playersData);
        await populateTeamsTable (Team, teamsData);
        console.log("All tables were populated succesfully...");
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
