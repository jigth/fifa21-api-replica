import { Component } from "react";
import { Card, Modal, Button, Row, Col } from "react-bootstrap";
import playerImage from "../assets/img/player.png";

export class Player extends Component {
    constructor() {
        super();
        this.state = {
            show: false,
        };
    }

    handleClose = () => this.setState({ show: false });
    handleShow = () => this.setState({ show: true });

    render() {
        return (
            <div>
                <Card>
                    <Card.Img
                        className="p-3"
                        style={{ cursor: "pointer" }}
                        onClick={this.handleShow}
                        variant="top"
                        src={playerImage}
                        alt="image-300x300"
                    />
                    <Card.Body>
                        <p>
                            <strong
                                style={{ cursor: "pointer" }}
                                onClick={this.handleShow}
                            >
                                Name:
                            </strong>
                            {" " + this.props.fullname}
                        </p>
                        <p>
                            <strong
                                style={{ cursor: "pointer" }}
                                onClick={this.handleShow}
                            >
                                Position:
                            </strong>
                            {" " + this.props.position}
                        </p>
                        <p>
                            <strong
                                style={{ cursor: "pointer" }}
                                onClick={this.handleShow}
                            >
                                Nation:
                            </strong>
                            {" " + this.props.nation}
                        </p>
                    </Card.Body>
                </Card>

                <Modal show={this.state.show} onHide={this.handleClose}>
                    <Modal.Header closeButton style={{ background: '#BD4B4B'}}>
                        <Modal.Title style={{color: '#EEEEEE', background: ''}}>{this.props.fullname}'s info:</Modal.Title>
                    </Modal.Header>
                    <Modal.Body>
                        <Row>
                            <Col md={4}>
                                <img
                                    src={playerImage}
                                    alt="detailed player view-300x300"
                                    width="100%"
                                    style={{ maxHeight: "300px", maxWidth: "300px" }}
                                />
                            </Col>
                            <Col md={8}>
                                <p>
                                    <strong>Name: </strong> {this.props.fullname}
                                </p>
                                <p>
                                    <strong>Position:</strong> {this.props.position}
                                </p>
                                <p>
                                    <strong>Nation:</strong> {this.props.nation}
                                </p>
                            </Col>
                        </Row>
                    </Modal.Body>
                    <Modal.Footer>
                        <Button variant="warning" onClick={this.handleClose} style={{ margin: '0 auto', width: '100%' }}>
                            Close
                        </Button>
                    </Modal.Footer>
                </Modal>
            </div>
        );
    }
}
