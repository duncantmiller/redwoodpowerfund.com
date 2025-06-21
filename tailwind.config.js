/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/**/*.{html,md,liquid,erb,serb,rb}',
    './frontend/javascript/**/*.js',
  ],
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        zinc: {
          50: '#fafafa',
          100: '#f4f4f5',
          200: '#e4e4e7',
          300: '#d4d4d8',
          400: '#a1a1aa',
          500: '#71717a',
          600: '#52525b',
          700: '#3f3f46',
          800: '#27272a',
          900: '#18181b',
          950: '#09090b',
        },
        teal: {
          50: '#f0fdfa',
          100: '#ccfbf1',
          200: '#99f6e4',
          300: '#5eead4',
          400: '#2dd4bf',
          500: '#14b8a6',
          600: '#0d9488',
          700: '#0f766e',
          800: '#115e59',
          900: '#134e4a',
          950: '#042f2e',
        },
      },
      fontFamily: {
        sans: [
          'ui-sans-serif',
          'system-ui',
          'sans-serif',
          '"Apple Color Emoji"',
          '"Segoe UI Emoji"',
          '"Segoe UI Symbol"',
          '"Noto Color Emoji"',
        ],
      },
      aspectRatio: {
        '9/10': '9 / 10',
      },
      backdropBlur: {
        'xs': '2px',
      },
      typography: {
        DEFAULT: {
          css: {
            '--tw-prose-body': 'rgb(63 63 70)',
            '--tw-prose-headings': 'rgb(24 24 27)',
            '--tw-prose-lead': 'rgb(82 82 91)',
            '--tw-prose-links': 'rgb(20 184 166)',
            '--tw-prose-bold': 'rgb(24 24 27)',
            '--tw-prose-counters': 'rgb(113 113 122)',
            '--tw-prose-bullets': 'rgb(212 212 216)',
            '--tw-prose-hr': 'rgb(228 228 231)',
            '--tw-prose-quotes': 'rgb(24 24 27)',
            '--tw-prose-quote-borders': 'rgb(228 228 231)',
            '--tw-prose-captions': 'rgb(113 113 122)',
            '--tw-prose-code': 'rgb(24 24 27)',
            '--tw-prose-pre-code': 'rgb(228 228 231)',
            '--tw-prose-pre-bg': 'rgb(39 39 42)',
            '--tw-prose-th-borders': 'rgb(212 212 216)',
            '--tw-prose-td-borders': 'rgb(228 228 231)',
            '--tw-prose-invert-body': 'rgb(212 212 216)',
            '--tw-prose-invert-headings': 'rgb(255 255 255)',
            '--tw-prose-invert-lead': 'rgb(161 161 170)',
            '--tw-prose-invert-links': 'rgb(45 212 191)',
            '--tw-prose-invert-bold': 'rgb(255 255 255)',
            '--tw-prose-invert-counters': 'rgb(161 161 170)',
            '--tw-prose-invert-bullets': 'rgb(82 82 91)',
            '--tw-prose-invert-hr': 'rgb(63 63 70)',
            '--tw-prose-invert-quotes': 'rgb(244 244 245)',
            '--tw-prose-invert-quote-borders': 'rgb(63 63 70)',
            '--tw-prose-invert-captions': 'rgb(161 161 170)',
            '--tw-prose-invert-code': 'rgb(255 255 255)',
            '--tw-prose-invert-pre-code': 'rgb(212 212 216)',
            '--tw-prose-invert-pre-bg': 'rgb(0 0 0 / 50%)',
            '--tw-prose-invert-th-borders': 'rgb(82 82 91)',
            '--tw-prose-invert-td-borders': 'rgb(63 63 70)',
            img: {
              borderRadius: '1rem',
              aspectRatio: '16/9',
              width: '100%',
              backgroundColor: '#f3f4f6',
            },
          },
        },
      },
      animation: {
        'fade-in': 'fadeIn 0.3s ease-in-out forwards',
        'slide-down': 'slideDown 0.3s ease-out forwards',
      },
      keyframes: {
        fadeIn: {
          '0%': { opacity: '0' },
          '100%': { opacity: '1' },
        },
        slideDown: {
          '0%': { transform: 'translateY(-10px)', opacity: '0' },
          '100%': { transform: 'translateY(0)', opacity: '1' },
        },
      },
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
  ],
}

