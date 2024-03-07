import { useWindowSize } from "@/hooks/useWindowSize";
import { useRouter } from "next/router";
import { parseCookies, setCookie } from "nookies";
import { FiMoon, FiSun } from "react-icons/fi";
import { RxHamburgerMenu } from "react-icons/rx";
import styled from "styled-components";
import { Button } from "../Styles/Buttons";
import { Flex } from "../Styles/Flex";
import { IconButton } from "../Styles/Icons";
import { MenuLink } from "../Styles/Link";
import { Heading3 } from "../Styles/Text";

export const Navbar = () => {
  const { theme } = parseCookies();
  const router = useRouter();
  const [width] = useWindowSize();
  console.log(width);

  const themeToggler = () => {
    setCookie(null, "theme", theme === "light" ? "dark" : "light", {
      path: "/",
    });
    router.replace("/");
  };

  return (
    <NavBarContainer>
      <Flex justify="space-between" width="100%">
        <Heading3>&#60;SS &#47;&gt;</Heading3>{" "}
        {width >= 834 ? (
          <Flex gap="24px" align="center">
            <MenuLink href="#">About</MenuLink>
            <MenuLink href="#">Work</MenuLink>
            <MenuLink href="#">Testimonials</MenuLink>
            <MenuLink href="#">Contact</MenuLink>
            <Flex gap="16px" align="center">
              <IconButton hiddenButton onClick={themeToggler}>
                {theme && theme === "dark" ? <FiSun /> : <FiMoon />}
              </IconButton>
              <Button>Download CV</Button>
            </Flex>
          </Flex>
        ) : (
          <IconButton hiddenButton>
            <RxHamburgerMenu />
          </IconButton>
        )}
      </Flex>
    </NavBarContainer>
  );
};

const NavBarContainer = styled(Flex)`
  background: ${({ theme }) => theme.colors.gray.default};
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
`;
