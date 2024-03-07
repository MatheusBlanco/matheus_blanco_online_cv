import NextLink from "next/link";
import styled from "styled-components";

export const MenuLink = styled(NextLink)`
  font-size: 16px;
  line-height: 24px;
  color: ${({ theme }) => theme.colors.gray["600"]};
  transition: ${({ theme }) => theme.transition};

  &:hover {
    color: ${({ theme }) => theme.colors.gray["900"]};
  }

  &:active {
    color: ${({ theme }) => theme.colors.gray["600"]};
  }
`;

export const Link = styled(NextLink)`
  font-size: 16px;
  line-height: 24px;
  color: ${({ theme }) => theme.colors.gray["600"]};
  transition: ${({ theme }) => theme.transition};
  text-decoration: underline;

  &:hover {
    color: ${({ theme }) => theme.colors.gray["900"]};
  }

  &:active {
    color: ${({ theme }) => theme.colors.gray["600"]};
  }
`;
