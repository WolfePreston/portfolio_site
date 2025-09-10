import frame1 from "../../../assets/images/bigcreek/updates/wire_frame_home_screen.png";

export default function Slide2WireFrames() {
  return (
    <div className="grid grid-cols-3 gap-4 items-start">
      <div
        className="pt-30"
        style={{ alignItems: "right", justifyItems: "right" }}
      >
        <p className="updatesDescription max-w-[15rem] text-right">
          In the first few weeks I was able to
        </p>
        <h2 className="updatesTitle min-w-[15rem] text-right">
          set a foundation for the user flow
        </h2>
        <p className="updatesDescription max-w-[15rem] text-right">
          and get the ball rolling.
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
