import { IconContext } from "react-icons";
import styled from "styled-components";

interface ProviderProps {
  className?: string;
  children: JSX.Element;
  onClick?: () => void;
}

export const InvisibleButton = styled.button`
  background: none;
  border: none;
  width: 100%;
  height: 100%;
`;

const Provider = ({ className, children, onClick }: ProviderProps) => (
  <InvisibleButton onClick={onClick}>
    <IconContext.Provider value={{ className }}>
      {children}
    </IconContext.Provider>
  </InvisibleButton>
);

export const IconButton = styled(Provider)<{ size?: "md" | "lg" }>`
  width: ${({ size }) => (size ? (size === "md" ? "36px" : "44px") : "36px")};
  height: ${({ size }) => (size ? (size === "md" ? "36px" : "44px") : "36px")};
  background: ${({ theme }) => theme.colors.gray["600"]};
  transition: all 0.2s;
  border-radius: 8px;
  padding: 6px;
  cursor: pointer;
  &:hover {
    background: ${({ theme }) => theme.colors.gray["100"]};
  }

  &:active {
    background: ${({ theme }) => theme.colors.gray["200"]};
  }
`;

export const Button = styled.button`
  background: ${({ theme }) => theme.colors.gray["900"]};
  border: none;
  color: ${({ theme }) => theme.colors.gray["50"]};
  font-size: 16px;
  line-height: 24px;
  padding: 6px 16px;
  border-radius: 12px;
  transition: all 0.2s;

  &:hover {
    background: ${({ theme }) => theme.colors.gray["700"]};
  }

  &:active {
    background: ${({ theme }) => theme.colors.gray["800"]};
  }
`;
