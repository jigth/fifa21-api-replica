function nameIsNotEmpty(name) {
    return name.length > 0;
}

function getPlayerName(common_name, first_name, last_name) {
    const playerName = nameIsNotEmpty(common_name) 
                    ? common_name
                    : `${first_name} ${last_name}`;

    return playerName;
}

module.exports = {
    nameIsNotEmpty,
    getPlayerName
};
