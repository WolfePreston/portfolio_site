import frame1 from "../../../assets/images/bigcreek/updates/old_home_screen.png";

export default function Slide3WireFrames() {
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

      <div className="flex min-w-0 flex-col items-center relative">
        <img
          src={frame1}
          className="block"
          style={{ width: "70%", height: "auto" }}
          alt="Frame 1"
        />
      </div>

      <div
        className="pl-4 pb-30 flex flex-col items-start justify-end"
        style={{
          height: "100%",
        }}
      >
        <p className="updatesDescription max-w-[15rem] text-left pb-12 popUpText popUpText--delay100 ">
          Since then I’ve moved into more user testing which has told me a lot.
        </p>
        <p className="updatesDescription max-w-[15rem] popUpText popUpText--delay300">
          Let me show you.
        </p>
      </div>
    </div>
  );
}
