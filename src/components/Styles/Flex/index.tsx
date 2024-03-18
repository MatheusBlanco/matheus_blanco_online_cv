import styled from 'styled-components';

interface Props extends React.HTMLAttributes<HTMLDivElement> {
  justify?: string;
  align?: string;
  alignSelf?: string;
  direction?: string;
  gap?: string | number;
  width?: string | number;
  height?: string | number;
}

export const Flex = styled.div<Props>`
  display: flex;
  flex-direction: ${({ direction }) => direction || 'row'};
  align-items: ${({ align }) => align || 'start'};
  justify-content: ${({ justify }) => justify || 'flex-start'};
  gap: ${({ gap }) => gap || 'inherit'};
  width: ${({ width }) => width || 'max-content'};
  height: ${({ height }) => height || '100%'};
  align-self: ${({ alignSelf }) => alignSelf || 'start'};
`;
