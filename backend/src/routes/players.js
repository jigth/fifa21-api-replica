const express = require('express');
const router = express.Router();

router.route('/')
    .get((req, res) => {
        res.json({ "Message": "Well done from players" });
    })
    .post((req, res) => {
        res.json({ "Message": "Nice post from players" });
    });

module.exports = router;
