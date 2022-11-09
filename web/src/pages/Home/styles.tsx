import styled from "styled-components";

export const Main = styled.section`
  display: flex;
  flex-direction: column;
  gap: 5em;

  @media screen and (max-width: 767px) {
    gap: 2.5em;
  }
`;

export const Loader = styled.section`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;

  & > * {
    margin: auto;
  }
`;
