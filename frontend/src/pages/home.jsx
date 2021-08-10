import { Alert } from "react-bootstrap";
import mainImage from "../assets/img/soccer-img.jpeg";

export function HomePage(props) {
    return (
        <main className="w-75 my-5" style={{ margin: "0 auto" }}>
            <h1 className="text-center">{props.pageTitle}</h1>
            <Alert variant="success" style={{ margin: "0 auto" }}>
                {props.intro}
            </Alert>
            <img
                width="100%"
                style={{ textAlign: "center"}}
                src={mainImage}
                alt="soccer-img.jpeg"
            />
        </main>
    );
}
