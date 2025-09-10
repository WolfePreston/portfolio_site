import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { Link } from "react-router-dom";
import { AnimatePresence, motion, useReducedMotion } from "framer-motion";
import { ChevronLeft, ChevronRight } from "lucide-react";

import arrowKeys from "../../assets/images/arrows.png";
import Slide1AboutDesign from "./update_slides/slide_1_about_design";
import Slide3WireFrames from "./update_slides/slide_3_wire_frames";
import Slide2WireFrames from "./update_slides/slide_2_wireframes";
import Slide4Description from "./update_slides/slide_4_description";
import Slide5IOSIntro from "./update_slides/slide_5_ios_intro";
import Slide6IOSNav from "./update_slides/slide_6_ios_nav";
import Slide7IOSNav from "./update_slides/slide_7_ios_nav";
import Slide8IOSNav from "./update_slides/slide_8_ios_nav";
import Slide9IOSRemoveEdit from "./update_slides/slide_9_remove_edit";
import Slide10IOSRemoveEdit from "./update_slides/slide_10_remove_edit";
import Slide11IOSRemoveEdit from "./update_slides/slide_11_remove_edit";
import Slide12Pin from "./update_slides/slide_12_pin";
import Slide13Pin from "./update_slides/slide_13_pin";
import Slide14Sizing from "./update_slides/slide_14_sizing";
import Slide15Sizing from "./update_slides/slide_15_sizing";
import Slide16Sizing from "./update_slides/slide_16_sizing";
import Slide17Sizing from "./update_slides/slide_17_autofill";
import Slide18Sizing from "./update_slides/slide_18_autofill";
import Slide20End from "./update_slides/slide_20_end";

type Slide = {
  progress: number;
  content: React.ReactNode;
  noTransition?: boolean;
};

