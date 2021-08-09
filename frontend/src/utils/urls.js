import axios from "axios";
export async function getURLData(url) {
    try {
        const request = await axios.get(url);
        return request.data;
    } catch (error) {
        console.log(error);
    }
}
