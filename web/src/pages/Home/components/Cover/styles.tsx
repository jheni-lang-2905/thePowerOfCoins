import styled from "styled-components";
import { primary } from "../../../../styles/theme";

export const Body = styled.section`
  display: flex;
  flex-direction: column;
  gap: 2em;

  @media screen and (max-width: 768px) {
    margin-top: 0.2em;
  }
`;

export const Container = styled.section`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 6em;
  gap: 8em;

  @media screen and (min-width: 768px) {
    display: flex;
    flex-direction: row;
  }

  @media screen and (max-width: 768px) {
    gap: 4em;
    margin-top: 1em;
  }
`;

export const ContainerText = styled.div`
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  width: 18rem;
`;

export const ButtonHome = styled.button`
  margin-top: 2.5rem;
  background-color: ${primary.dark};
  padding: 0.8rem 1.3rem;
  border: none;
  border-radius: 0.5rem;

  &:hover {
    background-color: ${primary.light};
    cursor: pointer;
  }

  @media screen and (max-width: 767px) {
    align-items: center;
  }
`;

export const DownEmphasis = styled.div`
  display: flex;
  flex-direction: row;
  gap: 4rem;
  padding: 0 3em;

  @media screen and (max-width: 767px) {
    align-self: center;
  }
`;

export const RightEmphasis = styled.div`
  display: flex;
  flex-direction: column;
  gap: 2rem;
`;

export const ContainerImage = styled.div`
  display: flex;
  flex-direction: row;
  gap: 4rem;
  align-items: center;

  @media screen and (max-width: 767px) {
    gap: 2rem;
  }
`;

export const ContainerData = styled.div``;

export const Image = styled.img`
  width: 350px;
  height: 350px;
  z-index: 100;

  @media screen and (max-width: 767px) {
    width: 200px;
    height: 200px;
  }
`;

export const Info = styled.div`
  width: 100%;
  background-color: ${primary.default};
  padding: 0.5em 1em;
  box-shadow: 0 3px 10px rgb(0 0 0 / 0.2);
`;
