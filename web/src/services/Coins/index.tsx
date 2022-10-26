import axios from "axios";

const API_URL = "https://api.coincap.io/v2";

export const getCoins = async () => {
  try {
    const response = await axios.get(`${API_URL}/assets`);

    return response;
  } catch (e: any) {
    return e;
  }
};
