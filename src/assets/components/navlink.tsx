import React from "react";
import { NavLink } from "react-router-dom";
import type { NavigationLinkProps } from "./type";

export const NavigationLink: React.FC<NavigationLinkProps> = ({
  title,
  to,
}) => {
  return (
    <NavLink
      to={to}
      className={({ isActive }) =>
        isActive ? "navbar-button active" : "navbar-button"
      }
    >
      {title}
    </NavLink>
  );
};
