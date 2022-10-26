import React from "react";

import { Coin } from "../../../../@types/store/Coins";

import Chart from "react-apexcharts";

type IProps = {
  coin: Coin;
};

const formatter = (val: string): number => {
  if (val === null) return 0;

  const value = parseInt(val)
    .toFixed(2)
    .replace(/\d(?=(\d{3})+\.)/g, "$&,");

  return parseInt(value);
};

export const LineChart = ({ coin }: IProps): JSX.Element => {
  const state = {
    series: [
      {
        name: "$",
        data: [
          {
            x: "Oferta",
            y: formatter(coin.supply),
          },
          {
            x: "Oferta máximo",
            y: formatter(coin.maxSupply),
          },
          {
            x: "Capitalização Bolsista",
            y: formatter(coin.marketCapUsd),
          },
          {
            x: "Variação 24Hr",
            y: formatter(coin.volumeUsd24Hr),
          },
          {
            x: "Variação Percentual 24H",
            y: formatter(coin.changePercent24Hr),
          },
        ],
      },
    ],
    options: {
      colors: "#000",
      chart: {
        height: 350,
        type: "bar",
        zoom: {
          enabled: false,
        },
      },

      options: {
        chart: {
          type: "bar",
          height: 380,
        },
        xaxis: {
          type: "category",
          group: {
            style: {
              fontSize: "12px",
              fontWeight: 700,
              fontColor: "#000",
            },
          },
        },
      },
    },
  };

  return (
    <Chart
      options={{ ...state }}
      series={state.series}
      height="240"
      type="bar"
    />
  );
};
