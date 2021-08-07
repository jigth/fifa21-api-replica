const playerController = {};
const { Player } = require('../models/Player');
const { Op } = require('sequelize');
const { getPageFromArray } = require('../utils/pages');
const { getPlayerName } = require('../utils/players');

function formatPlayerResponse(player) {
        const playerQueryData = player.dataValues;
        const {
            common_name,
            first_name,
            last_name,
        } = playerQueryData;

        return {
            name: getPlayerName(common_name, first_name, last_name),
            position: playerQueryData.position,
            nation: playerQueryData.nation
        };
}

playerController.getPlayersByName = async (req, res) => {
    const { search, order, page } = req.query;

    const isValidOrder = order 
                    && ['ASC', 'DESC'].includes( order.toUpperCase() ) ;

    const queryOrder = isValidOrder ? order : 'ASC';
    const resultsPerPage = parseInt(process.env.RESULTS_PER_PAGE) || 10;

    const players = await Player.findAll({
        attributes: ['common_name', 'first_name', 'last_name', 'position', 'nation'],
        where: {
            common_name: {
                [Op.iLike]: `%${search}%`
            }
        },
        order: [
            ['common_name', queryOrder]
        ]
    });

    const playersData = players.map(player => formatPlayerResponse(player));

    const totalPages = playersData.length >= resultsPerPage ? 
                Math.ceil ( playersData.length / resultsPerPage )
              : playersData.length;

    const thePage = parseInt(page) || 1;
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
    playerController
};
