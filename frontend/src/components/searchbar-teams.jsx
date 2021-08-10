import { InputGroup, FormControl, Button } from "react-bootstrap";
//import { Component } from "react";

//export class SearchbarTeams extends Component {
export function SearchbarTeams(props) {

return (
        <InputGroup className="w-50 my-4 mb-5" style={{ margin: "0 auto" }}>
            <InputGroup.Text id="items-searchbar">Search Teams</InputGroup.Text>
            <FormControl
                placeholder="Example: 'Real Madrid' or 'Rea'"
                onChange={props.handleSearchChange}
                aria-label="searchbarTeams"
                aria-describedby="items-searchbar"
            />
            <Button
                onClick={async () =>
                        props.searchFunction(props.searchQuery)
                }
            >
                Search
            </Button>
        </InputGroup>
    );
}
