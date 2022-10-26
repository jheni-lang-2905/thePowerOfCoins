import { DefaultTheme } from 'styled-components'

export const grey = {
  darkest: '#1A1A1A',
  darker: '#404040',
  dark: '#666666',
  default: '#A6A6A6',
  light: '#CCCCCC',
  lighter: '#F2F2F2',
  lightest: '#F5F6F7',
}
export const primary = {
  darkest: '#3F3D56',
  dark: '#363280',
  default: '#5650CC',
  light: '#6C63FF',
  lighter: '#B4B0FF',
}

export const secondary = {
  dark: '#3F3D56',
  default: '#342E70',
  light: '#4B43A3',
  lighter: '#B0AAF0',
}

export const alerts = {
  success: {
    default: '#28C76F',
    dark: '#19924F',
  },
  warning: {
    default: '#FFBA43',
    dark: '#E99C17',
  },
  error: {
    default: '#EA5455',
    dark: '#C03637',
  },
}

export const borderRadius = {
  xxs: '4px',
  xs: '0px',
  sm: '8px',
  lg: '10px',
  md: '16px',
  pill: '24px',
  xl: '32px',
  circle: '50%',
  xxl: '100px',
}  

export const borderWidth = {
  xs: '0px',
  sm: '1px',
  md: '2px',
  lg: '4px',
  xl: '8px',
}

export const opacity = {
  xs: '8%',
  sm: '16%',
  md: '24%',
  lg: '64%',
  xl: '80%',
}

export const shadow = {
  none: '0px 0px 4px 2px rgba(0, 0, 0, 0.25)',
  lower: '0px 4px 4px rgba(0, 0, 0, 0.25)',
  upper: '0px -4px 4px rgba(0, 0, 0, 0.25)',
  right: '4px 0px 4px rgba(0, 0, 0, 0.25)',
  left: '-4px 0px 4px rgba(0, 0, 0, 0.25)',
}

export const iconSize = {
  xs: '16px',
  sm: '24px',
  md: '32px',
  lg: '48px',
  xl: '56px',
}

export const fontSize = {
  caption: '0.75rem',
  small: '0.875rem',
  default: '1rem',
  heading: '1.125rem',
  heading2: '1.25rem',
  heading4: '1.5rem',
  xl: '2.625rem',
}

export const squish = {
  xs: '8px 16px',
  sm: '12px 24px',
  md: '16px 24px',
  lg: '16px 32px',
  xl: '8px 24px',
}

export const inset = {
  xxs: '4px',
  xs: '8px',
  md: '16px',
  lg: '24px',
  xl: '32px',
  xxl: '40px',
}

export const palette = {
  grey,
  primary,
  secondary,
  borderRadius,
  borderWidth,
  opacity,
  shadow,
  iconSize,
  fontSize,
  squish,
  inset,
}

const theme: DefaultTheme = {
  palette,
}

export default theme