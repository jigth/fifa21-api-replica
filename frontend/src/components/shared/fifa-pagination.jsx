import { Pagination } from "react-bootstrap";

export function FifaPagination(props) {
    let active = parseInt(props.activeItem) || 1; // Active page number
    let lastPage = props.lastPage;
    let items = [];
    for (let number = 1; number <= lastPage; number++) {
        items.push(
                <Pagination.Item
                    key={number}
                    active={number === active}
                    onClick={() => {props.setActiveItem(number)}}
                >
                    {number}
                </Pagination.Item>
        );
    }

    return (
        <div className="w-25" style={{ margin: "0 auto" }}>
            <Pagination>{items}</Pagination>
        </div>
    );
}
