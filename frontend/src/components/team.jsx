import { Card } from 'react-bootstrap';

export function Team(props) {
    return (
        <Card>
            <Card.Img
                className="p-3"
                style={{ margin: '0 auto' }}
                variant="top"
                src="https://via.placeholder.com/300"
                alt="image-300x300"
            />
            <Card.Body>
                <p><strong>Name: </strong> {props.fullname}</p>
                <p><strong>Abbr Name: </strong> {props.abbr_name}</p>
            </Card.Body>
        </Card>
    );
}
