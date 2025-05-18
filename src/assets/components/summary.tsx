import React from "react";
import { useMediaQuery } from "../hooks/screen_sizes";

type SummarryProps = {
  summary: string;
};

export const Summary: React.FC<SummarryProps> = ({ summary }) => {
  const isMobile = useMediaQuery("sm");

  return (
    <div
      style={{
        backgroundColor: "var(--color-offwhite)",
        border: "2px solid var(--color-black)",
        boxShadow: "4px 4px var(--color-black)",
        padding: "2rem",
        margin: "auto",
        marginTop: "1rem",
        width: isMobile ? "90%" : "77%",
      }}
      className="flex flex-col justify-center"
    >
      <h1
        style={{
          fontSize: "2rem",
          fontWeight: "bold",
          color: "var(--color-black)",
        }}
        className="text-center"
      >
        Summary
      </h1>
      {summary}
    </div>
  );
};
