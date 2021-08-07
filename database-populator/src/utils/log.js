const fs = require('fs');
const { join } = require('path');

function saveLogFile(iterations) {
    const filename = join( __dirname, '..', 'app-logs', 'last-page-called.txt' );
    const content = `Last processed page block (end): ${iterations}`;

    // Overwrites the file with the last value of 'iterations'.
    fs.writeFileSync(filename, content, {encoding:'utf8',flag:'w'});
}

function logEachTwentyIterations (
    currentIterationValue,
    iterations=20
) {
    if (currentIterationValue % iterations === 0 || currentIterationValue === 1) {
        saveLogFile(currentIterationValue);
        console.log(`Querying the page ${currentIterationValue}...`);
    }
}


module.exports = {
    logEachTwentyIterations
};
