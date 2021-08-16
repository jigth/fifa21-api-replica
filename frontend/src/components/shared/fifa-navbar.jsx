import { Link } from "react-router-dom";
import { Navbar, Container, Nav } from "react-bootstrap";

export function FifaNavbar() {
    return (
            <Navbar className="mb-5" bg="dark" variant="dark">
                <Container>
                    <Navbar.Brand href="/">Jigth's Fifa 21 site</Navbar.Brand>
                    <Nav className="ml-auto">
                        <Link to="/" style={{textDecoration: 'none'}}><span className="nav-link">Home</span></Link>
                        <Link to="/players" style={{textDecoration: 'none'}}><span className="nav-link">Players</span></Link>
                        <Link to="/teams" style={{textDecoration: 'none'}}><span className="nav-link">Teams</span></Link>
                    </Nav>
                </Container>
            </Navbar>
    );
}
