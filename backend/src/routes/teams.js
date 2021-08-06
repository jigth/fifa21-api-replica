const router = require('express').Router();

const { teamController } = require('../controllers/team.controller');

router.get( '/', teamController.getAllTeams );
router.get('/by-name', teamController.getTeamsByName );

module.exports = router;
