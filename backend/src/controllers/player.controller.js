const playerController = {};
const { Player } = require('../models/Player');
const { Op } = require('sequelize');
const { getPageFromArray } = require('../utils/pages');

playerController.getPlayersByName = async (req, res) => {
    const { search, order, page } = req.query;

    const isValidOrder = order 
                    && ['ASC', 'DESC'].includes( order.toUpperCase() ) ;

    const queryOrder = isValidOrder ? order : 'ASC';
    const resultsPerPage = parseInt(process.env.RESULTS_PER_PAGE) || 10;

    const players = await Player.findAll({
        attributes: [['common_name', 'name'], 'position', 'nation', 'team_id'],
        where: {
            common_name: {
                [Op.iLike]: `%${search}%`
            }
        },
        order: [
            ['common_name', queryOrder]
        ]
    });

    const playersData = players.map(player => player.dataValues);
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
