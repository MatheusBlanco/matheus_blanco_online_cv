import { useRouter } from 'next/router';
import { parseCookies, setCookie } from 'nookies';

export const useThemeMode = () => {
  const { theme } = parseCookies();

  const router = useRouter();

  const themeToggler = () => {
    setCookie(null, 'theme', theme === 'light' ? 'dark' : 'light', {
      path: '/',
    });
    router.replace('/');
  };

  return { theme, themeToggler };
};
