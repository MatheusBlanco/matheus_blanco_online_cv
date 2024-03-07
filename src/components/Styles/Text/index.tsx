import styled from "styled-components";

export const Heading1 = styled.h1`
  font-size: 60px;
  line-height: 72px;
  font-weight: 700;

  @media (max-width: ${({ theme }) => theme.screenSizes.maxTabletWidth}) {
    font-size: 48px;
    line-height: 48px;
  }

  @media (max-width: ${({ theme }) => theme.screenSizes.maxMobileWidth}) {
    font-size: 36px;
    line-height: 40px;
    font-weight: 600;
  }
`;

export const Heading2 = styled.h2`
  font-size: 36px;
  line-height: 40px;
  font-weight: 600;

  @media (max-width: ${({ theme }) => theme.screenSizes.maxTabletWidth}) {
    font-size: 18px;
    line-height: 28px;
  }
`;

export const Heading3 = styled.h3<{ weight?: "600" | "700" }>`
  font-size: 30px;
  line-height: 36px;
  font-weight: ${({ weight }) => weight || "600"};

  @media (max-width: ${({ theme }) => theme.screenSizes.maxTabletWidth}) {
    font-size: 24px;
    line-height: 32px;
  }
`;

export const Subtitle = styled.span<{ weight?: "600" | "400" }>`
  font-size: 20px;
  line-height: 28px;
  font-weight: ${({ weight }) => weight || "400"};

  @media (max-width: ${({ theme }) => theme.screenSizes.maxTabletWidth}) {
    font-size: 18px;
    line-height: 28px;
  }
`;

export const Body1 = styled.span`
  font-size: 18px;
  line-height: 28px;

  @media (max-width: ${({ theme }) => theme.screenSizes.maxTabletWidth}) {
    font-size: 16px;
    line-height: 24px;
  }
`;

export const Body2 = styled.span<{
  weight?: "600" | "500" | "400";
  underline?: boolean;
}>`
  font-size: 16px;
  line-height: 24px;
  font-weight: ${({ weight }) => weight || "400"};
  text-decoration: ${({ underline }) => (underline ? "underline" : "none")};
`;

export const Body3 = styled.span<{ weight?: "500" | "400" }>`
  font-size: 14px;
  line-height: 20px;
  font-weight: ${({ weight }) => weight || "400"};
`;
