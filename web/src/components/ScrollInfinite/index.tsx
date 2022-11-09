import React from "react";

import { StyledInfiniteScroll } from "./styles";

import InfiniteScroll from "react-infinite-scroll-component";

interface IProps {
  children: React.ReactNode;
  dataLength: number;
  next: () => void;
}

export const ScrollInfinite = (props: IProps): JSX.Element => {
  return (
    <StyledInfiniteScroll {...props}>
      <InfiniteScroll
        dataLength={100}
        next={() => props.next()}
        inverse={false}
        hasMore={true}
        loader={<></>}
        scrollableTarget="scrollableDiv"
      >
        {props.children}
      </InfiniteScroll>
    </StyledInfiniteScroll>
  );
};
