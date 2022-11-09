import styled from "styled-components";


export const Container = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 3em;

  @media screen and (min-width: 768px) {
    display: flex;
    flex-direction: row;
  }
`;

export const Image = styled.img`
  width: 350px;
  height: 350px;
  z-index: 100;

  @media screen and (max-width: 767px) {
    width: 200px;
    height: 200px;
  }
`;