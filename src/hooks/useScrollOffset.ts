import { useEffect, useState } from 'react';

export const useScrollOffset = () => {
  const [offset, setOffset] = useState(0);
  const [isUpper, setIsUpper] = useState(true);

  const handleScroll = () => setOffset(window.pageYOffset);

  useEffect(() => {
    window.addEventListener('scroll', handleScroll);
    return () => {
      window.removeEventListener('scroll', handleScroll);
    };
  }, []);

  useEffect(() => {
    if (offset > 100) {
      setIsUpper(false);
    } else {
      setIsUpper(true);
    }
  }, [offset]);

  return { offset, isUpper };
};
