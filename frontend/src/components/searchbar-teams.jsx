import { InputGroup, FormControl, Button } from "react-bootstrap";

export function SearchbarTeams(props) {
    return (
        <section className="mb-5">
            <InputGroup className="w-50 my-4" style={{ margin: "0 auto" }}>
                <InputGroup.Text id="items-searchbar">Search Teams</InputGroup.Text>
                <FormControl
                    placeholder="Example: 'Real Madrid' or 'Rea'"
                    onChange={props.handleSearchChange}
                    aria-label="searchbarTeams"
                    aria-describedby="items-searchbar"
                />
                <Button onClick={async () => props.searchFunction(props.searchQuery)}>
                    Search
                </Button>
            </InputGroup>
        </section>
    );
}
