import React, { useState } from "react";
import { NavigationLink } from "./navlink";
import { MobileNavigationLink } from "./mobile_navlink";
import { useMediaQuery } from "../../assets/hooks/screen_sizes";
import { AnimatePresence, motion } from "framer-motion";

export const Navigation: React.FC = () => {
  const [menuOpen, setMenuOpen] = useState(false);
  const isMobile = useMediaQuery("sm");

  return (
    <div className="m-4 mb-0">
      {isMobile ? (
        <div>
          <nav
            style={{
              backgroundColor: "var(--color-offwhite)",
              border: "2px solid var(--color-black)",
              boxShadow: "4px 4px var(--color-black)",
            }}
            className="w-full max-w-screen-xl mx-auto"
          >
            <div className="flex items-center justify-between p-4">
              <div className="flex items-center space-x-4">
                <h1 className="text-2xl font-bold text-[var(--color-black)]">
                  PW
                </h1>
                <span className="text-base text-[var(--color-black)]">
                  Preston Wolfe
                </span>
              </div>
              <div className="block">
                <button
                  onClick={() => setMenuOpen(!menuOpen)}
                  className="focus:outline-none"
                  style={{
                    borderRadius: "0",
                    backgroundColor: "var(--color-black)",
                    padding: ".25rem",
                  }}
                >
                  <svg
                    className="w-6 h-6 text-[var(--color-offwhite)]"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth={2}
                    viewBox="0 0 24 24"
                  >
                    {menuOpen ? (
                      <path d="M6 18L18 6M6 6l12 12" />
                    ) : (
                      <path d="M4 6h16M4 12h16M4 18h16" />
                    )}
                  </svg>
                </button>
              </div>
            </div>
          </nav>

          <AnimatePresence>
            {menuOpen && (
              <motion.div
                key="mobile-menu"
                initial={{ opacity: 0, height: 0 }}
                animate={{ opacity: 1, height: "auto" }}
                exit={{ opacity: 0, height: 0 }}
                transition={{ duration: 0.3, ease: "circInOut" }}
                className="flex flex-col items-start pr-8 pb-4 min-[871px]:hidden"
              >
                {[
                  { title: "Home", to: "/portfolio_site" },
                  { title: "About Me", to: "/about" },
                  { title: "Big Creek", to: "/bigCreek" },
                  { title: "MedVendor", to: "/medVendor" },
                ].map((item, index) => (
                  <MobileNavigationLink
                    key={item.to}
                    title={item.title}
                    to={item.to}
                    rotate={index % 2 === 0 ? "-1deg" : "1deg"}
                    onClick={() => setMenuOpen(false)}
                  />
                ))}
              </motion.div>
            )}
          </AnimatePresence>
        </div>
      ) : (
        <nav
          style={{
            backgroundColor: "var(--color-offwhite)",
            border: "2px solid var(--color-black)",
            boxShadow: "4px 4px var(--color-black)",
          }}
          className="w-full max-w-screen-xl mx-auto"
        >
          <div className="flex items-center justify-between p-4">
            <div className="flex items-center space-x-4">
              <h1 className="text-2xl font-bold text-[var(--color-black)]">
                PW
              </h1>
              <span className="text-base text-[var(--color-black)]">
                Preston Wolfe
              </span>
            </div>
            <div className="flex flex-row items-center justify-center px-4 space-x-8">
              <NavigationLink title="Home" to="/portfolio_site" />
              <NavigationLink title="About Me" to="/about" />
              <NavigationLink title="Big Creek" to="/bigCreek" />
              <NavigationLink title="MedVendor" to="/medVendor" />
            </div>
          </div>
        </nav>
      )}
    </div>
  );
};
