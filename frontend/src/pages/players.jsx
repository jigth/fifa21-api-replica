import "./page-style.css";
import { arrayToMatrix } from "../utils/arrays";
import { getURLData } from "../utils/urls";
import { getActiveItem } from "../utils/pages";
import { Container, Row, Col } from "react-bootstrap";
import { Player } from "../components/player";
import { FifaPagination } from "../components/shared/fifa-pagination";
import { useEffect, useState } from "react";

export function PlayersPage(props) {
    const [items, setItems] = useState([]);
    const [activeItem, setActiveItem] = useState(getActiveItem());
    const [lastPage, setLastPage] = useState(1);
    const elementsPerRow = props.elementsPerRow || 4; // Valid values: 1, 2, 3, 4, 6.
    const columnSize = parseInt(12 / elementsPerRow); // 12 because of bootstrap's grid system
    const dataPerRows = arrayToMatrix(items, elementsPerRow);

    useEffect(() => {
        const urlToQuery = `${process.env.REACT_APP_BACKEND_API_URL}players?page=${activeItem}`;
        (async () => {
            try {
                const data = await getURLData(urlToQuery);
                const { Players, totalPages } = data;
                setItems(Players);
                setLastPage(totalPages);
            } catch (error) {
                console.error("Error while requesting Teams", error);
            }
        })();
    }, [activeItem]);

    return (
        <div>
            <h1 className="text-center text-primary">{props.pageTitle}</h1>

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
