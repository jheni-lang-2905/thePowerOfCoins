import styled from "styled-components";

interface Props {
  display?: string;
  flexDirection?: string;
  justify?: string;
}

export const StyledInfiniteScroll = styled.div<Props>`
  height: 100%;
  width: 100%;
  display: ${(p) => p.display};
  justify-content: ${(p) => p.justify};
  flex-direction: ${(p) => p.flexDirection};
  overflow: auto;
  z-index: 10000;
`;
