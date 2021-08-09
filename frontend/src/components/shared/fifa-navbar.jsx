import { Link } from "react-router-dom";
export function FifaNavbar() {
    return (
        <nav
            className="text-center w-75 my-3 p-1"
            role="navigation"
            style={{ margin: "0 auto", background: "#ffb3ba" }}
        >
            <ul style={{ listStyle: "none" }}>
                <li>
                    <Link to="/">Home</Link>
                </li>
                <li>
                    <Link to="/players">Players</Link>
                </li>
                <li>
                    <Link to="/teams">Teams</Link>
                </li>
            </ul>
        </nav>
    );
}
