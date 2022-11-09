import styled from "styled-components";

interface Props {
  isOpen: boolean;
}

export const Header = styled.header<Props>`
  top: 0;
  left: 0;
  z-index: 100;
  background-color: hsl(var(--hue-color), 29%, 16%);
  padding: 1em;
  position: ${(p) => (p.isOpen ? "fixed" : "relative")};
  width: 100%;
  z-index: 1000;

  @media screen and (max-width: 800px) {
    padding: 0.8em 0em;
  }
`;

export const Nav = styled.nav<Props>`
  padding: 0.2rem 2rem;
  display: flex;
  justify-content: space-between;
  align-items: center;

  height: ${(p) => (p.isOpen ? "3.4rem" : "0rem")};

  @media screen and (min-width: 800px) {
    height: 2rem;
    column-gap: 1em;
    padding: 0.8em 0em;
  }

  @media screen and (max-width: 720px) {
    padding: 0.8em 3em;
  }
`;

export const NavHeader = styled.div<Props>`
  display: flex;
  align-items: center;
  gap: 1em;

  bottom: ${(p) => (p.isOpen ? "0rem" : "-1000rem")};
`;

export const Logo = styled.img`
  max-width: 200px;
  max-height: 200px;

  & > *:hover {
    cursor: pointer;
  }

  @media screen and (max-width: 720px) {
    width: 40px;
    height: 25px;
  }
`;