export default function LatestUpdatesBigCreek() {
  const reset = useCallback(() => setIdx(0), []);
  const slides: Slide[] = useMemo(
    () => [
      {
        progress: 0,
        content: (
          <div className="flex flex-col items-center gap-4">
            <div
              style={{
                backgroundColor: "rgba(255,255,255,.85)",
                height: "10rem",
                width: "10rem",
                borderRadius: "1rem",
                display: "grid",
                placeItems: "center",
              }}
            >
              <img src={arrowKeys} style={{ width: "90%" }} />
            </div>
            <h1 className="text-xl md:text-2xl text-center">
              Use keyboard arrows for navigation
            </h1>
          </div>
        ),
      },
      {
        progress: 5,
        content: (
          <div>
            <Slide1AboutDesign />
          </div>
        ),
      },
      {
        progress: 10,
        content: (
          <div>
            <Slide2WireFrames />
          </div>
        ),
        noTransition: true,
      },
      {
        progress: 12,
        content: (
          <div>
            <Slide3WireFrames />
          </div>
        ),
        noTransition: true,
      },
      {
        progress: 14,
        content: (
          <div>
            <Slide4Description />
          </div>
        ),
      },
      {
        progress: 20,
        content: <Slide5IOSIntro />,
      },
      {
        progress: 22,
        content: <Slide6IOSNav />,
        noTransition: true,
      },
      {
        progress: 24,
        content: <Slide7IOSNav />,
        noTransition: true,
      },
      {
        progress: 26,
        content: <Slide8IOSNav />,
      },
      {
        progress: 30,
        content: <Slide9IOSRemoveEdit />,
      },
      {
        progress: 34,
        content: <Slide10IOSRemoveEdit />,
      },
      {
        progress: 38,
        content: <Slide11IOSRemoveEdit />,
      },
      {
        progress: 50,
        content: <Slide12Pin />,
        noTransition: true,
      },
      {
        progress: 54,
        content: <Slide13Pin />,
        noTransition: true,
      },
      {
        progress: 65,
        content: <Slide14Sizing />,
        noTransition: true,
      },
      {
        progress: 69,
        content: <Slide15Sizing />,
        noTransition: true,
      },
      {
        progress: 73,
        content: <Slide16Sizing />,
      },
      {
        progress: 77,
        content: <Slide17Sizing />,
      },
      {
        progress: 90,
        content: <Slide18Sizing />,
      },
      { progress: 100, content: <Slide20End reset={reset} /> },
    ],
    []
  );

  const [idx, setIdx] = useState(0);
  const [dir] = useState<1 | -1>(1);
  const last = slides.length - 1;
  const prevIdxRef = useRef(0);

  const go = (n: number) => setIdx(Math.max(0, Math.min(last, n)));
  const next = () => go(idx + 1);
  const prev = () => go(idx - 1);

  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "ArrowRight") next();
      else if (e.key === "ArrowLeft") prev();
      else if (e.key === "Home") go(0);
      else if (e.key === "End") go(last);
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [idx, last]);

  useEffect(() => {
    let startX = 0;
    const onTouchStart = (e: TouchEvent) => (startX = e.touches[0].clientX);
    const onTouchEnd = (e: TouchEvent) => {
      const dx = e.changedTouches[0].clientX - startX;
      if (Math.abs(dx) > 40) {
        if (dx < 0) next();
        else prev();
      }
    };
    window.addEventListener("touchstart", onTouchStart, { passive: true });
    window.addEventListener("touchend", onTouchEnd);
    return () => {
      window.removeEventListener("touchstart", onTouchStart);
      window.removeEventListener("touchend", onTouchEnd);
    };
  }, [idx]);

  const progress = slides[idx]?.progress ?? 0;
  const prefersReduced = useReducedMotion();

  const variants = prefersReduced
    ? {
        enter: { opacity: 0 },
        center: { opacity: 1 },
        exit: { opacity: 0 },
      }
    : {
        enter: (direction: 1 | -1) => ({
          x: direction * 40,
          opacity: 0,
          scale: 0.98,
        }),
        center: {
          x: 0,
          opacity: 1,
          scale: 1,
        },
        exit: (direction: 1 | -1) => ({
          x: direction * -40,
          opacity: 0,
          scale: 0.98,
        }),
      };

  const transition = prefersReduced
    ? { duration: 0.15 }
    : { type: "spring", stiffness: 500, damping: 40, mass: 0.7 };

  const prevIdx = prevIdxRef.current;
  const skip =
    slides[prevIdx]?.noTransition ||
    slides[idx]?.noTransition ||
    prefersReduced === true;

  const activeTransition = skip ? { duration: 0 } : transition;
  const activeVariants = skip
    ? {
        enter: { opacity: 1, x: 0 },
        center: { opacity: 1, x: 0 },
        exit: { opacity: 1, x: 0 },
      }
    : variants;

  return (
    <div
      style={{
        position: "fixed",
        inset: 0,
        width: "100vw",
        height: "100vh",
        backgroundColor: "rgba(0,0,0,.85)",
        color: "white",
        zIndex: 0,
      }}
      aria-live="polite"
      aria-label="Latest Updates Big Creek overlay"
    >
      <Link
        to="/portfolio_site"
        style={{
          position: "absolute",
          top: "1rem",
          right: "1rem",
          fontSize: "2rem",
          textDecoration: "none",
          color: "#fff",
          zIndex: 10,
        }}
        aria-label="Close"
      >
        ✕
      </Link>

      <div
        className="flex flex-col"
        style={{
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          height: "100%",
          padding: "2rem",
          gap: "2rem",
        }}
      >
        <div className="flex flex-col items-center justify-center text-center">
          <AnimatePresence mode="wait" initial={false} custom={dir}>
            <motion.div
              key={idx}
              custom={dir}
              variants={activeVariants}
              initial="enter"
              animate="center"
              exit="exit"
              transition={activeTransition}
              style={{ willChange: "transform, opacity" }}
            >
              {slides[idx].content}
            </motion.div>
          </AnimatePresence>
        </div>

        {idx === 0 ? (
          <div className="flex flex-row items-end justify-end gap-4">
            <button
              onClick={prev}
              disabled={idx === 0}
              className={`p-3 rounded-full  ${
                idx === 0
                  ? "opacity-40"
                  : "hover:bg-white/20 transition arrowButton"
              }`}
              aria-label="Previous slide"
            >
              <ChevronLeft size={28} />
            </button>
            <button
              onClick={next}
              disabled={idx === last}
              className={`p-3 rounded-full  ${
                idx === last
                  ? "opacity-40 "
                  : "hover:bg-white/20 transition arrowButton"
              }`}
              aria-label="Next slide"
            >
              <ChevronRight size={28} />
            </button>
          </div>
        ) : (
          <div
            className="flex flex-row gap-4 p-10"
            style={{ position: "absolute", bottom: "1rem", right: "1rem" }}
          >
            <button
              onClick={prev}
              disabled={idx === 0}
              className={`p-3 rounded-full  ${
                idx === 0
                  ? "opacity-40 "
                  : "hover:bg-white/20 transition arrowButton"
              }`}
              aria-label="Previous slide"
            >
              <ChevronLeft size={28} />
            </button>
            <button
              onClick={next}
              disabled={idx === last}
              className={`p-3 rounded-full  ${
                idx === last
                  ? "opacity-40 "
                  : "hover:bg-white/20 transition arrowButton"
              }`}
              aria-label="Next slide"
            >
              <ChevronRight size={28} />
            </button>
          </div>
        )}

        <div
          style={{
            position: "absolute",
            left: 0,
            right: 0,
            bottom: 0,
            padding: "0.75rem 1rem",
          }}
        >
          <div
            style={{
              height: "0.75rem",
              width: "100%",
              backgroundColor: "rgba(255,255,255,.2)",
              borderRadius: "9999px",
              overflow: "hidden",
            }}
            aria-label="Progress"
            aria-valuemin={0}
            aria-valuemax={100}
            aria-valuenow={progress}
            role="progressbar"
          >
            <div
              style={{
                height: "100%",
                width: `${progress}%`,
                backgroundColor: "rgba(55,92,136,1)",
                transition: "width 300ms ease",
              }}
            />
          </div>
        </div>
      </div>
    </div>
  );
}
