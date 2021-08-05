const express = require('express');
const router = express.Router();
const playerController = require('../controllers/player.controller');

router.get('/', playerController.getPlayersByName);

module.exports = router;
