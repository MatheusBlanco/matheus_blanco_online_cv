import styled from 'styled-components';
import { Flex } from '../Styles/Flex';

export const NavBarContainer = styled(Flex)`
  background: ${({ theme }) => theme.colors.gray['100']};
  width: 100vw;
  position: fixed;
  max-height: 68px;
  top: 0;
  left: 0;
  padding: 16px 80px;
  transition: ${({ theme }) => theme.transition};
  @media (max-width: ${({ theme }) => theme.screenSizes.maxMobileWidth}) {
    padding: 16px;
  }

  &.active {
    background-color: transparent;
  }
`;
