import { useEffect, useRef, useState } from "react";
import lottie from "lottie-web/build/player/lottie_light";
import Orange from "../images/stickyNoteOrange.png";
import Green from "../images/stickyNoteGreen.png";
import Pink from "../images/stickyNotePink.png";
import Yellow from "../images/stickyNoteYellow.png";

type StickyNoteAnimatorProps = {
  animationData: object;
  stickyNoteColor: string;
  Optionalstyle?: React.CSSProperties;
  randomPostion: boolean;
  loop: boolean;
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
  Optionalstyle,
  randomPostion,
  loop,
}) => {
  const noteRef = useRef<HTMLDivElement>(null);
  const lottieRef = useRef<HTMLDivElement>(null);
  const [isDragging, setIsDragging] = useState(false);
  const [offset, setOffset] = useState({ x: 0, y: 0 });

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

  useEffect(() => {
    const timer = setTimeout(() => {
      if (lottieRef.current) {
        lottie.loadAnimation({
          container: lottieRef.current,
          renderer: "svg",
          loop,
          autoplay: true,
          animationData,
        });
      }
    });

    return () => {
      clearTimeout(timer);
      lottie.destroy();
    };
  }, [animationData, loop]);

  const stickyNoteImage = noteImages[stickyNoteColor] || Yellow;

  return (
    <div
      ref={noteRef}
      onMouseDown={handleMouseDown}
      style={{
        position: "absolute",
        top: randomPostion ? position.top : "20px",
        left: randomPostion ? position.left : "20px",
        width: "16rem",
        height: "16rem",
        zIndex: 1,
        cursor: isDragging ? "grabbing" : "grab",
      }}
    >
      <img
        src={stickyNoteImage}
        alt={`${stickyNoteColor} Sticky Note`}
        className="absolute top-0 left-0 w-full h-full"
      />
      <div
        ref={lottieRef}
        style={{
          ...Optionalstyle,
          position: "absolute",
          top: 0,
          width: "75%",
          height: "100%",
          opacity: 0.85,
        }}
      />
    </div>
  );
};
