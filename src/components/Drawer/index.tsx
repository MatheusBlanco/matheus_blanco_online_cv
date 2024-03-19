import { useThemeMode } from '@/hooks/useThemeMode';
import { RefObject, useEffect, useRef } from 'react';
import { FiMoon, FiSun } from 'react-icons/fi';
import { Button } from '../Styles/Buttons';
import { Flex } from '../Styles/Flex';
import { Heading } from '../Styles/Heading';
import { IconButton } from '../Styles/Icons';
import { MenuLink } from '../Styles/Link';
import { DrawerContainer, DrawerOverlay } from './styles';

type DrawerProps = {
  isOpened: boolean;
  closeDrawer: () => void;
};

function useOutsideClick(ref: RefObject<any>, callback: () => void) {
  useEffect(() => {
    function handleClickOutside(event: Event) {
      if (ref.current && !ref.current.contains(event.target)) {
        callback();
      }
    }
    document.addEventListener('mousedown', handleClickOutside);
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, [ref]);
}

export default function Drawer({ isOpened, closeDrawer }: DrawerProps) {
  const wrapperRef = useRef(null);
  useOutsideClick(wrapperRef, closeDrawer);

  const { theme, themeToggler } = useThemeMode();

  return (
    <DrawerOverlay isOpened={isOpened}>
      <DrawerContainer ref={wrapperRef} isOpened={isOpened}>
        <Flex direction="column" padding="16px">
          <Heading />
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
      </DrawerContainer>
    </DrawerOverlay>
  );
}
