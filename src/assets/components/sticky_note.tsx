import React, { useState, useRef, useEffect } from "react";
import { Button } from "../components/button";
import StickyNoteImage from "../images/stickyNoteYellow.png";

const StickyNote = () => {
  const [copied, setCopied] = useState(false);
  const [noteText, setNoteText] = useState(
    "Hello My name is ________ and I just saw your portfolio and I think you are an awesome front end developer. I would love to send you a role I think you would be a great fit for. Please let me know if you are interested."
  );
  const [isDragging, setIsDragging] = useState(false);
  const [offset, setOffset] = useState({ x: 0, y: 0 });
  const noteRef = useRef<HTMLDivElement>(null);

  const handleMouseDown = (e: React.MouseEvent<HTMLDivElement>) => {
    const note = noteRef.current;
    if (!note) return;

    setIsDragging(true);
    setOffset({
      x: e.pageX - note.offsetLeft,
      y: e.pageY - note.offsetTop,
    });
  };

  const handleMouseMove = (e: MouseEvent) => {
    if (!isDragging || !noteRef.current) return;

    noteRef.current.style.left = `${e.pageX - offset.x}px`;
    noteRef.current.style.top = `${e.pageY - offset.y}px`;
  };

  const handleMouseUp = () => setIsDragging(false);

  useEffect(() => {
    if (isDragging) {
      window.addEventListener("mousemove", handleMouseMove);
      window.addEventListener("mouseup", handleMouseUp);
    } else {
      window.removeEventListener("mousemove", handleMouseMove);
      window.removeEventListener("mouseup", handleMouseUp);
    }

    return () => {
      window.removeEventListener("mousemove", handleMouseMove);
      window.removeEventListener("mouseup", handleMouseUp);
    };
  }, [isDragging]);

  return (
    <div
      ref={noteRef}
      style={{
        position: "absolute",
        top: "30vh",
        left: "5vw",
        width: "24rem",
        height: "24rem",
        cursor: isDragging ? "grabbing" : "grab",
        zIndex: 1000,
      }}
    >
      <img
        src={StickyNoteImage}
        alt="Sticky Note"
        style={{
          position: "absolute",
          top: 0,
          left: 0,
          width: "100%",
          height: "100%",
          zIndex: 0,
        }}
      />

      <div
        className="drag-handle"
        onMouseDown={handleMouseDown}
        style={{
          position: "relative",
          zIndex: 2,
          fontWeight: "bold",
          padding: "1rem",
          cursor: "grab",
          marginTop: "1.5rem",
          marginLeft: "1.5rem",
          rotate: "1deg",
        }}
      >
        Reminder to send email to Preston
      </div>

      <textarea
        value={noteText}
        onChange={(e) => setNoteText(e.target.value)}
        style={{
          width: "75%",
          marginLeft: "2.25rem",
          height: "55%",
          zIndex: 2,
          position: "relative",
          resize: "none",
          outline: "none",
          rotate: "1deg",
        }}
      />

      <div style={{ position: "relative", zIndex: 2 }}>
        <Button
          string={copied ? "Copied!" : "Copy Text"}
          color={"var(--color-lightRed)"}
          onClick={() => {
            navigator.clipboard.writeText(noteText);
            setCopied(true);
            setTimeout(() => setCopied(false), 1500);
          }}
          skew={""}
          negativeSkew={false}
        />
      </div>
    </div>
  );
};

export default StickyNote;
