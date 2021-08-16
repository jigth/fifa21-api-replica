import { Pagination } from "react-bootstrap";
import { getPaginationArray, isElipsis } from "../../utils/pages";

export function FifaPagination(props) {
    let active = parseInt(props.activeItem) || 1; // Active page number
    let lastPage = props.lastPage;
    let items = [];
    const pagesToShow = getPaginationArray(active, lastPage);
    for (let i=0; i < pagesToShow.length; i++) {
        let page = pagesToShow[i];
        let item = "";
        if (isElipsis(page)) {
          item = <Pagination.Ellipsis key={i+1} />;
        } else {
          item = (
            <Pagination.Item
              key={page}
              active={page === active}
              onClick={() => {
                props.setActiveItem(page);
              }}
            >{page}</Pagination.Item>
          );
        }
        items.push(item);
    }

    return (
        <div className="container" style={{ margin: "0 auto" }}>
            <Pagination>{items}</Pagination>
        </div>
    );
}
