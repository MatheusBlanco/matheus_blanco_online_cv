import styled from 'styled-components';

export const Button = styled.button`
  background: ${({ theme }) => theme.colors.gray['900']};
  border: none;
  color: ${({ theme }) => theme.colors.gray['50']};
  font-size: 16px;
  line-height: 24px;
  padding: 6px 16px;
  border-radius: 12px;
  transition: ${({ theme }) => theme.transition};
  cursor: pointer;

  &:hover {
    background: ${({ theme }) => theme.colors.gray['700']};
  }

  &:active {
    background: ${({ theme }) => theme.colors.gray['800']};
  }
`;
