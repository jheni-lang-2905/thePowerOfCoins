import React from "react";

import Skeleton, { SkeletonTheme } from "react-loading-skeleton";

import "react-loading-skeleton/dist/skeleton.css";

import { borderRadius } from "../../styles/theme";

import { StyledSkeleton } from "./styles";

interface IProps {
  count: number; // number of lines
  borderRadius?: string; //border-radius to 50%.
  baseColor?: string;
  highlightColor?: string;
  height?: string;
  width?: string;
  margin?: string;
}

export const LoadingSkeleton = (props: IProps): JSX.Element => {
  return (
    <StyledSkeleton>
      <SkeletonTheme
        baseColor={props.baseColor ? props.baseColor : 'hsl(var(--hue-color), 28%, 12%)'}
        highlightColor={
          props.highlightColor ? props.highlightColor : 'hsl(var(--hue-color), 29%, 16%)'
        }
        borderRadius={props.borderRadius ? props.borderRadius : borderRadius.lg}
        width={props.width ? props.width : "328px"}
        height={props.height ? props.height : "168px"}
      >
        <Skeleton
          count={props.count}
          style={{ margin: `${props.margin ? props.margin : "0 0 1.5rem 0"}` }}
        />
      </SkeletonTheme>
    </StyledSkeleton>
  );
};
