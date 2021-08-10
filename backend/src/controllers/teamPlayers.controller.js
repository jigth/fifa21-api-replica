const { Op } = require('sequelize');
const { Team } = require('../models/Team');
const { Player } = require('../models/Player');
const { getPageFromArray } = require('../utils/pages');
const { getPlayerName } = require('../utils/players');

const teamPlayersController = {};


teamPlayersController.getPlayersByTeam = async function (req, res) {
    const { Name, Page } = req.body;
    const resultsPerPage = parseInt(process.env.RESULTS_PER_PAGE) || 10;
    const players = await Player.findAll({
        attributes: [
            'first_name',
            'last_name',
            'common_name',
            'position',
            'nation',
        ],
        include: [{
            model: Team,
            where: {
                name: {
                    [Op.iLike]: `%${Name}%`
                }
            }
        }],
    });

    const playersData = players.map(player => {
        const {
            first_name,
            last_name,
            common_name,
            position,
            nation
        } = player.dataValues;

        const playerName = getPlayerName(common_name, first_name, last_name);
        return { name: playerName, position, nation };
    });

    const totalPages = Math.ceil ( playersData.length / resultsPerPage );

    const thePage = parseInt(Page) || 1;
    const playersResponse = {
        'Page': thePage,
        'totalPages': totalPages,
        'Items': resultsPerPage,
        'totalItems': playersData.length,
        'Players': getPageFromArray( playersData, thePage, resultsPerPage )
    };

    res.json(playersResponse);
}

module.exports = {
    teamPlayersController
};
