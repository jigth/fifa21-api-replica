function logEachTwentyIterations (currentIterationValue) {
    if (currentIterationValue % 20 === 0 || currentIterationValue === 1) {
        console.log(`Querying the page ${currentIterationValue}...`);
    }
}

module.exports = {
    logEachTwentyIterations
};
