import screen1 from "../../../assets/images/bigcreek/updates/pinned0.png";
import screen2 from "../../../assets/images/bigcreek/updates/pinned.png";
import screen3 from "../../../assets/images/bigcreek/updates/pinned2.png";
import hand from "../../../assets/images/bigcreek/updates/handTap.png";
import { useEffect, useState } from "react";

export default function Slide12Pin() {
  // 1 = before hand anim, 2 = during hand anim, 3 = after hand anim
  const [stage, setStage] = useState(1);

  // Optional: preload to prevent flicker when swapping
  useEffect(() => {
    [screen1, screen2, screen3].forEach((src) => {
      const img = new Image();
      img.src = src;
    });
  }, []);

  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription min-w-[15rem] text-left">
          Another easy solution I implemented,
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-left">Pin it</h2>
      </div>

      <div className="items-center flex flex-col relative">
        {/* Hand */}
        <img
          src={hand}
          className="handSize handTapMotionPin absolute z-20"
          onAnimationStart={() => setStage(2)} // switch to screen2 when hand starts
          onAnimationEnd={() => setStage(3)} // switch to screen3 when hand ends
          alt=""
        />

        {/* Screens (stacked, cross-fade) */}
        <div className="relative" style={{ width: "70%" }}>
          {/* Screen 1 */}
          <img
            src={screen1}
            className={`block absolute top-0 left-0 w-full h-auto imageTransition ${
              stage === 1 ? "imageVisible" : "imageHidden"
            }`}
            alt=""
          />
          {/* Screen 2 */}
          <img
            src={screen2}
            className={`block absolute top-0 left-0 w-full h-auto imageTransition ${
              stage === 2 ? "imageVisible" : "imageHidden"
            }`}
            alt=""
          />
          {/* Screen 3 */}
          <img
            src={screen3}
            className={`block absolute top-0 left-0 w-full h-auto imageTransition ${
              stage === 3 ? "imageVisible" : "imageHidden"
            }`}
            alt=""
          />
          {/* Reserve layout height so container doesn't collapse */}
          <img src={screen1} className="block w-full h-auto opacity-0" alt="" />
        </div>
      </div>
    </div>
  );
}
