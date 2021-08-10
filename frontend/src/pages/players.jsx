import "./page-style.css";
import { arrayToMatrix } from "../utils/arrays";
import { getURLData, postURLData } from "../utils/urls";
import { getActiveItem } from "../utils/pages";
import { Container, Row, Col } from "react-bootstrap";
import { Player } from "../components/player";
import { FifaPagination } from "../components/shared/fifa-pagination";
import { SearchbarPlayers } from "../components/searchbar-players";
import { useEffect, useState } from "react";

export function PlayersPage(props) {
    const [items, setItems] = useState([]);
    const [activeItem, setActiveItem] = useState(getActiveItem());
    const [lastPage, setLastPage] = useState(1);
    const [searchQuery, setSearchQuery] = useState("");
    const [byCriteria, setByCriteria] = useState("name");
    const [orderValue, setOrderValue] = useState("asc");
    const [disableOrderField, setDisableOrderField] = useState(false);
    const elementsPerRow = props.elementsPerRow || 4; // Valid values: 1, 2, 3, 4, 6.
    const columnSize = parseInt(12 / elementsPerRow); // 12 because of bootstrap's grid system
    const dataPerRows = arrayToMatrix(items, elementsPerRow);

    function handleSearchChange(event) {
        setSearchQuery(event.target.value);
    }

    function disableOrderFieldConditionally(byCriteria) {
        const willBeDisabled = byCriteria === "team" ? true : false;
        setDisableOrderField(willBeDisabled);
    }

    function handleByChange(event) {
        const value = event.target.value.toLowerCase();
        const byCriteria = value === "team" ? value : "name";
        setByCriteria(byCriteria);

        // Disable order when looking for players by team. Because it's not implemented
        disableOrderFieldConditionally(byCriteria)
    }

    function handleOrderChange(event) {
        const value = event.target.value.toLowerCase();
        const order = value === "desc" ? value : "asc";
        setOrderValue(order);
    }

    async function getAllPlayers(page, order) {
        const urlFinalPart = (page ? `?page=${page}` : "")
                            + (order ? `&order=${order}` : "&order=asc");

        const url = `${process.env.REACT_APP_BACKEND_API_URL}players${urlFinalPart}`;
        const data = await getURLData(url);
        return {
            Players: data.Players,
            totalPages: data.totalPages,
        };
    }

    async function searchPlayersByQuery(query, page, order) {
        const urlFinalPart = query 
            + (page ? `&page=${page}` : "")
            + (order ? `&order=${order}` : "&order=asc");

        const url = `${process.env.REACT_APP_BACKEND_API_URL}players?search=${urlFinalPart}`
        const data = await getURLData(url)

        return {
            Players: data.Players,
            totalPages: data.totalPages,
        };
    }

    async function searchPlayersByTeam(teamQuery, page) {
        const payload = {
            Name: teamQuery,
            Page: page,
        };

        const url = `${process.env.REACT_APP_BACKEND_API_URL}team/`;
        const data = await postURLData(url, payload);

        return {
            Players: data.Players,
            totalPages: data.totalPages,
        };
    }

    function updatePlayers(Players, totalPages) {
        setItems(Players);
        setLastPage(totalPages);
    }

    async function getPlayersData(page, query, order) {
        const thePage = page || 1;
        let data = [];
        if (byCriteria.toLowerCase() === 'team') {
            data = await searchPlayersByTeam(query, page)
        }
        else if (query) {
            data = await searchPlayersByQuery(query, thePage, order);
        } else {
            data = await getAllPlayers(thePage, order);
        }
        return data;
    }

    async function searchAndUpdatePlayers(query) {
        try {
            const page = activeItem;
            const order = orderValue;
            let data = await getPlayersData(page, query, order);
            const { Players, totalPages } = data;
            updatePlayers(Players, totalPages);
        } catch (error) {
            console.error(error);
        }
    }

    // ActiveItem Updated
    useEffect(() => {
        (async () => {
            try {
                const data = await searchAndUpdatePlayers(searchQuery);
                if (data !== undefined) {
                    updatePlayers(data.Players, data.totalPages);
                }
            } catch (error) {
                console.error("Error while requesting Players", error);
            }
        })();
    }, [activeItem]);

    return (
        <div>
            <h1 className="text-center text-primary">{props.pageTitle}</h1>
            <SearchbarPlayers
                searchQuery={searchQuery}
                handleSearchChange={handleSearchChange}
                searchFunction={searchAndUpdatePlayers}
                handleOrderChange={handleOrderChange}
                handleByChange={handleByChange}
                disableOrderField={disableOrderField}
            />
            <Container style={{ margin: "0 auto" }}>
                {dataPerRows.map((rowData, index) => {
                    return (
                        <Row key={index} className="my-3">
                            {rowData.map((item, index) => {
                                return (
                                    <Col md={columnSize} key={index} className="">
                                        <Player
                                            fullname={item.name}
                                            position={item.position}
                                            nation={item.nation}
                                        />
                                    </Col>
                                );
                            })}
                        </Row>
                    );
                })}
            </Container>

            <FifaPagination
                setActiveItem={setActiveItem}
                activeItem={activeItem}
                lastPage={lastPage}
            />
        </div>
    );
}
