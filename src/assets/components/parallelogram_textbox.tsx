type TextBoxProps = {
  title: string;
  description: string;
  description2?: string;
  width: string;
  height: string;
  skew: string;
  image?: string;
  negativeSkew?: boolean;
  imageStyle?: React.CSSProperties;
  color: string;
  className: string;
};

export const ParallelogramTextbox: React.FC<TextBoxProps> = ({
  title,
  description,
  description2,
  width,
  height,
  skew,
  image,
  negativeSkew,
  imageStyle,
  color,
  className,
}) => {
  return (
    <div
      className={className}
      style={{
        border: "2px solid var(--color-black)",
        boxShadow: "4px 4px var(--color-black)",
        width: width,
        height: height,
        backgroundColor: color,
        transform: negativeSkew ? `skewX(${skew})` : `skewX(-${skew})`,
      }}
    >
      <h1
        style={{
          fontSize: "2rem",
          fontWeight: "bold",
          color: "var(--color-black)",
          padding: "2rem",
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
          padding: "2rem",
          paddingTop: "0",
          transform: negativeSkew ? `skewX(-${skew})` : `skewX(${skew})`,
        }}
      >
        {description}
      </p>
      <p
        style={{
          fontSize: "1rem",
          fontWeight: "normal",
          color: "var(--color-black)",
          padding: "2rem",
          paddingTop: "0",
          transform: negativeSkew ? `skewX(-${skew})` : `skewX(${skew})`,
        }}
      >
        {description2}
      </p>
      <img src={image} style={imageStyle} />
    </div>
  );
};
