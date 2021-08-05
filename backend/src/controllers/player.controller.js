const playerController = {};

playerController.getPlayersByName = (req, res) => {
    const { search, order, page } = req.params;

    console.log(`Searching player ${search} with order ${order} in the page ${page}`);

    res.json({
        message: "Search by NAME was done succesfully",
        search,
        order,
        page
    });
}

playerController.getPlayersByTeam = (req, res) => {
    const { name, page } = req.body;

    console.log(`Searching player in the team ${name} in the page ${page}`);

    res.json({
        message: "Search by TEAM was done succesfully",
        name,
        page
    });
}


module.exports = playerController;
