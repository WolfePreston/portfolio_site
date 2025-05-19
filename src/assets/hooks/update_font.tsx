// utils/setFont.ts
export function setGlobalFont(updatedFont: string) {
  document.documentElement.style.setProperty("--font-family", updatedFont);
}
