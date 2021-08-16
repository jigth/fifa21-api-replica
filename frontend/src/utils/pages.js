export function getActiveItem() {
    const queryParams = new URLSearchParams(window.location.search);
    const active = queryParams.get('page');
    return active || 1;
}

export function isElipsis(paginationItem) {
    return paginationItem === "...";
}

// Taken from 'kottenator' at https://gist.github.com/kottenator/9d936eb3e4e3c3e02598
export function getPaginationArray(active, totalPages) {
    var current = active,
        last = totalPages,
        delta = 2,
        left = current - delta,
        right = current + delta + 1,
        range = [],
        rangeWithDots = [],
        l;

    for (let i = 1; i <= last; i++) {
        if ((i === 1) || (i === last) || (i >= left && i < right)) {
            range.push(i);
        }
    }

    for (let i of range) {
        if (l) {
            if (i - l === 2) {
                rangeWithDots.push(l + 1);
            } else if (i - l !== 1) {
                rangeWithDots.push('...');
            }
        }
        rangeWithDots.push(i);
        l = i;
    }

    return rangeWithDots;
}
