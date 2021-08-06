const router = require('express').Router();
const { teamPlayersController } = require('../controllers/teamPlayers.controller');

router.post('/', teamPlayersController.getPlayersByTeam);

module.exports = router;
