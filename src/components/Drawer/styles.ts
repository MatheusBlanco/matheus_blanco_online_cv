import styled from 'styled-components';

export const DrawerContainer = styled.aside<{ isOpened: boolean }>`
  position: absolute;
  top: 0;
  right: 0;
  background: ${({ theme }) => theme.colors.gray.default};
  height: ${({ isOpened }) => (isOpened ? '100vh' : '0vh')};
  width: ${({ isOpened }) => (isOpened ? '80vw' : '0vw')};
  transition: width 0.5s;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  z-index: 1000;
  filter: drop-shadow(0px 0px 25px ${({ theme }) => theme.colors.gray['400']});
`;

export const DrawerOverlay = styled.div<{ isOpened: boolean }>`
  position: absolute;
  overflow: hidden;
  top: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.5);
  z-index: 999;
  height: ${({ isOpened }) => (isOpened ? '100vh' : '0vh')};
  width: ${({ isOpened }) => (isOpened ? '100vw' : '0vw')};
`;
