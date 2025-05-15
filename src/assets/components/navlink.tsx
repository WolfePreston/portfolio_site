import React from "react";
import { Link } from "react-router-dom";
import type { NavigationLinkProps } from "./type";

export const NavigationLink: React.FC<NavigationLinkProps> = ({
  title,
  to,
}) => {
  return (
    <Link
      to={to}
      style={{ color: "var(--color-black)" }}
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
