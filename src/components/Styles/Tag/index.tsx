import styled from "styled-components";

export const Tag = styled.div`
  background: ${({ theme }) => theme.colors.gray["200"]};
  border: none;
  color: ${({ theme }) => theme.colors.gray["600"]};
  font-size: 14px;
  line-height: 20px;
  padding: 4px 20px;
  border-radius: 12px;
`;
