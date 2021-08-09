export function arrayToMatrix(array, itemsPerRow) {
    const matrix = [];
    let row = [];

    if (array.length <= 0) {
        return [];
    }

    array.forEach((item, index) => {
        row.push(item);
        let reachedMaxRowCapacity = ((index+1) % itemsPerRow === 0) && (index > 0);
        let endOfArray = (array.length - 1) === index;
        if (reachedMaxRowCapacity || endOfArray) {
            matrix.push(row);
            row = [];
        }
    });
    return matrix;
}
