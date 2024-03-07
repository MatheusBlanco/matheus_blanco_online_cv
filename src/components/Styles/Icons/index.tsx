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

const IconButtonProvider = ({
  className,
  children,
  onClick,
}: ProviderProps) => (
  <InvisibleButton onClick={onClick}>
    <IconContext.Provider value={{ className }}>
      {children}
    </IconContext.Provider>
  </InvisibleButton>
);

export const IconButton = styled(IconButtonProvider)<{ size?: "md" | "lg" }>`
  width: ${({ size }) => (size ? (size === "md" ? "36px" : "44px") : "36px")};
  height: ${({ size }) => (size ? (size === "md" ? "36px" : "44px") : "36px")};
  background: ${({ theme }) => theme.colors.gray["100"]};
  transition: all 0.2s;
  border-radius: 8px;
  padding: 6px;
  cursor: pointer;
  color: ${({ theme }) => theme.colors.gray["600"]};

  &:hover {
    background: ${({ theme }) => theme.colors.gray["300"]};
  }

  &:active {
    background: ${({ theme }) => theme.colors.gray["200"]};
  }
`;

const IconProvider = ({ className, children }: ProviderProps) => (
  <IconContext.Provider value={{ className }}>{children}</IconContext.Provider>
);

export const Icon = styled(IconProvider)<{ size?: "md" | "lg" }>`
  width: ${({ size }) => (size ? (size === "md" ? "24px" : "32px") : "24px")};
  height: ${({ size }) => (size ? (size === "md" ? "24px" : "32px") : "24px")};
  color: ${({ theme }) => theme.colors.gray["600"]};
`;
