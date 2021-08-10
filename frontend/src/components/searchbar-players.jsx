import { InputGroup, FormControl, Button } from "react-bootstrap";

export function SearchbarPlayers(props) {
    return (
        <section className="mb-5">
            <InputGroup className="w-50 mt-4" style={{ margin: "0 auto" }}>
                <InputGroup.Text id="items-searchbar">Search Players</InputGroup.Text>
                <FormControl
                    placeholder="Example: 'Lionel Messi', or 'Lio'"
                    aria-label="searchbarPlayers"
                    aria-describedby="items-searchbar"
                    onChange={props.handleSearchChange}
                />
            </InputGroup>
            <InputGroup className="w-50 my-2" style={{ margin: "0 auto" }}>
                <InputGroup.Text id="items-searchbar" className="w-25">
                    By
                </InputGroup.Text>
                <select
                    className="form-select form-control"
                    style={{ maxWidth: "25%", marginRight: "5%" }}
                    aria-label="Search by name or team"
                    onChange={props.handleByChange}
                >
                    <option value="name">Name</option>
                    <option value="team">Team</option>
                </select>

                <InputGroup.Text id="items-searchbar" className="w-25">
                    Order
                </InputGroup.Text>
                <select
                    className="form-select form-control"
                    style={{ maxWidth: "25%" }}
                    aria-label="Order select"
                    onChange={props.handleOrderChange}
                    disabled={props.disableOrderField}
                >
                    <option value="asc">Ascendent</option>
                    <option value="desc">Descendent</option>
                </select>
            </InputGroup>
            <InputGroup>
                <Button
                    style={{ width: "50%", margin: "0 auto" }}
                    onClick={async () => props.searchFunction(props.searchQuery)}
                >
                    Search
                </Button>
            </InputGroup>
        </section>
    );
}
