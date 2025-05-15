/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}", // only src, not app
  ],
  theme: {
    extend: {
      colors: {
        black: "var(--color-black)",
        offwhite: "var(--color-offwhite)",
        green: "var(--color-green)",
        lightRed: "var(--color-lightRed)",
      },
    },
  },
  plugins: [],
};
