import React from "react";

import { Container, Input } from "./styles";

interface IProps {
  onChange: (event: string) => void;
}

export const Search = ({ onChange }: IProps): JSX.Element => {
  return (
    <Container>
      <i className="uil uil-search search_icon" />
      <Input
        name="search"
        type="text"
        placeholder="Buscar..."
        onChange={(e) => onChange(e.target.value)}
      />
    </Container>
  );
};
