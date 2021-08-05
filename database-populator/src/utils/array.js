function flattenArray (array) {
    const flattenedArray = [].concat(...array);
    return flattenedArray;
}

// This function has a side effect in the 'array' argument.
function clearArrayAndReturnIt (array) {
    return array.splice(0, array.length);
}

module.exports = {
    flattenArray,
    clearArrayAndReturnIt
}
