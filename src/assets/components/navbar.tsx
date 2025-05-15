import React, { useState } from "react";
import { NavigationLink } from "./navlink";

export const Navigation: React.FC = () => {
  const [menuOpen, setMenuOpen] = useState(false);

  return (
    <div className="m-4 mb-0">
      <nav
        style={{
          backgroundColor: "var(--color-offwhite)",
          border: "2px solid var(--color-black)",
          boxShadow: "4px 4px var(--color-black)",
        }}
        className="w-full max-w-screen-xl mx-auto "
      >
        <div className="flex items-center justify-between p-4">
          {/* Logo Section */}
          <div className="flex items-center space-x-4">
            <h1 className="text-2xl font-bold text-[var(--color-black)]">PW</h1>
            <span className="text-base text-[var(--color-black)]">
              Preston Wolfe
            </span>
          </div>

          {/* Hamburger Icon for Small Screens */}
          <div className="block max-[870px]:block min-[871px]:hidden">
            <button
              onClick={() => setMenuOpen(!menuOpen)}
              className="focus:outline-none"
            >
              <svg
                className="w-6 h-6 text-[var(--color-black)]"
                fill="none"
                stroke="currentColor"
                strokeWidth={2}
                viewBox="0 0 24 24"
              >
                {menuOpen ? (
                  // X icon
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    d="M6 18L18 6M6 6l12 12"
                  />
                ) : (
                  // Hamburger icon
                  <path
                    strokeLinecap="round"
                    strokeLinejoin="round"
                    d="M4 6h16M4 12h16M4 18h16"
                  />
                )}
              </svg>
            </button>
          </div>

          {/* Navigation Links - Desktop */}
          <div className="hidden min-[871px]:flex flex-row space-x-8">
            <NavigationLink title="Home" to="/" />
            <NavigationLink title="About Me" to="/about" />
            <NavigationLink title="Big Creek" to="/bigCreek" />
            <NavigationLink title="MedVendor" to="/medVendor" />
          </div>
        </div>

        {/* Navigation Links - Mobile Dropdown */}
        {menuOpen && (
          <div className="flex flex-col items-start px-4 pb-4 space-y-2 min-[871px]:hidden">
            <NavigationLink title="Home" to="/" />
            <NavigationLink title="About Me" to="/about" />
            <NavigationLink title="Big Creek" to="/bigCreek" />
            <NavigationLink title="MedVendor" to="/medVendor" />
          </div>
        )}
      </nav>
    </div>
  );
};
