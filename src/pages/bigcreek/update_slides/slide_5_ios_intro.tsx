import frame1 from "../../../assets/images/bigcreek/updates/old_home_screen.png";

export default function Slide5IOSIntro() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="pt-30"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription max-w-[15rem] text-right">
          My user base is all IOS
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-right">
          they are natural swipers.
        </h2>
        <p className="updatesDescription max-w-[15rem] text-left pt-30">
          They use different motions, like dragging or swiping, to engage with
          their screens and navigate.
        </p>
      </div>

      <div className="items-center flex flex-col gap-4 min-w-0">
        <img
          src={frame1}
          className="block"
          style={{ width: "70%", height: "auto" }}
          alt="Frame 1"
        />
      </div>
    </div>
  );
}
