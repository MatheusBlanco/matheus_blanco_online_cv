export const defaultThemeVars = {
  screenSizes: {
    maxTabletWidth: '1024px',
    maxMobileWidth: '430px',
  },
  transition: 'all 0.50s linear',
};

export const lightTheme = {
  body: '#FFF',
  text: '#363537',
  toggleBorder: '#FFF',
  background: '#363537',
  colors: {
    gray: {
      default: '#fff',
      50: '#f9fafb',
      100: '#f3f4f6',
      200: '#e5e7eb',
      300: '#d1d5db',
      400: '#9ca3af',
      500: '#6b7280',
      600: '#4b5563',
      700: '#374151',
      800: '#1f2937',
      900: '#111827',
      950: '#030712',
    },
    emerald: '#10b981',
  },
  ...defaultThemeVars,
};

export const darkTheme = {
  body: '#363537',
  text: '#FAFAFA',
  toggleBorder: '#6B8096',
  background: '#999',
  colors: {
    gray: {
      default: '#030712',
      50: '#111827',
      100: '#1f2937',
      200: '#374151',
      300: '#4b5563',
      400: '#6b7280',
      500: '#9ca3af',
      600: '#d1d5db',
      700: '#e5e7eb',
      800: '#f3f4f6',
      900: '#f9fafb',
      950: '#fff',
    },
    emerald: '#10b981',
  },
  ...defaultThemeVars,
};
