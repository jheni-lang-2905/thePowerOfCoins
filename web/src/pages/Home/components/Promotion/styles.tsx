import styled from "styled-components";

export const Container = styled.section`
  display: block;
  box-shadow: -4px 4px 10px 1px rgb(0 0 0 / 8%);
  padding: 2em 0;
  width: 100%;
`;

export const Grid = styled.div`
  margin-top: 3em;
  display: flex;
  justify-content: space-around;
`;

export const Itens = styled.div`
  display: flex;
  flex-direction: column;
  gap: 1em;
`;

export const Icons = styled.div`
  display: flex;
  flex-direction: row;
  justify-content: center;
  max-height: 10em;
  gap: 1em;

  & > *:hover {
    cursor: pointer;
  }
`;
