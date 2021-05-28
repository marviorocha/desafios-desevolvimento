module.exports = {
  purge: [
    "./app/**/*.html.erb",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/javascript/**/*.vue",
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
 
    extend: { 

      colors: {
        blue: {
          light: '#85d7ff',
          default: '#1fb6ff',
          dark: '#005A8B',
        }
      },
  

    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
