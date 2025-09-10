import screen from "../../../assets/images/bigcreek/updates/updated_home_screen.png";
import screen2 from "../../../assets/images/bigcreek/updates/updated_home_screen2.png";
import hand from "../../../assets/images/bigcreek/updates/handTap.png";

import { useState } from "react";

export default function Slide6IOSNav() {
  const [showAlt, setShowAlt] = useState(false);
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription min-w-[15rem] text-left">
          So I started with
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-left pt-4">
          Navigation...
        </h2>
      </div>

      <div className="items-center flex flex-col relative">
        <img
          src={hand}
          className="handSize handTapMotion absolute z-20"
          onAnimationEnd={() => setShowAlt(true)}
        />
        <img
          src={showAlt ? screen2 : screen}
          className="imageTransition z-10"
          style={{ width: "70%", height: "auto" }}
        />
      </div>
    </div>
  );
}
