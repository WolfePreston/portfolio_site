import React from "react";
import { Link } from "react-router-dom";
import type { NavigationLinkProps } from "./type";

export const MobileNavigationLink: React.FC<NavigationLinkProps> = ({
  title,
  to,
  rotate,
  onClick,
}) => {
  return (
    <Link
      onClick={onClick}
      to={to}
      style={{
        color: "var(--color-black)",
        margin: "1rem",
        padding: "1rem",
        boxShadow: "4px 4px var(--color-black)",
        border: "2px solid var(--color-black)",
        backgroundColor: "var(--color-offwhite)",
        width: "100%",
        rotate: rotate,
      }}
      onMouseEnter={(e) => {
        e.currentTarget.style.color = "var(--color-red)";
      }}
      onMouseLeave={(e) => {
        e.currentTarget.style.color = "var(--color-black)";
      }}
      className={`font-medium transition-colors duration-200`}
    >
      {title}
    </Link>
  );
};
