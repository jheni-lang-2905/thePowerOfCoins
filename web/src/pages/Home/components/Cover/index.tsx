import { useNavigate } from "react-router-dom";

import { Typography } from "../../../../components";

import {
  Body,
  ButtonHome,
  Container,
  ContainerData,
  ContainerImage,
  ContainerText,
  Image,
  Info,
} from "./styles";

import AllSpace from "../../../../assets/space.svg";

export const Cover = (): JSX.Element => {
  const navigate = useNavigate();

  return (
    <Body>
      <Info>
        <Typography color="#FFF" size="bg" weight={900} textAlign="center">
          Lançamento 12/11/2022
        </Typography>
      </Info>

      <Container>
        <ContainerData>
          <ContainerText>
            <Typography
              color="#FFF"
              size="xxl"
              weight={900}
              textAlign="flex-start"
            >
              Descubra
            </Typography>
            <Typography
              color="#FFF"
              size="xxl"
              weight={900}
              textAlign="flex-start"
              line="2.5rem"
            >
              Milhares de criptomoedas
            </Typography>
            <Typography
             color="#FFF"
              size="sm"
              weight={300}
              textAlign="flex-start"
            >
              Explore o grande mundo das criptomoedas em nosso marketplace
            </Typography>
          </ContainerText>

          <ButtonHome onClick={() => navigate(`/list-coins`)}>
            <Typography color="#FFF" size="bg" weight={500} textAlign="center">
              Explorar
            </Typography>
          </ButtonHome>
        </ContainerData>

        <ContainerImage>
          <Image src={AllSpace} alt="Imagem_Ilustrativa" />

          {/* <RightEmphasis>
            <Emphasis emphasis="26K+" downText="Transações" />

            <Emphasis emphasis="18K" downText="Atualizações" />

            <Emphasis emphasis="8K" downText="Validações" />
          </RightEmphasis> */}
        </ContainerImage>
      </Container>
      {/* <DownEmphasis>
        <Emphasis upText="Criptomoedas" emphasis="10K" downText="$871.046.86" />

        <Emphasis
          upText="Movientações"
          emphasis="2.00 ETH"
          downText="$8046.86"
        />
      </DownEmphasis> */}
    </Body>
  );
};
