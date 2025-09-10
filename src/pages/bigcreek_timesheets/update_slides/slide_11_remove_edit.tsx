import screen from "../../../assets/images/bigcreek/updates/updated_tasks_remove.png";
import screen2 from "../../../assets/images/bigcreek/updates/updated_tasks_remove2.png";
import hand from "../../../assets/images/bigcreek/updates/handTap.png";

import { useState } from "react";

export default function Slide11IOSRemoveEdit() {
  const [showAlt, setShowAlt] = useState(false);

  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="p-20"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription min-w-[15rem] text-right">
          This way a user doesn’t have to tell the application
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-right">
          “I’m ready to edit”
        </h2>
        <p className="updatesDescription min-w-[15rem] text-right pt-30">
          Instead they can say
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-right">
          “I made some changes”
        </h2>
      </div>

      <div className="items-center flex flex-col relative">
        <img
          src={hand}
          className="handSize handTapMotionRemove absolute z-20"
          onAnimationEnd={() => setShowAlt(true)}
        />
        <img
          src={showAlt ? screen2 : screen}
          className="block"
          style={{ width: "70%", height: "auto" }}
        />
      </div>
    </div>
  );
}
