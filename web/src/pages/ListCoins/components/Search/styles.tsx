import styled from "styled-components";
import { grey } from "../../../../styles/theme";

export const Container = styled.div`
  display: flex;
  flex-direction: row;
  gap: 0.5em;
  align-items: center;
  border: ${grey.lighter} 0.1rem solid;
  border-radius: 0.5em;
  padding: 0.4em 0.9em;
  width: 30%;

  @media screen and (max-width: 767px) {
    width: 90%;
  }
`;

export const Input = styled.input`
  color: #FFF;
  width: 100%;
  border: none;
  background-color: hsl(var(--hue-color), 28%, 12%);
`;
