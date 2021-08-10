import { Link } from "react-router-dom";
import { Navbar, Container, Nav } from "react-bootstrap";

export function FifaNavbar() {
    return (
            <Navbar className="mb-5" bg="dark" variant="dark">
                <Container>
                    <Navbar.Brand href="#home">Jigth's Fifa 21 site</Navbar.Brand>
                    <Nav className="ml-auto">
                        <Link to="/"><Nav.Link href="/">Home</Nav.Link></Link>
                        <Link to="/players"><Nav.Link href="/">Players</Nav.Link></Link>
                        <Link to="/teams"><Nav.Link href="/">Teams</Nav.Link></Link>
                    </Nav>
                </Container>
            </Navbar>
    );
}
