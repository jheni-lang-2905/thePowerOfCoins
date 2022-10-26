import React from "react";

import { Typography } from "../Typography";

import * as Styles from "./styles";

export const Footer = (): JSX.Element => {
  return (
    <Styles.Footer>
      <Typography weight={300}>© Todos os direitos reservados</Typography>
    </Styles.Footer>
  );
};
