import React, { useState, useRef, useEffect } from "react";
import { Button } from "../components/button";

const StickyNote = () => {
  const [copied, setCopied] = useState(false);

  const handleCopy = () => {
    navigator.clipboard.writeText(noteText);
    setCopied(true);
    setTimeout(() => setCopied(false), 1500);
  };

  const [noteText, setNoteText] = useState(
    "Hello My name is ________ and I just saw your portfolio and I think you are a great front end developer. I would love to work with you on a project. Please let me know if you are interested."
  );
  const [isDragging, setIsDragging] = useState(false);
  const [offset, setOffset] = useState({ x: 0, y: 0 });
  const noteRef = useRef<HTMLDivElement>(null);

  const handleChange = (e: {
    target: { value: React.SetStateAction<string> };
  }) => {
    setNoteText(e.target.value);
  };

  const handleMouseDown = (e: { clientX: number; clientY: number }) => {
    setIsDragging(true);
    const note = noteRef.current;
    if (!note) return;
    const rect = note.getBoundingClientRect();
    setOffset({
      x: e.clientX - rect.left,
      y: e.clientY - rect.top,
    });
  };

  const handleMouseMove = (e: { clientX: number; clientY: number }) => {
    if (isDragging) {
      const note = noteRef.current;
      if (note) {
        note.style.left = `${e.clientX - offset.x}px`;
        note.style.top = `${e.clientY - offset.y}px`;
      }
    }
  };

  const handleMouseUp = () => {
    setIsDragging(false);
  };

  // const handleSend = () => {
  //   alert(`Sending note: ${noteText}`);
  // };

  // Add event listeners for mousemove and mouseup globally
  useEffect(() => {
    if (isDragging) {
      window.addEventListener("mousemove", handleMouseMove);
      window.addEventListener("mouseup", handleMouseUp);
    } else {
      window.removeEventListener("mousemove", handleMouseMove);
      window.removeEventListener("mouseup", handleMouseUp);
    }

    // Cleanup the event listeners on component unmount
    return () => {
      window.removeEventListener("mousemove", handleMouseMove);
      window.removeEventListener("mouseup", handleMouseUp);
    };
  }, [isDragging]);

  return (
    <div
      ref={noteRef}
      style={{
        backgroundColor: "#FFEB3B",
        padding: "1rem",
        width: "20rem",
        height: "20rem",
        boxShadow: "2px 2px 10px rgba(0, 0, 0, 0.5)",
        position: "absolute",
        top: "20px",
        left: "20px",
        fontFamily: "Arial, sans-serif",
        cursor: "move",
      }}
      onMouseDown={handleMouseDown}
    >
      <div
        style={{
          fontWeight: "bold",
          marginBottom: "10px",
          cursor: "move",
        }}
      >
        Reminder to send email to Preston
      </div>
      <textarea
        value={noteText}
        onChange={handleChange}
        style={{
          width: "100%",
          height: "calc(100% - 40px)",
          border: "none",
          outline: "none",
          background: "transparent",
          resize: "none",
          fontSize: "14px",
          color: "#333",
        }}
      />

      <Button
        string={copied ? "Copied!" : "Copy Text"}
        color={"var(--color-lightRed)"}
        onClick={handleCopy}
      />
    </div>
  );
};

export default StickyNote;
