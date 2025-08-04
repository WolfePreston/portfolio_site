import React, { useState } from "react";
import { ProjectSetup } from "./project_setup";
import type { ProjectTypeProps } from "./project_type";
import { Link } from "react-router-dom";
import { useMediaQuery } from "../../../assets/hooks/screen_sizes";

export const ProjectContainer: React.FC<ProjectTypeProps> = ({
  title,
  description,
  image,
  to,
}) => {
  const [isHovered, setIsHovered] = useState(false);
  const isMobile = useMediaQuery("sm");

  return (
    <Link to={to}>
      <div
        style={
          isMobile
            ? { maxWidth: "20rem", maxHeight: "20rem" }
            : { maxWidth: "24rem", maxHeight: "24rem" }
        }
        className="relative flex flex-col items-center justify-center m-6"
        onMouseEnter={() => setIsHovered(true)}
        onMouseLeave={() => setIsHovered(false)}
      >
        {[...Array(3)].map((_, i) => {
          const baseOffset = i * 8;
          const hoverOffsetX = (i + 1) * 8;
          const hoverOffsetY = (i + 1) * -4;
          return (
            <div
              key={i}
              className="absolute w-full h-full transition-transform duration-300 border-2"
              style={{
                zIndex: i,
                backgroundColor: "var(--color-offwhite)",
                borderColor: "var(--color-black)",
                borderTopWidth: "50px",
                transform: isHovered
                  ? `translate(${hoverOffsetX}px, ${hoverOffsetY}px)`
                  : `translate(${baseOffset}px, ${baseOffset}px)`,
              }}
            />
          );
        })}
        <div
          className="z-20 flex items-center justify-center w-full h-12 p-6 transition-transform duration-300"
          style={{
            color: "var(--color-offwhite)",
            backgroundColor: "var(--color-black)",
            transform: isHovered
              ? "translate(24px, 6px)"
              : "translate(16px, 32px)",
          }}
        >
          {description}
        </div>
        <div
          className="z-10 transition-transform duration-300"
          style={{
            overflow: "hidden",
            transform: isHovered
              ? "translate(26px, -14px)"
              : "translate(20px, 15px)",
          }}
        >
          <img src={image} alt={title} style={{ marginTop: "1rem" }} />
        </div>
        <ProjectSetup
          title={title}
          description={description}
          image={image}
          to={to}
        />
      </div>
    </Link>
  );
};
