export type CoinStore = {
  coins: Coin[];
  loading: boolean;

  setLoading: (status: boolean) => void;
  setCoins: (coins: Coin[]) => void;
};

export type Coin = {
  id: string;
  rank: string;
  symbol: string;
  name: string;
  supply: string;
  maxSupply: string;
  marketCapUsd: string;
  volumeUsd24Hr: string;
  priceUsd: string;
  changePercent24Hr: string;
  vwap24Hr: string;
  explorer: string;
};
