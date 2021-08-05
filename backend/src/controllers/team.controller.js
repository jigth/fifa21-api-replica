const teamController = {};


teamController.getAllTeams = (req, res) => {
    const exampleQueryResult = [
        { name: 'Real Madrid', page: 2 },
        { name: 'Barcelona', page: 5 },
        { name: 'Juventus', page: 1 },
    ];

    res.json({ items: exampleQueryResult });
}

teamController.getTeamsByName = (req, res) => {
    const { Name } = req.body;

    const exampleQueryResult = [
        { name: 'Real Madrid', page: 2 },
        { name: 'Atletico de Madrid', page: 5 },
    ];

    res.json({ items: exampleQueryResult, Name });
}


module.exports = teamController;
