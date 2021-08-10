import axios from "axios";
export async function getURLData(url) {
    try {
        const request = await axios.get(url);
        return request.data;
    } catch (error) {
        console.error(error);
    }
}

export async function postURLData(url, payload) {
    try {
        const request = await axios.post(url, payload);
        return request.data;
    } catch (error) {
        console.error(error);
    }
}
