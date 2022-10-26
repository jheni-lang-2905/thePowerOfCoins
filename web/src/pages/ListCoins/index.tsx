/* eslint-disable react-hooks/exhaustive-deps */
import React from "react";

import useCoins from "../../store/Coins/useCoins";

import { LoadingSkeleton, NavBar, ScrollInfinite } from "../../components";

import { NotFound, CoinColumn } from "./components";

const ListCoins = () => {
  const { fechCoins, loading, coins } = useCoins();

  const [page, setPage] = React.useState<number>(10);

  const loadMoreNumbers = (): void => {
    setPage(page + 10);
  };

  React.useEffect(() => {
    fechCoins();
  }, []);

  return (
    <>
      <NavBar goRote="home" />

      {loading ? (
        <LoadingSkeleton count={10} />
      ) : coins.length > 0 ? (
        <ScrollInfinite next={loadMoreNumbers} dataLength={100}>
          <CoinColumn coins={coins.slice(0, page)} />
        </ScrollInfinite>
      ) : (
        <NotFound />
      )}
    </>
  );
};

export default ListCoins;
