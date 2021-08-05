function getPageFromArray(array, page, resultsPerPage) {
    page -= 1;  // Because Javsascript arrays starts from ZERO
    const paginatedArray = [];
    
    for (let i = 0; i < array.length; i += resultsPerPage) {
        paginatedArray.push( array.slice(i, i + resultsPerPage) );
    }

    try {
        return paginatedArray[page];
    } catch (error) {
        console.error(error);
    }
}

module.exports = getPageFromArray;
