import axios from "axios";

import useCoinStore from "./store";
import { toast } from "react-toastify";

import { getCoins } from "../../services/Coins";

const useCoins = () => {
  const { coins, loading, setLoading, setCoins } = useCoinStore();

  const fechCoins = async () => {
    setLoading(true);

    try {
      const response = await getCoins();

      if (axios.isAxiosError(response)) throw new Error();

      setCoins(response.data.data);
    } catch {
      toast("Error ao buscar criptomoedas", {
        position: "top-center",
        autoClose: 5000,
        hideProgressBar: false,
        closeOnClick: true,
        pauseOnHover: true,
        draggable: true,
        progress: 1,
      });
    }
    setLoading(false);
  };

  return {
    coins,
    loading,
    fechCoins,
  };
};

export default useCoins;
