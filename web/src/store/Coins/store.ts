import create from "zustand";
import { Coin, CoinStore } from "../../@types/store/Coins";

const useCoinStore = create<CoinStore>((set) => ({
  coins: [],
  loading: false,

  setLoading: (loading: boolean) => set((state) => ({ ...state, loading })),
  setCoins: (coins: Coin[]) => set((state) => ({ ...state, coins })),
}));

export default useCoinStore;
