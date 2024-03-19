import { createGlobalStyle } from 'styled-components';
export const GlobalStyles = createGlobalStyle`
  body {
    background: ${({ theme }) => theme.colors.gray.default};
    color: ${({ theme }) => theme.text};
    font-family: Inter, Tahoma, Helvetica, Arial, Roboto, sans-serif;
    transition: ${({ theme }) => theme.transition};
  }
  `;
