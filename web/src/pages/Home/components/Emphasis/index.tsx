import { Container } from "./styles";
import { Typography } from "../../../../components";
import { grey } from "../../../../styles/theme";

interface IProps {
  upText?: string;
  emphasis: string;
  downText: string;
}

export const Emphasis = (props: IProps): JSX.Element => {
  return (
    <Container {...props}>
      {props.upText && <Typography>{props.upText}</Typography>}

      <Typography size="bg" weight={600} color={grey.darkest}>
        {props.emphasis}
      </Typography>

      <Typography>{props.downText}</Typography>
    </Container>
  );
};
