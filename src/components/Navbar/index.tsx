import { useScrollOffset } from '@/hooks/useScrollOffset';
import { useThemeMode } from '@/hooks/useThemeMode';
import { useWindowSize } from '@/hooks/useWindowSize';
import { useState } from 'react';
import { FiMoon, FiSun } from 'react-icons/fi';
import { RxHamburgerMenu } from 'react-icons/rx';
import Drawer from '../Drawer';
import { Button } from '../Styles/Buttons';
import { Flex } from '../Styles/Flex';
import { Heading } from '../Styles/Heading';
import { IconButton } from '../Styles/Icons';
import { MenuLink } from '../Styles/Link';
import { NavBarContainer } from './styles';

export function Navbar() {
  const { theme, themeToggler } = useThemeMode();
  const [width] = useWindowSize();
  const { isUpper } = useScrollOffset();
  const [isOpened, setOpened] = useState(false);
  const toggleDrawer = () => {
    setOpened(prev => !prev);
  };

  const closeDrawer = () => {
    setOpened(false);
  };

  return (
    <NavBarContainer className={isUpper ? 'active' : ''}>
      <Flex justify="space-between" width="100%">
        {!isOpened ? (
          <>
            <Heading />
            {width >= 834 ? (
              <Flex gap="24px" align="center">
                <MenuLink href="#">About</MenuLink>
                <MenuLink href="#">Work</MenuLink>
                <MenuLink href="#">Testimonials</MenuLink>
                <MenuLink href="#">Contact</MenuLink>
                <Flex gap="16px" align="center">
                  <IconButton hiddenButton onClick={themeToggler}>
                    {theme && theme === 'dark' ? <FiSun /> : <FiMoon />}
                  </IconButton>
                  <Button>Download CV</Button>
                </Flex>
              </Flex>
            ) : (
              <>
                <IconButton hiddenButton onClick={toggleDrawer}>
                  <RxHamburgerMenu />
                </IconButton>
              </>
            )}
          </>
        ) : null}
      </Flex>
      <Drawer isOpened={isOpened} closeDrawer={closeDrawer} />
    </NavBarContainer>
  );
}
