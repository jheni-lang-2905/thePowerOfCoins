import React from "react";
import { useNavigate } from "react-router-dom";

import { Card, Column, Container, Row, TitleContainer } from "./styles";
import { Search } from "../Search";

import { alerts } from "../../../../styles/theme";

import { Coin } from "../../../../@types/store/Coins";
import { Typography } from "../../../../components";

interface IProps {
  coins: Coin[];
}

export const CoinColumn = ({ coins }: IProps) => {
  const navigate = useNavigate();

  const [search, setSearch] = React.useState("");
  
  const filteredCoins =
    search.length > 0
      ? coins.filter(
          (coin) =>
            coin.name.toUpperCase().includes(search.toUpperCase()) ||
            coin.symbol.toUpperCase().includes(search.toUpperCase())
        )
      : [];

  let useCoins = filteredCoins.length > 0 ? filteredCoins : coins;

  const goDetails = (id: string):void => {
    navigate(`/details-coins/&${id}`)
  }

  return (
    <Container>
      <TitleContainer>
        <Typography weight={600} size="xl">
          Criptomoedas
        </Typography>
        <Typography weight={300} size="md">
          Acompanhe o mercado
        </Typography>
      </TitleContainer>

      <Search onChange={setSearch} />

      <Column>
        {useCoins.map((coin: Coin) => {
          let price: string = parseInt(coin.priceUsd)
            .toFixed(2)
            .replace(/\d(?=(\d{3})+\.)/g, "$&,");

          return (
            <Card key={coin.id} onClick={() => goDetails(coin.rank)}>
              <Row>
                <Typography weight={600} size="bg">
                  {coin.name}
                </Typography>

                <Typography weight={800} size="bg">
                  #{coin.rank}
                </Typography>
              </Row>

              <Row>
                <Typography weight={300} size="md">
                  {coin.symbol}
                </Typography>
                <Typography
                  color={
                    parseInt(price) > 0
                      ? alerts.success.default
                      : alerts.error.default
                  }
                  weight={500}
                  size="md"
                >
                  $ {price}
                </Typography>
              </Row>
            </Card>
          );
        })}
      </Column>
    </Container>
  );
};
