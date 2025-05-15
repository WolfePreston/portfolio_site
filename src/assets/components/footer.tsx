import React from "react";

export const Footer: React.FC = () => {
  return (
    <div className="m-4">
      <nav
        style={{
          backgroundColor: "var(--color-offwhite)",
          border: "2px solid var(--color-black)",
          boxShadow: "4px 4px  var(--color-black)",
        }}
        className="w-full max-w-screen-xl mx-auto m-4"
      >
        <div className="flex flex-row items-center justify-center p-4">
          <a
            href="https://www.linkedin.com/in/preston-wolfe-759270201/"
            target="_blank"
            rel="noopener noreferrer"
            className="text-black hover:text-gray-700 transition-colors duration-200"
          >
            Connect with me on LinkedIn!
          </a>
        </div>
      </nav>
    </div>
  );
};
