import React from "react";

import { Typography } from "../Typography";

import * as Styles from "./styles";

import { useNavigate } from "react-router-dom";
import Image from "../../assets/logo.png";

interface IProps {
  goRote?: string;
}

export const NavBar = ({ goRote }: IProps): JSX.Element => {
  const navigate = useNavigate();

  const [nav] = React.useState(true);

  return (
    <Styles.Header isOpen={goRote ? true : false}>
      <Styles.Nav isOpen={nav}>
        <Styles.NavHeader isOpen={nav}>
          {goRote && (
            <i
              className="uil uil-angle-left nav_icon"
              onClick={() => navigate(`/${goRote}`)}
            />
          )}

          <Styles.Logo src={Image} />

          <Typography color="#FFF" size="xl" weight={600}>
            the power of coins
          </Typography>
        </Styles.NavHeader>
      </Styles.Nav>
    </Styles.Header>
  );
};
