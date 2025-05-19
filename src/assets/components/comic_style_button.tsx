import { setGlobalFont } from "../hooks/update_font";
import background from "../images/background.png";

export const ComicStyleButton = () => {
  return (
    <button
      style={{
        backgroundImage: `url(${background})`,
        color: "var(--color-black)",
        fontSize: "2rem",
        fontFamily: "WHOAA",
        border: "2px solid var(--color-black)",
        boxShadow:
          "4px 4px var(--color-black), inset 3px 3px 0 rgba(255, 255, 255, 0.2)",
        borderRadius: "0",
        transform: "skewX(4deg)",
        cursor: "pointer",
        rotate: "4deg",
      }}
      className="px-4 py-2 font-bold"
      onClick={() => setGlobalFont("WHOAA")}
    >
      <div>Comic Style</div>
    </button>
  );
};
