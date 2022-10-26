import React from "react";

import { Container, Image } from "./styles";

import NotFoundImage from '../../assets/notFound.svg';

export const NotFound = (): JSX.Element => {
  return (
    <Container>
     <Image src={NotFoundImage} alt="Imagem_Ilustrativa" />
    </Container>
  );
};
