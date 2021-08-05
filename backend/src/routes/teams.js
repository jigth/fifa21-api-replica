const router = require('express').Router();

const teamController = require('../controllers/team.controller');

router.route('/')
    .get( teamController.getAllTeams )
    .post( teamController.getTeamsByName );


module.exports = router;
