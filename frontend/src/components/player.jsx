import { Card } from 'react-bootstrap';

export function Player(props) {
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
                <Card.Text>
                    <p><strong>Name: </strong> {props.fullname}</p>
                    <p><strong>Position:</strong> {props.position}</p>
                    <p><strong>Nation:</strong> {props.nation}</p>
                </Card.Text>
            </Card.Body>
        </Card>
    );
}
