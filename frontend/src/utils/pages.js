export function getActiveItem() {
    const queryParams = new URLSearchParams(window.location.search);
    const active = queryParams.get('page');
    return active || 1;
}
