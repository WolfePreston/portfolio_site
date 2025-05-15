import React, { useRef, useState, useEffect } from "react";
import Lottie from "lottie-react";
import Orange from "../images/stickyNoteOrange.png";
import Green from "../images/stickyNoteGreen.png";
import Pink from "../images/stickyNotePink.png";
import Yellow from "../images/stickyNoteYellow.png";

type StickyNoteAnimatorProps = {
  animationData: object;
  stickyNoteColor: string;
};

const noteImages: Record<string, string> = {
  Orange,
  Green,
  Pink,
  Yellow,
};

export const StickyNoteAnimator: React.FC<StickyNoteAnimatorProps> = ({
  animationData,
  stickyNoteColor,
}) => {
  const noteRef = useRef<HTMLDivElement>(null);
  const [isDragging, setIsDragging] = useState(false);
  const [offset, setOffset] = useState({ x: 0, y: 0 });
  const randomDelay = `${Math.random() * 10}s`;

  const noteSize = 256;

  const getRandomPosition = () => {
    const maxWidth = window.innerWidth - noteSize;
    const maxHeight = window.innerHeight - noteSize;
    return {
      top: `${Math.floor(Math.random() * maxHeight)}px`,
      left: `${Math.floor(Math.random() * maxWidth)}px`,
    };
  };

  const [position] = useState(getRandomPosition);

  const handleMouseDown = (e: React.MouseEvent) => {
    const note = noteRef.current;
    if (!note) return;

    const rect = note.getBoundingClientRect();
    setOffset({
      x: e.clientX - rect.left,
      y: e.clientY - rect.top,
    });
    setIsDragging(true);
  };

  const handleMouseMove = (e: MouseEvent) => {
    if (!isDragging || !noteRef.current) return;
    noteRef.current.style.left = `${e.clientX - offset.x}px`;
    noteRef.current.style.top = `${e.clientY - offset.y}px`;
  };

  const handleMouseUp = () => {
    setIsDragging(false);
  };

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

  const stickyNoteImage = noteImages[stickyNoteColor] || Yellow;

  return (
    <div
      ref={noteRef}
      onMouseDown={handleMouseDown}
      style={{
        position: "absolute",
        top: position.top,
        left: position.left,
        width: "16rem",
        height: "16rem",
        zIndex: 1000,
        opacity: 0.8,
        cursor: isDragging ? "grabbing" : "grab",
      }}
    >
      <img
        src={stickyNoteImage}
        alt={`${stickyNoteColor} Sticky Note`}
        className="absolute top-0 left-0 w-full h-full"
      />
      <div style={{ opacity: 0.85 }}>
        <Lottie
          animationData={animationData}
          className="absolute top-0 left-0 w-full h-full"
          style={{
            width: "65%",
            animationDelay: randomDelay,
            animationFillMode: "both",
          }}
          loop={false}
        />
      </div>
    </div>
  );
};
