import { useMediaQuery } from "../hooks/screen_sizes";

type ComponentsBoxProps = {
  title: string;
  description: string;
  width: string;
  height: string;
  skew: string;
  image?: string;
  image2?: string;
  image3?: string;
  image4?: string;
  negativeSkew?: boolean;
  imageStyle?: React.CSSProperties;
  color: string;
  column?: boolean;
};

export const ParallelogramComponents: React.FC<ComponentsBoxProps> = ({
  title,
  description,
  width,
  height,
  skew,
  image,
  image2,
  image3,
  image4,
  column = false,
  negativeSkew,
  imageStyle,
  color,
}) => {
  const isMobile = useMediaQuery("sm");
  return (
    <div
      className={
        column
          ? "flex flex-col items-center justify-center"
          : "flex flex-row items-start p-6 overflow-clip "
      }
      style={{
        border: "2px solid var(--color-black)",
        boxShadow: "4px 4px var(--color-black)",
        padding: isMobile ? "2%" : "1rem",
        width: width,
        height: height,
        backgroundColor: color,
        transform: negativeSkew ? `skewX(${skew})` : `skewX(-${skew})`,
      }}
    >
      <div className="flex flex-col items-start w-full">
        <h1
          style={{
            fontSize: "2rem",
            fontWeight: "bold",
            color: "var(--color-black)",
            padding: "1rem",
            transform: negativeSkew ? `skewX(-${skew})` : `skewX(${skew})`,
          }}
        >
          {title}
        </h1>

        <p
          style={{
            fontSize: "1rem",
            fontWeight: "normal",
            color: "var(--color-black)",
            padding: "1.75rem",
            transform: negativeSkew ? `skewX(-${skew})` : `skewX(${skew})`,
          }}
        >
          {description}
        </p>
      </div>
      <div className="flex flex-row items-center w-100% gap-2 overflow-hidden ">
        <div className="flex flex-col items-center w-100% h-100% gap-2">
          <img src={image} style={imageStyle} />
          <img src={image2} style={imageStyle} />
        </div>
        <div className="flex flex-col items-center w-100% h-100% gap-2">
          <img src={image3} style={imageStyle} />
          <img src={image4} style={imageStyle} />
        </div>
      </div>
    </div>
  );
};
