import styled from "styled-components";

export const Container = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin: 8rem 0;
  align-items: center;
  gap: 0.5em;
`;

export const Column = styled.div`
  display: flex;
  flex-direction: column;
  gap: 1rem;
  width: 60%;
  margin-top: 1.5rem;

  @media screen and (max-width: 767px) {
    width: 100%;
  }
`;

export const Row = styled.div`
  display: flex;
  justify-content: space-between;
  width: 100%;
`;
