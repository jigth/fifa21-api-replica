const teamController = {};
const { Team } = require('../models/Team');
const { getPageFromArray } = require('../utils/pages');
const { Op } = require('sequelize');


teamController.getAllTeams = async function (req, res) {
    const { page } = req.query;
    const resultsPerPage = parseInt(process.env.RESULTS_PER_PAGE) || 10;

    const teams = await Team.findAll({
        attributes: ['team_id', 'name', 'abbr_name'],
    });

    const totalPages = Math.ceil(teams.length / resultsPerPage);
    const thePage = parseInt(page) || 1;
    const theTeams = getPageFromArray( teams, thePage, resultsPerPage );
    const theItems = Math.min(resultsPerPage, theTeams.length);

    const teamsResponse = {
        'Page': thePage,
        'totalPages': totalPages,
        'Items': theItems,
        'totalItems': teams.length,
        'Teams': theTeams
    };
    res.json(teamsResponse);
}

teamController.getTeamsByName = async function (req, res) {
    const { name, page } = req.query;
    const resultsPerPage = parseInt(process.env.RESULTS_PER_PAGE) || 10;

    const teams = await Team.findAll({
        attributes: ['team_id', 'name', 'abbr_name'],
        where: {
            name: {
                [Op.iLike]: `%${name}%`
            }
        }
    });

    const teamsData = teams.map(team => team.dataValues);
    const totalPages = Math.ceil(teams.length / resultsPerPage);
    const thePage = parseInt(page) || 1;
    const theTeams = getPageFromArray( teams, thePage, resultsPerPage );
    const theItems = Math.min(resultsPerPage, theTeams.length);

    const teamsResponse = {
        'Page': thePage,
        'totalPages': totalPages,
        'Items': theItems,
        'totalItems': teamsData.length,
        'Teams': theTeams
    };

    res.json(teamsResponse);
}



module.exports = {
    teamController
};
