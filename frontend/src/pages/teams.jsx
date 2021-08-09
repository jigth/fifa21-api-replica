import "./page-style.css";
import { arrayToMatrix } from "../utils/arrays";
import { getURLData } from "../utils/urls";
import { getActiveItem } from "../utils/pages";
import { Container, Row, Col } from "react-bootstrap";
import { Team } from "../components/team";
import { FifaPagination } from "../components/shared/fifa-pagination";
import { useEffect, useState } from "react";

export function TeamsPage(props) {
    const [items, setItems] = useState([]);
    const [activeItem, setActiveItem] = useState(getActiveItem());
    const [lastPage, setLastPage] = useState(1);
    const elementsPerRow = props.elementsPerRow || 4; // Valid values: 1, 2, 3, 4, 6.
    const columnSize = parseInt(12 / elementsPerRow); // 12 because of bootstrap's grid system
    const dataPerRows = arrayToMatrix(items, elementsPerRow);

    useEffect(() => {
        const urlToQuery = `${process.env.REACT_APP_BACKEND_API_URL}teams?page=${activeItem}`;
        (async () => {
            try {
                const data = await getURLData(urlToQuery);
                const { Teams, totalPages } = data;
                setItems(Teams);
                setLastPage(totalPages);
            } catch (error) {
                console.error("Error while requesting Teams", error);
            }
        })();
    }, [activeItem]);

    return (
        <div>
            <h1 className="text-center text-success">{props.pageTitle}</h1>

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
