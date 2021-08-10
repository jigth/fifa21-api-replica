import "./page-style.css";
import { arrayToMatrix } from "../utils/arrays";
import { getURLData } from "../utils/urls";
import { getActiveItem } from "../utils/pages";
import { Container, Row, Col } from "react-bootstrap";
import { Team } from "../components/team";
import { FifaPagination } from "../components/shared/fifa-pagination";
import { SearchbarTeams } from "../components/searchbar-teams";
import { useEffect, useState } from "react";

export function TeamsPage(props) {
    const [items, setItems] = useState([]);
    const [activeItem, setActiveItem] = useState(getActiveItem());
    const [lastPage, setLastPage] = useState(1);
    const [searchQuery, setSearchQuery] = useState("");
    const elementsPerRow = props.elementsPerRow || 4; // Valid values: 1, 2, 3, 4, 6.
    const columnSize = parseInt(12 / elementsPerRow); // 12 because of bootstrap's grid system
    const dataPerRows = arrayToMatrix(items, elementsPerRow);

    function handleSearchChange(event) {
        setSearchQuery(event.target.value);
    }

    async function getAllTeams(page) {
        const urlFinalPart = page ? `?page=${page}` : "";
        const fullUrl = `${process.env.REACT_APP_BACKEND_API_URL}teams${urlFinalPart}`
        const data = await getURLData(fullUrl);
        return {
            Teams: data.Teams,
            totalPages: data.totalPages,
        };
    }

    async function searchTeamsByQuery(query, page) {
        const urlFinalPart = query + (page ? `&page=${page}` : "");
        const data = await getURLData(
            `${process.env.REACT_APP_BACKEND_API_URL}teams/by-name?name=${urlFinalPart}`
        );
        return {
            Teams: data.Teams,
            totalPages: data.totalPages,
        };
    }

    function updateTeams(Teams, totalPages) {
        setItems(Teams);
        setLastPage(totalPages);
    }

    async function getTeamsData(page, query) {
        const thePage = page || 1;
        let data = [];
        if (query) {
            data = await searchTeamsByQuery(query, thePage);
        } else {
            data = await getAllTeams(thePage);
        }
        return data;
    }

    async function searchAndUpdateTeams(query) {
        try {
            const page = activeItem;
            let data = await getTeamsData(page, query);
            const { Teams, totalPages } = data;
            updateTeams(Teams, totalPages);
        } catch (error) {
            console.error(error);
        }
    }

    // ActiveItem Updated
    useEffect(() => {
        (async () => {
            try {
                const data = await searchAndUpdateTeams(searchQuery);
                if (data !== undefined) {
                    updateTeams(data.Teams, data.totalPages);
                }
            } catch (error) {
                console.error("Error while requesting Teams", error);
            }
        })();
    }, [activeItem]);

    return (
        <div>
            <h1 className="text-center text-success">{props.pageTitle}</h1>

            <SearchbarTeams
                searchQuery={searchQuery}
                searchFunction={searchAndUpdateTeams}
                handleSearchChange={handleSearchChange}
            />

            <Container style={{ margin: "0 auto" }}>
                {dataPerRows.map((rowData, index) => {
                    return (
                        <Row key={index} className="my-3">
                            {rowData.map((item, index) => {
                                return (
                                    <Col md={columnSize} key={index}>
                                        <Team fullname={item.name} abbr_name={item.abbr_name} />
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
