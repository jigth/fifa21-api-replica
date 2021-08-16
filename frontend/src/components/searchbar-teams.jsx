import { InputGroup, FormControl, Button } from "react-bootstrap";

export function SearchbarTeams(props) {
    const handleKeyDown = (event) => {
        if (event.key === 'Enter') {
            props.searchFunction(props.searchQuery)
        }
    }

    return (
        <section className="mb-5">
            <InputGroup className="w-50 my-4" style={{ margin: "0 auto" }}>
                <InputGroup.Text id="items-searchbar">Search Teams</InputGroup.Text>
                <FormControl
                    placeholder="Example: 'Real Madrid' or 'Rea'"
                    onChange={props.handleSearchChange}
                    aria-label="searchbarTeams"
                    aria-describedby="items-searchbar"
                    onKeyDown={handleKeyDown}
                />
                <Button onClick={async () => props.searchFunction(props.searchQuery)}>
                    Search
                </Button>
            </InputGroup>
        </section>
    );
}
