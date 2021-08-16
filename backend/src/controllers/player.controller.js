const playerController = {};
const { Player } = require("../models/Player");
const { Op } = require("sequelize");
const { getPageFromArray } = require("../utils/pages");

function formatPlayerResponse(player) {
    const playerQueryData = player.dataValues;
    const { common_name, first_name, last_name } = playerQueryData;

    return {
        name: `${first_name} ${last_name}`,
        common_name,
        position: playerQueryData.position,
        nation: playerQueryData.nation,
    };
}

playerController.getPlayersByName = async (req, res) => {
    const { order, page } = req.query;
    let { search } = req.query;
    if (search === undefined) search = "";

    const isValidOrder = order && ["ASC", "DESC"].includes(order.toUpperCase());
    const queryOrder = isValidOrder ? order : "ASC";
    const resultsPerPage = parseInt(process.env.RESULTS_PER_PAGE) || 10;

    const players = await Player.findAll({
        attributes: [
            "common_name",
            "first_name",
            "last_name",
            "position",
            "nation",
        ],
        where: {
            [Op.or]: [
                {
                    common_name: {
                        [Op.iLike]: `%${search}%`,
                    },
                },
                {
                    first_name: {
                        [Op.iLike]: `%${search}%`,
                    },
                },
                {
                    last_name: {
                        [Op.iLike]: `%${search}%`,
                    },
                },
            ],
        },
        order: [
            ["first_name", queryOrder],
            ["common_name", queryOrder],
        ],
    });

    const playersData = players.map((player) => formatPlayerResponse(player));
    const totalPages = Math.ceil(playersData.length / resultsPerPage);
    const thePage = parseInt(page) || 1;
    const thePlayers = getPageFromArray(playersData, thePage, resultsPerPage);
    const theItems = Math.min(resultsPerPage, thePlayers.length);

    const playersResponse = {
        Page: thePage,
        totalPages: totalPages,
        Items: theItems,
        totalItems: playersData.length,
        Players: thePlayers
    };

    res.json(playersResponse);
};

module.exports = {
    playerController,
};
