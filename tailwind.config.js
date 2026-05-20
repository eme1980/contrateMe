/** @type {import("tailwindcss").Config} */
export default {
  content: ["./index.html"],
  theme: {
    extend: {
      spacing: { "unit": "8px", "xs": "8px", "sm": "16px", "md": "24px", "lg": "32px", "xl": "48px", "xxl": "64px" },
      fontFamily: { "sans": ["Inter", "sans-serif"] },
    },
  },
  plugins: [],
}
